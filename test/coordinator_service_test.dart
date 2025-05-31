import 'package:bitblik_coordinator/src/services/coordinator_service.dart';
import 'package:bitblik_coordinator/src/services/database_service.dart';
import 'package:bitblik_coordinator/src/services/payment_service.dart';
import 'package:bitblik_coordinator/src/models/create_hold_invoice_result.dart'; // Added
import 'package:bitblik_coordinator/src/models/pay_invoice_result.dart'; // Added
import 'package:bitblik_coordinator/src/models/offer.dart'; // Assuming Offer and OfferStatus are here
import 'package:bitblik_coordinator/src/models/invoice_status.dart';
import 'package:bitblik_coordinator/src/models/invoice_update.dart';
import 'package:test/test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing; // For MockClient if not using Mockito's for http
import 'package:clock/clock.dart';
import 'dart:convert'; // For jsonEncode
import 'package:fake_async/fake_async.dart';
import 'dart:async';
import 'package:uuid/uuid.dart'; // Added for Uuid().v4()
import 'package:matcher/matcher.dart'; // Added for Matcher, Description

// Generate mocks for dependencies
@GenerateMocks([DatabaseService, PaymentService, http.Client]) // Added http.Client
import 'coordinator_service_test.mocks.dart';

// Helper class for matching against a dynamically changing string variable
class _StringEqualsDynamicValueMatcher extends Matcher {
  final String Function() _getValue;
  final String _variableName;

  _StringEqualsDynamicValueMatcher(this._getValue, this._variableName);

  @override
  bool matches(dynamic item, Map matchState) {
    if (item is! String) {
      addStateInfo(matchState, {'item': item, 'reason': 'Item is not a String.'});
      return false;
    }
    final expectedValue = _getValue();
    if (expectedValue.isEmpty) {
      addStateInfo(matchState, {'item': item, 'reason': 'Expected value ($_variableName) is empty.'});
      return false;
    }
    final bool match = (item == expectedValue);
    if (!match) {
      addStateInfo(matchState, {'item': item, 'reason': 'Item "$item" does not equal expected value "$expectedValue".'});
    }
    return match;
  }

  @override
  Description describe(Description description) => 
      description.add('a string that equals the current non-empty value of $_variableName ("${_getValue()}")');

  @override
  Description describeMismatch(
      dynamic item, Description mismatchDescription, Map matchState, bool verbose) {
    final String? reason = matchState['reason'] as String?;
    if (reason != null) {
      return mismatchDescription.add(reason);
    }
    // Fallback if reason wasn't set, though it should be by `matches`.
    if (item is! String) {
      return mismatchDescription.add('was not a String, but was $item');
    }
    final expectedValue = _getValue();
    if (expectedValue.isEmpty) {
      return mismatchDescription.add('expected value ($_variableName) was empty, so no match was possible');
    }
    // If item is a String and expectedValue is not empty, the only remaining mismatch is inequality.
    return mismatchDescription.add('was "$item" but expected "$expectedValue" (for $_variableName)');
  }
}

void main() {
  late MockDatabaseService mockDbService;
  late MockPaymentService mockPaymentService;
  late MockClient mockHttpClient; // Added MockClient
  late CoordinatorService coordinatorService;

  // Test constants
  const String testOfferId = 'test-offer-id';
  const String testMakerId = 'test-maker-id';
  const String testTakerId = 'test-taker-id';
  const String testPaymentHash = 'test-payment-hash';
  const String testPreimage = 'test-preimage';
  const String testBlikCode = '123456';
  const String testTakerLnAddress = 'taker@example.com';
  const double testFiatAmount = 100.0;
  const int testSatsAmount = 200000;
  const int testMakerFees = 1000;
  const int testTakerFees = 1000;

  Offer createTestOffer({
    String id = testOfferId,
    OfferStatus status = OfferStatus.funded,
    String makerPubkey = testMakerId,
    String? takerPubkey,
    DateTime? createdAt,
    DateTime? reservedAt,
    DateTime? blikReceivedAt,
    String holdInvoicePaymentHash = testPaymentHash,
    String holdInvoicePreimage = testPreimage,
    String? blikCode,
    String? takerLightningAddress,
    double fiatAmount = testFiatAmount,
    int amountSats = testSatsAmount,
    int makerFees = testMakerFees,
    int? takerFees = testTakerFees, // Changed to int? to match Offer model
    String? takerInvoice, // Added takerInvoice
  }) {
    return Offer(
      id: id,
      status: status,
      makerPubkey: makerPubkey,
      takerPubkey: takerPubkey,
      createdAt: createdAt ?? DateTime(2023, 1, 1, 10, 0, 0).toUtc(),
      reservedAt: reservedAt,
      blikReceivedAt: blikReceivedAt,
      holdInvoicePaymentHash: holdInvoicePaymentHash,
      holdInvoicePreimage: holdInvoicePreimage,
      blikCode: blikCode,
      takerLightningAddress: takerLightningAddress,
      fiatAmount: fiatAmount,
      amountSats: amountSats,
      makerFees: makerFees,
      takerFees: takerFees,
      fiatCurrency: 'PLN', // Default currency
      takerInvoice: takerInvoice, // Added takerInvoice
    );
  }

  setUp(() {
    mockDbService = MockDatabaseService();
    mockPaymentService = MockPaymentService();
    mockHttpClient = MockClient(); // This is Mockito's MockClient from @GenerateMocks

    // Initialize CoordinatorService with mocks and the clock from FakeAsync
    // The CoordinatorService constructor needs to accept a Clock and http.Client.
    // Assuming it's: CoordinatorService(this.dbService, {this.paymentService, this.clock, this.httpClient})
    coordinatorService = CoordinatorService(
      mockDbService, 
      paymentServiceForTest: mockPaymentService, 
      clock: clock,
      httpClient: mockHttpClient, // Pass the mock client
    );

    // Default stubs for common calls

    // Mock exchange rate API calls
    const coingeckoUrl = 'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=pln';
    const yadioUrl = 'https://api.yadio.io/exrates/pln';
    const blockchainInfoUrl = 'https://blockchain.info/ticker';

    when(mockHttpClient.get(
      argThat(predicate<Uri>((uri) => uri.toString() == coingeckoUrl))
    )).thenAnswer((_) async {
      // print('DEBUG: Coingecko SPECIFIC mock hit!');
      return http.Response(jsonEncode({'bitcoin': {'pln': 250000.0}}), 200);
    });

    when(mockHttpClient.get(
      argThat(predicate<Uri>((uri) => uri.toString() == yadioUrl))
    )).thenAnswer((_) async {
      // print('DEBUG: Yadio SPECIFIC mock hit!');
      return http.Response(jsonEncode({'BTC': 251000.0}), 200);
    });
    
    when(mockHttpClient.get(
      argThat(predicate<Uri>((uri) => uri.toString() == blockchainInfoUrl))
    )).thenAnswer((_) async {
      // print('DEBUG: Blockchain.info SPECIFIC mock hit!');
      return http.Response(jsonEncode({'PLN': {'last': 249000.0}}), 200);
    });

    // Specific mocks for LNURL calls, previously part of a generic fallback.
    // LNURL step 1 for 'taker@example.com'
    const lnurlWellKnownUrl = 'https://example.com/.well-known/lnurlp/taker';
    when(mockHttpClient.get(
      argThat(predicate<Uri>((uri) => uri.toString() == lnurlWellKnownUrl))
    )).thenAnswer((_) async {
      // print('DEBUG: Specific mock hit for LNURL step 1: $lnurlWellKnownUrl');
      return http.Response('{"tag":"payRequest","callback":"https://example.com/lnurlpay/taker","minSendable":1000,"maxSendable":1000000000,"metadata":"[]"}', 200);
    });

    // LNURL step 2 (callback) for 'taker@example.com'
    const lnurlCallbackBase = 'https://example.com/lnurlpay/taker';
    when(mockHttpClient.get(
      argThat(predicate<Uri>((uri) => uri.toString().startsWith(lnurlCallbackBase)))
    )).thenAnswer((invocation) async {
      // final url = invocation.positionalArguments.first as Uri;
      // print('DEBUG: Specific mock hit for LNURL step 2: $url');
      // final amount = url.queryParameters['amount']; // Can use this to vary response
      return http.Response('{"pr":"lnbc_test_invoice_from_lnurl_specific_mock","status":"OK"}', 200);
    });

    // NOTE: The generic `when(mockHttpClient.get(any))` fallback has been removed 
    // due to interference with specific mocks. If other HTTP GET calls are made by tests,
    // they will now result in a MissingStubError, prompting the addition of specific mocks for them.
    // This is generally a safer approach.
    
    when(mockDbService.getOfferById(any)).thenAnswer((_) async => null);
    when(mockDbService.updateOfferStatus(any, any,
            takerPubkey: anyNamed('takerPubkey'),
            blikCode: anyNamed('blikCode'),
            takerLightningAddress: anyNamed('takerLightningAddress'),
            reservedAt: anyNamed('reservedAt'),
            blikReceivedAt: anyNamed('blikReceivedAt')))
        .thenAnswer((_) async => true);
    when(mockDbService.createOffer(any)).thenAnswer((invocation) async {
      final Offer offerToCreate = invocation.positionalArguments.first as Offer;
      return offerToCreate;
    });
    // Add stub for cancelOffer
    when(mockDbService.cancelOffer(any, any)).thenAnswer((_) async => true);
    when(mockPaymentService.createHoldInvoice(
            amountSats: anyNamed('amountSats'),
            memo: anyNamed('memo'),
            paymentHashHex: anyNamed('paymentHashHex')))
        .thenAnswer((_) async => CreateHoldInvoiceResult(
            // Changed
            invoice: 'lnbc_test_hold_invoice',
            paymentHash: testPaymentHash));
    when(mockPaymentService.subscribeToInvoiceUpdates(
            paymentHashHex: anyNamed('paymentHashHex')))
        .thenAnswer((_) => Stream.value(InvoiceUpdate(
            status: InvoiceStatus.OPEN,
            paymentHash:
                testPaymentHash))); // Default to open, tests can override
    when(mockPaymentService.settleInvoice(preimageHex: anyNamed('preimageHex')))
        .thenAnswer((_) async {});
    when(mockPaymentService.cancelInvoice(
            paymentHashHex: anyNamed('paymentHashHex')))
        .thenAnswer((_) async {});
    when(mockPaymentService.payInvoice(
            invoice: anyNamed('invoice'),
            amountSat: anyNamed('amountSat'),
            feeLimitSat: anyNamed('feeLimitSat')))
        .thenAnswer((_) async => PayInvoiceResult(
            paymentPreimage: 'paid_preimage', // Corrected: removed isSuccess
            feeSat: 10));

    // TODO: This is a placeholder. The CoordinatorService initializes its own LND/NWC service.
    // We need a way to inject the mockPaymentService or mock the LND/NWC service creation.
    // For now, tests will assume that calls to _paymentBackend somehow reach mockPaymentService.
    // This might involve refactoring CoordinatorService or using a more complex test setup.
    // A simple way for now could be to expose a setter or pass it in constructor if possible.
    // coordinatorService.setPaymentBackend(mockPaymentService); // Imaginary method
  });

  group('CoordinatorService State Transitions', () {
    // --- Maker Flow ---
    test('initiateOffer: start -> created (pending funding)', () async {
      // This test focuses on the initial part of initiateOffer.
      // The transition to 'funded' happens upon invoice payment, which is async.
      // We'll test the 'funded' transition separately.

      final fiatAmount = 100.0;
      final makerId = 'maker-pubkey';

      // Mock exchange rate or ensure it's handled if service calls http directly
      // For simplicity, assume _getPlnRate is either stable or mocked if it becomes an issue.

      when(mockPaymentService.createHoldInvoice(
              amountSats: anyNamed(
                  'amountSats'), // Amount will be calculated based on fiatAmount
              memo: anyNamed('memo'),
              paymentHashHex: anyNamed('paymentHashHex')))
          .thenAnswer((realInvocation) async {
        // Capture the paymentHashHex generated by the service
        final dynamic paymentHashArg =
            realInvocation.namedArguments[Symbol('paymentHashHex')];
        return CreateHoldInvoiceResult(
            // Changed
            invoice: 'lnbc_test_invoice',
            paymentHash: paymentHashArg as String);
      });

      // Mock the subscription to immediately return an OPEN status, indicating it's waiting for payment
      // The actual funding will be simulated in another test or by advancing the stream.
      when(mockPaymentService.subscribeToInvoiceUpdates(
              paymentHashHex: anyNamed('paymentHashHex')))
          .thenAnswer((_) => Stream.value(InvoiceUpdate(
              status: InvoiceStatus.OPEN, paymentHash: testPaymentHash)));

      final result = await coordinatorService.initiateOfferFiat(
        fiatAmount: fiatAmount,
        makerId: makerId,
      );

      expect(result, isA<Map<String, dynamic>>());
      expect(result['holdInvoice'], startsWith('lnbc_'));
      expect(result['paymentHash'], isA<String>());
      // The offer is not yet in DB as 'created', it's in _pendingOffers.
      // It moves to DB as 'funded' when the invoice is paid.
      // So, we verify that createHoldInvoice and subscribeToInvoiceUpdates were called.
      verify(mockPaymentService.createHoldInvoice(
              amountSats: anyNamed('amountSats'),
              memo: anyNamed('memo'),
              paymentHashHex: anyNamed('paymentHashHex')))
          .called(1);
      verify(mockPaymentService.subscribeToInvoiceUpdates(
              paymentHashHex: result['paymentHash']))
          .called(1);
    });

    test('Invoice ACCEPTED: (pending) -> funded', () async {
      final paymentHash = 'funded-payment-hash';
      final makerId = 'maker-for-funded';
      final fiatAmount = 150.0;
      // final satsAmountCalc = 300000; // Example, actual would be calculated
      // final makerFeesCalc = 1500; // Example

      // 1. Simulate initiateOffer to populate _pendingOffers
      // Need to bypass direct call to coordinatorService.initiateOfferFiat if it's too complex to set up fully,
      // or call it and ensure _pendingOffers is populated.
      // For this test, let's assume _pendingOffers is populated correctly by a prior step
      // or we manually set it up if CoordinatorService allows (it doesn't directly).
      // A better way is to trigger the internal _startInvoiceSubscription flow.

      // Let's refine: Call initiateOfferFiat, then simulate the invoice update.
      final streamController = StreamController<InvoiceUpdate>();
      when(mockPaymentService.createHoldInvoice(
              amountSats: anyNamed('amountSats'),
              memo: anyNamed('memo'),
              paymentHashHex: anyNamed('paymentHashHex')))
          .thenAnswer((realInvocation) async {
        final dynamic pHash =
            realInvocation.namedArguments[Symbol('paymentHashHex')];
        return CreateHoldInvoiceResult(
            // Changed
            invoice: 'lnbc_funded_invoice',
            paymentHash: pHash as String);
      });
      when(mockPaymentService.subscribeToInvoiceUpdates(
              paymentHashHex: anyNamed('paymentHashHex')))
          .thenAnswer((_) => streamController.stream);

      final initResult = await coordinatorService.initiateOfferFiat(
          fiatAmount: fiatAmount, makerId: makerId);
      final actualPaymentHash = initResult['paymentHash'] as String;

      // 2. Simulate invoice ACCEPTED update
      streamController.add(InvoiceUpdate(
          status: InvoiceStatus.ACCEPTED, paymentHash: actualPaymentHash));
      await streamController.close(); // Ensure stream is processed

      // 3. Verify offer created in DB with status 'funded'
      // We need to capture the Offer object passed to createOffer
      final captured = verify(mockDbService.createOffer(captureAny)).captured;
      expect(captured.single, isA<Offer>());
      final Offer createdOffer = captured.single as Offer;
      expect(createdOffer.status, OfferStatus.funded);
      expect(createdOffer.holdInvoicePaymentHash, actualPaymentHash);
      expect(createdOffer.makerPubkey, makerId);
      expect(createdOffer.fiatAmount, fiatAmount);
      // expect(createdOffer.amountSats, closeTo(satsAmountCalc, 100)); // Depending on rate
      // expect(createdOffer.makerFees, closeTo(makerFeesCalc, 10));   // Depending on rate
    });

    // TODO: Add more tests based on the state machine
    // reserved --taker enters the BLK code--> blkReceived
    // ... and so on for all transitions and "break things" scenarios.

    test('funded --maker cancels--> cancelled', () async {
      final offer = createTestOffer(status: OfferStatus.funded);
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      when(mockPaymentService.cancelInvoice(paymentHashHex: testPaymentHash)).thenAnswer((_) async {});
      // mockDbService.cancelOffer is already stubbed in setUp to return true

      final result = await coordinatorService.cancelOffer(testOfferId, testMakerId);

      expect(result, isTrue);
      verify(mockPaymentService.cancelInvoice(paymentHashHex: testPaymentHash)).called(1);
      verify(mockDbService.cancelOffer(testOfferId, testMakerId)).called(1);
      // Verify that the funded offer timer is cancelled (if it was started)
      // This requires checking internal state or side effects, which can be complex.
      // For now, we trust the cancelOffer method handles timer cancellation.
    });

    test('funded --taker reserves--> reserved', () async {
      final offer = createTestOffer(status: OfferStatus.funded, createdAt: clock.now().toUtc());
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      // updateOfferStatus is stubbed in setUp to return true

      final reservationTime = await coordinatorService.reserveOffer(testOfferId, testTakerId);

      expect(reservationTime, isNotNull);
      expect(reservationTime, isA<DateTime>());
      // Check if the time is roughly now + 1 second as per reserveOffer logic
      expect(reservationTime!.isAfter(clock.now().toUtc()), isTrue);

      final captured = verify(mockDbService.updateOfferStatus(
        testOfferId,
        OfferStatus.reserved,
        takerPubkey: testTakerId,
        reservedAt: captureAnyNamed('reservedAt'),
      )).captured;

      expect(captured.single, isA<DateTime>());
      // Verify that the funded offer timer is cancelled and reservation timer is started.
      // This is harder to verify directly without more testable timer management.
    });
  });

  group('Timeout Behaviors (using FakeAsync)', () {
    test('funded offer expires after 10 minutes (FUNDED_EXPIRY_SECONDS)', () {
      fakeAsync((async) {
        // 1. Setup: An offer needs to become funded to start its timer.
        // This involves simulating the invoice payment flow.
        String serviceGeneratedPaymentHash = ''; // Will be populated by the createHoldInvoice mock
        final makerId = 'maker-expire';
        final fiatAmount = 120.0;
        final offerIdForExpiry = 'funded-expire-offer-id-${Uuid().v4()}'; // Ensure unique ID

        // expectedOfferPrototype is removed. The offer's properties will be checked in createOffer mock.

        // Mock createHoldInvoice: captures the hash generated by the service.
        when(mockPaymentService.createHoldInvoice(
                amountSats: anyNamed('amountSats'),
                memo: anyNamed('memo'),
                paymentHashHex: anyNamed('paymentHashHex'))) // Match any hash
            .thenAnswer((realInvocation) async {
          serviceGeneratedPaymentHash = realInvocation.namedArguments[Symbol('paymentHashHex')] as String;
          return CreateHoldInvoiceResult(
              invoice: 'lnbc_expire_invoice', paymentHash: serviceGeneratedPaymentHash); // Return the captured hash
        });

        // Mocks that depend on serviceGeneratedPaymentHash.
        // Their matchers will use the value of serviceGeneratedPaymentHash *at the time they are called*.
        final streamController = StreamController<InvoiceUpdate>();
        when(mockPaymentService.subscribeToInvoiceUpdates(
                paymentHashHex: argThat(_StringEqualsDynamicValueMatcher(() => serviceGeneratedPaymentHash, 'serviceGeneratedPaymentHash'))))
            .thenAnswer((_) => streamController.stream);
        
        Offer? offerForGetOfferById; // Used by getOfferById and createOffer mocks
        // Mock createOffer: capture the offer, set its ID and createdAt, and return it.
        // This ensures that getOfferById later finds an offer with a consistent ID and creation time.
        when(mockDbService.createOffer(
                argThat(isA<Offer>().having((o) => o.holdInvoicePaymentHash, 'holdInvoicePaymentHash', predicate((hash) {
                  // This predicate runs when createOffer is called.
                  // serviceGeneratedPaymentHash should be populated by then.
                  return hash == serviceGeneratedPaymentHash && serviceGeneratedPaymentHash.isNotEmpty;
                }, 'matches non-empty serviceGeneratedPaymentHash')))))
            .thenAnswer((invocation) async {
          final Offer offerToCreate = invocation.positionalArguments.first as Offer;
          // The offer's holdInvoicePaymentHash should already match serviceGeneratedPaymentHash due to the argThat.
          // Set ID and createdAt.
          // Other properties like fiatAmount, makerPubkey, etc., are set by _createOfferFromFundedInvoice
          // and are implicitly checked by being part of offerToCreate.
          offerForGetOfferById = offerToCreate.copyWith(id: offerIdForExpiry, createdAt: clock.now().toUtc());
          return offerForGetOfferById!;
        });
        
        // Mock getOfferById to return the offer that would have been created by the mockDbService.createOffer above.
        // It needs to reflect the state *before* expiration (funded) and *after* (expired).
        // We'll use a local variable to hold the "current" state of the offer for getOfferById.
        // This will be populated when createOffer is called.
        // For the initial state before expiration check:
        when(mockDbService.getOfferById(offerIdForExpiry)).thenAnswer((_) async {
          // This mock will return the current state of offerForGetOfferById,
          // which is populated by createOffer and updateOfferStatus mocks.
          return offerForGetOfferById; 
        });


        // Mock updateOfferStatus for when it's marked expired
        when(mockDbService.updateOfferStatus(offerIdForExpiry, OfferStatus.expired))
            .thenAnswer((_) async {
              // Simulate that the offer in the DB is now expired
              if (offerForGetOfferById != null) {
                offerForGetOfferById = offerForGetOfferById!.copyWith(status: OfferStatus.expired);
              }
              return true;
            });
        // Mock cancelInvoice for when the hold invoice is cancelled
        when(mockPaymentService.cancelInvoice(paymentHashHex: argThat(_StringEqualsDynamicValueMatcher(() => serviceGeneratedPaymentHash, 'serviceGeneratedPaymentHash'))))
            .thenAnswer((_) async {});

        // 2. Trigger initiateOfferFiat
        coordinatorService.initiateOfferFiat(
          fiatAmount: fiatAmount, 
          makerId: makerId, 
        ).then((initResult) {
          // serviceGeneratedPaymentHash is populated by the createHoldInvoice mock
          // which is called by initiateOfferFiat.
          expect(initResult['paymentHash'], serviceGeneratedPaymentHash);
          expect(serviceGeneratedPaymentHash, isNotEmpty); // Ensure it was populated
          // The offerForGetOfferById is populated by the createOffer mock later.
        });
        async.flushMicrotasks(); // Process the .then() and initial async calls in initiateOfferFiat

        // 3. Simulate invoice ACCEPTED to trigger _createOfferFromFundedInvoice, which starts the timer
        // Use serviceGeneratedPaymentHash which was populated when initiateOfferFiat called createHoldInvoice.
        expect(serviceGeneratedPaymentHash, isNotEmpty, reason: "serviceGeneratedPaymentHash should be populated before this point");
        streamController.add(InvoiceUpdate(status: InvoiceStatus.ACCEPTED, paymentHash: serviceGeneratedPaymentHash));
        async.flushMicrotasks(); // Process the stream event and subsequent async operations like createOffer

        // Verify _createOfferFromFundedInvoice was called (indirectly, by checking dbService.createOffer).
        // The thenAnswer of the createOffer mock (defined above) populates the test-scoped 
        // offerForGetOfferById with an Offer object having id: offerIdForExpiry and createdAt: clock.now().
        // This verify() call ensures that createOffer was indeed called with an offer matching serviceGeneratedPaymentHash.
        expect(serviceGeneratedPaymentHash, isNotEmpty, reason: "serviceGeneratedPaymentHash should be populated before createOffer verification");
        verify(mockDbService.createOffer(argThat(isA<Offer>()
            .having((o) => o.holdInvoicePaymentHash, 'holdInvoicePaymentHash', serviceGeneratedPaymentHash)))).called(1);
        // Note: The test-scoped offerForGetOfferById is now correctly set by the createOffer mock's .thenAnswer.
        // It should have id: offerIdForExpiry and the createdAt value from when the mock's .thenAnswer ran.

        // Re-mock getOfferById. It will use the offerForGetOfferById populated by createOffer's thenAnswer.
        // This is crucial because the timer logic in CoordinatorService relies on offer.createdAt.
        when(mockDbService.getOfferById(offerIdForExpiry)).thenAnswer((_) async {
          // Ensure offerForGetOfferById is not null, which it shouldn't be if createOffer's thenAnswer worked.
          expect(offerForGetOfferById, isNotNull, reason: "offerForGetOfferById should be populated by createOffer mock");
          expect(offerForGetOfferById!.id, offerIdForExpiry, reason: "ID mismatch in getOfferById mock");

          if (offerForGetOfferById!.status == OfferStatus.expired) { // If it was marked expired by updateOfferStatus mock
            return offerForGetOfferById;
          }
          // Return the offer as funded, reflecting its state before expiry or if expiry handling failed.
          // The createdAt time from offerForGetOfferById (set by createOffer mock) is implicitly used by CoordinatorService's timer logic.
          return offerForGetOfferById!.copyWith(status: OfferStatus.funded); 
        });


        // 4. Elapse time, but not enough to expire
        final timeoutDuration = Duration(seconds: CoordinatorService_static.getFundedExpireTimeoutSeconds(coordinatorService));
        async.elapse(timeoutDuration - Duration(seconds: 1));

        verifyNever(mockPaymentService.cancelInvoice(paymentHashHex: argThat(_StringEqualsDynamicValueMatcher(() => serviceGeneratedPaymentHash, 'serviceGeneratedPaymentHash'))));
        verifyNever(mockDbService.updateOfferStatus(offerIdForExpiry, OfferStatus.expired));

        // 5. Elapse time past the timeout
        async.elapse(Duration(seconds: 2)); // Go past the timeout

        verify(mockPaymentService.cancelInvoice(paymentHashHex: argThat(_StringEqualsDynamicValueMatcher(() => serviceGeneratedPaymentHash, 'serviceGeneratedPaymentHash')))).called(1);
        verify(mockDbService.updateOfferStatus(offerIdForExpiry, OfferStatus.expired)).called(1);

        streamController.close();
      });
    });

    test('reserved offer reverts to funded after RESERVATION_SECONDS timeout', () {
      fakeAsync((async) {
        final offerIdForReservationTimeout = 'reserved-timeout-offer-id';
        final takerIdForReservationTimeout = 'taker-reserv-timeout';
        final initialTime = clock.now().toUtc();

        // 1. Setup: Create a reserved offer
        final reservedOffer = createTestOffer(
          id: offerIdForReservationTimeout,
          status: OfferStatus.funded, // Start as funded, then reserve it
          takerPubkey: null,
          reservedAt: null,
          createdAt: initialTime.subtract(Duration(minutes: 1)), // Ensure it's not brand new for other timers
        );
        when(mockDbService.getOfferById(offerIdForReservationTimeout)).thenAnswer((_) async => reservedOffer);
        
        // Mock the update to reserved status
        when(mockDbService.updateOfferStatus(
          offerIdForReservationTimeout,
          OfferStatus.reserved,
          takerPubkey: takerIdForReservationTimeout,
          reservedAt: anyNamed('reservedAt'),
        )).thenAnswer((invocation) async {
          // Simulate the DB update by changing the offer's state for subsequent getOfferById calls
          reservedOffer.status = OfferStatus.reserved;
          reservedOffer.takerPubkey = takerIdForReservationTimeout;
          reservedOffer.reservedAt = invocation.namedArguments[Symbol('reservedAt')] as DateTime;
          return true;
        });

        // Mock the update back to funded status for timeout
        when(mockDbService.updateOfferStatus(
          offerIdForReservationTimeout,
          OfferStatus.funded,
          takerPubkey: null, // Expect takerPubkey to be cleared
          blikCode: null, // Expect blikCode to be cleared
          takerLightningAddress: null, // Expect takerLightningAddress to be cleared
          reservedAt: null, // Expect reservedAt to be cleared
        )).thenAnswer((_) async {
          reservedOffer.status = OfferStatus.funded; // Simulate DB update
          reservedOffer.takerPubkey = null;
          reservedOffer.reservedAt = null;
          return true;
        });
        
        // 2. Reserve the offer to start the timer
        coordinatorService.reserveOffer(offerIdForReservationTimeout, takerIdForReservationTimeout).then((_) {
            // verify timer started, by checking side effects or if service exposes info
        });
        async.flushMicrotasks(); // Process the reservation

        // Verify it became reserved
        expect(reservedOffer.status, OfferStatus.reserved);
        expect(reservedOffer.reservedAt, isNotNull);

        // 3. Elapse time, but not enough to expire the reservation
        final reservationTimeout = Duration(seconds: CoordinatorService_static.getReservationTimeoutSeconds(coordinatorService));
        async.elapse(reservationTimeout - Duration(seconds: 1));

        // Verify it's still reserved
        verifyNever(mockDbService.updateOfferStatus(
          offerIdForReservationTimeout,
          OfferStatus.funded,
          takerPubkey: null,
          blikCode: null,
          takerLightningAddress: null,
          reservedAt: null,
        ));
        
        // 4. Elapse time past the reservation timeout
        async.elapse(Duration(seconds: 2)); // Go past timeout

        // Verify it reverted to funded
        final capturedArgs = verify(mockDbService.updateOfferStatus(
          offerIdForReservationTimeout,
          OfferStatus.funded,
          takerPubkey: captureAnyNamed('takerPubkey'),
          blikCode: captureAnyNamed('blikCode'),
          takerLightningAddress: captureAnyNamed('takerLightningAddress'),
          reservedAt: captureAnyNamed('reservedAt'),
        )).captured;

        expect(capturedArgs[0], isNull); // takerPubkey should be null
        expect(capturedArgs[1], isNull); // blikCode should be null
        expect(capturedArgs[2], isNull); // takerLightningAddress should be null
        expect(capturedArgs[3], isNull); // reservedAt should be null
      });
    });

    test('reserved --taker cancels reservation--> funded', () async {
      final offer = createTestOffer(
        status: OfferStatus.reserved, 
        takerPubkey: testTakerId, 
        reservedAt: clock.now().toUtc().subtract(Duration(seconds: 5)) // Reserved a bit ago
      );
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      
      // Mock the update back to funded
      when(mockDbService.updateOfferStatus(
        testOfferId, 
        OfferStatus.funded,
        takerPubkey: null, // Expect takerPubkey to be cleared
        blikCode: null, // Expect blikCode to be cleared
        takerLightningAddress: null, // Expect takerLightningAddress to be cleared
        reservedAt: null, // Expect reservedAt to be cleared
      )).thenAnswer((_) async => true);

      final result = await coordinatorService.cancelReservation(testOfferId, testTakerId);

      expect(result, isTrue);
      final capturedArgs = verify(mockDbService.updateOfferStatus(
        testOfferId, 
        OfferStatus.funded,
        takerPubkey: captureAnyNamed('takerPubkey'),
        blikCode: captureAnyNamed('blikCode'),
        takerLightningAddress: captureAnyNamed('takerLightningAddress'),
        reservedAt: captureAnyNamed('reservedAt'),
      )).captured;

      expect(capturedArgs[0], isNull);
      expect(capturedArgs[1], isNull);
      expect(capturedArgs[2], isNull);
      expect(capturedArgs[3], isNull);
      // Also assert that the reservation timer for this offer was cancelled.
      // This is an internal detail, harder to test without exposing timer status.
    });

    test('reserved --taker enters BLK code--> blkReceived', () async {
      final offer = createTestOffer(
        status: OfferStatus.reserved, 
        takerPubkey: testTakerId,
        reservedAt: clock.now().toUtc().subtract(Duration(seconds: 5))
      );
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      
      // Mock LNURL resolution
      // Assuming _resolveLnurlPay is part of CoordinatorService and might be complex to mock directly
      // For now, we'll rely on the PaymentService mock if submitBlikCode uses it,
      // or assume it works. submitBlikCode itself calls _resolveLnurlPay.
      // Let's assume _resolveLnurlPay is successful and returns a dummy invoice.
      // This part of the test might need CoordinatorService to be more testable regarding LNURL.
      // For now, we'll focus on the status update.
      // If submitBlikCode directly calls http.get, we'd need an HttpClient mock.
      // Given the current structure, _resolveLnurlPay is internal.
      // We'll mock the DB update part.

      when(mockDbService.updateOfferStatus(
        testOfferId,
        OfferStatus.blikReceived,
        blikCode: testBlikCode,
        takerLightningAddress: testTakerLnAddress,
        blikReceivedAt: anyNamed('blikReceivedAt'),
      )).thenAnswer((_) async => true);

      // To make submitBlikCode pass the _resolveLnurlPay step, we need to ensure it returns a non-null invoice.
      // This is tricky as _resolveLnurlPay is private.
      // A pragmatic way for this unit test is to assume _resolveLnurlPay works if the address is valid,
      // or refactor CoordinatorService to inject an LNURL resolver.
      // For now, we'll proceed and see if the test fails due to LNURL resolution.
      // If it does, we'll need to adjust.
      // The `submitBlikCode` method in `CoordinatorService` calls `_resolveLnurlPay`.
      // We can't directly mock `_resolveLnurlPay`.
      // However, `_resolveLnurlPay` uses `http.get`. We could mock `http.Client`.
      // This is getting complex for a unit test of `submitBlikCode`'s main logic.

      // Let's assume for this specific test that LNURL resolution is successful.
      // The test for `_resolveLnurlPay` itself should cover its own logic.
      // The `submitBlikCode` method will call `_dbService.updateOfferStatus`.

      // We need to ensure the `_resolveLnurlPay` part doesn't make the test fail.
      // One way is to provide a takerLightningAddress that the actual `_resolveLnurlPay` might handle gracefully in a test environment,
      // or if it's mocked at a higher level (e.g. http client).
      // Since we don't have http client mock here, this test might be flaky if it makes real network calls.
      // The provided `coordinator_service.dart` does make real http calls in `_resolveLnurlPay`.
      // This means this test, as is, will attempt a network call.
      // For robust unit tests, network calls should be mocked.
      // This test will now use the mocked http client.
      // We need to stub the mockHttpClient.get call for the specific LNURL.
      // These are now handled by the generic mockHttpClient.get(any) above,
      // which has specific logic for 'taker@example.com' URLs.
      // If more specific LNURL behavior is needed for this test, it can be added here,
      // overriding the generic setUp mock for this specific test case.

      // final lnurlPayResponse = '{"tag":"payRequest","callback":"https://example.com/lnurlpay","metadata":"[[\"text/plain\",\"Test LNURLP\"]]", "minSendable":1000, "maxSendable":1000000, "commentAllowed": 0}';
      // final lnurlpCallbackResponse = '{"pr":"lnbc_test_invoice_from_lnurl","successAction":{"tag":"message","message":"Paid!"}}';
      
      // when(mockHttpClient.get(
      //   Uri.parse('https://example.com/.well-known/lnurlp/taker') 
      // )).thenAnswer((_) async => http.Response(lnurlPayResponse, 200));
      
      // when(mockHttpClient.get(
      //   argThat(startsWith('https://example.com/lnurlpay?amount=')), // More robust matching for callback
      // )).thenAnswer((_) async => http.Response(lnurlpCallbackResponse, 200));

      final result = await coordinatorService.submitBlikCode(testOfferId, testTakerId, testBlikCode, testTakerLnAddress);
      
      expect(result, isTrue); // Expect true now that HTTP is mocked
      final captured = verify(mockDbService.updateOfferStatus(
        testOfferId,
        OfferStatus.blikReceived,
        blikCode: testBlikCode,
        takerLightningAddress: testTakerLnAddress,
        blikReceivedAt: captureAnyNamed('blikReceivedAt'),
      )).captured;
      expect(captured.single, isA<DateTime>());
      // Assert reservation timer was cancelled and BLIK confirmation timer started. (Internal detail)
    });

    test('blkReceived --maker gets BLK code--> blkSentToMaker', () async {
      final offer = createTestOffer(
        status: OfferStatus.blikReceived, 
        blikCode: testBlikCode,
        blikReceivedAt: clock.now().toUtc().subtract(Duration(seconds: 10)) // BLIK was received a bit ago
      );
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.blikSentToMaker))
          .thenAnswer((_) async => true);

      final blikCodeResult = await coordinatorService.getBlikCodeForMaker(testOfferId, testMakerId);

      expect(blikCodeResult, testBlikCode);
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.blikSentToMaker)).called(1);
      // Assert that BLIK confirmation timer is cancelled (internal detail)
    });

    test('blkReceived reverts to funded after BLIK confirmation timeout (120s)', () {
      fakeAsync((async) {
        final offerIdForBlikTimeout = 'blik-timeout-offer-id';
        final initialTime = clock.now().toUtc();

        // 1. Setup: Create an offer that is in blikReceived state
        final blikReceivedOffer = createTestOffer(
          id: offerIdForBlikTimeout,
          status: OfferStatus.reserved, // Start as reserved, then move to blikReceived
          takerPubkey: testTakerId,
          reservedAt: initialTime.subtract(Duration(minutes: 1)),
          createdAt: initialTime.subtract(Duration(minutes: 2)),
        );
        when(mockDbService.getOfferById(offerIdForBlikTimeout)).thenAnswer((_) async => blikReceivedOffer);

        // Mock the update to blikReceived status
        when(mockDbService.updateOfferStatus(
          offerIdForBlikTimeout,
          OfferStatus.blikReceived,
          blikCode: testBlikCode,
          takerLightningAddress: testTakerLnAddress,
          blikReceivedAt: anyNamed('blikReceivedAt'),
        )).thenAnswer((invocation) async {
          blikReceivedOffer.status = OfferStatus.blikReceived;
          blikReceivedOffer.blikCode = testBlikCode;
          blikReceivedOffer.takerLightningAddress = testTakerLnAddress;
          blikReceivedOffer.blikReceivedAt = invocation.namedArguments[Symbol('blikReceivedAt')] as DateTime;
          return true;
        });
        
        // Mock the update back to funded status for timeout
        when(mockDbService.updateOfferStatus(offerIdForBlikTimeout, OfferStatus.funded))
            .thenAnswer((_) async {
          blikReceivedOffer.status = OfferStatus.funded; // Simulate DB update
          return true;
        });

        // 2. Transition the offer to blikReceived to start the timer
        // We need to successfully call submitBlikCode. This means _resolveLnurlPay must not fail.
        // Mock HTTP calls for submitBlikCode
        // These are now handled by the generic mockHttpClient.get(any) in setUp.
        // If specific responses are needed for 'taker@example.com' in this test,
        // they can be re-stubbed here. The generic setUp mocks for LNURL should cover it.
        // final lnurlPayResponse = '{"tag":"payRequest","callback":"https://example.com/lnurlpay_bliktimeout","metadata":"[[\"text/plain\",\"Test LNURLP\"]]", "minSendable":1000, "maxSendable":1000000, "commentAllowed": 0}';
        // final lnurlpCallbackResponse = '{"pr":"lnbc_test_invoice_from_lnurl_bliktimeout","successAction":{"tag":"message","message":"Paid!"}}';

        // when(mockHttpClient.get(
        //   Uri.parse('https://example.com/.well-known/lnurlp/taker') 
        // )).thenAnswer((_) async => http.Response(lnurlPayResponse, 200));
        
        // when(mockHttpClient.get(
        //   argThat(startsWith('https://example.com/lnurlpay_bliktimeout?amount='))
        // )).thenAnswer((_) async => http.Response(lnurlpCallbackResponse, 200));

        coordinatorService.submitBlikCode(offerIdForBlikTimeout, testTakerId, testBlikCode, testTakerLnAddress)
            .then((success) {
              expect(success, isTrue, reason: "submitBlikCode should succeed with mocked HTTP client");
            });
        async.flushMicrotasks(); // Process submitBlikCode

        // Ensure it's in blikReceived state (critical for timer to start)
        expect(blikReceivedOffer.status, OfferStatus.blikReceived, reason: "Offer should be in blikReceived state for timer test to be valid.");
        expect(blikReceivedOffer.blikReceivedAt, isNotNull);

        // 3. Elapse time, but not enough to expire the BLIK confirmation
        final blikConfirmationTimeout = Duration(seconds: 120); // As per CoordinatorService._startBlikConfirmationTimer
        async.elapse(blikConfirmationTimeout - Duration(seconds: 1));
        
        verifyNever(mockDbService.updateOfferStatus(offerIdForBlikTimeout, OfferStatus.funded));
        
        // 4. Elapse time past the BLIK confirmation timeout
        async.elapse(Duration(seconds: 2));

        verify(mockDbService.updateOfferStatus(offerIdForBlikTimeout, OfferStatus.funded)).called(1);
      });
    });

    test('blkSentToMaker --maker confirms good BLK--> makerConfirmed -> settled -> payingTaker', () async {
      final offer = createTestOffer(
        status: OfferStatus.blikSentToMaker, 
        holdInvoicePreimage: testPreimage, // Crucial for settling
        takerLightningAddress: testTakerLnAddress, // Crucial for paying taker
        // Ensure fees are set for _payTakerAsync calculation
        amountSats: testSatsAmount,
        makerFees: testMakerFees,
        takerFees: testTakerFees 
      );
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      
      // Mock sequence of status updates
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.makerConfirmed))
          .thenAnswer((_) async {
            offer.status = OfferStatus.makerConfirmed; // Simulate DB update
            return true;
          });
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.settled))
          .thenAnswer((_) async {
            offer.status = OfferStatus.settled; // Simulate DB update
            return true;
          });
      // _payTakerAsync will be called, which updates to payingTaker then takerPaid/takerPaymentFailed
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.payingTaker))
          .thenAnswer((_) async {
            offer.status = OfferStatus.payingTaker; // Simulate DB update
            return true;
          });
      // Assume payment to taker is successful for this path
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.takerPaid, takerFees: anyNamed('takerFees')))
          .thenAnswer((_) async {
            offer.status = OfferStatus.takerPaid; // Simulate DB update
            return true;
          });
      when(mockDbService.updateTakerInvoice(testOfferId, any)).thenAnswer((_) async => true);
      when(mockDbService.updateTakerInvoiceFees(testOfferId, any)).thenAnswer((_) async => true);

      // Mock payment service calls
      when(mockPaymentService.settleInvoice(preimageHex: testPreimage)).thenAnswer((_) async {});
      // Mock _resolveLnurlPay to succeed for _payTakerAsync
      // This is still an issue due to direct http calls. We assume it works for now.
      // If CoordinatorService allowed injecting an http.Client, this would be cleaner.
      // For the happy path, we assume LNURL resolution and payment succeed.
      when(mockPaymentService.payInvoice(invoice: anyNamed('invoice'), amountSat: anyNamed('amountSat'), feeLimitSat: anyNamed('feeLimitSat')))
          .thenAnswer((_) async => PayInvoiceResult(paymentPreimage: 'taker_paid_preimage', feeSat: 5));

      final result = await coordinatorService.confirmMakerPayment(testOfferId, testMakerId);
      expect(result, isTrue);

      // Verify settlement
      verify(mockPaymentService.settleInvoice(preimageHex: testPreimage)).called(1);
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.makerConfirmed)).called(1);
      
      // Wait for async operations within confirmMakerPayment and _payTakerAsync to complete
      await untilCalled(mockDbService.updateOfferStatus(testOfferId, OfferStatus.settled));
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.settled)).called(1);
      
      // _payTakerAsync is called without await in confirmMakerPayment, so we need to wait for its effects
      await untilCalled(mockDbService.updateOfferStatus(testOfferId, OfferStatus.payingTaker));
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.payingTaker)).called(1);
      
      await untilCalled(mockDbService.updateOfferStatus(testOfferId, OfferStatus.takerPaid, takerFees: anyNamed('takerFees')));
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.takerPaid, takerFees: offer.takerFees)).called(1);
      
      // Verify taker payment was attempted
      verify(mockPaymentService.payInvoice(invoice: anyNamed('invoice'), amountSat: offer.amountSats - (offer.takerFees ?? 0), feeLimitSat: offer.makerFees + 100)).called(1);
    });

    test('blkSentToMaker --maker marks as bad BLK--> invalidBlik', () async {
      final offer = createTestOffer(status: OfferStatus.blikSentToMaker);
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.invalidBlik))
          .thenAnswer((_) async => true);

      final result = await coordinatorService.markBlikInvalid(testOfferId, testMakerId);

      expect(result, isTrue);
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.invalidBlik)).called(1);
    });

    test('invalidBlik --taker re-takes--> reserved (same taker)', () async {
      final offer = createTestOffer(
        status: OfferStatus.invalidBlik, 
        takerPubkey: testTakerId // Original taker
      );
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      when(mockDbService.updateOfferStatus(
        testOfferId, 
        OfferStatus.reserved,
        takerPubkey: testTakerId, // Should be the same taker
        reservedAt: anyNamed('reservedAt')
      )).thenAnswer((_) async => true);

      final reservationTime = await coordinatorService.reserveOffer(testOfferId, testTakerId);

      expect(reservationTime, isNotNull);
      expect(reservationTime, isA<DateTime>());
      verify(mockDbService.updateOfferStatus(
        testOfferId, 
        OfferStatus.reserved,
        takerPubkey: testTakerId,
        reservedAt: captureAnyNamed('reservedAt')
      )).called(1);
    });

    test('invalidBlik --taker attempts to re-take with different taker ID --> fails', () async {
      final originalTakerId = 'original-taker-id';
      final differentTakerId = 'different-taker-id';
      final offer = createTestOffer(
        status: OfferStatus.invalidBlik, 
        takerPubkey: originalTakerId 
      );
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final reservationTime = await coordinatorService.reserveOffer(testOfferId, differentTakerId);

      expect(reservationTime, isNull); // Should fail because taker ID doesn't match
      verifyNever(mockDbService.updateOfferStatus(
        any, 
        OfferStatus.reserved,
        takerPubkey: anyNamed('takerPubkey'),
        reservedAt: anyNamed('reservedAt')
      ));
    });
    
    test('invalidBlik --taker marks BLK as charged--> conflict', () async {
      final offer = createTestOffer(status: OfferStatus.invalidBlik, takerPubkey: testTakerId);
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.conflict))
          .thenAnswer((_) async => true);

      final result = await coordinatorService.markOfferConflict(testOfferId, testTakerId);
      
      expect(result, isTrue);
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.conflict)).called(1);
    });

    test('conflict --maker confirms good BLK--> makerConfirmed -> settled -> payingTaker', () async {
      final offer = createTestOffer(
        status: OfferStatus.conflict, // Starting from conflict
        holdInvoicePreimage: testPreimage,
        takerLightningAddress: testTakerLnAddress,
        makerPubkey: testMakerId, // Ensure maker is correct
        amountSats: testSatsAmount,
        makerFees: testMakerFees,
        takerFees: testTakerFees
      );
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);
      
      // Mock sequence of status updates
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.makerConfirmed))
          .thenAnswer((_) async {
            offer.status = OfferStatus.makerConfirmed;
            return true;
          });
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.settled))
          .thenAnswer((_) async {
            offer.status = OfferStatus.settled;
            return true;
          });
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.payingTaker))
          .thenAnswer((_) async {
            offer.status = OfferStatus.payingTaker;
            return true;
          });
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.takerPaid, takerFees: anyNamed('takerFees')))
          .thenAnswer((_) async {
            offer.status = OfferStatus.takerPaid;
            return true;
          });
      when(mockDbService.updateTakerInvoice(testOfferId, any)).thenAnswer((_) async => true);
      when(mockDbService.updateTakerInvoiceFees(testOfferId, any)).thenAnswer((_) async => true);

      // Mock payment service calls
      when(mockPaymentService.settleInvoice(preimageHex: testPreimage)).thenAnswer((_) async {});
      when(mockPaymentService.payInvoice(invoice: anyNamed('invoice'), amountSat: anyNamed('amountSat'), feeLimitSat: anyNamed('feeLimitSat')))
          .thenAnswer((_) async => PayInvoiceResult(paymentPreimage: 'taker_paid_preimage_conflict', feeSat: 6));

      final result = await coordinatorService.confirmMakerPayment(testOfferId, testMakerId);
      expect(result, isTrue);

      verify(mockPaymentService.settleInvoice(preimageHex: testPreimage)).called(1);
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.makerConfirmed)).called(1);
      
      await untilCalled(mockDbService.updateOfferStatus(testOfferId, OfferStatus.settled));
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.settled)).called(1);
      
      await untilCalled(mockDbService.updateOfferStatus(testOfferId, OfferStatus.payingTaker));
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.payingTaker)).called(1);
      
      await untilCalled(mockDbService.updateOfferStatus(testOfferId, OfferStatus.takerPaid, takerFees: anyNamed('takerFees')));
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.takerPaid, takerFees: offer.takerFees)).called(1);
      
      verify(mockPaymentService.payInvoice(invoice: anyNamed('invoice'), amountSat: offer.amountSats - (offer.takerFees ?? 0), feeLimitSat: offer.makerFees + 100)).called(1);
    });

    test('takerPaymentFailed --enter new bolt11 invoice & retry --> payingTaker -> takerPaid', () async {
      final newTakerInvoice = 'lnbc_new_taker_invoice_for_retry';
      final offer = createTestOffer(
        status: OfferStatus.takerPaymentFailed,
        takerPubkey: testTakerId, // Needed for updateTakerInvoice and retryTakerPayment
        // Ensure other fields are present for payment logic
        amountSats: testSatsAmount,
        makerFees: testMakerFees,
        takerFees: testTakerFees,
        takerLightningAddress: testTakerLnAddress, // Though new invoice is used, original might be on offer
        holdInvoicePreimage: testPreimage // Not directly used here but good for consistency
      );
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      // Mock updateTakerInvoice
      when(mockDbService.updateTakerInvoice(testOfferId, newTakerInvoice)).thenAnswer((_) async {
        offer.takerInvoice = newTakerInvoice; // Simulate DB update
        return true;
      });
      
      // Mock status updates for retryTakerPayment
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.payingTaker))
          .thenAnswer((_) async {
            offer.status = OfferStatus.payingTaker;
            return true;
          });
      when(mockDbService.updateOfferStatus(testOfferId, OfferStatus.takerPaid, takerFees: anyNamed('takerFees')))
          .thenAnswer((_) async {
            offer.status = OfferStatus.takerPaid;
            return true;
          });
      when(mockDbService.updateTakerInvoiceFees(testOfferId, any)).thenAnswer((_) async => true);

      // Mock successful payment for the new invoice
      when(mockPaymentService.payInvoice(invoice: newTakerInvoice, amountSat: offer.amountSats - (offer.takerFees ?? 0), feeLimitSat: offer.makerFees + 100))
          .thenAnswer((_) async => PayInvoiceResult(paymentPreimage: 'retry_paid_preimage', feeSat: 7));

      // Step 1: Update the taker invoice
      final updateResult = await coordinatorService.updateTakerInvoice(testOfferId, newTakerInvoice, testTakerId);
      expect(updateResult, isTrue);
      expect(offer.takerInvoice, newTakerInvoice);

      // Step 2: Retry the payment
      final retryResult = await coordinatorService.retryTakerPayment(testOfferId, testTakerId);
      expect(retryResult, isNull); // Null means success for retryTakerPayment

      // Verify transitions
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.payingTaker)).called(1);
      verify(mockDbService.updateOfferStatus(testOfferId, OfferStatus.takerPaid, takerFees: offer.takerFees)).called(1);
      verify(mockPaymentService.payInvoice(invoice: newTakerInvoice, amountSat: offer.amountSats - (offer.takerFees ?? 0), feeLimitSat: offer.makerFees + 100)).called(1);
    });

    // --- Cheating / Fund Stealing Attempts ---
    
    test('Attempt to confirm payment by wrong maker', () async {
      final offer = createTestOffer(status: OfferStatus.blikSentToMaker, makerPubkey: testMakerId);
      final wrongMakerId = 'wrong-maker-id';
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.confirmMakerPayment(testOfferId, wrongMakerId);
      
      expect(result, isFalse);
      verifyNever(mockPaymentService.settleInvoice(preimageHex: anyNamed('preimageHex')));
      verifyNever(mockDbService.updateOfferStatus(testOfferId, OfferStatus.makerConfirmed));
    });

    test('Attempt to mark BLIK invalid by wrong maker', () async {
      final offer = createTestOffer(status: OfferStatus.blikSentToMaker, makerPubkey: testMakerId);
      final wrongMakerId = 'wrong-maker-id';
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.markBlikInvalid(testOfferId, wrongMakerId);

      expect(result, isFalse);
      verifyNever(mockDbService.updateOfferStatus(testOfferId, OfferStatus.invalidBlik));
    });

    test('Attempt to get BLIK code by wrong maker', () async {
      final offer = createTestOffer(status: OfferStatus.blikReceived, makerPubkey: testMakerId, blikCode: testBlikCode);
      final wrongMakerId = 'wrong-maker-id';
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final blikCodeResult = await coordinatorService.getBlikCodeForMaker(testOfferId, wrongMakerId);

      expect(blikCodeResult, isNull);
      verifyNever(mockDbService.updateOfferStatus(testOfferId, OfferStatus.blikSentToMaker));
    });
    
    test('Attempt to submit BLIK code by wrong taker', () async {
      final offer = createTestOffer(status: OfferStatus.reserved, takerPubkey: testTakerId);
      final wrongTakerId = 'wrong-taker-id';
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.submitBlikCode(testOfferId, wrongTakerId, testBlikCode, testTakerLnAddress);
      
      expect(result, isFalse);
      verifyNever(mockDbService.updateOfferStatus(testOfferId, OfferStatus.blikReceived, blikCode: anyNamed('blikCode'), takerLightningAddress: anyNamed('takerLightningAddress'), blikReceivedAt: anyNamed('blikReceivedAt')));
    });

    test('Attempt to cancel reservation by wrong taker', () async {
      final offer = createTestOffer(status: OfferStatus.reserved, takerPubkey: testTakerId);
      final wrongTakerId = 'wrong-taker-id';
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.cancelReservation(testOfferId, wrongTakerId);

      expect(result, isFalse);
      verifyNever(mockDbService.updateOfferStatus(testOfferId, OfferStatus.funded));
    });

    test('Attempt to cancel offer by wrong maker', () async {
      final offer = createTestOffer(status: OfferStatus.funded, makerPubkey: testMakerId);
      final wrongMakerId = 'wrong-maker-id';
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.cancelOffer(testOfferId, wrongMakerId);

      expect(result, isFalse);
      verifyNever(mockPaymentService.cancelInvoice(paymentHashHex: anyNamed('paymentHashHex')));
      verifyNever(mockDbService.cancelOffer(testOfferId, wrongMakerId));
    });

    test('Attempt to mark conflict by wrong taker', () async {
      final offer = createTestOffer(status: OfferStatus.invalidBlik, takerPubkey: testTakerId);
      final wrongTakerId = 'wrong-taker-id';
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.markOfferConflict(testOfferId, wrongTakerId);

      expect(result, isFalse);
      verifyNever(mockDbService.updateOfferStatus(testOfferId, OfferStatus.conflict));
    });
    
    test('Attempt to update taker invoice by wrong user', () async {
      final offer = createTestOffer(status: OfferStatus.takerPaymentFailed, takerPubkey: testTakerId);
      final wrongUserId = 'wrong-user-id';
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.updateTakerInvoice(testOfferId, 'new_invoice', wrongUserId);

      expect(result, isFalse);
      verifyNever(mockDbService.updateTakerInvoice(testOfferId, any));
    });

    test('Attempt to retry taker payment by wrong user', () async {
      final offer = createTestOffer(status: OfferStatus.takerPaymentFailed, takerPubkey: testTakerId, takerInvoice: 'old_invoice'); // Now uses the updated createTestOffer
      final wrongUserId = 'wrong-user-id';
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.retryTakerPayment(testOfferId, wrongUserId);

      expect(result, isNotNull); // Should return an error message
      expect(result, 'not your offer');
      verifyNever(mockDbService.updateOfferStatus(testOfferId, OfferStatus.payingTaker));
    });

    test('Maker tries to confirm payment on an offer not in blkSentToMaker or conflict state', () async {
      final offer = createTestOffer(status: OfferStatus.funded, makerPubkey: testMakerId); // e.g. funded
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.confirmMakerPayment(testOfferId, testMakerId);

      expect(result, isFalse);
      verifyNever(mockPaymentService.settleInvoice(preimageHex: anyNamed('preimageHex')));
    });
    
    test('Taker tries to submit BLIK on an offer not in reserved state', () async {
      final offer = createTestOffer(status: OfferStatus.funded, takerPubkey: testTakerId); // e.g. funded
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.submitBlikCode(testOfferId, testTakerId, testBlikCode, testTakerLnAddress);
      
      expect(result, isFalse);
      verifyNever(mockDbService.updateOfferStatus(testOfferId, OfferStatus.blikReceived, blikCode: anyNamed('blikCode'), takerLightningAddress: anyNamed('takerLightningAddress'), blikReceivedAt: anyNamed('blikReceivedAt')));
    });

    test('Taker tries to reserve an already reserved offer', () async {
      final firstTakerId = 'first-taker-id';
      final secondTakerId = 'second-taker-id';
      final offer = createTestOffer(
        status: OfferStatus.reserved, 
        takerPubkey: firstTakerId, 
        reservedAt: clock.now().toUtc()
      );
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.reserveOffer(testOfferId, secondTakerId);
      
      expect(result, isNull); // reserveOffer returns null on failure
      // No change in status or taker
      verifyNever(mockDbService.updateOfferStatus(
        testOfferId, 
        OfferStatus.reserved, 
        takerPubkey: secondTakerId, 
        reservedAt: anyNamed('reservedAt')
      ));
    });

    test('Maker tries to cancel an offer that is already reserved', () async {
      final offer = createTestOffer(status: OfferStatus.reserved, makerPubkey: testMakerId, takerPubkey: testTakerId);
      when(mockDbService.getOfferById(testOfferId)).thenAnswer((_) async => offer);

      final result = await coordinatorService.cancelOffer(testOfferId, testMakerId);

      expect(result, isFalse);
      verifyNever(mockPaymentService.cancelInvoice(paymentHashHex: anyNamed('paymentHashHex')));
      verifyNever(mockDbService.cancelOffer(testOfferId, testMakerId));
    });

  });
}

// Helper class to access static private fields for testing purposes if needed.
// This is generally not ideal but can be a pragmatic solution for testing constants.
class CoordinatorService_static {
  static int getFundedExpireTimeoutSeconds(CoordinatorService instance) {
    // Accessing static final Platform.environment reads can't be easily mocked per instance.
    // Tests relying on these durations should ideally have these values injected or configurable.
    // For now, we use the default value from CoordinatorService.dart if env var is not set.
    return int.tryParse(String.fromEnvironment('FUNDED_EXPIRY_SECONDS', defaultValue: '600')) ?? 600;
  }

  static int getReservationTimeoutSeconds(CoordinatorService instance) {
    return int.tryParse(String.fromEnvironment('RESERVATION_SECONDS', defaultValue: '30')) ?? 30;
  }
}

// Helper to get CoordinatorService's internal payment backend for testing.
// This is a hack and indicates a need for better DI or testability in CoordinatorService.
// extension CoordinatorServiceTestExtension on CoordinatorService {
//   void setPaymentBackend(PaymentService backend) {
//     // This would require _paymentBackend to be non-final or have a setter.
//     // Or, the initialization logic needs to be mockable.
//   }
// }
