import 'dart:async'; // For StreamSubscription, Timer
import 'dart:convert'; // For jsonDecode
import 'dart:io' show Platform; // To read environment variables
import 'dart:math'; // For random preimage
import 'dart:typed_data'; // For Uint8List

import 'dart:io';
import 'package:yaml/yaml.dart';
import 'package:clock/clock.dart'; // Added for Clock
import 'package:crypto/crypto.dart'; // For SHA256
import 'package:http/http.dart' as http; // For LNURL HTTP requests
import 'package:matrix/matrix.dart' as matrix; // Import Matrix SDK
import 'package:process_run/process_run.dart';

import '../models/offer.dart';
import 'database_service.dart';
import 'lnd_service.dart';
import 'nwc_service.dart';
import 'payment_service.dart';
import '../models/invoice_status.dart';
import '../models/invoice_update.dart';

// Set to Duration.zero for production
const Duration _kDebugDelayDuration = Duration(seconds: 0);

class CoordinatorService {
  final DatabaseService _dbService;
  PaymentService? _paymentBackend; // Unified payment backend
  String _paymentBackendType =
      "none"; // To track active backend: "lnd", "nwc", or "none"
  final Clock _clock; // Added for testable time
  final http.Client _httpClient; // Added for testable HTTP calls

  matrix.Client? _matrixClient; // Matrix client instance

  final String _matrixHomeserver =
      Platform.environment['MATRIX_HOMESERVER'] ?? 'https://matrix.org';
  final String _matrixUser = Platform.environment['MATRIX_USER'] ?? '';
  final String _matrixPassword = Platform.environment['MATRIX_PASSWORD'] ?? '';
  final String _matrixRoomId = Platform.environment['MATRIX_ROOM'] ?? '';

  // Coordinator Info
  static final String _coordinatorName =
      Platform.environment['NAME'] ?? 'BitBlik Coordinator';
  static final String _coordinatorIconUrl = Platform.environment['ICON_URL'] ??
      'https://bitblik.app/splash/img/dark-2x.png';
  static final String _coordinatorNostrNpub =
      Platform.environment['NOSTR_NPUB'] ?? '';

  // Offer amount limits
  static final int _minAmountSats =
      int.tryParse(Platform.environment['MIN_AMOUNT_SATS'] ?? '') ?? 1000;
  static final int _maxAmountSats =
      int.tryParse(Platform.environment['MAX_AMOUNT_SATS'] ?? '') ?? 250000;

  // Supported currencies
  static final List<String> _supportedCurrencies =
      (Platform.environment['CURRENCIES']?.split(',') ?? ['PLN'])
          .map((c) => c.trim().toUpperCase())
          .toList();

  // Reservation timeout configuration
  static final int _reservationTimeoutSeconds =
      int.tryParse(Platform.environment['RESERVATION_SECONDS'] ?? '') ?? 30;

  // Funded expire timeout configuration
  static final int _fundedExpireTimeoutSeconds =
      int.tryParse(Platform.environment['FUNDED_EXPIRY_SECONDS'] ?? '') ?? 600;

  // Exchange rate cache
  double? _cachedPlnRate;
  DateTime? _cachedPlnRateTime;

  // Define a structure for exchange rate sources
  static final List<Map<String, String>> _exchangeRateSources = [
    {
      'name': 'CoinGecko',
      'url':
          'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=pln',
      'parser': '_parseCoinGeckoResponse',
    },
    {
      'name': 'Yadio',
      'url': 'https://api.yadio.io/exrates/pln',
      'parser': '_parseYadioResponse',
    },
    {
      'name': 'Blockchain.info',
      'url': 'https://blockchain.info/ticker',
      'parser': '_parseBlockchainInfoResponse',
    }
  ];

  // Parser for CoinGecko response
  double? _parseCoinGeckoResponse(String responseBody) {
    try {
      final data = jsonDecode(responseBody);
      final rate = data['bitcoin']['pln'];
      if (rate is num) {
        return rate.toDouble();
      }
    } catch (e) {
      print('Error parsing CoinGecko response: $e');
    }
    return null;
  }

  // Parser for Yadio.io response
  double? _parseYadioResponse(String responseBody) {
    try {
      final data = jsonDecode(responseBody);
      final rate =
          data['BTC']; // Yadio returns BTC in PLN directly with this key
      if (rate is num) {
        return rate.toDouble();
      }
    } catch (e) {
      print('Error parsing Yadio response: $e');
    }
    return null;
  }

  // Parser for Blockchain.info response
  double? _parseBlockchainInfoResponse(String responseBody) {
    try {
      final data = jsonDecode(responseBody);
      final rate = data['PLN']?['last'];
      if (rate is num) {
        return rate.toDouble();
      }
    } catch (e) {
      print('Error parsing Blockchain.info response: $e');
    }
    return null;
  }

  Future<double> _getPlnRate() async {
    final now = DateTime.now();
    if (_cachedPlnRate != null &&
        _cachedPlnRateTime != null &&
        now.difference(_cachedPlnRateTime!).inMinutes < 5) {
      return _cachedPlnRate!;
    }

    List<Future<double?>> fetchFutures = [];
    for (var source in _exchangeRateSources) {
      fetchFutures.add(_fetchRateFromSource(source));
    }

    final List<double?> results = await Future.wait(fetchFutures);
    final List<double> validRates =
        results.where((rate) => rate != null).cast<double>().toList();

    if (validRates.isNotEmpty) {
      final averageRate =
          validRates.reduce((a, b) => a + b) / validRates.length;
      _cachedPlnRate = averageRate;
      _cachedPlnRateTime = now;
      print(
          'Successfully fetched and averaged BTC/PLN rate: $averageRate from ${validRates.length} sources.');
      return averageRate;
    } else {
      if (_cachedPlnRate != null) {
        print(
            'Returning stale BTC/PLN rate due to all sources failing to fetch.');
        return _cachedPlnRate!;
      }
      throw Exception('Failed to fetch BTC/PLN rate from all sources.');
    }
  }

  Future<double?> _fetchRateFromSource(Map<String, String> source) async {
    final url = Uri.parse(source['url']!);
    final parserName = source['parser']!;
    final sourceName = source['name']!;

    try {
      final response = await _httpClient.get(url); // Use _httpClient
      if (response.statusCode == 200) {
        double? rate;
        if (parserName == '_parseCoinGeckoResponse') {
          rate = _parseCoinGeckoResponse(response.body);
        } else if (parserName == '_parseYadioResponse') {
          rate = _parseYadioResponse(response.body);
        } else if (parserName == '_parseBlockchainInfoResponse') {
          rate = _parseBlockchainInfoResponse(response.body);
        }
        if (rate != null) {
          print('Successfully fetched rate from $sourceName: $rate');
          return rate;
        } else {
          print('Failed to parse response from $sourceName');
          return null;
        }
      } else {
        print(
            'Failed to fetch BTC/PLN rate from $sourceName: ${response.statusCode} ${response.body}');
        return null;
      }
    } catch (e) {
      print('Error fetching BTC/PLN rate from $sourceName: $e');
      return null;
    }
  }

  final Map<String, Map<String, dynamic>> _pendingOffers = {};
  final Map<String, StreamSubscription> _invoiceSubscriptions = {};
  final Map<String, Timer> _reservationTimers = {};
  final Map<String, Timer> _blikConfirmationTimers = {};
  final Map<String, Timer> _fundedOfferTimers = {};

  // Fee percentages, configurable via environment variables
  static final double _makerFeePercentage =
      double.tryParse(Platform.environment['MAKER_FEE'] ?? '') ??
          0.5; // Default to 0.5%
  static final double _takerFeePercentage =
      double.tryParse(Platform.environment['TAKER_FEE'] ?? '') ??
          0.5; // Default to 0.5%

  CoordinatorService(this._dbService, {PaymentService? paymentServiceForTest, Clock? clock, http.Client? httpClient})
      : _clock = clock ?? const Clock(),
        _httpClient = httpClient ?? http.Client() { // Initialize _httpClient
    if (paymentServiceForTest != null) {
      _paymentBackend = paymentServiceForTest;
      // Potentially set _paymentBackendType based on the type of paymentServiceForTest if needed
      // For now, tests will mock the behavior, so type string might be less critical in test scope.
      // We also need to determine _paymentBackendType if a mock is injected.
      // For simplicity in tests, we might not rely on _paymentBackendType string if _paymentBackend is mocked.
      // Or, we could require tests to also specify the type, or infer it.
      // Let's assume for now that if paymentServiceForTest is provided, _paymentBackendType might remain "none"
      // or be set to a generic "mock" or "test". The core logic relies on the _paymentBackend instance.
      print('CoordinatorService initialized with injected payment backend for testing.');
      // If a payment backend is injected, we assume it's already "connected" or its connect() is a no-op/mocked.
      // We also might want to set _paymentBackendType.
      // For now, let's set it to "injected_test_backend" to make it clear.
      _paymentBackendType = "injected_test_backend";
    }
  }

  Future<void> init() async {
    if (_paymentBackend == null) { // Only initialize if not injected
      await _initializePaymentBackend();
    }
    // Ensure the rest of the init logic is present
    print('CoordinatorService initialized with $_paymentBackendType backend.');
    await _initializeMatrixClient();
    await _checkExpiredFundedOffers();
    await _checkExpiredReservations();
    await _checkExpiredBlikConfirmations();
  }

  Future<void> _initializeMatrixClient() async {
    if (_matrixUser.isEmpty ||
        _matrixPassword.isEmpty ||
        _matrixRoomId.isEmpty) {
      print(
          'Matrix credentials or Room ID not configured. Skipping Matrix initialization.');
      return;
    }
    try {
      print(
          'Initializing Matrix client for $_matrixUser on $_matrixHomeserver...');
      _matrixClient = matrix.Client('BitBlikCoordinator');
      await _matrixClient!.init();
      final loginResponse = await _matrixClient!.login(
        matrix.LoginType.mLoginPassword,
        identifier: matrix.AuthenticationUserIdentifier(user: _matrixUser),
        password: _matrixPassword,
      );
      print(
          'Matrix client logged in successfully as ${loginResponse.userId.localpart}');
    } catch (e) {
      print('Error initializing or logging in Matrix client: $e');
      _matrixClient = null;
    }
  }

  Future<void> _initializePaymentBackend() async {
    final nwcUri = Platform.environment['NWC_URI'];
    final lndHost = Platform.environment['LND_HOST'];

    if (nwcUri != null && nwcUri.isNotEmpty) {
      print('NWC_URI found. Initializing NwcService...');
      try {
        final nwcService = NwcService(nwcUri: nwcUri);
        await nwcService.connect();
        _paymentBackend = nwcService;
        _paymentBackendType = "nwc";
        print('NwcService initialized and connected successfully.');
      } catch (e) {
        print('Error initializing NwcService: $e');
        _paymentBackend = null; // Ensure backend is null on error
        _paymentBackendType = "none";
        print('Falling back to LND check due to NWC initialization error.');
        if (lndHost != null && lndHost.isNotEmpty) {
          await _initializeLndService(lndHost);
        } else {
          throw Exception("CRITICAL: NWC failed and LND_HOST not configured");
        }
      }
    } else if (lndHost != null && lndHost.isNotEmpty) {
      await _initializeLndService(lndHost);
    } else {
      throw Exception(
          "CRITICAL: No payment backend configured (NWC_URI or LND_HOST not set). Hold invoice functionality will be disabled.");
    }
  }

  Future<void> _initializeLndService(String lndHost) async {
    print(
        'LND_HOST found ($lndHost). Initializing LndService (uses internal env vars for details)...');
    try {
      final lndService = LndService();
      await lndService.connect();
      _paymentBackend = lndService;
      _paymentBackendType = "lnd";
      print('LndService initialized and connected successfully.');
    } catch (e) {
      print('Error initializing LndService: $e');
      _paymentBackend = null; // Ensure backend is null on error
      _paymentBackendType = "none";
    }
  }

  Future<void> _checkExpiredFundedOffers() async {
    print('Checking for expired funded offers on startup...');
    if (_paymentBackend == null) {
      print(
          "Skipping expired funded offers check: No payment backend configured.");
      return;
    }
    try {
      final fundedOffers =
          await _dbService.getOffersByStatus(OfferStatus.funded, limit: 1000);
      final now = DateTime.now().toUtc();
      const expirationDuration = Duration(minutes: 10);

      int cancelledCount = 0;
      for (final offer in fundedOffers) {
        final createdAt = offer.createdAt;
        final expiryTime = createdAt.add(expirationDuration);
        if (now.isAfter(expiryTime)) {
          print(
              'Offer ${offer.id} funded expired (created at $createdAt, expired at $expiryTime). Cancelling.');
          try {
            await _paymentBackend!
                .cancelInvoice(paymentHashHex: offer.holdInvoicePaymentHash);
            print(
                'Hold invoice for offer ${offer.id} cancelled via $_paymentBackendType due to startup expiration check.');
          } catch (e) {
            print(
                'Error cancelling hold invoice for expired offer ${offer.id} using $_paymentBackendType: $e');
          }
          final dbSuccess =
              await _dbService.updateOfferStatus(offer.id, OfferStatus.expired);
          if (dbSuccess) {
            cancelledCount++;
            print(
                'Offer ${offer.id} status updated to expired in DB due to startup expiration check.');
          } else {
            print(
                'Failed to update offer ${offer.id} status to expired in DB after startup expiration check.');
          }
        }
      }
      print(
          'Expired funded offer check complete. Marked $cancelledCount offers as expired.');
    } catch (e) {
      print('Error during expired funded offer check: $e');
    }
  }

  Future<void> _checkExpiredReservations() async {
    print('Checking for expired reserved offers on startup...');
    try {
      final reservedOffers =
          await _dbService.getOffersByStatus(OfferStatus.reserved, limit: 1000);
      final now = DateTime.now().toUtc();
      final timeoutDuration =
          Duration(seconds: _reservationTimeoutSeconds); // Reservation timeout

      int revertedCount = 0;
      for (final offer in reservedOffers) {
        if (offer.reservedAt != null) {
          final expiryTime = offer.reservedAt!.add(timeoutDuration);
          if (now.isAfter(expiryTime)) {
            print(
                'Offer ${offer.id} reservation expired (reserved at ${offer.reservedAt}, expired at $expiryTime). Reverting status.');
            final success = await _dbService.updateOfferStatus(
              offer.id,
              OfferStatus.funded,
            );
            if (success) {
              revertedCount++;
            } else {
              print('Error reverting expired offer ${offer.id} on startup.');
            }
          }
        } else {
          print(
              'Warning: Offer ${offer.id} is reserved but has no reserved_at timestamp. Reverting.');
          final success =
              await _dbService.updateOfferStatus(offer.id, OfferStatus.funded);
          if (success) {
            revertedCount++;
          } else {
            print(
                'Error reverting reserved offer ${offer.id} with missing timestamp on startup.');
          }
        }
      }
      print(
          'Expired reservation check complete. Reverted $revertedCount offers.');
    } catch (e) {
      print('Error during expired reservation check: $e');
    }
  }

  Future<void> _checkExpiredBlikConfirmations() async {
    print(
        '### COORDINATOR: Running _checkExpiredBlikConfirmations on startup...');
    try {
      final offersToCheck = [
        ...await _dbService.getOffersByStatus(OfferStatus.blikReceived,
            limit: 1000),
        ...await _dbService.getOffersByStatus(OfferStatus.blikSentToMaker,
            limit: 1000),
      ];

      final now = DateTime.now().toUtc();
      const timeoutDuration = Duration(seconds: 120);

      int revertedCount = 0;
      for (final offer in offersToCheck) {
        if (offer.blikReceivedAt != null) {
          final expiryTime = offer.blikReceivedAt!.add(timeoutDuration);
          if (now.isAfter(expiryTime)) {
            print(
                'Offer ${offer.id} BLIK confirmation expired (BLIK received at ${offer.blikReceivedAt}, expired at $expiryTime). Reverting status.');
            final success = await _dbService.updateOfferStatus(
              offer.id,
              OfferStatus.funded,
            );
            if (success) {
              revertedCount++;
            } else {
              print(
                  'Error reverting expired BLIK confirmation for offer ${offer.id} on startup.');
            }
          }
        } else {
          print(
              'Warning: Offer ${offer.id} is in state ${offer.status} but has no blik_received_at timestamp. Reverting.');
          final success =
              await _dbService.updateOfferStatus(offer.id, OfferStatus.funded);
          if (success) {
            revertedCount++;
          } else {
            print(
                'Error reverting offer ${offer.id} with missing BLIK timestamp on startup.');
          }
        }
      }
      print(
          'Expired BLIK confirmation check complete. Reverted $revertedCount offers.');
    } catch (e) {
      print('Error during expired BLIK confirmation check: $e');
    }
  }

  Future<Map<String, dynamic>> initiateOfferFiat({
    required double fiatAmount,
    required String makerId,
    String fiatCurrency = 'PLN',
  }) async {
    print(
        'Initiating offer: fiatAmount=$fiatAmount $fiatCurrency, maker=$makerId');
    final rate = await _getPlnRate();
    final btcPerPln = 1 / rate;
    final btcAmount = fiatAmount * btcPerPln;
    final satsAmount = (btcAmount * 100000000).round();
    final makerFees =
        (satsAmount * _makerFeePercentage / 100).ceil(); // Use static field
    final takerFees =
        (satsAmount * _takerFeePercentage / 100).ceil(); // Use static field
    final totalAmountSats = satsAmount + makerFees;
    final preimage = _generatePreimage();
    final paymentHash = sha256.convert(preimage).bytes;
    final paymentHashHex = paymentHash
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join('');
    final memo =
        '${_coordinatorName} - Payment $fiatAmount $fiatCurrency reference: $paymentHashHex. This payment WILL FREEZE IN YOUR WALLET, check on BitBlik if the lock was successful. It will be unlocked (fail) unless you cheat or cancel unilaterally.';

    String holdInvoice;
    String returnedPaymentHashHex = paymentHashHex;

    if (_paymentBackend == null) {
      print('CRITICAL: No payment backend configured for initiateOfferFiat.');
      throw Exception("No payment backend configured to create hold invoice.");
    }

    final backendResponse = await _paymentBackend!.createHoldInvoice(
        amountSats: totalAmountSats,
        memo: memo,
        paymentHashHex: paymentHashHex);
    holdInvoice = backendResponse.invoice;
    if (backendResponse.paymentHash.isNotEmpty) {
      returnedPaymentHashHex = backendResponse.paymentHash;
    }

    final preimageHex =
        preimage.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join('');
    _pendingOffers[returnedPaymentHashHex] = {
      'amountSats': satsAmount,
      'makerFees': makerFees,
      'takerFees': takerFees,
      'makerId': makerId,
      'preimageHex': preimageHex,
      'fiatAmount': fiatAmount,
      'fiatCurrency': fiatCurrency,
      'actualPaymentHashForSubscription': returnedPaymentHashHex,
    };
    print('Pending offer stored for payment hash $returnedPaymentHashHex');
    _startInvoiceSubscription(returnedPaymentHashHex);
    return {
      'holdInvoice': holdInvoice,
      'paymentHash': returnedPaymentHashHex,
      'fiatAmount': fiatAmount,
      'fiatCurrency': fiatCurrency,
      'amountSats': satsAmount,
      'makerFees': makerFees,
      'totalAmountSats': totalAmountSats,
      'rate': rate,
    };
  }

  void _startInvoiceSubscription(String paymentHashHex) {
    _invoiceSubscriptions[paymentHashHex]?.cancel();
    print('Starting subscription for invoice: $paymentHashHex');

    if (_paymentBackend == null) {
      print(
          'CRITICAL: No payment backend configured for _startInvoiceSubscription.');
      _pendingOffers.remove(paymentHashHex);
      return;
    }

    try {
      final subscription = _paymentBackend!
          .subscribeToInvoiceUpdates(paymentHashHex: paymentHashHex)
          .listen(
        (InvoiceUpdate update) async {
          print(
              '$_paymentBackendType Invoice Update for $paymentHashHex: Status=${update.status}');
          if (update.status == InvoiceStatus.ACCEPTED) {
            print(
                '$_paymentBackendType Invoice ACCEPTED (funded): $paymentHashHex');
            await _createOfferFromFundedInvoice(paymentHashHex);
            _invoiceSubscriptions[paymentHashHex]?.cancel();
            _invoiceSubscriptions.remove(paymentHashHex);
          } else if (update.status == InvoiceStatus.CANCELED) {
            print('$_paymentBackendType Invoice CANCELED: $paymentHashHex');
            _pendingOffers.remove(paymentHashHex);
            _invoiceSubscriptions[paymentHashHex]?.cancel();
            _invoiceSubscriptions.remove(paymentHashHex);
          } else if (update.status == InvoiceStatus.SETTLED) {
            // This case might be less common for hold invoices before BLIK,
            // but good to handle if the backend sends it.
            print('$_paymentBackendType Invoice SETTLED: $paymentHashHex');
            _invoiceSubscriptions[paymentHashHex]?.cancel();
            _invoiceSubscriptions.remove(paymentHashHex);
          }
        },
        onError: (error) {
          print(
              'Error in $_paymentBackendType subscription stream for $paymentHashHex: $error');
          _pendingOffers.remove(paymentHashHex);
          _invoiceSubscriptions.remove(paymentHashHex);
        },
        onDone: () {
          print(
              '$_paymentBackendType Subscription stream closed for $paymentHashHex');
          // For NWC, onDone might not mean the end of the world if it's a shared stream.
          // However, for a specific invoice subscription, it usually means it's over.
          // LND typically closes after final state.
          // To be safe, if it's not already removed by ACCEPTED/CANCELED/ERROR, remove it.
          if (_invoiceSubscriptions.containsKey(paymentHashHex)) {
            _pendingOffers.remove(
                paymentHashHex); // Clean up pending offer if stream closes unexpectedly
            _invoiceSubscriptions.remove(paymentHashHex);
          }
        },
        cancelOnError: true,
      );
      _invoiceSubscriptions[paymentHashHex] = subscription;
    } catch (e) {
      print(
          'Failed to initiate $_paymentBackendType subscription for $paymentHashHex: $e');
      _pendingOffers.remove(paymentHashHex);
    }
  }

  Future<void> _createOfferFromFundedInvoice(String paymentHashHex) async {
    final pendingData = _pendingOffers.remove(paymentHashHex);
    if (pendingData == null) {
      print(
          'Warning: _createOfferFromFundedInvoice called for unknown or already processed payment hash: $paymentHashHex');
      final existingOffer =
          await _dbService.getOfferByPaymentHash(paymentHashHex);
      if (existingOffer == null) {
        print(
            'Error: No pending data and no existing offer found for funded hash: $paymentHashHex');
      } else {
        print('Offer already exists for funded hash: $paymentHashHex');
      }
      return;
    }

    print('Creating offer in DB for funded payment hash: $paymentHashHex');
    try {
      final offer = Offer(
        amountSats: pendingData['amountSats'],
        makerFees: pendingData['makerFees'],
        takerFees: pendingData['takerFees'],
        makerPubkey: pendingData['makerId'],
        holdInvoicePaymentHash: paymentHashHex,
        holdInvoicePreimage: pendingData['preimageHex'],
        status: OfferStatus.funded,
        fiatAmount: pendingData['fiatAmount'],
        fiatCurrency: pendingData['fiatCurrency'],
      );
      await _dbService.createOffer(offer);
      _startFundedOfferTimer(offer);
      final fiatText =
          '${offer.fiatAmount.toStringAsFixed(2)} ${offer.fiatCurrency}';
      final notificationText =
          "New offer/Nowa oferta: ${offer.amountSats} sats (${fiatText}) -> https://bitblik.app/#/offers";
      final simplexMsg = "#'Bitblik new offers' $notificationText";
      final result = await run('simplex-chat -e "$simplexMsg"');
      if (result.first.stderr.isNotEmpty) {
        print('simplex command error: ${result.first.stderr}');
      }

      if (_matrixClient != null && _matrixClient!.isLogged()) {
        try {
          print('Sending Matrix notification to room $_matrixRoomId');
          final room = _matrixClient!.getRoomById(_matrixRoomId);
          if (room == null) {
            print('Error: Could not find Matrix room $_matrixRoomId');
          } else {
            await room.sendTextEvent(notificationText);
            print('Matrix notification sent successfully.');
          }
        } catch (e) {
          print('Error sending Matrix notification: $e');
        }
      } else {
        print(
            'Matrix client not initialized or not logged in. Skipping notification.');
      }

      print('Offer ${offer.id} created successfully in DB.');
    } catch (e) {
      print('Error creating offer in DB for $paymentHashHex: $e');
    }
  }

  void _startFundedOfferTimer(Offer offer) {
    _fundedOfferTimers[offer.id]?.cancel();
    print('Starting 10min funded offer expiration timer for offer ${offer.id}');
    _fundedOfferTimers[offer.id] =
        Timer(Duration(seconds: _fundedExpireTimeoutSeconds), () {
      print('Funded offer expired for offer ${offer.id}');
      _handleFundedOfferExpiration(offer);
      _fundedOfferTimers.remove(offer.id);
    });
  }

  Future<void> _handleFundedOfferExpiration(Offer offer) async {
    print('Handling funded offer expiration for offer ${offer.id}');
    if (offer.status == OfferStatus.funded) {
      if (_paymentBackend != null) {
        try {
          await _paymentBackend!
              .cancelInvoice(paymentHashHex: offer.holdInvoicePaymentHash);
          print(
              'Hold invoice for offer ${offer.id} cancelled via $_paymentBackendType due to expiration.');
        } catch (e) {
          print(
              'Error cancelling hold invoice for expired offer ${offer.id} using $_paymentBackendType: $e');
        }
      } else {
        print(
            'CRITICAL: No payment backend to cancel invoice for expired offer ${offer.id}.');
      }
      final dbSuccess =
          await _dbService.updateOfferStatus(offer.id, OfferStatus.expired);
      if (dbSuccess) {
        print(
            'Offer ${offer.id} status updated to expired in DB due to expiration.');
      } else {
        print(
            'Failed to update offer ${offer.id} status to expired in DB after expiration.');
      }
    } else {
      print(
          'Offer ${offer.id} is no longer funded (current status: ${offer.status}). No action needed for funded expiration.');
    }
  }

  // --- Coordinator Info Endpoint ---
  Future<Map<String, dynamic>> getCoordinatorInfo() async {
    final Map<String, dynamic> info = {
      'name': _coordinatorName,
      'reservation_seconds': _reservationTimeoutSeconds,
      'maker_fee': _makerFeePercentage,
      'taker_fee': _takerFeePercentage,
      'min_amount_sats': _minAmountSats,
      'max_amount_sats': _maxAmountSats,
      'currencies': _supportedCurrencies,
    };

    if (_coordinatorIconUrl.isNotEmpty) {
      info['icon'] = _coordinatorIconUrl;
    }
    if (_coordinatorNostrNpub.isNotEmpty) {
      info['nostr_npub'] = _coordinatorNostrNpub;
    }

    // Read version from pubspec.yaml
    try {
      final pubspecFile = File('pubspec.yaml');
      if (await pubspecFile.exists()) {
        final yamlContent = await pubspecFile.readAsString();
        final yamlMap = loadYaml(yamlContent);
        final version = yamlMap['version'];
        if (version != null) {
          info['version'] = version.toString();
        }
      }
    } catch (_) {}
    return info;
  }

  // --- Other API Endpoint Logic ---

  // Updated to return funded and reserved offers with status and reserved_at
  Future<List<Map<String, dynamic>>> listAvailableOffers() async {
    // print(
    //     'Listing available (funded, reserved, blikReceived) offers from DB...');
    final fundedOffers = await _dbService.getOffersByStatus(OfferStatus.funded);
    final reservedOffers =
        await _dbService.getOffersByStatus(OfferStatus.reserved);
    final blikReceivedOffers =
        await _dbService.getOffersByStatus(OfferStatus.blikReceived);
    final allOffers = [
      ...fundedOffers,
      ...reservedOffers,
      ...blikReceivedOffers
    ];

    final offerList = allOffers.map((offer) {
      return {
        'id': offer.id,
        'amount_sats': offer.amountSats,
        'maker_fees': offer.makerFees,
        'fiat_amount': offer.fiatAmount,
        'fiat_currency': offer.fiatCurrency,
        'status': offer.status.name,
        'created_at': offer.createdAt.toIso8601String(),
        'reserved_at': offer.reservedAt?.toIso8601String(),
        'blik_received_at': offer.blikReceivedAt?.toIso8601String(),
        'taker_fees': offer.takerFees,
      };
    }).toList();
    return offerList;
  }

  Future<List<Offer>> getMyActiveOffers(String userPubkey) async {
    // print('Fetching active offers for user: $userPubkey');
    return await _dbService.getMyActiveOffers(userPubkey);
  }

  Future<Offer?> getOfferByPaymentHash(String paymentHash) async {
    // print('Fetching offer by payment hash: $paymentHash');
    return await _dbService.getOfferByPaymentHash(paymentHash);
  }

  Future<Offer?> getOfferById(String offerId) async {
    // print('Fetching offer by ID: $offerId');
    return await _dbService.getOfferById(offerId);
  }

  Future<DateTime?> reserveOffer(String offerId, String takerId) async {
    print('Reserving offer $offerId for taker $takerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null ||
        (offer.status != OfferStatus.funded &&
            offer.status != OfferStatus.invalidBlik) ||
        (offer.status == OfferStatus.invalidBlik &&
            offer.takerPubkey != takerId)) {
      print('Offer $offerId not found or not available for reservation.');
      _fundedOfferTimers[offerId]?.cancel();
      _fundedOfferTimers.remove(offerId);
      return null;
    }

    final now = DateTime.now().toUtc();
    final timestampToStore = now.add(const Duration(seconds: 1));

    final success = await _dbService.updateOfferStatus(
      offerId,
      OfferStatus.reserved,
      takerPubkey: takerId,
      reservedAt: timestampToStore,
    );

    if (success) {
      print(
          'Offer $offerId reserved successfully, DB timestamp set to $timestampToStore.');
      _fundedOfferTimers[offerId]?.cancel();
      _fundedOfferTimers.remove(offerId);
      _startReservationTimer(offerId);
      return timestampToStore;
    } else {
      print('Failed to reserve offer $offerId in DB.');
      return null;
    }
  }

  void _startReservationTimer(String offerId) {
    _reservationTimers[offerId]?.cancel();
    print(
        'Starting $_reservationTimeoutSeconds\s reservation timer for offer $offerId');
    _reservationTimers[offerId] =
        Timer(Duration(seconds: _reservationTimeoutSeconds), () {
      print('Reservation timer expired for offer $offerId');
      _handleReservationTimeout(offerId);
      _reservationTimers.remove(offerId);
    });
  }

  // New private method to handle reverting an offer to funded state
  Future<bool> _revertOfferToFunded(String offerId) async {
    print('Reverting offer $offerId to funded state.');
    final success = await _dbService.updateOfferStatus(
      offerId,
      OfferStatus.funded,
      takerPubkey: null,
      blikCode: null,
      takerLightningAddress: null,
      reservedAt: null, // Ensure reservedAt is cleared
    );
    if (success) {
      print('Offer $offerId successfully reverted to funded.');
    } else {
      print('Error reverting offer $offerId to funded in DB.');
    }
    return success;
  }

  Future<void> _handleReservationTimeout(String offerId) async {
    print('Handling reservation timeout for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer != null && offer.status == OfferStatus.reserved) {
      print(
          'Offer $offerId is still reserved. Reverting status to funded due to timeout.');
      await _revertOfferToFunded(offerId);
    } else {
      print(
          'Offer $offerId no longer reserved (current status: ${offer?.status}). No action needed for reservation timeout.');
    }
  }

  void _startBlikConfirmationTimer(String offerId) {
    _blikConfirmationTimers[offerId]?.cancel();
    print(
        '### COORDINATOR: Starting 120s BLIK confirmation timer for offer $offerId');
    _blikConfirmationTimers[offerId] = Timer(const Duration(seconds: 120), () {
      print(
          '### COORDINATOR: Raw timer expired for offer $offerId. Calling handler...');
      _handleBlikConfirmationTimeout(offerId);
      _blikConfirmationTimers.remove(offerId);
    });
  }

  Future<void> _handleBlikConfirmationTimeout(String offerId) async {
    print(
        '### COORDINATOR: Handling BLIK confirmation timeout for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer != null && (offer.status == OfferStatus.blikReceived)) {
      print(
          'Offer $offerId BLIK confirmation timed out. Reverting status to funded.');
      final success = await _dbService.updateOfferStatus(
        offerId,
        OfferStatus.funded,
      );
      if (success) {
        print(
            'Offer $offerId status reverted to funded due to BLIK confirmation timeout.');
      } else {
        print(
            'Error reverting offer $offerId status after BLIK confirmation timeout.');
      }
    } else {
      print(
          'Offer $offerId no longer awaiting BLIK confirmation (current status: ${offer?.status}). No action needed for BLIK timeout.');
    }
  }

  Future<bool> submitBlikCode(String offerId, String takerId, String blikCode,
      String takerLightningAddress) async {
    print('Submitting BLIK $blikCode for offer $offerId by taker $takerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null ||
        offer.status != OfferStatus.reserved ||
        offer.takerPubkey != takerId) {
      print('Offer $offerId not found, not reserved, or taker mismatch.');
      return false;
    }

    final netAmountSats = offer.amountSats -
        (offer.takerFees ??
            (offer.amountSats * _takerFeePercentage / 100).ceil());
    print(
        'Calculated net amount for taker invoice: $netAmountSats sats (Original: ${offer.amountSats}, Fee: ${offer.takerFees})');

    final takerInvoice =
        await _resolveLnurlPay(takerLightningAddress, netAmountSats);
    if (takerInvoice == null || takerInvoice.isEmpty) {
      print(
          'Could not get an invoice for net amount $netAmountSats sats for LN address $takerLightningAddress');
      return false;
    }
    // The following line seems to be a copy-paste error, the condition is already checked above.
    // print('Offer $offerId not found, not reserved, or taker mismatch.');

    _reservationTimers[offerId]?.cancel();
    _reservationTimers.remove(offerId);
    print(
        'Cancelled reservation timer for offer $offerId due to BLIK submission.');

    final blikReceivedTime = DateTime.now().toUtc();
    final success = await _dbService.updateOfferStatus(
        offerId, OfferStatus.blikReceived,
        blikCode: blikCode,
        takerLightningAddress: takerLightningAddress,
        blikReceivedAt: blikReceivedTime);

    if (success) {
      print('BLIK code for offer $offerId stored.');
      _startBlikConfirmationTimer(offerId);
    } else {
      print('Failed to store BLIK code for offer $offerId in DB.');
    }
    return success;
  }

  Future<String?> getBlikCodeForMaker(String offerId, String makerId) async {
    print('Maker $makerId requesting BLIK for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null ||
        offer.makerPubkey != makerId ||
        offer.blikCode == null) {
      print(
          'Offer $offerId not found, maker mismatch, status not blikReceived/blikSentToMaker, or no BLIK code available.');
      return null;
    }
    // Allow fetching if status is blikReceived OR blikSentToMaker
    if (offer.status != OfferStatus.blikReceived &&
        offer.status != OfferStatus.blikSentToMaker) {
      print(
          'Offer $offerId not in correct state (${offer.status}) to provide BLIK code to maker.');
      return null;
    }

    try {
      // Only update to blikSentToMaker if it's currently blikReceived
      if (offer.status == OfferStatus.blikReceived) {
        final statusUpdated = await _dbService.updateOfferStatus(
            offerId, OfferStatus.blikSentToMaker);
        if (!statusUpdated) {
          print(
              'Warning: Failed to update offer $offerId status to blikSentToMaker, but returning code anyway.');
        } else {
          print('Offer $offerId status updated to blikSentToMaker.');
        }
      }
      // Cancel timer regardless, as maker is now involved.
      _blikConfirmationTimers[offerId]?.cancel();
      _blikConfirmationTimers.remove(offerId);
    } catch (e) {
      print('Error during getBlikCodeForMaker for offer $offerId: $e');
    }

    print('Returning BLIK code for offer $offerId to maker.');
    return offer.blikCode;
  }

  Future<bool> markBlikInvalid(String offerId, String makerId) async {
    print('Maker $makerId marking BLIK as invalid for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);

    if (offer == null || offer.makerPubkey != makerId) {
      print(
          'Offer $offerId not found or maker ID mismatch for marking BLIK invalid.');
      return false;
    }

    if (offer.status != OfferStatus.blikReceived &&
        offer.status != OfferStatus.blikSentToMaker) {
      print(
          'Offer $offerId is not in a state where BLIK can be marked invalid (current state: ${offer.status}).');
      return false;
    }

    _blikConfirmationTimers[offerId]?.cancel();
    _blikConfirmationTimers.remove(offerId);
    print('Cancelled BLIK confirmation timer for offer $offerId (if active).');

    final success =
        await _dbService.updateOfferStatus(offerId, OfferStatus.invalidBlik);

    if (success) {
      print('Offer $offerId status updated to invalidBlik.');
    } else {
      print('Failed to update offer $offerId status to invalidBlik in DB.');
    }
    return success;
  }

  Future<bool> markOfferConflict(String offerId, String takerId) async {
    print('Taker $takerId marking offer $offerId as conflict.');
    final offer = await _dbService.getOfferById(offerId);

    if (offer == null || offer.takerPubkey != takerId) {
      print(
          'Offer $offerId not found or taker ID mismatch for marking conflict.');
      return false;
    }

    if (offer.status != OfferStatus.invalidBlik) {
      print(
          'Offer $offerId is not in the invalidBlik state (current state: ${offer.status}). Cannot mark as conflict.');
      return false;
    }

    final success =
        await _dbService.updateOfferStatus(offerId, OfferStatus.conflict);

    if (success) {
      print('Offer $offerId status updated to conflict.');
    } else {
      print('Failed to update offer $offerId status to conflict in DB.');
    }
    return success;
  }

  Future<bool> confirmMakerPayment(String offerId, String makerId) async {
    print('Maker $makerId confirming payment for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null ||
        offer.makerPubkey != makerId ||
        (offer.status !=
                OfferStatus
                    .conflict && // Allow confirmation from conflict state
            offer.status != OfferStatus.blikSentToMaker)) {
      print(
          'Offer $offerId not found, maker mismatch, or not in correct state for confirmation (current: ${offer?.status}).');
      return false;
    }

    _reservationTimers[offerId]?.cancel();
    _reservationTimers.remove(offerId);
    _blikConfirmationTimers[offerId]?.cancel();
    _blikConfirmationTimers.remove(offerId);
    print('Cancelled timers for offer $offerId during maker confirmation.');

    bool success =
        await _dbService.updateOfferStatus(offerId, OfferStatus.makerConfirmed);
    if (!success) {
      print('Failed to update offer $offerId status to makerConfirmed in DB.');
      return false;
    }
    print('Offer $offerId status updated to makerConfirmed.');

    try {
      if (_paymentBackend != null) {
        await _paymentBackend!
            .settleInvoice(preimageHex: offer.holdInvoicePreimage);
        print(
            'Hold invoice for offer $offerId settled successfully via $_paymentBackendType.');
      } else {
        print(
            'CRITICAL: No payment backend to settle invoice for offer $offerId.');
        throw Exception("No payment backend to settle invoice.");
      }
      await Future.delayed(_kDebugDelayDuration);
      success =
          await _dbService.updateOfferStatus(offerId, OfferStatus.settled);
      if (!success) {
        print('Failed to update offer $offerId status to settled in DB.');
      }
    } catch (e) {
      print('Error settling hold invoice for offer $offerId: $e');
      // Potentially revert makerConfirmed status or set to a failed state
      return false;
    }

    Future.microtask(() => _payTakerAsync(offerId));
    return true;
  }

  Future<bool> updateTakerInvoice(
      String offerId, String takerInvoice, String userPubkey) async {
    print('Updating taker invoice for offer $offerId by user $userPubkey');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null) {
      print('Offer $offerId not found.');
      return false;
    }
    if (offer.takerPubkey != userPubkey) {
      print('User pubkey mismatch for updating taker invoice.');
      return false;
    }
    final success = await _dbService.updateTakerInvoice(offerId, takerInvoice);
    if (success) {
      print('Taker invoice updated for offer $offerId.');
    } else {
      print('Failed to update taker invoice for offer $offerId.');
    }
    return success;
  }

  Future<bool> cancelReservation(String offerId, String takerId) async {
    print('Taker $takerId attempting to cancel reservation for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null) {
      print('Offer $offerId not found.');
      return false;
    }
    if (offer.takerPubkey != takerId) {
      print('Taker mismatch for cancelling reservation on offer $offerId.');
      return false;
    }
    if (offer.status != OfferStatus.reserved) {
      print('Offer $offerId cannot be cancelled in status ${offer.status}.');
      _reservationTimers[offerId]?.cancel();
      _reservationTimers.remove(offerId);
      return false;
    }

    _reservationTimers[offerId]?.cancel();
    _reservationTimers.remove(offerId);

    // Revert offer to funded using the new method
    final reverted = await _revertOfferToFunded(offerId);

    if (reverted) {
      print('Reservation for offer $offerId cancelled by taker.');
      return true;
    } else {
      print(
          'Failed to cancel reservation for offer $offerId (DB update failed).');
      return false;
    }
  }

  Future<bool> cancelOffer(String offerId, String makerId) async {
    print('Maker $makerId attempting to cancel offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null) {
      print('Offer $offerId not found.');
      return false;
    }
    if (offer.makerPubkey != makerId) {
      print('Maker mismatch for cancelling offer $offerId.');
      return false;
    }
    if (offer.status != OfferStatus.funded) {
      print('Offer $offerId cannot be cancelled in status ${offer.status}.');
      _fundedOfferTimers[offerId]?.cancel();
      _fundedOfferTimers.remove(offerId);
      return false;
    }

    _fundedOfferTimers[offerId]?.cancel();
    _fundedOfferTimers.remove(offerId);

    if (_paymentBackend != null) {
      try {
        await _paymentBackend!
            .cancelInvoice(paymentHashHex: offer.holdInvoicePaymentHash);
        print(
            'Hold invoice for offer $offerId cancelled successfully via $_paymentBackendType.');
      } catch (e) {
        print(
            'Error cancelling hold invoice for offer $offerId using $_paymentBackendType: $e');
      }
    } else {
      print(
          'CRITICAL: No payment backend to cancel invoice for offer $offerId.');
    }

    final dbSuccess = await _dbService.cancelOffer(offerId, makerId);
    if (dbSuccess) {
      print('Offer $offerId status updated to cancelled in DB.');
      _invoiceSubscriptions[offer.holdInvoicePaymentHash]?.cancel();
      _invoiceSubscriptions.remove(offer.holdInvoicePaymentHash);
      _pendingOffers.remove(offer.holdInvoicePaymentHash);
      return true;
    } else {
      print('Failed to update offer $offerId status to cancelled in DB.');
      return false;
    }
  }

  Future<void> _payTakerAsync(String offerId) async {
    print('Starting async taker payment process for offer $offerId...');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null) {
      print('Async Error: Offer $offerId not found for taker payment.');
      return;
    }
    if (offer.status != OfferStatus.settled) {
      print(
          'Async Error: Offer $offerId not in settled state (state is ${offer.status}). Cannot pay taker.');
      return;
    }

    if (offer.takerLightningAddress == null) {
      print('Async Error: Taker Lightning Address missing for offer $offerId.');
      await _dbService.updateOfferStatus(
          offerId, OfferStatus.takerPaymentFailed);
      return;
    }

    // Calculate net amount after taker fees
    final takerFees = (offer.amountSats * _takerFeePercentage / 100)
        .ceil(); // Use static field
    final netAmountSats = offer.amountSats - takerFees;
    print(
        'Async: Attempting to pay taker via LNURL: ${offer.takerLightningAddress} for net amount $netAmountSats sats (Original: ${offer.amountSats}, Fee: $takerFees)');

    try {
      final takerInvoice =
          await _resolveLnurlPay(offer.takerLightningAddress!, netAmountSats);
      if (takerInvoice == null) {
        print(
            'Async Error: Failed to resolve LNURL for net amount $netAmountSats for offer $offerId.');
        await _dbService.updateOfferStatus(
            offerId, OfferStatus.takerPaymentFailed);
        return;
      }

      bool invoiceStored =
          await _dbService.updateTakerInvoice(offerId, takerInvoice);
      if (!invoiceStored) {
        print(
            'Async Warning: Failed to store resolved taker invoice for offer $offerId. Proceeding with payment attempt.');
      }

      await _sendTakerPayment(offerId, takerInvoice);
    } catch (e) {
      print('Async Exception during taker payment for offer $offerId: $e');
      await _dbService.updateOfferStatus(
          offerId, OfferStatus.takerPaymentFailed);
    }
  }

  Future<String?> _sendTakerPayment(String offerId, String takerInvoice) async {
    print('Attempting to send taker payment for offer $offerId...');
    try {
      final offer = await _dbService.getOfferById(offerId);
      if (offer == null) {
        print('Offer $offerId not found for taker payment.');
        await _dbService.updateOfferStatus(
            offerId, OfferStatus.takerPaymentFailed);
        return "invalid offer";
      }
      await Future.delayed(_kDebugDelayDuration);
      await _dbService.updateOfferStatus(offerId, OfferStatus.payingTaker);

      // Calculate taker fees (configurable % of the original offer amount)
      final takerFees = (offer.amountSats * _takerFeePercentage / 100).ceil();
      final netAmountSats = offer.amountSats - takerFees;
      print(
          'Calculated taker fees for offer $offerId: $takerFees sats. Paying net amount: $netAmountSats sats.');

      if (_paymentBackend == null) {
        print('CRITICAL: No payment backend configured for _sendTakerPayment.');
        await _dbService.updateOfferStatus(
            offerId, OfferStatus.takerPaymentFailed);
        return 'No payment backend configured.';
      }

      final feeLimitSat = offer.makerFees + 100;
      print(
          '$_paymentBackendType: Attempting to pay invoice for offer $offerId. Amount: $netAmountSats sats, Fee limit: $feeLimitSat sats.');

      final paymentResult = await _paymentBackend!.payInvoice(
        invoice: takerInvoice,
        amountSat: netAmountSats,
        feeLimitSat: feeLimitSat,
      );

      if (paymentResult.isSuccess) {
        print(
            '$_paymentBackendType: Successfully paid taker for offer $offerId. Preimage: ${paymentResult.paymentPreimage}');
        await Future.delayed(_kDebugDelayDuration);
        await _dbService.updateOfferStatus(offerId, OfferStatus.takerPaid,
            takerFees: takerFees);
        await _dbService.updateTakerInvoiceFees(
            offerId, paymentResult.feeSat ?? 0);
        print(
            '$_paymentBackendType: Updated taker invoice fees to ${paymentResult.feeSat ?? 0} sats for offer $offerId.');
        return null; // Success
      } else {
        print(
            '$_paymentBackendType: Failed to pay taker for offer $offerId. Reason: ${paymentResult.paymentError}');
        await _dbService.updateOfferStatus(
            offerId, OfferStatus.takerPaymentFailed);
        return '$_paymentBackendType: Failed to pay taker for offer $offerId. Reason: ${paymentResult.paymentError}';
      }
    } catch (e) {
      print(
          'Exception during taker payment for offer $offerId (using $_paymentBackendType): $e');
      await _dbService.updateOfferStatus(
          offerId, OfferStatus.takerPaymentFailed);
      return 'Exception during taker payment for offer $offerId: $e';
    }
  }

  Future<String?> retryTakerPayment(String offerId, String userPubkey) async {
    print('Retrying taker payment for offer $offerId by user $userPubkey');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null) {
      print('Offer $offerId not found.');
      return "invalid offer";
    }
    if (offer.takerPubkey != userPubkey) {
      print('User pubkey mismatch for retrying taker payment.');
      return "not your offer";
    }
    if (offer.takerInvoice == null || offer.takerInvoice!.isEmpty) {
      print('No taker invoice available for offer $offerId.');
      return "No taker invoice in offer";
    }
    return await _sendTakerPayment(offerId, offer.takerInvoice!);
  }

  Uint8List _generatePreimage() {
    final random = Random.secure();
    return Uint8List.fromList(
        List<int>.generate(32, (_) => random.nextInt(256)));
  }

  Uint8List hexToBytes(String hex) {
    hex = hex.replaceAll(RegExp(r'\s+'), '');
    if (hex.length % 2 != 0) {
      throw ArgumentError("Hex string must have an even number of characters");
    }
    final bytes = <int>[];
    for (int i = 0; i < hex.length; i += 2) {
      final hexPair = hex.substring(i, i + 2);
      bytes.add(int.parse(hexPair, radix: 16));
    }
    return Uint8List.fromList(bytes);
  }

  Future<String?> _resolveLnurlPay(
      String lightningAddress, int netAmountSats) async {
    try {
      if (!lightningAddress.contains('@')) {
        print('Invalid Lightning Address format: $lightningAddress');
        return null;
      }
      final parts = lightningAddress.split('@');
      final username = parts[0];
      final domain = parts[1];
      final lnurlpUrl = Uri.https(domain, '/.well-known/lnurlp/$username');
      print('LNURL: Requesting step 1 from $lnurlpUrl');
      final response1 = await _httpClient.get(lnurlpUrl); // Use _httpClient
      if (response1.statusCode != 200) {
        print(
            'LNURL Error: Step 1 request failed (${response1.statusCode}) for $lightningAddress: ${response1.body}');
        return null;
      }
      final data1 = jsonDecode(response1.body) as Map<String, dynamic>;
      if (data1['status'] == 'ERROR') {
        print(
            'LNURL Error: Service returned error in step 1 for $lightningAddress: ${data1['reason']}');
        return null;
      }
      if (data1['tag'] != 'payRequest') {
        print(
            'LNURL Error: Invalid tag in step 1 response for $lightningAddress: ${data1['tag']}');
        return null;
      }
      final callbackUrl = data1['callback'] as String?;
      final minSendable = data1['minSendable'] as int?;
      final maxSendable = data1['maxSendable'] as int?;
      if (callbackUrl == null || minSendable == null || maxSendable == null) {
        print(
            'LNURL Error: Missing required fields (callback, min/maxSendable) in step 1 for $lightningAddress');
        return null;
      }
      final amountMsats = netAmountSats * 1000;
      if (amountMsats < minSendable || amountMsats > maxSendable) {
        print(
            'LNURL Error: Net amount $netAmountSats sats ($amountMsats msats) is outside acceptable range ($minSendable - $maxSendable msats) for $lightningAddress');
        return null;
      }
      final callbackUri = Uri.parse(callbackUrl);
      final queryParams = Map<String, String>.from(callbackUri.queryParameters);
      queryParams['amount'] = amountMsats.toString();
      final finalUrl = callbackUri.replace(queryParameters: queryParams);
      print('LNURL: Requesting step 2 from $finalUrl');
      final response2 = await _httpClient.get(finalUrl); // Use _httpClient
      if (response2.statusCode != 200) {
        print(
            'LNURL Error: Step 2 request failed (${response2.statusCode}) for $lightningAddress: ${response2.body}');
        return null;
      }
      final data2 = jsonDecode(response2.body) as Map<String, dynamic>;
      if (data2['status'] == 'ERROR') {
        print(
            'LNURL Error: Service returned error in step 2 for $lightningAddress: ${data2['reason']}');
        return null;
      }
      final invoice = data2['pr'] as String?;
      if (invoice == null) {
        print(
            'LNURL Error: Missing invoice ("pr" field) in step 2 response for $lightningAddress');
        return null;
      }
      print('LNURL Success: Resolved invoice for $lightningAddress');
      return invoice;
    } catch (e) {
      print('Exception during LNURL resolution for $lightningAddress: $e');
      return null;
    }
  }

  Future<Map<String, dynamic>> getSuccessfulOffersWithStats() async {
    print('Fetching successful offers with stats...');
    final allSuccessfulOffers = await _dbService.getOffersByStatus(
        OfferStatus.takerPaid,
        limit: 10000); // Fetch a large number for stats for calculations

    final List<Map<String, dynamic>> offersJsonLast7Days =
        []; // For the response's "offers" field
    Duration totalBlikReceivedToCreatedDuration =
        Duration.zero; // For stats calculation
    int countBlikReceivedToCreated = 0; // For stats calculation
    Duration totalTakerPaidToCreatedDuration = Duration.zero;
    int countTakerPaidToCreated = 0;

    Duration last7DaysBlikReceivedToCreatedDuration = Duration.zero;
    int last7DaysCountBlikReceivedToCreated = 0;
    Duration last7DaysTakerPaidToCreatedDuration = Duration.zero;
    int last7DaysCountTakerPaidToCreated = 0;

    final sevenDaysAgo =
        DateTime.now().toUtc().subtract(const Duration(days: 7));

    // Iterate over all successful offers for stats calculation
    for (final offer in allSuccessfulOffers) {
      // Add to offersJsonLast7Days only if created in the last 7 days
      if (offer.createdAt.isAfter(sevenDaysAgo)) {
        offersJsonLast7Days.add(offer.toJson());
      }

      // Calculate stats based on allSuccessfulOffers
      if (offer.blikReceivedAt != null) {
        final duration = offer.blikReceivedAt!.difference(offer.createdAt);
        totalBlikReceivedToCreatedDuration += duration;
        countBlikReceivedToCreated++;
        if (offer.createdAt.isAfter(sevenDaysAgo)) {
          last7DaysBlikReceivedToCreatedDuration += duration;
          last7DaysCountBlikReceivedToCreated++;
        }
      }

      if (offer.takerPaidAt != null) {
        final duration = offer.takerPaidAt!.difference(offer.createdAt);
        totalTakerPaidToCreatedDuration += duration;
        countTakerPaidToCreated++;
        if (offer.createdAt.isAfter(sevenDaysAgo)) {
          last7DaysTakerPaidToCreatedDuration += duration;
          last7DaysCountTakerPaidToCreated++;
        }
      }
    }

    final avgBlikReceivedToCreatedLifetime = countBlikReceivedToCreated > 0
        ? (totalBlikReceivedToCreatedDuration.inSeconds /
                countBlikReceivedToCreated)
            .round()
        : 0;
    final avgTakerPaidToCreatedLifetime = countTakerPaidToCreated > 0
        ? (totalTakerPaidToCreatedDuration.inSeconds / countTakerPaidToCreated)
            .round()
        : 0;

    final avgBlikReceivedToCreatedLast7Days =
        last7DaysCountBlikReceivedToCreated > 0
            ? (last7DaysBlikReceivedToCreatedDuration.inSeconds /
                    last7DaysCountBlikReceivedToCreated)
                .round()
            : 0;
    final avgTakerPaidToCreatedLast7Days = last7DaysCountTakerPaidToCreated > 0
        ? (last7DaysTakerPaidToCreatedDuration.inSeconds /
                last7DaysCountTakerPaidToCreated)
            .round()
        : 0;

    return {
      'offers': offersJsonLast7Days, // Return only offers from the last 7 days
      'stats': {
        'lifetime': {
          'avg_time_blik_received_to_created_seconds':
              avgBlikReceivedToCreatedLifetime,
          'avg_time_taker_paid_to_created_seconds':
              avgTakerPaidToCreatedLifetime,
          'count': allSuccessfulOffers.length, // Count based on all offers
        },
        'last_7_days': {
          'avg_time_blik_received_to_created_seconds':
              avgBlikReceivedToCreatedLast7Days,
          'avg_time_taker_paid_to_created_seconds':
              avgTakerPaidToCreatedLast7Days,
          'count':
              allSuccessfulOffers // Count for last_7_days stats based on filtering all offers
                  .where((o) => o.createdAt.isAfter(sevenDaysAgo))
                  .length,
        }
      }
    };
  }
}
