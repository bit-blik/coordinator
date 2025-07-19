import 'dart:async';
import 'dart:convert';
import 'dart:math';

import 'package:bip340/bip340.dart' as bip340;
import 'package:logger/logger.dart' as lib_logger;
import 'package:ndk/ndk.dart';
import 'package:ndk/shared/nips/nip19/nip19.dart';
import 'package:ndk/shared/nips/nip44/nip44.dart';

import 'coordinator_service.dart';
import '../models/offer.dart';

/// Service to handle Nostr communication for the coordinator
/// Implements info replaceable events and NIP-44 encrypted request/response
class NostrService {
  final CoordinatorService _coordinatorService;
  late final Ndk _ndk;
  late Bip340EventSigner _signer;

  // Relay configuration
  final List<String> _relays;

  // Event kinds
  static const int KIND_COORDINATOR_INFO =
      15125; // Application-specific info event (replaceable)
  static const int KIND_COORDINATOR_REQUEST =
      25195; // NIP-47 style request event
  static const int KIND_COORDINATOR_RESPONSE =
      25196; // NIP-47 style response event
  static const int KIND_OFFER_STATUS_UPDATE =
      25197; // Offer status update notifications

  // Subscription for incoming requests
  NdkResponse? _requestSubscription;

  NostrService(
    this._coordinatorService, {
    List<String> relays = const [
      'wss://relay.damus.io',
      'wss://relay.primal.net',
    ],
  }) : _relays = relays;

  /// Initialize the Nostr service
  Future<void> init({required String privateKey}) async {
    // Initialize NDK with bootstrap relays config
    _ndk = Ndk(
      NdkConfig(
          cache: MemCacheManager(),
          eventVerifier: Bip340EventVerifier(),
          bootstrapRelays: _relays,
          logLevel: lib_logger.Level.trace),
    );

    // Generate or load coordinator keys
    if (privateKey.isNotEmpty) {
      final decodedKey = _decodeNsecKey(privateKey);
      if (decodedKey == null) {
        throw Exception(
            'Invalid private key format. Use hex or nsec1... format.');
      }

      _signer = Bip340EventSigner(
        privateKey: decodedKey,
        publicKey: bip340.getPublicKey(decodedKey),
      );
    } else {
      // Generate new keys
      final random = Random.secure();
      final privateKeyBytes =
          List<int>.generate(32, (_) => random.nextInt(256));
      final privateKeyHex = privateKeyBytes
          .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
          .join('');

      _signer = Bip340EventSigner(
        privateKey: privateKeyHex,
        publicKey: bip340.getPublicKey(privateKey),
      );

      print('Generated new coordinator keys. Private key: $privateKeyHex');
      print('Store this private key in your .env file as NOSTR_PRIVATE_KEY');
    }

    // Publish coordinator info
    await _publishCoordinatorInfo();

    // Start listening for requests
    await _startRequestListener();
  }

  /// Decode nsec bech32 private key to hex format
  String? _decodeNsecKey(String nsecKey) {
    try {
      if (!nsecKey.startsWith('nsec1')) {
        // If it doesn't start with nsec1, assume it's already hex
        return nsecKey;
      }

      // Simple bech32 decoding for nsec keys
      // This is a basic implementation - in production you'd use a proper bech32 library
      // final data = nsecKey.substring(5); // Remove 'nsec1' prefix

      // For now, return the input as-is since NDK should handle nsec decoding
      // In a full implementation, you'd decode the bech32 format properly
      return Nip19.decode(nsecKey); // Let NDK handle the decoding
    } catch (e) {
      print('Error decoding nsec key: $e');
      return null;
    }
  }

  /// Publish coordinator info as a replaceable event
  Future<void> _publishCoordinatorInfo() async {
    try {
      final info = await _coordinatorService.getCoordinatorInfo();

      // Convert info to tags format for better discoverability
      final tags = [
        ['name', info['name'] ?? ''],
        ['icon', info['icon'] ?? ''],
        ['min_amount_sats', (info['min_amount_sats'] ?? 0).toString()],
        ['max_amount_sats', (info['max_amount_sats'] ?? 0).toString()],
        ['maker_fee', (info['maker_fee'] ?? 0).toString()],
        ['taker_fee', (info['taker_fee'] ?? 0).toString()],
        ['reservation_seconds', (info['reservation_seconds'] ?? 0).toString()],
        ['currencies', (info['currencies'] as List<String>? ?? []).join(',')],
        ['version', info['version'] ?? ''],
      ];

      final event = Nip01Event(
        kind: KIND_COORDINATOR_INFO,
        pubKey: _signer.getPublicKey(),
        content: '',
        tags: tags.map((tag) => tag.map((t) => t.toString()).toList()).toList(),
        createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      );

      await _signer.sign(event);
      await _ndk.broadcast
          .broadcast(nostrEvent: event, specificRelays: _relays);

      print('Published coordinator info event: ${event.id}');
    } catch (e) {
      print('Error publishing coordinator info: $e');
    }
  }

  /// Send encrypted offer status update to relevant users
  Future<void> publishOfferStatusUpdate({
    required String offerId,
    required String paymentHash,
    required String status,
    required DateTime timestamp,
    required String makerPubkey,
    String? takerPubkey,
  }) async {
    try {
      // Create the status update content
      final statusUpdate = {
        'offer_id': offerId,
        'payment_hash': paymentHash,
        'status': status,
        'timestamp': timestamp.millisecondsSinceEpoch ~/
            1000, // Unix timestamp in seconds
      };

      final statusUpdateJson = jsonEncode(statusUpdate);

      // Send encrypted update to maker
      await _sendEncryptedStatusUpdate(
          makerPubkey, statusUpdateJson, offerId, status, paymentHash);

      // Send encrypted update to taker if available
      if (takerPubkey != null && takerPubkey.isNotEmpty) {
        await _sendEncryptedStatusUpdate(
            takerPubkey, statusUpdateJson, offerId, status, paymentHash);
      }

      print(
          'Sent encrypted status updates for offer $offerId with status $status to maker and taker');
    } catch (e) {
      print('Error sending encrypted offer status updates: $e');
    }
  }

  /// Send encrypted status update to a specific user
  Future<void> _sendEncryptedStatusUpdate(
    String recipientPubkey,
    String statusUpdateJson,
    String offerId,
    String status,
    String paymentHash,
  ) async {
    try {
      // Encrypt using NIP-44
      final privateKey = _signer.privateKey;
      if (privateKey == null) {
        throw Exception('No private key available for encryption');
      }

      final encryptedContent = await Nip44.encryptMessage(
        statusUpdateJson,
        privateKey,
        recipientPubkey,
      );

      final event = Nip01Event(
        kind: KIND_OFFER_STATUS_UPDATE,
        pubKey: _signer.getPublicKey(),
        content: encryptedContent,
        tags: [
          ['p', recipientPubkey], // Tag recipient
          ['offer_id', offerId],
        ].map((tag) => tag.map((t) => t.toString()).toList()).toList(),
        createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      );

      await _signer.sign(event);
      await _ndk.broadcast
          .broadcast(nostrEvent: event, specificRelays: _relays);

      print(
          'Sent encrypted status update to $recipientPubkey for offer $offerId');
    } catch (e) {
      print('Error sending encrypted status update to $recipientPubkey: $e');
    }
  }

  /// Start listening for encrypted requests
  Future<void> _startRequestListener() async {
    try {
      final filter = Filter(
        kinds: [KIND_COORDINATOR_REQUEST],
        pTags: [_signer.getPublicKey()], // Events tagged with our pubkey
      );

      final response = _ndk.requests.subscription(
        name: "coordinator-requests",
        filters: [filter],
      );
      _requestSubscription = response;

      response.stream.listen(_handleRequest);

      print(
          'Started listening for coordinator requests on kind $KIND_COORDINATOR_REQUEST');
    } catch (e) {
      print('Error starting request listener: $e');
    }
  }

  /// Handle incoming encrypted requests
  Future<void> _handleRequest(Nip01Event event) async {
    try {
      print('Received request event: ${event.id} from ${event.pubKey}');

      // Decrypt the request using NIP-44
      final privateKey = _signer.privateKey;
      if (privateKey == null) {
        throw Exception('No private key available for decryption');
      }

      final decryptedContent = await Nip44.decryptMessage(
        event.content,
        privateKey,
        event.pubKey,
      );

      print('Decrypted request: $decryptedContent');

      // Parse the request
      final request = jsonDecode(decryptedContent) as Map<String, dynamic>;
      final method = request['method'] as String?;
      final params = request['params'] as Map<String, dynamic>? ?? {};
      final id = request['id'] as String?;

      if (method == null || id == null) {
        await _sendErrorResponse(
            event.pubKey, id, 'INVALID_REQUEST', 'Missing method or id');
        return;
      }

      // Process the request
      final response = await _processRequest(method, params, event.pubKey);
      await _sendResponse(event.pubKey, id, response);
    } catch (e) {
      print('Error handling request: $e');
      await _sendErrorResponse(
          event.pubKey, null, 'INTERNAL_ERROR', e.toString());
    }
  }

  /// Process a coordinator request
  Future<Map<String, dynamic>> _processRequest(
      String method, Map<String, dynamic> params, String userPubkey) async {
    try {
      switch (method) {
        case 'get_info':
          return await _coordinatorService.getCoordinatorInfo();

        case 'list_offers':
          final offers = await _coordinatorService.listAvailableOffers();
          return {'offers': offers};

        case 'initiate_offer':
          final fiatAmount = (params['fiat_amount'] as num?)?.toDouble();
          final makerId = params['maker_id'] as String? ?? userPubkey;

          if (fiatAmount == null) {
            throw Exception('Missing required parameter: fiat_amount');
          }

          return await _coordinatorService.initiateOfferFiat(
            fiatAmount: fiatAmount,
            makerId: makerId,
          );

        case 'reserve_offer':
          final offerId = params['offer_id'] as String?;
          if (offerId == null) {
            throw Exception('Missing required parameter: offer_id');
          }

          final reservationTimestamp =
              await _coordinatorService.reserveOffer(offerId, userPubkey);
          if (reservationTimestamp != null) {
            return {
              'message': 'Offer reserved successfully',
              'reserved_at': reservationTimestamp.toIso8601String(),
            };
          } else {
            throw Exception(
                'Failed to reserve offer. It might be unavailable or already reserved.');
          }

        case 'submit_blik':
          final offerId = params['offer_id'] as String?;
          final blikCode = params['blik_code'] as String?;
          final takerLightningAddress =
              params['taker_lightning_address'] as String?;

          if (offerId == null ||
              blikCode == null ||
              takerLightningAddress == null) {
            throw Exception(
                'Missing required parameters: offer_id, blik_code, taker_lightning_address');
          }

          final success = await _coordinatorService.submitBlikCode(
              offerId, userPubkey, blikCode, takerLightningAddress);

          if (success) {
            return {'message': 'BLIK code submitted successfully'};
          } else {
            throw Exception(
                'Failed to submit BLIK code. Offer state might be invalid or taker mismatch.');
          }

        case 'get_blik':
          final offerId = params['offer_id'] as String?;
          if (offerId == null) {
            throw Exception('Missing required parameter: offer_id');
          }

          final blikCode = await _coordinatorService.getBlikCodeForMaker(
              offerId, userPubkey);
          if (blikCode != null) {
            return {'blik_code': blikCode};
          } else {
            throw Exception(
                'BLIK code not found or not available for this offer/maker.');
          }

        case 'confirm_payment':
          final offerId = params['offer_id'] as String?;
          if (offerId == null) {
            throw Exception('Missing required parameter: offer_id');
          }

          final success = await _coordinatorService.confirmMakerPayment(
              offerId, userPubkey);
          if (success) {
            return {
              'message': 'Payment confirmed, invoice settled, taker paid.'
            };
          } else {
            throw Exception(
                'Failed to confirm payment. Check offer state, LND connection, or logs.');
          }

        case 'get_my_active_offer':
          final activeOffers =
              await _coordinatorService.getMyActiveOffers(userPubkey);
          if (activeOffers.isNotEmpty) {
            final offer = activeOffers.first;
            return offer.toJson();
          } else {
            return {};
          }

        case 'get_my_finished_offers':
          final activeOffers =
              await _coordinatorService.getMyActiveOffers(userPubkey);
          final now = DateTime.now().toUtc();
          final finished = activeOffers
              .where((offer) =>
                  offer.status.name == 'takerPaid' &&
                  offer.takerPaidAt != null &&
                  now.difference(offer.takerPaidAt!.toUtc()).inHours < 24)
              .toList();

          final finishedList =
              finished.map((offer) => offer.toJson()).toList();
          return {'offers': finishedList};

        case 'cancel_offer':
          PILA Error handling request: Exception: Error processing request: PostgreSQLSeverity.error 22P02: invalid input syntax for type uuid: "unknown_id"
          final offerId = params['offer_id'] as String?;
          if (offerId == null) {
            throw Exception('Missing required parameter: offer_id');
          }

          final success =
              await _coordinatorService.cancelOffer(offerId, userPubkey);
          if (success) {
            return {'message': 'Offer cancelled successfully'};
          } else {
            throw Exception(
                'Failed to cancel offer. It might be in the wrong state or you are not the maker.');
          }

        case 'cancel_reservation':
          final offerId = params['offer_id'] as String?;
          if (offerId == null) {
            throw Exception('Missing required parameter: offer_id');
          }

          final success =
              await _coordinatorService.cancelReservation(offerId, userPubkey);
          if (success) {
            return {'message': 'Reservation cancelled successfully'};
          } else {
            throw Exception(
                'Failed to cancel reservation. It might be in the wrong state or you are not the taker.');
          }

        case 'mark_blik_invalid':
          final offerId = params['offer_id'] as String?;
          if (offerId == null) {
            throw Exception('Missing required parameter: offer_id');
          }

          final success =
              await _coordinatorService.markBlikInvalid(offerId, userPubkey);
          if (success) {
            return {'message': 'BLIK code marked as invalid successfully'};
          } else {
            throw Exception(
                'Failed to mark BLIK as invalid. Offer might be in the wrong state, not found, or maker ID mismatch.');
          }

        case 'mark_offer_conflict':
          final offerId = params['offer_id'] as String?;
          if (offerId == null) {
            throw Exception('Missing required parameter: offer_id');
          }

          final success =
              await _coordinatorService.markOfferConflict(offerId, userPubkey);
          if (success) {
            return {'message': 'Offer marked as conflict successfully'};
          } else {
            throw Exception(
                'Failed to mark offer as conflict. Offer might be in the wrong state, not found, or taker ID mismatch.');
          }

        case 'update_taker_invoice':
          final offerId = params['offer_id'] as String?;
          final bolt11 = params['bolt11'] as String?;

          if (offerId == null || bolt11 == null) {
            throw Exception('Missing required parameters: offer_id, bolt11');
          }

          final success = await _coordinatorService.updateTakerInvoice(
              offerId, bolt11, userPubkey);
          if (success) {
            return {'message': 'Taker invoice updated'};
          } else {
            throw Exception('Failed to update taker invoice');
          }

        case 'retry_taker_payment':
          final offerId = params['offer_id'] as String?;
          if (offerId == null) {
            throw Exception('Missing required parameter: offer_id');
          }

          final error =
              await _coordinatorService.retryTakerPayment(offerId, userPubkey);
          if (error == null) {
            return {'message': 'Taker payment retried'};
          } else {
            throw Exception(error);
          }

        case 'get_successful_offers_stats':
          return await _coordinatorService.getSuccessfulOffersWithStats();

        default:
          throw Exception('Unknown method: $method');
      }
    } catch (e) {
      throw Exception('Error processing request: $e');
    }
  }

  /// Convert offer to JSON format
  // Map<String, dynamic> _offerToJson(dynamic offer) {
  //   return {
  //     'id': offer.id,
  //     'amount_sats': offer.amountSats,
  //     'maker_fees': offer.makerFees,
  //     'maker_pubkey': offer.makerPubkey,
  //     'taker_pubkey': offer.takerPubkey,
  //     'taker_lightning_address': offer.takerLightningAddress,
  //     'status': offer.status.name,
  //     'created_at': offer.createdAt.toIso8601String(),
  //     'reserved_at': offer.reservedAt?.toIso8601String(),
  //     'blik_received_at': offer.blikReceivedAt?.toIso8601String(),
  //     'hold_invoice_payment_hash': offer.holdInvoicePaymentHash,
  //     'blik_code': offer.blikCode,
  //     'taker_paid_at': offer.takerPaidAt?.toIso8601String(),
  //     'fiat_amount': offer.fiatAmount,
  //     'fiat_currency': offer.fiatCurrency,
  //     'taker_fees': offer.takerFees,
  //   };
  // }

  /// Send a successful response
  Future<void> _sendResponse(String recipientPubkey, String requestId,
      Map<String, dynamic> result) async {
    try {
      final response = {
        'id': requestId,
        'result': result,
      };

      await _sendEncryptedMessage(recipientPubkey, response);
    } catch (e) {
      print('Error sending response: $e');
    }
  }

  /// Send an error response
  Future<void> _sendErrorResponse(String recipientPubkey, String? requestId,
      String errorCode, String errorMessage) async {
    try {
      final response = {
        'id': requestId,
        'error': {
          'code': errorCode,
          'message': errorMessage,
        },
      };

      await _sendEncryptedMessage(recipientPubkey, response);
    } catch (e) {
      print('Error sending error response: $e');
    }
  }

  /// Send an encrypted message to a recipient
  Future<void> _sendEncryptedMessage(
      String recipientPubkey, Map<String, dynamic> message) async {
    try {
      final messageJson = jsonEncode(message);

      // Encrypt using NIP-44
      final privateKey = _signer.privateKey;
      if (privateKey == null) {
        throw Exception('No private key available for encryption');
      }

      final encryptedContent = await Nip44.encryptMessage(
        messageJson,
        privateKey,
        recipientPubkey,
      );

      final event = Nip01Event(
        kind: KIND_COORDINATOR_RESPONSE,
        pubKey: _signer.getPublicKey(),
        content: encryptedContent,
        tags: [
          ['p', recipientPubkey], // Tag recipient
        ].map((tag) => tag.map((t) => t.toString()).toList()).toList(),
        createdAt: DateTime.now().millisecondsSinceEpoch ~/ 1000,
      );

      await _signer.sign(event);
      await _ndk.broadcast
          .broadcast(nostrEvent: event, specificRelays: _relays);

      print('Sent encrypted response to $recipientPubkey');
    } catch (e) {
      print('Error sending encrypted message: $e');
    }
  }

  /// Get the coordinator's public key
  String? get coordinatorPubkey => _signer.getPublicKey();

  /// Refresh coordinator info (republish)
  Future<void> refreshInfo() async {
    await _publishCoordinatorInfo();
  }

  /// Disconnect and cleanup
  Future<void> disconnect() async {
    if (_requestSubscription != null) {
      await _ndk.requests.closeSubscription(_requestSubscription!.requestId);
    }
    await _ndk.destroy();
  }
}
