import 'package:postgres/postgres.dart';
import '../models/offer.dart';

// TODO: Load connection details securely (e.g., from environment variables)
final _dbHost = '192.168.1.18';
final _dbPort = 5434;
final _dbName = 'bitblik_db';
final _dbUser = 'user'; // Replace with your DB user
final _dbPassword = 'password'; // Replace with your DB password

class DatabaseService {
  PostgreSQLConnection? _connection;

  Future<void> connect() async {
    if (_connection?.isClosed == false) {
      return; // Already connected
    }
    _connection = PostgreSQLConnection(
      _dbHost,
      _dbPort,
      _dbName,
      username: _dbUser,
      password: _dbPassword,
    );
    try {
      await _connection!.open();
      print('Database connection established.');
      await _ensureOffersTable();
    } catch (e) {
      print('Error connecting to database: $e');
      _connection = null;
      rethrow;
    }
  }

  Future<void> disconnect() async {
    await _connection?.close();
    _connection = null;
    print('Database connection closed.');
  }

  Future<void> _ensureOffersTable() async {
    if (_connection == null) throw StateError('Database not connected.');
    await _connection!.execute('''
      CREATE TABLE IF NOT EXISTS offers (
        id UUID PRIMARY KEY,
        amount_sats BIGINT NOT NULL,
        fee_sats BIGINT NOT NULL,
        maker_pubkey TEXT NOT NULL,
        taker_pubkey TEXT,
        taker_lightning_address TEXT,
        taker_invoice TEXT,
        blik_code TEXT,
        hold_invoice_payment_hash TEXT UNIQUE NOT NULL,
        hold_invoice_preimage TEXT NOT NULL,
        status TEXT NOT NULL,
        created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
        updated_at TIMESTAMPTZ,
        reserved_at TIMESTAMPTZ,
        blik_received_at TIMESTAMPTZ,
        maker_confirmed_at TIMESTAMPTZ,
        settled_at TIMESTAMPTZ,
        taker_paid_at TIMESTAMPTZ,
        fiat_amount NUMERIC,
        fiat_currency TEXT
      );
    ''');
    await _connection!.execute('''
      CREATE INDEX IF NOT EXISTS idx_offers_status ON offers (status);
    ''');
    await _connection!.execute('''
      CREATE INDEX IF NOT EXISTS idx_offers_maker_pubkey ON offers (maker_pubkey);
    ''');
    await _connection!.execute('''
      CREATE INDEX IF NOT EXISTS idx_offers_taker_pubkey ON offers (taker_pubkey);
    ''');
    print('Offers table checked/created.');
  }

  Future<Offer> createOffer(Offer offer) async {
    if (_connection == null) throw StateError('Database not connected.');

    final now = DateTime.now().toUtc();
    await _connection!.execute(
      '''
        INSERT INTO offers (id, amount_sats, fee_sats, maker_pubkey, hold_invoice_payment_hash, hold_invoice_preimage, status, created_at, updated_at, fiat_amount, fiat_currency)
        VALUES (@id, @amount_sats, @fee_sats, @maker_pubkey, @hold_invoice_payment_hash, @hold_invoice_preimage, @status, @created_at, @updated_at, @fiat_amount, @fiat_currency)
      ''',
      substitutionValues: {
        'id': offer.id,
        'amount_sats': offer.amountSats,
        'fee_sats': offer.feeSats,
        'maker_pubkey': offer.makerPubkey,
        'hold_invoice_payment_hash': offer.holdInvoicePaymentHash,
        'hold_invoice_preimage': offer.holdInvoicePreimage,
        'status': offer.status.name,
        'created_at': offer.createdAt.toUtc(),
        'updated_at': now,
        'fiat_amount': offer.fiatAmount,
        'fiat_currency': offer.fiatCurrency,
      },
    );
    offer.updatedAt = now;
    return offer;
  }

  Future<Offer?> getOfferById(String id) async {
    if (_connection == null) throw StateError('Database not connected.');
    final results = await _connection!.query(
      'SELECT * FROM offers WHERE id = @id LIMIT 1',
      substitutionValues: {'id': id},
    );
    if (results.isEmpty) return null;
    return _mapRowToOffer(results.first);
  }

  Future<Offer?> getOfferByPaymentHash(String paymentHash) async {
    if (_connection == null) throw StateError('Database not connected.');
    final results = await _connection!.query(
      'SELECT * FROM offers WHERE hold_invoice_payment_hash = @paymentHash LIMIT 1',
      substitutionValues: {'paymentHash': paymentHash},
    );
    if (results.isEmpty) return null;
    return _mapRowToOffer(results.first);
  }

  Future<List<Offer>> getOffersByStatus(OfferStatus status,
      {int limit = 50, int offset = 0}) async {
    if (_connection == null) throw StateError('Database not connected.');
    final results = await _connection!.query(
      'SELECT * FROM offers WHERE status = @status ORDER BY created_at DESC LIMIT @limit OFFSET @offset',
      substitutionValues: {
        'status': status.name,
        'limit': limit,
        'offset': offset,
      },
    );
    return results.map(_mapRowToOffer).toList();
  }

  Future<bool> updateTakerInvoice(String id, String takerInvoice) async {
    if (_connection == null) throw StateError('Database not connected.');
    final now = DateTime.now().toUtc();
    final affectedRows = await _connection!.execute(
      'UPDATE offers SET taker_invoice = @taker_invoice, updated_at = @updated_at WHERE id = @id',
      substitutionValues: {
        'id': id,
        'taker_invoice': takerInvoice,
        'updated_at': now,
      },
    );
    return affectedRows == 1;
  }

  Future<bool> updateOfferStatus(
      // Return type back to bool
      String id,
      OfferStatus newStatus,
      {String? takerPubkey,
      String? blikCode,
      String? takerLightningAddress,
      DateTime? reservedAt, // Added parameter
      DateTime? blikReceivedAt}) async {
    // Added parameter
    if (_connection == null) throw StateError('Database not connected.');
    final now = DateTime.now().toUtc(); // Keep 'now' for updated_at
    Map<String, dynamic> params = {
      'id': id,
      'status': newStatus.name,
      'updated_at': now,
    };
    List<String> setClauses = ['status = @status', 'updated_at = @updated_at'];

    switch (newStatus) {
      case OfferStatus.reserved:
        if (takerPubkey == null)
          throw ArgumentError('takerPubkey required for reserved status');
        if (reservedAt == null)
          throw ArgumentError(
              'reservedAt required for reserved status'); // Ensure timestamp is passed
        params['taker_pubkey'] = takerPubkey;
        params['reserved_at'] = reservedAt.toUtc(); // Use passed timestamp
        setClauses.add('taker_pubkey = @taker_pubkey');
        setClauses.add('reserved_at = @reserved_at');
        break;
      case OfferStatus.blikReceived:
        if (blikCode == null)
          throw ArgumentError('blikCode required for blikReceived status');
        if (takerLightningAddress == null)
          throw ArgumentError(
              'takerLightningAddress required for blikReceived status');
        if (blikReceivedAt == null)
          throw ArgumentError(
              'blikReceivedAt required for blikReceived status'); // Ensure timestamp is passed
        params['blik_code'] = blikCode;
        params['taker_lightning_address'] = takerLightningAddress;
        params['blik_received_at'] =
            blikReceivedAt.toUtc(); // Use passed timestamp
        setClauses.add('blik_code = @blik_code');
        setClauses.add('taker_lightning_address = @taker_lightning_address');
        setClauses.add('blik_received_at = @blik_received_at');
        break;
      case OfferStatus.makerConfirmed:
        params['maker_confirmed_at'] = now;
        setClauses.add('maker_confirmed_at = @maker_confirmed_at');
        break;
      case OfferStatus.settled:
        params['settled_at'] = now;
        setClauses.add('settled_at = @settled_at');
        break;
      case OfferStatus.takerPaid:
        params['taker_paid_at'] = now;
        setClauses.add('taker_paid_at = @taker_paid_at');
        break;
      case OfferStatus.funded: // Explicitly handle reverting to funded
      case OfferStatus.expired:
      case OfferStatus.cancelled: // Also clear fields when cancelling
        setClauses.add('taker_pubkey = NULL');
        setClauses.add('reserved_at = NULL');
        setClauses.add('blik_code = NULL');
        setClauses.add('taker_lightning_address = NULL');
        setClauses.add('blik_received_at = NULL');
        break;
      default:
        break;
    }

    print(
        '[DatabaseService.updateOfferStatus] Executing update for offer $id with status $newStatus. Params: $params');
    print(
        '[DatabaseService.updateOfferStatus] SQL: UPDATE offers SET ${setClauses.join(', ')} WHERE id = @id');

    final affectedRows = await _connection!.execute(
      'UPDATE offers SET ${setClauses.join(', ')} WHERE id = @id',
      substitutionValues: params,
    );
    // Return bool indicating success
    return affectedRows == 1;
  }

  // Cancel an offer (set status to cancelled) only if it's currently funded
  Future<bool> cancelOffer(String id, String makerPubkey) async {
    if (_connection == null) throw StateError('Database not connected.');
    final now = DateTime.now().toUtc();
    final affectedRows = await _connection!.execute(
      '''
         UPDATE offers
         SET status = @newStatus,
             updated_at = @updated_at,
             taker_pubkey = NULL,
             reserved_at = NULL,
             blik_code = NULL,
             taker_lightning_address = NULL,
             blik_received_at = NULL
         WHERE id = @id
           AND maker_pubkey = @makerPubkey
           AND status = @requiredStatus
       ''',
      substitutionValues: {
        'id': id,
        'makerPubkey': makerPubkey,
        'newStatus': OfferStatus.cancelled.name, // Use cancelled status
        'requiredStatus': OfferStatus.funded.name,
        'updated_at': now,
      },
    );
    return affectedRows == 1;
  }

  // Fetch active offers where the user is either maker or taker
  Future<List<Offer>> getMyActiveOffers(String userPubkey) async {
    if (_connection == null) throw StateError('Database not connected.');
    // Define "active" statuses (exclude terminal/cancelled states)
    final activeStatuses = [
      OfferStatus.created.name,
      OfferStatus.funded.name,
      OfferStatus.published.name,
      OfferStatus.reserved.name,
      OfferStatus.blikReceived.name,
      OfferStatus.blikSentToMaker.name,
      OfferStatus.makerConfirmed.name,
      OfferStatus.payingTaker.name,
      OfferStatus.takerPaymentFailed.name,
      OfferStatus.takerPaid.name
    ];

    final results = await _connection!.query(
      '''
         SELECT * FROM offers
         WHERE (maker_pubkey = @userPubkey OR taker_pubkey = @userPubkey)
         AND status = ANY(@activeStatuses)
         ORDER BY created_at DESC
       ''',
      substitutionValues: {
        'userPubkey': userPubkey,
        'activeStatuses': activeStatuses,
      },
    );
    return results.map(_mapRowToOffer).toList();
  }

  Offer _mapRowToOffer(PostgreSQLResultRow row) {
    final map = row.toColumnMap();
    return Offer(
      id: map['id'],
      amountSats: map['amount_sats'],
      feeSats: map['fee_sats'],
      makerPubkey: map['maker_pubkey'],
      holdInvoicePaymentHash: map['hold_invoice_payment_hash'],
      holdInvoicePreimage: map['hold_invoice_preimage'],
      status: OfferStatus.values.byName(map['status']),
      createdAt: (map['created_at'] as DateTime).toLocal(),
      fiatAmount: map['fiat_amount'] != null
          ? (map['fiat_amount'] is num
              ? (map['fiat_amount'] as num).toDouble()
              : double.tryParse(map['fiat_amount'].toString()))
          : null,
      fiatCurrency: map['fiat_currency'],
    )
      ..takerPubkey = map['taker_pubkey']
      ..takerLightningAddress = map['taker_lightning_address']
      ..takerInvoice = map['taker_invoice']
      ..blikCode = map['blik_code']
      ..updatedAt = (map['updated_at'] as DateTime?)?.toLocal()
      ..reservedAt = (map['reserved_at'] as DateTime?)?.toLocal()
      ..blikReceivedAt = (map['blik_received_at'] as DateTime?)?.toLocal()
      ..makerConfirmedAt = (map['maker_confirmed_at'] as DateTime?)?.toLocal()
      ..settledAt = (map['settled_at'] as DateTime?)?.toLocal()
      ..takerPaidAt = (map['taker_paid_at'] as DateTime?)?.toLocal();
  }
}
