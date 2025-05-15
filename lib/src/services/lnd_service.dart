// For hex encoding
import 'dart:async'; // Required for Stream
import 'dart:io';
import 'dart:typed_data'; // Required for Uint8List
import 'package:grpc/grpc.dart';
// Add path dependency if not already there
import 'package:fixnum/fixnum.dart'; // Import fixnum for Int64

import 'payment_service.dart'; // Import the interface
import '../models/invoice_status.dart';
import '../models/invoice_update.dart';
import '../models/create_hold_invoice_result.dart';
import '../models/pay_invoice_result.dart';

// Import generated LND gRPC files (adjust paths/names if necessary)
import '../generated/lnd/lightning.pbgrpc.dart';
import '../generated/lnd/invoices.pbgrpc.dart';
import '../generated/lnd/router.pbgrpc.dart'
    as lnd_router; // Alias for LND router client and types
// Removed unnecessary import: ../generated/lnd/router.pb.dart

// Top-level helper to convert hex string to Uint8List
Uint8List _hexToBytes(String hex) {
  hex = hex.replaceAll(RegExp(r'\s+'), ''); // Remove any whitespace
  if (hex.length % 2 != 0) {
    hex = '0$hex'; // Pad with a leading zero if odd length
  }
  final bytes = <int>[];
  for (int i = 0; i < hex.length; i += 2) {
    final hexPair = hex.substring(i, i + 2);
    bytes.add(int.parse(hexPair, radix: 16));
  }
  return Uint8List.fromList(bytes);
}

// Replace the hardcoded connection details with environment variables
final _lndHost = Platform.environment['LND_HOST'] ?? 'localhost';
final _lndPort = int.parse(Platform.environment['LND_PORT'] ?? '10009');
final _tlsCertPath = Platform.environment['LND_CERT_PATH'] ?? 'tls.cert';
final _macaroonPath =
    Platform.environment['LND_MACAROON_PATH'] ?? 'admin.macaroon';

class LndService implements PaymentService {
  ClientChannel? _channel;
  LightningClient? _lightningClient;
  InvoicesClient? _invoicesClient;
  lnd_router.RouterClient? _routerClient; // Use aliased type

  // backendType getter removed as it's not in the interface

  @override
  Future<void> connect() async {
    if (_channel != null) return; // Already connected

    // Load TLS certificate
    final List<int> trustedRoots;
    try {
      trustedRoots = await File(_tlsCertPath).readAsBytes();
    } catch (e) {
      print('Error reading LND TLS certificate at $_tlsCertPath: $e');
      rethrow;
    }
    final channelCredentials = ChannelCredentials.secure(
      certificates: trustedRoots,
      authority: _lndHost, // Specify the hostname/IP to verify against the cert
    );

    // Load Macaroon
    final List<int> macaroonBytes;
    try {
      macaroonBytes = await File(_macaroonPath).readAsBytes();
    } catch (e) {
      print('Error reading LND macaroon at $_macaroonPath: $e');
      rethrow;
    }
    // Convert macaroon bytes to hex string for metadata
    final macaroonHex = macaroonBytes
        .map((byte) => byte.toRadixString(16).padLeft(2, '0'))
        .join('');
    // final macaroonCredentials = CallCredentials.macaroon(macaroonHex); // Incorrect approach

    // Create channel with TLS credentials
    _channel = ClientChannel(
      _lndHost,
      port: _lndPort,
      options: ChannelOptions(
          credentials: channelCredentials), // Base TLS credentials
    );

    // Create client stubs with macaroon metadata added to call options
    final callOptions = CallOptions(metadata: {'macaroon': macaroonHex});
    _lightningClient = LightningClient(_channel!, options: callOptions);
    _invoicesClient = InvoicesClient(_channel!, options: callOptions);
    _routerClient = lnd_router.RouterClient(_channel!,
        options: callOptions); // Use aliased type

    // Optional: Test connection with a simple call like GetInfo
    try {
      final info = await _lightningClient!.getInfo(GetInfoRequest());
      print(
          'Connected to LND node: ${info.identityPubkey} (alias: ${info.alias})');
    } catch (e) {
      print('Error connecting to LND: $e');
      await disconnect(); // Clean up channel if connection test fails
      rethrow;
    }
  }

  @override
  Future<void> disconnect() async {
    await _channel?.shutdown();
    _channel = null;
    _lightningClient = null;
    _invoicesClient = null;
    _routerClient = null;
    print('Disconnected from LND.');
  }

  @override
  Future<CreateHoldInvoiceResult> createHoldInvoice({
    required int amountSats,
    required String memo,
    required String paymentHashHex,
  }) async {
    if (_invoicesClient == null) throw StateError('LND not connected.');
    final paymentHashBytes =
        _hexToBytes(paymentHashHex); // Use top-level helper
    final request = AddHoldInvoiceRequest()
      ..memo = memo
      ..hash = paymentHashBytes
      ..value = Int64(amountSats)
      ..expiry = Int64(86400); // 24 hours expiration
    print('LND: Creating hold invoice for hash: $paymentHashHex');
    final response = await _invoicesClient!.addHoldInvoice(request);
    return CreateHoldInvoiceResult(
      invoice: response.paymentRequest,
      paymentHash: paymentHashHex, // LND uses the hash we provide
    );
  }

  @override
  Stream<InvoiceUpdate> subscribeToInvoiceUpdates(
      {required String paymentHashHex}) {
    if (_invoicesClient == null) throw StateError('LND not connected.');
    final paymentHashBytes = _hexToBytes(paymentHashHex);
    final request = SubscribeSingleInvoiceRequest()..rHash = paymentHashBytes;
    print('LND: Subscribing to invoice updates for hash: $paymentHashHex');

    return _invoicesClient!.subscribeSingleInvoice(request).map((lndInvoice) {
      InvoiceStatus status;
      switch (lndInvoice.state) {
        case Invoice_InvoiceState.ACCEPTED:
          status = InvoiceStatus.ACCEPTED;
          break;
        case Invoice_InvoiceState.SETTLED:
          status = InvoiceStatus.SETTLED;
          break;
        case Invoice_InvoiceState.CANCELED:
          status = InvoiceStatus.CANCELED;
          break;
        case Invoice_InvoiceState.OPEN:
          status = InvoiceStatus.OPEN;
          break;
        default:
          status = InvoiceStatus.UNKNOWN;
      }
      return InvoiceUpdate(
        paymentHash: paymentHashHex, // The original hash we subscribed to
        status: status,
        amountPaidSat: lndInvoice.state == Invoice_InvoiceState.SETTLED
            ? lndInvoice.amtPaidSat.toInt()
            : null,
      );
    }).handleError((error) {
      print(
          'LND: Error in invoice subscription stream for $paymentHashHex: $error');
      // Emit an error state or rethrow if appropriate for the application
      // For now, emitting an UNKNOWN status update
      return InvoiceUpdate(
          paymentHash: paymentHashHex, status: InvoiceStatus.UNKNOWN);
    });
  }

  @override
  Future<void> settleInvoice({required String preimageHex}) async {
    if (_invoicesClient == null) throw StateError('LND not connected.');
    final preimageBytes = _hexToBytes(preimageHex);
    final request = SettleInvoiceMsg()..preimage = preimageBytes;
    print('LND: Settling invoice with preimage...');
    await _invoicesClient!.settleInvoice(request);
  }

  @override
  Future<void> cancelInvoice({required String paymentHashHex}) async {
    if (_invoicesClient == null) throw StateError('LND not connected.');
    final paymentHashBytes = _hexToBytes(paymentHashHex);
    final request = CancelInvoiceMsg()..paymentHash = paymentHashBytes;
    print('LND: Cancelling invoice for hash: $paymentHashHex');
    await _invoicesClient!.cancelInvoice(request);
  }

  @override
  Future<PayInvoiceResult> payInvoice({
    required String invoice,
    int? amountSat,
    int? feeLimitSat,
  }) async {
    if (_routerClient == null || _lightningClient == null) {
      throw StateError('LND not connected.');
    }

    String paymentHashHex;
    int invoiceAmountSat = 0;

    try {
      final decodeReq = PayReqString()..payReq = invoice;
      final decoded = await _lightningClient!.decodePayReq(decodeReq);
      paymentHashHex = decoded.paymentHash; // Hex string from LND
      invoiceAmountSat = decoded.numSatoshis.toInt();

      // Validate amount if provided and invoice has an amount
      if (amountSat != null &&
          invoiceAmountSat != 0 &&
          invoiceAmountSat != amountSat) {
        return PayInvoiceResult(
          paymentError:
              'Invoice amount $invoiceAmountSat does not match expected amount $amountSat sats',
        );
      }
    } catch (e) {
      print('LND: Error decoding payment request $invoice: $e');
      return PayInvoiceResult(
        paymentError: 'Failed to decode payment request: ${e.toString()}',
      );
    }

    final request = lnd_router.SendPaymentRequest()
      ..paymentRequest = invoice
      ..timeoutSeconds = 60; // Default timeout, consider making configurable

    if (feeLimitSat != null) {
      request.feeLimitSat = Int64(feeLimitSat);
    }

    // For zero-amount invoices, LND requires the amount to be set in the request.
    // Use amountSat for this purpose if the invoice amount is zero.
    if (invoiceAmountSat == 0 && amountSat != null && amountSat > 0) {
      request.amt = Int64(amountSat);
    } else if (invoiceAmountSat == 0 && (amountSat == null || amountSat <= 0)) {
      return PayInvoiceResult(
        paymentError: 'Amount must be provided for a zero-amount invoice.',
      );
    }

    print('LND: Sending payment for invoice: $invoice (hash: $paymentHashHex)');
    try {
      // sendPaymentV2 returns a stream. We need to listen until a terminal state.
      await for (final lndPaymentUpdate
          in _routerClient!.sendPaymentV2(request)) {
        if (lndPaymentUpdate.status == lnd_router.PaymentState.SUCCEEDED) {
          print(
              'LND: Payment SUCCEEDED. Preimage: ${lndPaymentUpdate.paymentPreimage}');
          return PayInvoiceResult(
            paymentPreimage: lndPaymentUpdate.paymentPreimage,
            feeSat: lndPaymentUpdate.feeSat.toInt(),
          );
        } else if (lndPaymentUpdate.status ==
            lnd_router.PaymentState.FAILED_ERROR) {
          print(
              'LND: Payment FAILED. Reason: ${lndPaymentUpdate.failureReason}');
          return PayInvoiceResult(
            paymentError: lndPaymentUpdate.failureReason.toString(),
          );
        } else if (lndPaymentUpdate.status ==
            lnd_router.PaymentState.IN_FLIGHT) {
          print('LND: Payment IN_FLIGHT for hash: $paymentHashHex');
          // Continue listening
        }
        // Other states like UNKNOWN, INITIATED can be logged if needed
      }
      // If the stream completes without a terminal SUCCEEDED or FAILED_ERROR,
      // it's an unexpected situation for sendPaymentV2.
      print(
          'LND: Payment stream completed without definitive SUCCEEDED/FAILED status for $paymentHashHex.');
      return PayInvoiceResult(
        paymentError: 'Payment stream completed without definitive status.',
      );
    } catch (e) {
      print('LND: Exception during sendPaymentV2 for $paymentHashHex: $e');
      return PayInvoiceResult(
        paymentError: e.toString(),
      );
    }
  }

  // sendPaymentStream method is now removed.
}
