import 'dart:async';
import 'dart:convert'; // For jsonEncode/Decode if used, though NDK handles it
import 'dart:math';
import 'dart:typed_data';

import 'package:convert/convert.dart'; // Added for hex
import 'package:crypto/crypto.dart'; // For sha256 if used directly

// NDK imports
import 'package:ndk/ndk.dart';
import 'package:ndk/domain_layer/usecases/nwc/nwc_notification.dart';
import 'package:ndk/domain_layer/usecases/nwc/responses/nwc_response.dart';
// Import the interface
import 'payment_service.dart';
import '../models/invoice_status.dart';
import '../models/invoice_update.dart';
import '../models/create_hold_invoice_result.dart';
import '../models/pay_invoice_result.dart';

/// Service to interact with Nostr Wallet Connect (NWC) for hold invoices.
class NwcService implements PaymentService {
  final String _nwcUri;
  late final Ndk _ndk; // NDK instance managed by the service
  NwcConnection? _nwcConnection;

  final StreamController<InvoiceUpdate> _invoiceSubscriptionController =
      StreamController<InvoiceUpdate>.broadcast();
  StreamSubscription? _internalNwcNotificationSubscription;

  NwcService({required String nwcUri}) : _nwcUri = nwcUri {
    _ndk = Ndk.emptyBootstrapRelaysConfig();
  }

  // --- PaymentBackendInterface Implementation ---
  @override
  String get backendType => "nwc";

  @override
  Future<void> connect(
      {bool doGetInfoMethod = true, Function(String?)? onError}) async {
    // If _nwcConnection is not null, it implies a connection attempt was made.
    // NDK's connect method should handle re-initialization or throw if called inappropriately.
    if (_nwcConnection != null) {
      print(
          'NWC Service: _nwcConnection object exists. Assuming NDK connect handles this or will refresh.');
      // To ensure a completely fresh connection, one might explicitly disconnect first:
      // await disconnect();
      // _nwcConnection = null;
      // However, for now, we assume NDK's connect() is robust enough or that
      // if _nwcConnection is non-null, it's in a usable state or connect() will rectify.
      // If issues persist with re-connection, uncommenting the disconnect lines might be necessary.
    }
    try {
      print('NWC Service: Connecting to $_nwcUri...');
      _nwcConnection = await _ndk.nwc.connect(
        _nwcUri,
        doGetInfoMethod: doGetInfoMethod,
        onError: onError ??
            (error) {
              print('NWC Service: Connection error: $error');
              _nwcConnection = null; // Ensure _nwcConnection is null on error
              throw Exception('NWC Connection failed: $error');
            },
      );

      // After NDK's connect, _nwcConnection should be non-null if successful.
      // NDK's connect method itself is expected to throw on critical failure.
      if (_nwcConnection == null) {
        // This case implies NDK's connect returned null without throwing, which is unexpected
        // if it's designed to throw on failure.
        throw Exception(
            'NWC Connection failed: _nwcConnection is null after connect call.');
      }

      print(
          'NWC Service: Connected successfully to wallet: ${_nwcConnection?.uri.walletPubkey}.');
      _subscribeToInternalNwcNotifications();
    } catch (e) {
      print('NWC Service: Failed to connect: $e');
      _nwcConnection =
          null; // Ensure _nwcConnection is null on any exception during connect
      rethrow;
    }
  }

  void _subscribeToInternalNwcNotifications() {
    _internalNwcNotificationSubscription?.cancel();
    _internalNwcNotificationSubscription =
        _nwcConnection?.holdInvoiceStateStream.listen(
      (NwcNotification notification) {
        print(
            'NWC Service: Internal NWC Notification: ${notification.notificationType} for hash ${notification.paymentHash}');
        InvoiceStatus status; // Use InvoiceStatus from interface
        // Assuming notification.notificationType is a String.
        // NwcNotification.kHoldInvoiceAccepted is assumed to be a valid string constant.
        // For settled and canceled, using string literals as constants are not found.
        switch (notification.notificationType) {
          case NwcNotification
                .kHoldInvoiceAccepted: // Assumed valid and a string
            status = InvoiceStatus.ACCEPTED; // Use InvoiceStatus from interface
            break;
          case "holdInvoiceSettled": // Using string literal
            status = InvoiceStatus.SETTLED; // Use InvoiceStatus from interface
            break;
          case "holdInvoiceCanceled": // Using string literal
            status = InvoiceStatus.CANCELED; // Use InvoiceStatus from interface
            break;
          default:
            status = InvoiceStatus.UNKNOWN; // Use InvoiceStatus from interface
        }
        _invoiceSubscriptionController.add(InvoiceUpdate(
            paymentHash: notification.paymentHash, status: status));
      },
      onError: (error) {
        print('NWC Service: Error on internal NWC notification stream: $error');
        _invoiceSubscriptionController.addError(error);
      },
      onDone: () {
        print('NWC Service: Internal NWC notification stream completed.');
      },
    );
  }

  @override
  Future<void> disconnect() async {
    print('NWC Service: Disconnecting...');
    await _internalNwcNotificationSubscription?.cancel();
    // Do not close _invoiceSubscriptionController here, its lifecycle is managed by its listeners.
    if (_nwcConnection != null) {
      // No .isConnected check
      await _ndk.nwc.disconnect(_nwcConnection!);
    }
    _nwcConnection = null;
    // _ndk.destroy(); // NDK instance might be shared or have a longer lifecycle.
    // Consider if NDK should be destroyed here or managed externally.
    // For now, let's assume NDK is managed at a higher level or NwcService is a singleton.
    print('NWC Service: Disconnected.');
  }

  @override
  Future<CreateHoldInvoiceResult> createHoldInvoice({
    required int amountSats,
    required String memo, // NWC uses 'description'
    required String paymentHashHex,
  }) async {
    if (_nwcConnection == null) {
      // No .isConnected check
      throw Exception('NWC Service: Not connected.');
    }
    print(
        'NWC Service: Creating hold invoice: amountSats=$amountSats, paymentHash=$paymentHashHex, memo=$memo');
    try {
      // NWC's makeHoldInvoice uses 'description' not 'memo'
      final response = await _ndk.nwc.makeHoldInvoice(
        _nwcConnection!,
        amountSats: amountSats,
        paymentHash: paymentHashHex,
        description: memo, // Use memo as description
        // expiry: default or pass as param if needed
      );
      if (response.errorCode != null) {
        throw Exception(
            'NWC Error creating hold invoice: ${response.errorCode} - ${response.errorMessage}');
      }
      print(
          'NWC Service: Hold invoice created: ${response.invoice}, paymentHash: ${response.paymentHash}');
      return CreateHoldInvoiceResult(
        invoice: response.invoice,
        paymentHash: response.paymentHash ??
            paymentHashHex, // Prefer response hash if available
      );
    } catch (e) {
      print('NWC Service: Error in createHoldInvoice: $e');
      rethrow;
    }
  }

  @override
  Stream<InvoiceUpdate> subscribeToInvoiceUpdates(
      // Return InvoiceUpdate
      {required String paymentHashHex}) {
    // Named required parameter
    if (_nwcConnection == null) {
      // No .isConnected check
      // Or connect if not connected? For now, require prior connection.
      throw Exception(
          'NWC Service: Not connected. Cannot subscribe to invoice updates.');
    }
    print('NWC Service: Subscribing to invoice updates for $paymentHashHex');
    // Filter the broadcast stream for the specific payment hash
    return _invoiceSubscriptionController.stream.where((data) =>
        data.paymentHash ==
        paymentHashHex); // Check against InvoiceUpdate.paymentHash
  }

  @override
  Future<void> settleInvoice({required String preimageHex}) async {
    if (_nwcConnection == null) {
      // No .isConnected check
      throw Exception('NWC Service: Not connected.');
    }
    print('NWC Service: Settling hold invoice with preimage: $preimageHex');
    try {
      final response = await _ndk.nwc.settleHoldInvoice(
        _nwcConnection!,
        preimage: preimageHex,
      );
      if (response.errorCode != null) {
        throw Exception(
            'NWC Error settling hold invoice: ${response.errorCode} - ${response.errorMessage}');
      }
      print('NWC Service: Hold invoice settled successfully.');
    } catch (e) {
      print('NWC Service: Error in settleHoldInvoice: $e');
      rethrow;
    }
  }

  @override
  Future<void> cancelInvoice({required String paymentHashHex}) async {
    if (_nwcConnection == null) {
      // No .isConnected check
      throw Exception('NWC Service: Not connected.');
    }
    print(
        'NWC Service: Canceling hold invoice with paymentHash: $paymentHashHex');
    try {
      final response = await _ndk.nwc.cancelHoldInvoice(
        _nwcConnection!,
        paymentHash: paymentHashHex,
      );
      if (response.errorCode != null) {
        throw Exception(
            'NWC Error canceling hold invoice: ${response.errorCode} - ${response.errorMessage}');
      }
      print('NWC Service: Hold invoice canceled successfully.');
    } catch (e) {
      print('NWC Service: Error in cancelHoldInvoice: $e');
      rethrow;
    }
  }

  @override
  Future<PayInvoiceResult> payInvoice({
    required String invoice,
    int? amountSat, // NWC doesn't typically use this for BOLT11 with amount
    int? feeLimitSat, // NWC doesn't support fee limits in pay_invoice
  }) async {
    if (_nwcConnection == null) {
      throw Exception('NWC Service: Not connected.');
    }
    print('NWC Service: Paying invoice: $invoice');
    try {
      final response = await _ndk.nwc.payInvoice(
        _nwcConnection!,
        invoice: invoice,
      );

      if (response.errorCode != null) {
        print(
            'NWC Service: Error paying invoice: ${response.errorCode} - ${response.errorMessage}');
        return PayInvoiceResult(
          paymentError: // Use paymentError
              '${response.errorCode}: ${response.errorMessage ?? "Unknown NWC error"}',
        );
      }

      print(
          'NWC Service: Invoice paid successfully. Preimage: ${response.preimage}');
      return PayInvoiceResult(
        paymentPreimage: response.preimage, // Use paymentPreimage
        // NWC typically does not return fee information for the payment itself
        feeSat: null, // Or 0 if a value is strictly needed
      );
    } catch (e) {
      print('NWC Service: Exception in payInvoice: $e');
      return PayInvoiceResult(paymentError: e.toString()); // Use paymentError
    }
  }

  // sendPaymentStream method is now removed.

  // --- Original NWC specific methods (can be kept if needed for other purposes) ---
  // For example, if CoordinatorService or other parts of the app used these directly.
  // For now, we assume the interface methods are sufficient.

  /// Disconnects from the NWC provider and cleans up NDK resources.
  /// This is a more complete dispose if NwcService owns the NDK instance.
  Future<void> disposeNdk() async {
    await disconnect(); // Disconnects NWC connection
    await _ndk.destroy(); // Destroys the NDK instance
    print('NWC Service: NDK instance disposed.');
  }

  /// Checks if the service is currently connected to an NWC provider.
  /// Relies on _nwcConnection being non-null as an indicator that a connection
  /// attempt was made and did not result in _nwcConnection being nullified by an error.
  /// NDK's connect() method should throw if a connection cannot be established.
  bool get isConnected => _nwcConnection != null;

  /// Provides direct access to the NWC connection object if needed for advanced use cases.
  NwcConnection? get rawConnection => _nwcConnection;

  // Helper methods like generatePreimage, calculatePaymentHash, bytesToHex
  // can be moved to PaymentBackendInterface as static methods if they are generic enough
  // or kept here if specific to NWC's typical usage patterns.
  // For now, PaymentBackendInterface has its own hexToBytes.
  // These could be removed if not used elsewhere after refactoring.
  static Uint8List generatePreimage() {
    final random = Random.secure();
    return Uint8List.fromList(
        List<int>.generate(32, (_) => random.nextInt(256)));
  }

  static String calculatePaymentHash(Uint8List preimage) {
    final paymentHashBytes = sha256.convert(preimage).bytes;
    return hex.encode(paymentHashBytes);
  }

  static String bytesToHex(Uint8List bytes) {
    return hex.encode(bytes);
  }
}
