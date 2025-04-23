import 'dart:convert';
import 'package:bitblik_coordinator/src/models/offer.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import '../services/coordinator_service.dart';
// Import Offer model for status enum and toJson

class ApiService {
  final CoordinatorService _coordinatorService;
  final Router _router;

  ApiService(this._coordinatorService) : _router = Router() {
    // Define routes
    _router.post('/initiate-offer', _initiateOfferHandler);
    _router.get('/offers', _listOffersHandler);
    _router.post('/offers/<offerId>/reserve', _reserveOfferHandler);
    _router.post('/offers/<offerId>/blik', _submitBlikHandler);
    _router.get('/offers/<offerId>/blik', _getBlikHandler);
    _router.post('/offers/<offerId>/confirm', _confirmPaymentHandler);
    _router.post(
        '/offers/<offerId>/update-invoice', _updateTakerInvoiceHandler);
    _router.get('/my-active-offer', _getMyActiveOfferHandler);
    _router.get('/my-finished-offers', _getMyFinishedOffersHandler);
    _router.get('/offer-status/<paymentHash>', _getOfferStatusHandler);
    _router.post(
        '/offers/<offerId>/retry-taker-payment', _retryTakerPaymentHandler);
    _router.delete(
        '/offers/<offerId>/cancel', _cancelOfferHandler); // New cancel endpoint
  }

  Future<Response> _retryTakerPaymentHandler(
      Request request, String offerId) async {
    try {
      final userPubkey = request.headers['x-user-pubkey'];
      if (userPubkey == null || userPubkey.isEmpty) {
        return Response.unauthorized(jsonEncode(
            {'error': 'Missing user identification (x-user-pubkey header)'}));
      }
      final success =
          await _coordinatorService.retryTakerPayment(offerId, userPubkey);
      if (success) {
        return Response.ok(jsonEncode({'message': 'Taker payment retried'}),
            headers: {'Content-Type': 'application/json'});
      } else {
        return Response(409,
            body: jsonEncode({'error': 'Failed to retry taker payment'}));
      }
    } catch (e) {
      print('Error in _retryTakerPaymentHandler: $e');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to retry taker payment: ${e.toString()}'}));
    }
  }

  Future<Response> _updateTakerInvoiceHandler(
      Request request, String offerId) async {
    try {
      final userPubkey = request.headers['x-user-pubkey'];
      if (userPubkey == null || userPubkey.isEmpty) {
        return Response.unauthorized(jsonEncode(
            {'error': 'Missing user identification (x-user-pubkey header)'}));
      }
      final body = await request.readAsString();
      final jsonBody = jsonDecode(body) as Map<String, dynamic>;
      final bolt11 = jsonBody['bolt11'] as String?;
      if (bolt11 == null) {
        return Response.badRequest(
            body: jsonEncode({'error': 'Missing required field: bolt11'}));
      }
      final success = await _coordinatorService.updateTakerInvoice(
          offerId, bolt11, userPubkey);
      if (success) {
        return Response.ok(jsonEncode({'message': 'Taker invoice updated'}),
            headers: {'Content-Type': 'application/json'});
      } else {
        return Response(409,
            body: jsonEncode({'error': 'Failed to update taker invoice'}));
      }
    } catch (e) {
      print('Error in _updateTakerInvoiceHandler: $e');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to update taker invoice: ${e.toString()}'}));
    }
  }

  // Getter for the main handler
  Handler get handler => _router;

  // --- Route Handlers ---

  Future<Response> _initiateOfferHandler(Request request) async {
    try {
      final body = await request.readAsString();
      final jsonBody = jsonDecode(body) as Map<String, dynamic>;
      final fiatAmount = (jsonBody['fiat_amount'] as num?)?.toDouble();
      final feePercentage = jsonBody['fee_percentage'] as int?;
      final makerId = jsonBody['maker_id'] as String?;

      if (fiatAmount == null || feePercentage == null || makerId == null) {
        return Response.badRequest(
            body: jsonEncode({
          'error':
              'Missing required fields: fiat_amount, fee_percentage, maker_id'
        }));
      }
      final result = await _coordinatorService.initiateOfferFiat(
        fiatAmount: fiatAmount,
        feePercentage: feePercentage,
        makerId: makerId,
      );
      return Response.ok(jsonEncode(result),
          headers: {'Content-Type': 'application/json'});
    } catch (e) {
      print('Error in _initiateOfferHandler: $e');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to initiate offer creation: ${e.toString()}'}));
    }
  }

  Future<Response> _listOffersHandler(Request request) async {
    try {
      final offers = await _coordinatorService.listAvailableOffers();
      return Response.ok(jsonEncode(offers),
          headers: {'Content-Type': 'application/json'});
    } catch (e) {
      print('Error in _listOffersHandler: $e');
      return Response.internalServerError(
          body:
              jsonEncode({'error': 'Failed to list offers: ${e.toString()}'}));
    }
  }

  Future<Response> _reserveOfferHandler(Request request, String offerId) async {
    try {
      final body = await request.readAsString();
      final jsonBody = jsonDecode(body) as Map<String, dynamic>;
      final takerId = jsonBody['taker_id'] as String?;

      if (takerId == null) {
        return Response.badRequest(
            body: jsonEncode({'error': 'Missing required field: taker_id'}));
      }
      // reserveOffer now returns DateTime? (the reservation timestamp) or null
      final reservationTimestamp =
          await _coordinatorService.reserveOffer(offerId, takerId);

      if (reservationTimestamp != null) {
        // Success: Return the timestamp
        return Response.ok(
          jsonEncode({
            'message': 'Offer reserved successfully',
            // Include the timestamp in the response body
            'reserved_at': reservationTimestamp.toIso8601String(),
          }),
          headers: {'Content-Type': 'application/json'},
        );
      } else {
        // Failure
        return Response(409,
            body: jsonEncode({
              'error':
                  'Failed to reserve offer. It might be unavailable or already reserved.'
            }));
      }
    } catch (e) {
      print('Error in _reserveOfferHandler: $e');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to reserve offer: ${e.toString()}'}));
    }
  }

  Future<Response> _submitBlikHandler(Request request, String offerId) async {
    try {
      final body = await request.readAsString();
      final jsonBody = jsonDecode(body) as Map<String, dynamic>;
      final takerId = jsonBody['taker_id'] as String?;
      final blikCode = jsonBody['blik_code'] as String?;
      final takerLightningAddress =
          jsonBody['taker_lightning_address'] as String?;

      if (takerId == null ||
          blikCode == null ||
          takerLightningAddress == null) {
        return Response.badRequest(
            body: jsonEncode({
          'error':
              'Missing required fields: taker_id, blik_code, taker_lightning_address'
        }));
      }
      final success = await _coordinatorService.submitBlikCode(
          offerId, takerId, blikCode, takerLightningAddress);
      if (success) {
        return Response.ok(
            jsonEncode({'message': 'BLIK code submitted successfully'}));
      } else {
        return Response(409,
            body: jsonEncode({
              'error':
                  'Failed to submit BLIK code. Offer state might be invalid or taker mismatch. Also make sure your lightning address is valid and can generate invoice for the amount of offer'
            }));
      }
    } catch (e,s) {
      print('Error in _submitBlikHandler: $e');
      print('Stack: $s');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to submit BLIK code: ${e.toString()}'}));
    }
  }

  Future<Response> _getBlikHandler(Request request, String offerId) async {
    try {
      final makerId = request.headers['x-maker-id'] ??
          request.url.queryParameters['maker_id'];
      if (makerId == null) {
        return Response.unauthorized(jsonEncode({
          'error': 'Missing maker identification (e.g., x-maker-id header)'
        }));
      }
      final blikCode =
          await _coordinatorService.getBlikCodeForMaker(offerId, makerId);
      if (blikCode != null) {
        return Response.ok(jsonEncode({'blik_code': blikCode}),
            headers: {'Content-Type': 'application/json'});
      } else {
        return Response(404,
            body: jsonEncode({
              'error':
                  'BLIK code not found or not available for this offer/maker.'
            }));
      }
    } catch (e) {
      print('Error in _getBlikHandler: $e');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to get BLIK code: ${e.toString()}'}));
    }
  }

  Future<Response> _confirmPaymentHandler(
      Request request, String offerId) async {
    try {
      final makerId = request.headers['x-maker-id'] ??
          request.url.queryParameters['maker_id'];
      if (makerId == null) {
        return Response.unauthorized(jsonEncode({
          'error': 'Missing maker identification (e.g., x-maker-id header)'
        }));
      }
      final success =
          await _coordinatorService.confirmMakerPayment(offerId, makerId);
      if (success) {
        return Response.ok(jsonEncode(
            {'message': 'Payment confirmed, invoice settled, taker paid.'}));
      } else {
        return Response(409,
            body: jsonEncode({
              'error':
                  'Failed to confirm payment. Check offer state, LND connection, or logs.'
            }));
      }
    } catch (e) {
      print('Error in _confirmPaymentHandler: $e');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to confirm payment: ${e.toString()}'}));
    }
  }

  Future<Response> _getMyActiveOfferHandler(Request request) async {
    try {
      final userPubkey = request.headers['x-user-pubkey'];
      if (userPubkey == null || userPubkey.isEmpty) {
        return Response.unauthorized(jsonEncode(
            {'error': 'Missing user identification (x-user-pubkey header)'}));
      }
      final activeOffers =
          await _coordinatorService.getMyActiveOffers(userPubkey);
      if (activeOffers.isNotEmpty) {
        // Find the first offer that is either:
        // - not takerPaymentFailed
        // - or takerPaymentFailed and userPubkey matches taker_pubkey
        Offer? selectedOffer;
        for (final offer in activeOffers) {
          if (offer.status.name == 'takerPaymentFailed') {
            if (offer.takerPubkey == userPubkey) {
              selectedOffer = offer;
              break;
            }
          } else if (offer.status.name == 'takerPaid') {
            // skip takerPaid offers from active
            continue;
          } else {
            selectedOffer = offer;
            break;
          }
        }
        if (selectedOffer != null) {
          final offer = selectedOffer;
          // Manually construct the JSON map
          final offerMap = {
            'id': offer.id,
            'amount_sats': offer.amountSats,
            'fee_sats': offer.feeSats,
            'maker_pubkey': offer.makerPubkey,
            'taker_pubkey': offer.takerPubkey,
            'taker_lightning_address': offer.takerLightningAddress,
            'status': offer.status.name,
            'created_at': offer.createdAt.toIso8601String(),
            'reserved_at': offer.reservedAt?.toIso8601String(),
            'blik_received_at': offer.blikReceivedAt?.toIso8601String(),
            'hold_invoice_payment_hash': offer.holdInvoicePaymentHash,
            'blik_code': offer.blikCode, // Include BLIK code
            'taker_paid_at': offer.takerPaidAt?.toIso8601String(),
            // Add other relevant fields if needed by the client (e.g., taker_lightning_address for Maker?)
          };
          // print('[DEBUG] my-active-offer response: $offerMap');
          return Response.ok(jsonEncode(offerMap),
              headers: {'Content-Type': 'application/json'});
        } else {
          return Response.ok(jsonEncode({}), headers: {
            'Content-Type': 'application/json'
          }); // Return empty object
        }
      } else {
        return Response.ok(jsonEncode({}), headers: {
          'Content-Type': 'application/json'
        }); // Return empty object
      }
    } catch (e) {
      print('Error in _getMyActiveOfferHandler: $e');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to get active offer: ${e.toString()}'}));
    }
  }

  // New endpoint: /my-finished-offers
  Future<Response> _getMyFinishedOffersHandler(Request request) async {
    try {
      final userPubkey = request.headers['x-user-pubkey'];
      if (userPubkey == null || userPubkey.isEmpty) {
        return Response.unauthorized(jsonEncode(
            {'error': 'Missing user identification (x-user-pubkey header)'}));
      }
      final offers = await _coordinatorService.getMyActiveOffers(userPubkey);
      final now = DateTime.now().toUtc();
      final finished = offers
          .where((offer) =>
              offer.status.name == 'takerPaid' &&
              offer.takerPaidAt != null &&
              now.difference(offer.takerPaidAt!.toUtc()).inHours < 24)
          .toList();

      final finishedList = finished
          .map((offer) => {
                'id': offer.id,
                'amount_sats': offer.amountSats,
                'fee_sats': offer.feeSats,
                'maker_pubkey': offer.makerPubkey,
                'taker_pubkey': offer.takerPubkey,
                'taker_lightning_address': offer.takerLightningAddress,
                'status': offer.status.name,
                'created_at': offer.createdAt.toIso8601String(),
                'reserved_at': offer.reservedAt?.toIso8601String(),
                'blik_received_at': offer.blikReceivedAt?.toIso8601String(),
                'hold_invoice_payment_hash': offer.holdInvoicePaymentHash,
                'blik_code': offer.blikCode,
                'taker_paid_at': offer.takerPaidAt?.toIso8601String(),
              })
          .toList();

      return Response.ok(jsonEncode(finishedList),
          headers: {'Content-Type': 'application/json'});
    } catch (e) {
      print('Error in _getMyFinishedOffersHandler: $e');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to get finished offers: ${e.toString()}'}));
    }
  }

  Future<Response> _getOfferStatusHandler(
      Request request, String paymentHash) async {
    try {
      final offer =
          await _coordinatorService.getOfferByPaymentHash(paymentHash);
      if (offer != null) {
        return Response.ok(jsonEncode({'status': offer.status.name}),
            headers: {'Content-Type': 'application/json'});
      } else {
        return Response.ok(jsonEncode({'status': 'pending_creation'}),
            headers: {'Content-Type': 'application/json'});
      }
    } catch (e) {
      print('Error in _getOfferStatusHandler: $e');
      return Response.internalServerError(
          body: jsonEncode(
              {'error': 'Failed to get offer status: ${e.toString()}'}));
    }
  }

  // Handler for cancelling an offer
  Future<Response> _cancelOfferHandler(Request request, String offerId) async {
    try {
      final makerId = request.headers['x-maker-id'];
      if (makerId == null || makerId.isEmpty) {
        return Response.unauthorized(jsonEncode(
            {'error': 'Missing maker identification (x-maker-id header)'}));
      }

      final success = await _coordinatorService.cancelOffer(offerId, makerId);

      if (success) {
        return Response.ok(
            jsonEncode({'message': 'Offer cancelled successfully'}));
      } else {
        // Could be 403 Forbidden (wrong maker), 404 Not Found, 409 Conflict (wrong state)
        // Let's return 409 for simplicity, assuming the offer exists but wasn't in 'funded' state or maker mismatch
        return Response(409,
            body: jsonEncode({
              'error':
                  'Failed to cancel offer. It might be in the wrong state or you are not the maker.'
            }));
      }
    } catch (e) {
      print('Error in _cancelOfferHandler: $e');
      return Response.internalServerError(
          body:
              jsonEncode({'error': 'Failed to cancel offer: ${e.toString()}'}));
    }
  }
}
