import 'dart:io';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;
import 'package:dotenv/dotenv.dart';
import 'package:bitblik_coordinator/src/services/database_service.dart';
import 'package:bitblik_coordinator/src/services/lnd_service.dart';
import 'package:bitblik_coordinator/src/services/coordinator_service.dart';
import 'package:bitblik_coordinator/src/api/api_service.dart';
import 'package:shelf_cors_headers/shelf_cors_headers.dart'; // Import CORS middleware

Future<void> main(List<String> args) async {
  // --- Configuration ---
  // Load environment variables from .env file and platform environment
  var env = DotEnv(includePlatformEnvironment: true)..load();

  print('=== Configuration ===');
  print('DB_HOST: ${env['DB_HOST'] ?? 'localhost'}');
  print('DB_PORT: ${env['DB_PORT'] ?? '5432'}');
  print('DB: ${env['DB'] ?? 'bitblik'}');
  print('DB_USER: ${env['DB_USER'] ?? 'postgres'}');
  print(
      'DB_PASSWORD: ${env['DB_PASSWORD']?.isNotEmpty == true ? "[SET]" : "[NOT SET]"}');
  print('LND_HOST: ${env['LND_HOST'] ?? 'localhost'}');
  print('LND_PORT: ${env['LND_PORT'] ?? '10009'}');
  print('LND_CERT_PATH: ${env['LND_CERT_PATH'] ?? 'tls.cert'}');
  print('LND_MACAROON_PATH: ${env['LND_MACAROON_PATH'] ?? 'admin.macaroon'}');
  print('PORT: ${env['PORT'] ?? '8080'}');
  print('====================');

  final address = InternetAddress.anyIPv4;

  // --- Service Initialization ---
  final dbService = DatabaseService();
  final lndService = LndService();
  CoordinatorService? coordinatorService; // Nullable initially
  ApiService? apiService; // Nullable initially

  try {
    // Connect to Database
    await dbService.connect();

    coordinatorService = CoordinatorService(dbService);
    await coordinatorService.init();

    // Initialize API Service (depends on Coordinator)
    apiService = ApiService(coordinatorService);

    // --- Server Setup ---
    // Define more specific CORS headers map
    final _corsHeadersMap = {
      // Renamed variable
      'Access-Control-Allow-Origin':
          '*', // Allow all origins (adjust for production)
      'Access-Control-Allow-Methods':
          'GET, POST, OPTIONS, DELETE', // Allow common methods + DELETE
      'Access-Control-Allow-Headers':
          'Origin, Content-Type, X-Requested-With, x-maker-id, x-user-pubkey', // Added x-user-pubkey
    };

    // Create Shelf pipeline
    final pipeline = Pipeline()
        .addMiddleware(logRequests()) // Basic request logging
        // Use the corsHeaders function with the renamed headers map
        .addMiddleware(
            corsHeaders(headers: _corsHeadersMap)) // Use renamed map variable
        .addHandler(apiService.handler); // Add API routes

    // Start the server
    final port = int.parse(env['PORT'] ?? '8080');
    final server = await shelf_io.serve(pipeline, address, port);
    print('✅ Server listening on port ${server.port}');

    // --- Graceful Shutdown ---
    // Listen for termination signals
    ProcessSignal.sigint.watch().listen((signal) async {
      print('\nReceived SIGINT, shutting down...');
      await server.close(force: true); // Close HTTP server
      await lndService.disconnect(); // Disconnect from LND
      await dbService.disconnect(); // Disconnect from DB
      if (coordinatorService != null) {
        // coordinatorService.dispose(); // Add dispose method if needed
      }
      print('Shutdown complete.');
      exit(0);
    });

    ProcessSignal.sigterm.watch().listen((signal) async {
      print('\nReceived SIGTERM, shutting down...');
      await server.close(force: true);
      await lndService.disconnect();
      await dbService.disconnect();
      if (coordinatorService != null) {
        // coordinatorService.dispose();
      }
      print('Shutdown complete.');
      exit(0);
    });
  } catch (e) {
    print('❌ Error during server startup: $e');
    // Attempt cleanup even on startup error
    await lndService.disconnect();
    await dbService.disconnect();
    exit(1);
  }
}
