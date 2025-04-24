// For hex encoding
import 'dart:io';
import 'package:grpc/grpc.dart';
// Add path dependency if not already there
import 'package:fixnum/fixnum.dart'; // Import fixnum for Int64

// Import generated LND gRPC files (adjust paths/names if necessary)
import '../generated/lnd/lightning.pbgrpc.dart';
import '../generated/lnd/invoices.pbgrpc.dart';
import '../generated/lnd/router.pbgrpc.dart';
// Removed unnecessary import: ../generated/lnd/router.pb.dart

// Replace the hardcoded connection details with environment variables
final _lndHost = Platform.environment['LND_HOST'] ?? 'localhost';
final _lndPort = int.parse(Platform.environment['LND_PORT'] ?? '10009');
final _tlsCertPath = Platform.environment['LND_CERT_PATH'] ?? 'tls.cert';
final _macaroonPath =
    Platform.environment['LND_MACAROON_PATH'] ?? 'admin.macaroon';

class LndService {
  ClientChannel? _channel;
  LightningClient? _lightningClient;
  InvoicesClient? _invoicesClient;
  RouterClient? _routerClient;

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
    _routerClient = RouterClient(_channel!, options: callOptions);

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

  Future<void> disconnect() async {
    await _channel?.shutdown();
    _channel = null;
    _lightningClient = null;
    _invoicesClient = null;
    _routerClient = null;
    print('Disconnected from LND.');
  }

  // --- Placeholder methods for LND interactions ---

  // TODO: Implement createHoldInvoice using _invoicesClient.addHoldInvoice
  // Requires generating preimage and hash
  Future<AddHoldInvoiceResp> createHoldInvoice(
      int amountSats, String memo, List<int> hash) async {
    if (_invoicesClient == null) throw StateError('LND not connected.');
    final request = AddHoldInvoiceRequest()
      ..memo = memo
      ..hash = hash // The payment hash (sha256 of preimage)
      ..value = Int64(amountSats) // Use Int64
      ..expiry = Int64(600); // 10 minutes expiration
    print('Creating hold invoice: $request');
    return await _invoicesClient!.addHoldInvoice(request);
  }

  // TODO: Implement subscribeToInvoice using _invoicesClient.subscribeSingleInvoice
  Stream<Invoice> subscribeToInvoice(List<int> paymentHash) {
    if (_invoicesClient == null) throw StateError('LND not connected.');
    final request = SubscribeSingleInvoiceRequest()..rHash = paymentHash;
    print(
        'Subscribing to invoice: ${paymentHash.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join('')}');
    return _invoicesClient!.subscribeSingleInvoice(request);
  }

  // TODO: Implement settleInvoice using _invoicesClient.settleInvoice
  Future<SettleInvoiceResp> settleInvoice(List<int> preimage) async {
    if (_invoicesClient == null) throw StateError('LND not connected.');
    final request = SettleInvoiceMsg()..preimage = preimage;
    print('Settling invoice with preimage...'); // Don't log preimage itself
    return await _invoicesClient!.settleInvoice(request);
  }

  // TODO: Implement cancelInvoice using _invoicesClient.cancelInvoice
  Future<CancelInvoiceResp> cancelInvoice(List<int> paymentHash) async {
    if (_invoicesClient == null) throw StateError('LND not connected.');
    final request = CancelInvoiceMsg()..paymentHash = paymentHash;
    print(
        'Cancelling invoice: ${paymentHash.map((byte) => byte.toRadixString(16).padLeft(2, '0')).join('')}');
    return await _invoicesClient!.cancelInvoice(request);
  }

  // TODO: Implement sendPayment using _routerClient.sendPaymentV2 or _lightningClient.sendPaymentSync
  // sendPaymentV2 is generally preferred for better feedback
  Stream<Payment> sendPayment(String paymentRequest,
      {required int expectedAmountSat,
      int? timeoutSeconds,
      int? feeLimitSat}) async* {
    if (_routerClient == null) throw StateError('LND not connected.');
    if (_lightningClient == null) throw StateError('LND not connected.');

    // Decode the invoice to get the amount
    final decodeReq = PayReqString()..payReq = paymentRequest;
    final decoded = await _lightningClient!.decodePayReq(decodeReq);
    final invoiceAmountSat = decoded.numSatoshis.toInt();
    if (invoiceAmountSat != expectedAmountSat) {
      throw ArgumentError(
          'Invoice amount $invoiceAmountSat does not match expected offer amount $expectedAmountSat sats');
    }

    final request = SendPaymentRequest()
      ..paymentRequest = paymentRequest
      ..timeoutSeconds = timeoutSeconds ?? 60;

    int effectiveFeeLimit = feeLimitSat ?? 0;
    request.feeLimitSat = Int64(effectiveFeeLimit);

    print('Sending payment for invoice: $paymentRequest');
    yield* _routerClient!.sendPaymentV2(request);
  }

  // Removed subscribeInvoices method (using LightningClient) as we'll use
  // subscribeToInvoice (using InvoicesClient) per-invoice.
}
