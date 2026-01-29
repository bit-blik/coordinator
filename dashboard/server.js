const express = require('express');
const { Pool } = require('pg');
const cors = require('cors');
const path = require('path');
require('dotenv').config();

console.log('Database config:', {
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  database: process.env.DB_NAME,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD ? '***hidden***' : 'NOT SET'
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
const password = encodeURIComponent(process.env.DB_PASSWORD);
const connectionString = `postgresql://${process.env.DB_USER}:${password}@${process.env.DB_HOST}:${process.env.DB_PORT}/${process.env.DB_NAME}`;

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

    const query = `
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
        EXTRACT(EPOCH FROM AVG(taker_paid_at - created_at) FILTER (WHERE status = 'takerPaid')) AS avg_total_seconds
      FROM offers
      GROUP BY ${dateGrouping}
      ORDER BY ${dateGrouping} ASC
      LIMIT 90
    `;

    const result = await pool.query(query);
    res.json({ rows: result.rows });
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
