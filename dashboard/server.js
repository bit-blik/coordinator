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
    const { query } = req.body;
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
