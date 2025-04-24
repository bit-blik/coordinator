import 'database_service.dart';
import 'lnd_service.dart';
import '../models/offer.dart';
import 'package:crypto/crypto.dart'; // For SHA256
// import 'dart:convert'; // For utf8 - Removed unused import
import 'dart:math'; // For random preimage
import 'dart:typed_data'; // For Uint8List
import 'dart:convert'; // For jsonDecode
import 'package:http/http.dart' as http; // For LNURL HTTP requests
// Import LND generated types
import '../generated/lnd/lightning.pb.dart'; // Contains Invoice and Invoice_InvoiceState
// Contains Payment and Payment_PaymentStatus
import 'dart:async'; // For StreamSubscription, Timer
import 'package:process_run/process_run.dart';

class CoordinatorService {
  final DatabaseService _dbService;
  final LndService _lndService;

  // CoinGecko rate cache
  double? _cachedPlnRate;
  DateTime? _cachedPlnRateTime;

  Future<double> _getPlnRate() async {
    final now = DateTime.now();
    if (_cachedPlnRate != null &&
        _cachedPlnRateTime != null &&
        now.difference(_cachedPlnRateTime!).inMinutes < 5) {
      return _cachedPlnRate!;
    }
    final url = Uri.parse('https://api.coingecko.com/api/v3/exchange_rates');
    final response = await http.get(url);
    if (response.statusCode != 200) {
      throw Exception('Failed to fetch CoinGecko rates');
    }
    final data = jsonDecode(response.body);
    final plnRate = data['rates']?['pln']?['value'];
    final btcRate = data['rates']?['btc']?['value'];
    if (plnRate == null || btcRate == null) {
      throw Exception('PLN or BTC rate missing in CoinGecko response');
    }
    // PLN per BTC = pln.value / btc.value (btc.value should be 1)
    _cachedPlnRate = plnRate / btcRate;
    _cachedPlnRateTime = now;
    return _cachedPlnRate!;
  }

  // WARNING: In-memory storage is not persistent. Use Redis or DB for production.
  final Map<String, Map<String, dynamic>> _pendingOffers = {};
  // Map to hold active subscriptions for cancellation
  final Map<String, StreamSubscription> _invoiceSubscriptions = {};
  // Map to hold active reservation timers (15s) for cancellation
  final Map<String, Timer> _reservationTimers = {};
  // Map to hold active BLIK confirmation timers (120s)
  final Map<String, Timer> _blikConfirmationTimers = {};
  // Map to hold active funded offer expiration timers (10min)
  final Map<String, Timer> _fundedOfferTimers = {};

  final double kFeePercentage = 0.5;

  CoordinatorService(this._dbService, this._lndService);

  Future<void> init() async {
    // Initialize dependencies if needed (DB and LND connections are handled separately)
    print('CoordinatorService initialized.');
    await _checkExpiredFundedOffers();
    await _checkExpiredReservations();
    await _checkExpiredBlikConfirmations(); // Add check for BLIK confirmation timeouts
    // TODO: Implement logic to potentially resume listening for pending offers on startup
  }

  // --- Startup Check for Expired Funded Offers ---
  Future<void> _checkExpiredFundedOffers() async {
    print('Checking for expired funded offers on startup...');
    try {
      final fundedOffers =
          await _dbService.getOffersByStatus(OfferStatus.funded, limit: 1000);
      final now = DateTime.now().toUtc();
      const expirationDuration = Duration(minutes: 10);

      int cancelledCount = 0;
      for (final offer in fundedOffers) {
        final createdAt = offer.createdAt;
        if (createdAt != null) {
          final expiryTime = createdAt.add(expirationDuration);
          if (now.isAfter(expiryTime)) {
            print(
                'Offer ${offer.id} funded expired (created at $createdAt, expired at $expiryTime). Cancelling.');
            try {
              final paymentHashBytes = hexToBytes(offer.holdInvoicePaymentHash);
              await _lndService.cancelInvoice(paymentHashBytes);
              print(
                  'Hold invoice for offer ${offer.id} cancelled due to startup expiration check.');
            } catch (e) {
              print(
                  'Error cancelling hold invoice for expired offer ${offer.id}: $e');
            }
            final dbSuccess = await _dbService.updateOfferStatus(
                offer.id, OfferStatus.expired);
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
      }
      print(
          'Expired funded offer check complete. Marked $cancelledCount offers as expired.');
    } catch (e) {
      print('Error during expired funded offer check: $e');
    }
  }
  // --- End Startup Check for Expired Funded Offers ---

  // --- Startup Check for Expired Reservations ---
  Future<void> _checkExpiredReservations() async {
    print('Checking for expired reserved offers on startup...');
    try {
      final reservedOffers = await _dbService.getOffersByStatus(
          OfferStatus.reserved,
          limit: 1000); // Get all reserved offers
      final now = DateTime.now().toUtc();
      const timeoutDuration =
          Duration(seconds: 20); // Reservation timeout UPDATED to 20s

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

  // --- Startup Check for Expired BLIK Confirmations ---
  Future<void> _checkExpiredBlikConfirmations() async {
    print(
        '### COORDINATOR: Running _checkExpiredBlikConfirmations on startup...'); // Added prominent log
    try {
      // Check offers in both blikReceived and blikSentToMaker states
      final offersToCheck = [
        ...await _dbService.getOffersByStatus(OfferStatus.blikReceived,
            limit: 1000),
        ...await _dbService.getOffersByStatus(OfferStatus.blikSentToMaker,
            limit: 1000),
      ];

      final now = DateTime.now().toUtc();
      const timeoutDuration =
          Duration(seconds: 120); // BLIK confirmation timeout

      int revertedCount = 0;
      for (final offer in offersToCheck) {
        // Use blikReceivedAt timestamp for timeout calculation
        if (offer.blikReceivedAt != null) {
          final expiryTime = offer.blikReceivedAt!.add(timeoutDuration);
          if (now.isAfter(expiryTime)) {
            print(
                'Offer ${offer.id} BLIK confirmation expired (BLIK received at ${offer.blikReceivedAt}, expired at $expiryTime). Reverting status.');
            final success = await _dbService.updateOfferStatus(
              offer.id,
              OfferStatus.funded, // Revert to funded
            );
            if (success) {
              revertedCount++;
            } else {
              print(
                  'Error reverting expired BLIK confirmation for offer ${offer.id} on startup.');
            }
          }
        } else {
          // This indicates an inconsistent state if status is blikReceived/blikSentToMaker
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

  // --- Offer Creation Logic ---
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
    final feeSats = (satsAmount * kFeePercentage / 100).ceil();
    final totalAmountSats = satsAmount + feeSats;
    final preimage = _generatePreimage();
    final paymentHash = sha256.convert(preimage).bytes;
    final paymentHashHex = paymentHash
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join('');
    final memo = 'BitBlik Offer: $fiatAmount $fiatCurrency for BLIK';
    final lndResponse =
        await _lndService.createHoldInvoice(totalAmountSats, memo, paymentHash);
    final holdInvoice = lndResponse.paymentRequest;
    final preimageHex =
        preimage.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join('');
    _pendingOffers[paymentHashHex] = {
      'amountSats': satsAmount,
      'feeSats': feeSats,
      'makerId': makerId,
      'preimageHex': preimageHex,
      'fiatAmount': fiatAmount,
      'fiatCurrency': fiatCurrency,
    };
    print('Pending offer stored for payment hash $paymentHashHex');
    _startInvoiceSubscription(paymentHash, paymentHashHex);
    return {
      'holdInvoice': holdInvoice,
      'paymentHash': paymentHashHex,
      'fiatAmount': fiatAmount,
      'fiatCurrency': fiatCurrency,
      'amountSats': satsAmount,
      'feeSats': feeSats,
      'totalAmountSats': totalAmountSats,
      'rate': rate,
    };
  }

  void _startInvoiceSubscription(List<int> paymentHash, String paymentHashHex) {
    _invoiceSubscriptions[paymentHashHex]?.cancel();
    print('Starting subscription for invoice: $paymentHashHex');
    try {
      final subscription = _lndService.subscribeToInvoice(paymentHash).listen(
        (Invoice invoiceUpdate) async {
          print(
              'Received update for ${paymentHashHex}: State=${invoiceUpdate.state}');
          if (invoiceUpdate.state == Invoice_InvoiceState.ACCEPTED) {
            print('Invoice ACCEPTED (funded): $paymentHashHex');
            await _createOfferFromFundedInvoice(paymentHashHex);
            _invoiceSubscriptions[paymentHashHex]?.cancel();
            _invoiceSubscriptions.remove(paymentHashHex);
            print(
                'Subscription cancelled for accepted invoice: $paymentHashHex');
          } else if (invoiceUpdate.state == Invoice_InvoiceState.CANCELED) {
            print('Invoice CANCELED: $paymentHashHex');
            _pendingOffers.remove(paymentHashHex);
            _invoiceSubscriptions[paymentHashHex]?.cancel();
            _invoiceSubscriptions.remove(paymentHashHex);
            print(
                'Subscription cancelled for canceled invoice: $paymentHashHex');
          } else if (invoiceUpdate.state == Invoice_InvoiceState.SETTLED) {
            print('Invoice SETTLED (likely by us): $paymentHashHex');
            _invoiceSubscriptions[paymentHashHex]?.cancel();
            _invoiceSubscriptions.remove(paymentHashHex);
          }
        },
        onError: (error) {
          print('Error in subscription stream for $paymentHashHex: $error');
          _pendingOffers.remove(paymentHashHex);
          _invoiceSubscriptions.remove(paymentHashHex);
        },
        onDone: () {
          print('Subscription stream closed for $paymentHashHex');
          _pendingOffers.remove(paymentHashHex);
          _invoiceSubscriptions.remove(paymentHashHex);
        },
        cancelOnError: true,
      );
      _invoiceSubscriptions[paymentHashHex] = subscription;
    } catch (e) {
      print('Failed to initiate subscription for $paymentHashHex: $e');
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
        feeSats: pendingData['feeSats'],
        makerPubkey: pendingData['makerId'],
        holdInvoicePaymentHash: paymentHashHex,
        holdInvoicePreimage: pendingData['preimageHex'],
        status: OfferStatus.funded,
        fiatAmount: pendingData['fiatAmount'],
        fiatCurrency: pendingData['fiatCurrency'],
      );
      await _dbService.createOffer(offer);
      // Start funded offer expiration timer (10min)
      _startFundedOfferTimer(offer.id, offer.holdInvoicePaymentHash);
      // Execute simplex notification with sats and fiat info
      final fiatText = offer.fiatAmount != null && offer.fiatCurrency != null
          ? '${offer.fiatAmount!.toStringAsFixed(2)} ${offer.fiatCurrency}'
          : 'N/A';
      final simplexMsg =
          '#bitblik_3 new offer: ${offer.amountSats} sats (${fiatText}) at https://bitblik.app/#/offers';
      final result = await run('simplex-chat -e "$simplexMsg"');
      if (result.first.stderr.isNotEmpty) {
        print('simplex command error: ${result.first.stderr}');
      }
      print('Offer ${offer.id} created successfully in DB.');
    } catch (e) {
      print('Error creating offer in DB for $paymentHashHex: $e');
    }
  }

  // --- Funded Offer Expiration Timer Logic ---
  void _startFundedOfferTimer(String offerId, String paymentHash) {
    _fundedOfferTimers[offerId]?.cancel();
    print('Starting 10min funded offer expiration timer for offer $offerId');
    _fundedOfferTimers[offerId] = Timer(const Duration(minutes: 10), () {
      print('Funded offer expired for offer $offerId');
      _handleFundedOfferExpiration(offerId, paymentHash);
      _fundedOfferTimers.remove(offerId);
    });
  }

  Future<void> _handleFundedOfferExpiration(
      String offerId, String paymentHash) async {
    print('Handling funded offer expiration for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer != null && offer.status == OfferStatus.funded) {
      try {
        final paymentHashBytes = hexToBytes(paymentHash);
        await _lndService.cancelInvoice(paymentHashBytes);
        print('Hold invoice for offer $offerId cancelled due to expiration.');
      } catch (e) {
        print('Error cancelling hold invoice for expired offer $offerId: $e');
      }
      final dbSuccess =
          await _dbService.updateOfferStatus(offerId, OfferStatus.expired);
      if (dbSuccess) {
        print(
            'Offer $offerId status updated to expired in DB due to expiration.');
      } else {
        print(
            'Failed to update offer $offerId status to expired in DB after expiration.');
      }
    } else {
      print(
          'Offer $offerId is no longer funded (current status: ${offer?.status}). No action needed for funded expiration.');
    }
  }
  // --- End Funded Offer Expiration Timer Logic ---

  // --- Other API Endpoint Logic ---

  // Updated to return funded and reserved offers with status and reserved_at
  Future<List<Map<String, dynamic>>> listAvailableOffers() async {
    print(
        'Listing available (funded, reserved, blikReceived) offers from DB...');
    final fundedOffers = await _dbService.getOffersByStatus(OfferStatus.funded);
    final reservedOffers =
        await _dbService.getOffersByStatus(OfferStatus.reserved);
    final blikReceivedOffers = await _dbService
        .getOffersByStatus(OfferStatus.blikReceived); // Fetch blikReceived
    // Combine all relevant statuses
    final allOffers = [
      ...fundedOffers,
      ...reservedOffers,
      ...blikReceivedOffers
    ];

    // No need to filter by time here, client will handle countdown display
    final offerList = allOffers.map((offer) {
      return {
        'id': offer.id,
        'amount_sats': offer.amountSats,
        'fee_sats': offer.feeSats,
        'fiat_amount': offer.fiatAmount,
        'fiat_currency': offer.fiatCurrency,
        'status': offer.status.name, // Return actual status
        'created_at': offer.createdAt.toIso8601String(),
        'reserved_at':
            offer.reservedAt?.toIso8601String(), // Include reserved_at
        'blik_received_at':
            offer.blikReceivedAt?.toIso8601String(), // Include blik_received_at
        // hold_invoice_payment_hash is intentionally omitted from this list endpoint
      };
    }).toList();
    return offerList;
  }

  Future<List<Offer>> getMyActiveOffers(String userPubkey) async {
    print('Fetching active offers for user: $userPubkey');
    return await _dbService.getMyActiveOffers(userPubkey);
  }

  // Method to fetch a single offer by payment hash
  Future<Offer?> getOfferByPaymentHash(String paymentHash) async {
    print('Fetching offer by payment hash: $paymentHash');
    return await _dbService.getOfferByPaymentHash(paymentHash);
  }

  // Method to fetch a single offer by ID (delegates to dbService)
  Future<Offer?> getOfferById(String offerId) async {
    print('Fetching offer by ID: $offerId');
    return await _dbService.getOfferById(offerId);
  }

  // Returns the reservation timestamp on success, null on failure
  Future<DateTime?> reserveOffer(String offerId, String takerId) async {
    print('Reserving offer $offerId for taker $takerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null || offer.status != OfferStatus.funded) {
      print('Offer $offerId not found or not available for reservation.');
      _fundedOfferTimers[offerId]
          ?.cancel(); // Clean up funded timer if transitioning out
      _fundedOfferTimers.remove(offerId);
      return null; // Return null on failure
    }

    final now = DateTime.now().toUtc();
    final timestampToStore =
        now.add(const Duration(seconds: 1)); // Add 1 second

    final success = await _dbService.updateOfferStatus(
      offerId,
      OfferStatus.reserved,
      takerPubkey: takerId,
      reservedAt: timestampToStore, // Pass the adjusted timestamp
    );

    if (success) {
      print(
          'Offer $offerId reserved successfully, DB timestamp set to $timestampToStore.');
      _fundedOfferTimers[offerId]
          ?.cancel(); // Clean up funded timer if transitioning out
      _fundedOfferTimers.remove(offerId);
      _startReservationTimer(offerId);
      return timestampToStore; // Return the adjusted timestamp on success
    } else {
      print('Failed to reserve offer $offerId in DB.');
      return null; // Return null on failure
    }
  }

  // --- Reservation Timer Logic ---

  void _startReservationTimer(String offerId) {
    _reservationTimers[offerId]?.cancel();
    print(
        'Starting 20s reservation timer for offer $offerId'); // UPDATED log text
    _reservationTimers[offerId] = Timer(const Duration(seconds: 20), () {
      // UPDATED duration
      print('Reservation timer expired for offer $offerId');
      _handleReservationTimeout(offerId);
      _reservationTimers.remove(offerId);
    });
  }

  Future<void> _handleReservationTimeout(String offerId) async {
    print('Handling reservation timeout for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer != null && offer.status == OfferStatus.reserved) {
      print('Offer $offerId is still reserved. Reverting status to funded.');
      final success = await _dbService.updateOfferStatus(
        offerId,
        OfferStatus.funded,
        takerPubkey: null,
        blikCode: null,
        takerLightningAddress: null,
      );
      if (success) {
        print('Offer $offerId status reverted to funded due to timeout.');
      } else {
        print('Error reverting offer $offerId status after timeout.');
      }
    } else {
      print(
          'Offer $offerId no longer reserved (current status: ${offer?.status}). No action needed for reservation timeout.');
    }
  }

  // --- End Reservation Timer Logic ---

  // --- BLIK Confirmation Timer Logic ---

  void _startBlikConfirmationTimer(String offerId) {
    _blikConfirmationTimers[offerId]?.cancel();
    print(
        '### COORDINATOR: Starting 120s BLIK confirmation timer for offer $offerId'); // Added prominent log
    _blikConfirmationTimers[offerId] = Timer(const Duration(seconds: 120), () {
      print(
          '### COORDINATOR: Raw timer expired for offer $offerId. Calling handler...'); // Added prominent log
      _handleBlikConfirmationTimeout(offerId);
      _blikConfirmationTimers.remove(offerId);
    });
  }

  Future<void> _handleBlikConfirmationTimeout(String offerId) async {
    print(
        '### COORDINATOR: Handling BLIK confirmation timeout for offer $offerId'); // Added prominent log
    final offer = await _dbService.getOfferById(offerId);
    if (offer != null &&
        (offer.status == OfferStatus.blikReceived ||
            offer.status == OfferStatus.blikSentToMaker)) {
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

  // --- End BLIK Confirmation Timer Logic ---

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
    final takerInvoice =
        await _resolveLnurlPay(takerLightningAddress, offer.amountSats);
    if (takerInvoice == null || takerInvoice.isEmpty) {
      print(
          'Could not get an invoice for amount ${offer.amountSats} sats for LN address $takerLightningAddress');
      return false;
    }
    print('Offer $offerId not found, not reserved, or taker mismatch.');

    _reservationTimers[offerId]?.cancel();
    _reservationTimers.remove(offerId);
    print(
        'Cancelled reservation timer for offer $offerId due to BLIK submission.');

    // Pass the current time for blikReceivedAt
    final blikReceivedTime = DateTime.now().toUtc();
    final success = await _dbService.updateOfferStatus(
        offerId, OfferStatus.blikReceived,
        blikCode: blikCode,
        takerLightningAddress: takerLightningAddress,
        blikReceivedAt: blikReceivedTime); // Pass timestamp here

    if (success) {
      print('BLIK code for offer $offerId stored.');
      _startBlikConfirmationTimer(offerId); // Start the 120s timer
    } else {
      print('Failed to store BLIK code for offer $offerId in DB.');
    }
    return success;
  }

  Future<String?> getBlikCodeForMaker(String offerId, String makerId) async {
    print('Maker $makerId requesting BLIK for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    // Allow fetching if status is blikReceived OR blikSentToMaker
    if (offer == null ||
        offer.makerPubkey != makerId ||
        offer.blikCode == null) {
      print(
          'Offer $offerId not found, maker mismatch, status not blikReceived, or no BLIK code available.');
      return null;
    }

    try {
      // Update status without passing timestamps, as they are set automatically by DB or not needed
      final statusUpdated = await _dbService.updateOfferStatus(
          offerId, OfferStatus.blikSentToMaker);
      if (!statusUpdated) {
        print(
            'Warning: Failed to update offer $offerId status to blikSentToMaker, but returning code anyway.');
      } else {
        print('Offer $offerId status updated to blikSentToMaker.');
      }
    } catch (e) {
      print('Error updating offer $offerId status to blikSentToMaker: $e');
    }

    print('Returning BLIK code for offer $offerId to maker.');
    return offer.blikCode;
  }

  Future<bool> confirmMakerPayment(String offerId, String makerId) async {
    print('Maker $makerId confirming payment for offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null ||
        offer.makerPubkey != makerId ||
        (offer.status != OfferStatus.blikReceived &&
            offer.status != OfferStatus.blikSentToMaker)) {
      print(
          'Offer $offerId not found, maker mismatch, or not in correct state for confirmation.');
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
      final preimageBytes = hexToBytes(offer.holdInvoicePreimage);
      await _lndService.settleInvoice(preimageBytes);
      print('Hold invoice for offer $offerId settled successfully.');
      success =
          await _dbService.updateOfferStatus(offerId, OfferStatus.settled);
      if (!success) {
        print('Failed to update offer $offerId status to settled in DB.');
      }
    } catch (e) {
      print('Error settling hold invoice for offer $offerId: $e');
      return false;
    }

    Future.microtask(() => _payTakerAsync(offerId));
    return true;
  }

  // --- Update Taker Invoice ---
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

  // --- Offer Cancellation ---
  Future<bool> cancelOffer(String offerId, String makerId) async {
    print('Maker $makerId attempting to cancel offer $offerId');
    final offer = await _dbService.getOfferById(offerId);
    if (offer == null) {
      print('Offer $offerId not found.');
      return false;
    }
    if (offer.makerPubkey != makerId) {
      print('Maker mismatch for cancelling offer $offerId.');
      return false; // Or throw AuthorizationError
    }
    if (offer.status != OfferStatus.funded) {
      print('Offer $offerId cannot be cancelled in status ${offer.status}.');
      _fundedOfferTimers[offerId]
          ?.cancel(); // Clean up funded timer if transitioning out
      _fundedOfferTimers.remove(offerId);
      return false; // Can only cancel if funded
    }

    _fundedOfferTimers[offerId]
        ?.cancel(); // Clean up funded timer if transitioning out
    _fundedOfferTimers.remove(offerId);

    // Attempt to cancel the hold invoice on LND first
    try {
      final paymentHashBytes = hexToBytes(offer.holdInvoicePaymentHash);
      await _lndService.cancelInvoice(paymentHashBytes);
      print('Hold invoice for offer $offerId cancelled successfully on LND.');
    } catch (e) {
      print('Error cancelling hold invoice for offer $offerId on LND: $e');
      // Decide if we should still proceed to cancel in DB.
      // If LND cancel fails, the invoice might still be payable.
      // For now, let's proceed to cancel in DB anyway, but log the LND error.
      // Consider adding a 'cancelFailedLnd' status?
    }

    // Update DB status to cancelled
    final dbSuccess = await _dbService.cancelOffer(offerId, makerId);
    if (dbSuccess) {
      print('Offer $offerId status updated to cancelled in DB.');
      // Clean up any related resources (like invoice subscriptions)
      _invoiceSubscriptions[offer.holdInvoicePaymentHash]?.cancel();
      _invoiceSubscriptions.remove(offer.holdInvoicePaymentHash);
      _pendingOffers.remove(offer.holdInvoicePaymentHash); // Just in case
      return true;
    } else {
      print('Failed to update offer $offerId status to cancelled in DB.');
      return false;
    }
  }

  // --- Asynchronous Taker Payment Task ---
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

    print(
        'Async: Attempting to pay taker via LNURL: ${offer.takerLightningAddress} for ${offer.amountSats} sats');
    try {
      final takerInvoice = await _resolveLnurlPay(
          offer.takerLightningAddress!, offer.amountSats);
      if (takerInvoice == null) {
        print('Async Error: Failed to resolve LNURL for offer $offerId.');
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

  // --- Refactored taker payment logic ---
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
      await _dbService.updateOfferStatus(offerId, OfferStatus.payingTaker);

      final paymentStream = _lndService.sendPayment(
        takerInvoice,
        expectedAmountSat: offer.amountSats,
        feeLimitSat: offer.feeSats + 100,
      );
      bool paymentSucceeded = false;
      await for (final paymentUpdate in paymentStream) {
        if (paymentUpdate.status == Payment_PaymentStatus.SUCCEEDED) {
          print('Successfully paid taker for offer $offerId.');
          await _dbService.updateOfferStatus(offerId, OfferStatus.takerPaid);
          paymentSucceeded = true;
          return null;
        } else if (paymentUpdate.status == Payment_PaymentStatus.FAILED) {
          print(
              'Failed to pay taker for offer $offerId. Reason: ${paymentUpdate.failureReason}');
          await _dbService.updateOfferStatus(
              offerId, OfferStatus.takerPaymentFailed);
          return 'Failed to pay taker for offer $offerId. Reason: ${paymentUpdate.failureReason}';
        }
      }
      if (!paymentSucceeded) {
        print(
            'Taker payment stream completed without definitive status for offer $offerId.');
        await _dbService.updateOfferStatus(
            offerId, OfferStatus.takerPaymentFailed);
        return 'Taker payment stream completed without definitive status for offer $offerId.';
      }
      return null;
    } catch (e) {
      print('Exception during taker payment for offer $offerId: $e');
      await _dbService.updateOfferStatus(
          offerId, OfferStatus.takerPaymentFailed);
      return 'Exception during taker payment for offer $offerId: $e';
    }
  }

  // --- Retry taker payment with stored invoice ---
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

  // --- Helper Methods ---
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

  // --- LNURL Pay Resolution Helper ---
  Future<String?> _resolveLnurlPay(
      String lightningAddress, int amountSats) async {
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
      final response1 = await http.get(lnurlpUrl);
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
      final amountMsats = amountSats * 1000;
      if (amountMsats < minSendable || amountMsats > maxSendable) {
        print(
            'LNURL Error: Amount $amountSats sats ($amountMsats msats) is outside acceptable range ($minSendable - $maxSendable msats) for $lightningAddress');
        return null;
      }
      final callbackUri = Uri.parse(callbackUrl);
      final queryParams = Map<String, String>.from(callbackUri.queryParameters);
      queryParams['amount'] = amountMsats.toString();
      final finalUrl = callbackUri.replace(queryParameters: queryParams);
      print('LNURL: Requesting step 2 from $finalUrl');
      final response2 = await http.get(finalUrl);
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
}
