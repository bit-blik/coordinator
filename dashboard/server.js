const express = require('express');
const { Pool } = require('pg');
const cors = require('cors');
const path = require('path');
require('dotenv').config();

// Helper to strip surrounding quotes from env vars (handles both Docker and non-Docker environments)
const stripQuotes = (value) => {
  if (!value) return value;
  const str = String(value).trim();
  if ((str.startsWith('"') && str.endsWith('"')) || (str.startsWith("'") && str.endsWith("'"))) {
    return str.slice(1, -1);
  }
  return str;
};

// Strip quotes from env vars that might have them
const dbPassword = stripQuotes(process.env.DB_PASSWORD);
const dbHost = stripQuotes(process.env.DB_HOST);
const dbPort = stripQuotes(process.env.DB_PORT);
const dbName = stripQuotes(process.env.DB_NAME);
const dbUser = stripQuotes(process.env.DB_USER);

console.log('Database config:', {
  host: dbHost,
  port: dbPort,
  database: dbName,
  user: dbUser,
  password: dbPassword ? '***hidden***' : 'NOT SET'
});

const app = express();
app.use(cors());
app.use(express.json());

// Serve static files from the React app build directory
app.use(express.static(path.join(__dirname, 'frontend/build')));

//const pool = new Pool({
//  host: process.env.DB_HOST,
//  port: process.env.DB_PORT,
//  database: process.env.DB_NAME,
//  user: process.env.DB_USER,
//  password: process.env.DB_PASSWORD,
//});

// Build connection string with encoded password
const password = encodeURIComponent(dbPassword);
const connectionString = `postgresql://${dbUser}:${password}@${dbHost}:${dbPort}/${dbName}`;

console.log('Attempting connection to database...');

const pool = new Pool({
  connectionString: connectionString
});
//
//const pool = new Pool({
//  connectionString: `postgresql://${process.env.DB_USER}:${encodeURIComponent(process.env.DB_PASSWORD)}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}`
//});


app.post('/api/offers-data', async (req, res) => {
  try {
    const { groupBy } = req.body;
    
    // Validate groupBy parameter
    const validGroupings = ['daily', 'weekly', 'monthly'];
    if (!groupBy || !validGroupings.includes(groupBy)) {
      return res.status(400).json({ error: 'Invalid groupBy parameter. Must be one of: daily, weekly, monthly' });
    }

    // Build SQL query based on grouping - secure, server-side only
    let dateGrouping;
    let dateFormat;

    switch(groupBy) {
      case 'daily':
        dateGrouping = "DATE(created_at)";
        dateFormat = "YYYY-MM-DD";
        break;
      case 'weekly':
        dateGrouping = "DATE_TRUNC('week', created_at)";
        dateFormat = "IYYY-\"W\"IW";
        break;
      case 'monthly':
        dateGrouping = "DATE_TRUNC('month', created_at)";
        dateFormat = "YYYY-MM";
        break;
    }

    // Grouped data for charts (limited to recent periods)
    // For daily view, restrict to last 30 days
    const dateFilter = groupBy === 'daily' 
      ? "WHERE created_at >= NOW() - INTERVAL '29 days'" 
      : '';
    
    const groupedQuery = `
      SELECT
        TO_CHAR(${dateGrouping}, '${dateFormat}') AS date,
        ROUND(
          100 - (
            CAST(COUNT(*) FILTER (WHERE status IN ('expired', 'cancelled')) AS NUMERIC) /
            NULLIF(CAST(COUNT(*) FILTER (WHERE status IN ('expired', 'cancelled', 'takerPaid')) AS NUMERIC), 0)
          ) * 100,
          2
        ) AS success_percentage,
        COUNT(*) FILTER (WHERE status IN ('expired', 'cancelled')) AS failed,
        COUNT(*) FILTER (WHERE status = 'takerPaid') AS success,
        COALESCE(SUM(maker_fees + taker_fees - taker_invoice_fees) FILTER (WHERE status = 'takerPaid'), 0) AS profit,
        COALESCE(SUM(fiat_amount) FILTER (WHERE status = 'takerPaid'), 0) AS volume,
        COALESCE(SUM(amount_sats) FILTER (WHERE status = 'takerPaid'), 0) AS volume_sats,
        COUNT(*) FILTER (WHERE status = 'takerPaid') AS success_count,
        EXTRACT(EPOCH FROM AVG(reserved_at - created_at) FILTER (WHERE status = 'takerPaid')) AS avg_reserved_seconds,
        EXTRACT(EPOCH FROM AVG(maker_confirmed_at - created_at) FILTER (WHERE status = 'takerPaid')) AS avg_total_seconds,
        ROUND(COALESCE(AVG(taker_invoice_fees) FILTER (WHERE status = 'takerPaid'), 0), 2) AS avg_taker_invoice_fees,
        ROUND(
          COALESCE(
            AVG(taker_invoice_fees * 100.0 / NULLIF(amount_sats, 0)) FILTER (WHERE status = 'takerPaid'),
            0
          ) * 100,
          2
        ) AS taker_fees_percentage
      FROM offers
      ${dateFilter}
      GROUP BY ${dateGrouping}
      ORDER BY ${dateGrouping} ASC
      LIMIT 90
    `;

    // Overall totals - same regardless of grouping
    const totalsQuery = `
      SELECT
        COUNT(*) FILTER (WHERE status IN ('expired', 'cancelled')) AS total_failed,
        COUNT(*) FILTER (WHERE status = 'takerPaid') AS total_success,
        COALESCE(SUM(maker_fees + taker_fees - taker_invoice_fees) FILTER (WHERE status = 'takerPaid'), 0) AS total_profit,
        COALESCE(SUM(fiat_amount) FILTER (WHERE status = 'takerPaid'), 0) AS total_volume,
        COALESCE(SUM(amount_sats) FILTER (WHERE status = 'takerPaid'), 0) AS total_volume_sats,
        ROUND(
          100 - (
            CAST(COUNT(*) FILTER (WHERE status IN ('expired', 'cancelled')) AS NUMERIC) /
            NULLIF(CAST(COUNT(*) FILTER (WHERE status IN ('expired', 'cancelled', 'takerPaid')) AS NUMERIC), 0)
          ) * 100,
          2
        ) AS overall_success_percentage,
        EXTRACT(EPOCH FROM AVG(reserved_at - created_at) FILTER (WHERE status = 'takerPaid')) AS overall_avg_reserved_seconds,
        EXTRACT(EPOCH FROM AVG(maker_confirmed_at - created_at) FILTER (WHERE status = 'takerPaid')) AS overall_avg_total_seconds,
        ROUND(COALESCE(AVG(taker_invoice_fees) FILTER (WHERE status = 'takerPaid'), 0), 2) AS overall_avg_taker_invoice_fees,
        ROUND(
          COALESCE(
            AVG(taker_invoice_fees * 100.0 / NULLIF(amount_sats, 0)) FILTER (WHERE status = 'takerPaid'),
            0
          ) * 100,
          2
        ) AS overall_taker_fees_percentage
      FROM offers
    `;

    // Taker domain ranking - total, not affected by date filters
    const takerDomainQuery = `
      SELECT
        SPLIT_PART(taker_lightning_address, '@', 2) AS taker_domain,
        COUNT(*) AS offer_count,
        ROUND(
          COALESCE(
            AVG(taker_invoice_fees * 100.0 / NULLIF(amount_sats, 0)) FILTER (WHERE status = 'takerPaid'),
            0
          ) * 100,
          2
        ) AS avg_fees_percentage
      FROM offers
      WHERE status = 'takerPaid'
        AND taker_lightning_address IS NOT NULL
        AND taker_lightning_address LIKE '%@%'
      GROUP BY SPLIT_PART(taker_lightning_address, '@', 2)
      ORDER BY avg_fees_percentage DESC
    `;

    // Successful offers by weekday (Mon-Sun), independent of selected period
    const weekdaySuccessQuery = `
      WITH weekdays AS (
        SELECT
          day_num,
          day_name
        FROM (VALUES
          (1, 'Mon'),
          (2, 'Tue'),
          (3, 'Wed'),
          (4, 'Thu'),
          (5, 'Fri'),
          (6, 'Sat'),
          (7, 'Sun')
        ) AS w(day_num, day_name)
      ),
      date_bounds AS (
        SELECT
          DATE(MIN(created_at)) AS min_date,
          DATE(MAX(created_at)) AS max_date
        FROM offers
      ),
      calendar_dates AS (
        SELECT
          generate_series(min_date, max_date, INTERVAL '1 day')::DATE AS offer_date
        FROM date_bounds
        WHERE min_date IS NOT NULL
      ),
      offers_by_date AS (
        SELECT
          DATE(created_at) AS offer_date,
          COUNT(*) FILTER (WHERE status = 'takerPaid') AS success_count,
          COUNT(*) AS offer_count
        FROM offers
        GROUP BY DATE(created_at)
      ),
      weekday_daily AS (
        SELECT
          EXTRACT(ISODOW FROM c.offer_date)::INT AS day_num,
          COALESCE(o.success_count, 0) AS success_count,
          COALESCE(o.offer_count, 0) AS offer_count
        FROM calendar_dates c
        LEFT JOIN offers_by_date o ON o.offer_date = c.offer_date
      ),
      weekday_aggregates AS (
        SELECT
          day_num,
          SUM(success_count) AS success_count,
          ROUND(AVG(offer_count)::NUMERIC, 2) AS avg_offer_count
        FROM weekday_daily
        GROUP BY day_num
      )
      SELECT
        w.day_name AS weekday,
        COALESCE(a.success_count, 0) AS success_count,
        COALESCE(a.avg_offer_count, 0) AS avg_offer_count
      FROM weekdays w
      LEFT JOIN weekday_aggregates a ON a.day_num = w.day_num
      ORDER BY w.day_num
    `;

    const [groupedResult, totalsResult, takerDomainResult, weekdaySuccessResult] = await Promise.all([
      pool.query(groupedQuery),
      pool.query(totalsQuery),
      pool.query(takerDomainQuery),
      pool.query(weekdaySuccessQuery)
    ]);

    res.json({ 
      rows: groupedResult.rows,
      totals: totalsResult.rows[0],
      takerDomainRanking: takerDomainResult.rows,
      weekdaySuccess: weekdaySuccessResult.rows
    });
  } catch (error) {
    console.error('Database error:', error);
    res.status(500).json({ error: error.message });
  }
});

// Serve React app for all other routes (must be after API routes)
app.get('*', (req, res) => {
  res.sendFile(path.join(__dirname, 'frontend/build', 'index.html'));
});

const PORT = process.env.PORT || 3001;
app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server running on http://0.0.0.0:${PORT}`);
  console.log(`- API endpoints: /api/*`);
  console.log(`- Frontend served from: ${path.join(__dirname, 'frontend/build')}`);
});
