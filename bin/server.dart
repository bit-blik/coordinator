import 'dart:convert';
import 'dart:io';
import 'package:dotenv/dotenv.dart';
import 'package:bitblik_coordinator/src/services/database_service.dart';
import 'package:bitblik_coordinator/src/services/lnd_service.dart';
import 'package:bitblik_coordinator/src/services/coordinator_service.dart';
import 'package:bitblik_coordinator/src/services/nostr_service.dart';

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
  print('SIMPLEX_GROUP: ${env['SIMPLEX_GROUP'] ?? 'Bitblik new offers'}');
  print(
      'NOSTR_PRIVATE_KEY: ${env['NOSTR_PRIVATE_KEY']?.isNotEmpty == true ? "[SET]" : "[NOT SET]"}');
  print(
      'NOSTR_RELAYS: ${env['NOSTR_RELAYS'] ?? 'wss://relay.damus.io,wss://nos.lol,wss://relay.primal.net,wss://offchain.pub'}');
  print('====================');

  // --- Service Initialization ---
  final dbService = DatabaseService();
  final lndService = LndService();
  CoordinatorService? coordinatorService; // Nullable initially
  NostrService? nostrService; // Nullable initially

  try {
    // Connect to Database
    await dbService.connect();

    coordinatorService = CoordinatorService(dbService);
    await coordinatorService.init();

    // Initialize Nostr Service (replaces HTTP API)
    final relays = env['NOSTR_RELAYS']?.split(',') ??
        [
          'wss://relay.damus.io',
          'wss://nos.lol',
          'wss://relay.primal.net',
          'wss://offchain.pub'
        ];

    nostrService = NostrService(
      coordinatorService,
      relays: relays,
    );

    await nostrService.init(privateKey: env['NOSTR_PRIVATE_KEY'] ?? '');

    // Set the Nostr service in the coordinator service for status updates
    coordinatorService.setNostrService(nostrService);

    // Rebroadcast offers from last 24 hours if NostrService is available
    try {
      final offers = await dbService.getOffersFromLast24Hours();
      print('Found ${offers.length} offers from last 24 hours to rebroadcast');
      await nostrService.rebroadcastOffers(offers);
    } catch (e) {
      print('Error during rebroadcast of last 24 hours offers: $e');
    }

    print('✅ Coordinator running on Nostr with relays: $relays');
    print(
        '✅ Coordinator pubkey: ${nostrService.coordinatorPubkey ?? 'Unknown'}');

    // --- Graceful Shutdown ---
    // Listen for termination signals
    ProcessSignal.sigint.watch().listen((signal) async {
      print('\nReceived SIGINT, shutting down...');
      await nostrService?.disconnect(); // Disconnect from Nostr
      await lndService.disconnect(); // Disconnect from LND
      await dbService.disconnect(); // Disconnect from DB
      print('Shutdown complete.');
      exit(0);
    });

    ProcessSignal.sigterm.watch().listen((signal) async {
      print('\nReceived SIGTERM, shutting down...');
      await nostrService?.disconnect();
      await lndService.disconnect();
      await dbService.disconnect();
      print('Shutdown complete.');
      exit(0);
    });

    // Keep the process running
    await _keepAlive();
  } catch (e) {
    print('❌ Error during server startup: $e');
    // Attempt cleanup even on startup error
    await nostrService?.disconnect();
    await lndService.disconnect();
    await dbService.disconnect();
    exit(1);
  }
}

/// Keep the process alive by listening to stdin
Future<void> _keepAlive() async {
  print('Coordinator is running. Press Ctrl+C to stop.');

  // Listen to stdin to keep the process alive
  await for (final line in stdin
      .transform(const SystemEncoding().decoder)
      .transform(const LineSplitter())) {
    if (line.toLowerCase() == 'quit' || line.toLowerCase() == 'exit') {
      print('Shutting down...');
      exit(0);
    } else if (line.toLowerCase() == 'status') {
      print('Coordinator is running normally.');
    } else if (line.toLowerCase() == 'help') {
      print('Available commands:');
      print('  status - Show coordinator status');
      print('  quit/exit - Shutdown coordinator');
      print('  help - Show this help message');
    }
  }
}
