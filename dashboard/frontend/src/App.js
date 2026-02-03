import React, { useState, useEffect } from 'react';
import { LineChart, Line, BarChart, Bar, XAxis, YAxis, CartesianGrid, Tooltip, Legend, ResponsiveContainer } from 'recharts';
import { Calendar, TrendingUp, DollarSign, AlertCircle, Clock, Bitcoin } from 'lucide-react';
import './App.css';

const OffersDashboard = () => {
  const [data, setData] = useState([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);
  const [groupBy, setGroupBy] = useState('daily');
  const [btcPlnRate, setBtcPlnRate] = useState(null);
  const [rateLoading, setRateLoading] = useState(true);
  const [rateError, setRateError] = useState(null);

  // Exchange rate sources configuration (matching coordinator)
  const exchangeRateSources = [
    {
      name: 'CoinGecko',
      url: 'https://api.coingecko.com/api/v3/simple/price?ids=bitcoin&vs_currencies=pln',
      parser: (data) => data?.bitcoin?.pln,
    },
    {
      name: 'Yadio',
      url: 'https://api.yadio.io/exrates/pln',
      parser: (data) => data?.BTC,
    },
    {
      name: 'Blockchain.info',
      url: 'https://blockchain.info/ticker',
      parser: (data) => data?.PLN?.last,
    },
  ];

  // Fetch BTC/PLN rate from all sources and calculate average
  const fetchBtcPlnRate = async () => {
    setRateLoading(true);
    setRateError(null);

    try {
      const fetchPromises = exchangeRateSources.map(async (source) => {
        try {
          const response = await fetch(source.url);
          if (!response.ok) {
            console.warn(`Failed to fetch from ${source.name}: ${response.status}`);
            return null;
          }
          const data = await response.json();
          const rate = source.parser(data);
          if (rate && typeof rate === 'number' && rate > 0) {
            console.log(`Fetched rate from ${source.name}: ${rate} PLN/BTC`);
            return rate;
          }
          console.warn(`Invalid rate from ${source.name}: ${rate}`);
          return null;
        } catch (err) {
          console.warn(`Error fetching from ${source.name}:`, err);
          return null;
        }
      });

      const results = await Promise.all(fetchPromises);
      const validRates = results.filter((rate) => rate !== null);

      if (validRates.length > 0) {
        const averageRate = validRates.reduce((a, b) => a + b, 0) / validRates.length;
        setBtcPlnRate(averageRate);
        console.log(`Average BTC/PLN rate: ${averageRate} (from ${validRates.length} sources)`);
      } else {
        throw new Error('Failed to fetch BTC/PLN rate from all sources');
      }
    } catch (err) {
      console.error('Error fetching BTC/PLN rate:', err);
      setRateError(err.message);
    } finally {
      setRateLoading(false);
    }
  };

  // Fetch rate on component mount
  useEffect(() => {
    fetchBtcPlnRate();
    // Refresh rate every 5 minutes (matching coordinator cache time)
    const interval = setInterval(fetchBtcPlnRate, 5 * 60 * 1000);
    return () => clearInterval(interval);
  }, []);

  // Fetch data from API
  useEffect(() => {
    const fetchData = async () => {
      setLoading(true);
      setError(null);

      try {
        // Send only the groupBy parameter - backend handles SQL construction
        const response = await fetch('http://localhost:3001/api/offers-data', {
          method: 'POST',
          headers: {
            'Content-Type': 'application/json',
          },
          body: JSON.stringify({ groupBy })
        });

        if (!response.ok) {
          throw new Error(`HTTP error! status: ${response.status}`);
        }

        const result = await response.json();
        setData(result.rows || []);
      } catch (err) {
        setError(err.message);
        console.error('Error fetching data:', err);
      } finally {
        setLoading(false);
      }
    };

    fetchData();
  }, [groupBy]);

  const formatCurrency = (value) => {
    return new Intl.NumberFormat('pl-PL', {
      style: 'currency',
      currency: 'PLN',
      minimumFractionDigits: 0,
      maximumFractionDigits: 0,
    }).format(value);
  };

  const formatNumber = (value) => {
    return new Intl.NumberFormat('en-US').format(value);
  };

  const formatCurrencyChart = (value) => {
    return new Intl.NumberFormat('pl-PL', {
      style: 'currency',
      currency: 'PLN',
      minimumFractionDigits: 2,
      maximumFractionDigits: 2,
    }).format(value);
  };

  const formatTime = (seconds) => {
    if (!seconds || isNaN(seconds)) return '0:00';
    const mins = Math.floor(seconds / 60);
    const secs = Math.floor(seconds % 60);
    return `${mins}:${secs.toString().padStart(2, '0')}`;
  };

  // Convert sats to PLN using the fetched rate
  const satsToPln = (sats) => {
    if (!btcPlnRate || !sats) return 0;
    const btc = sats / 100000000; // Convert sats to BTC
    return btc * btcPlnRate;
  };

  if (loading) {
    return (
      <div className="flex items-center justify-center h-screen bg-gray-50">
        <div className="text-center">
          <div className="animate-spin rounded-full h-12 w-12 border-b-2 border-blue-600 mx-auto"></div>
          <p className="mt-4 text-gray-600">Loading dashboard data...</p>
        </div>
      </div>
    );
  }

  if (error) {
    return (
      <div className="flex items-center justify-center h-screen bg-gray-50">
        <div className="bg-red-50 border border-red-200 rounded-lg p-6 max-w-md">
          <div className="flex items-start gap-3">
            <AlertCircle className="text-red-600 mt-0.5 flex-shrink-0" size={24} />
            <div>
              <h3 className="text-red-800 font-semibold mb-2">Failed to load data</h3>
              <p className="text-red-700 text-sm mb-3">{error}</p>
              <p className="text-red-600 text-xs">Make sure the API server is running on http://localhost:3001</p>
              <button
                onClick={() => window.location.reload()}
                className="mt-4 px-4 py-2 bg-red-600 text-white rounded-md text-sm hover:bg-red-700 transition-colors"
              >
                Retry
              </button>
            </div>
          </div>
        </div>
      </div>
    );
  }

  const stats = data.length > 0 ? {
    totalVolume: data.reduce((sum, d) => sum + parseFloat(d.volume || 0), 0),
    totalProfitSats: data.reduce((sum, d) => sum + parseFloat(d.profit || 0), 0),
    avgSuccess: data.reduce((sum, d) => sum + parseFloat(d.success_percentage || 0), 0) / data.length,
    totalSuccess: data.reduce((sum, d) => sum + parseInt(d.success || 0), 0),
    totalFailed: data.reduce((sum, d) => sum + parseInt(d.failed || 0), 0),
    avgTimeToAccept: data.reduce((sum, d) => sum + parseFloat(d.avg_reserved_seconds || 0), 0) / data.filter(d => d.avg_reserved_seconds).length,
    avgTimeToFullPayment: data.reduce((sum, d) => sum + parseFloat(d.avg_total_seconds || 0), 0) / data.filter(d => d.avg_total_seconds).length,
  } : {};

  // Calculate profit in PLN
  const totalProfitPln = satsToPln(stats.totalProfitSats);

  return (
    <div className="min-h-screen bg-gradient-to-br from-slate-50 via-blue-50 to-indigo-50 p-6">
      <div className="max-w-7xl mx-auto">
        {/* Compact Header with Title and Time Filter */}
        <div className="mb-6 relative">
          <div className="absolute inset-0 bg-gradient-to-r from-blue-600 to-indigo-600 rounded-2xl blur-3xl opacity-10"></div>
          <div className="relative backdrop-blur-sm bg-white/80 rounded-2xl shadow-xl border border-white/20 p-6">
            <div className="flex items-center justify-between gap-6 flex-wrap">
              <div className="flex-1 min-w-[300px]">
                <h1 className="text-3xl font-extrabold bg-gradient-to-r from-blue-600 to-indigo-600 bg-clip-text text-transparent mb-1">
                  Offers Analytics Dashboard
                </h1>
                <p className="text-gray-600 text-sm flex items-center gap-2">
                  <TrendingUp size={16} className="text-blue-600" />
                  Real-time performance metrics
                </p>
              </div>
              
              {/* Rate Display */}
              <div className="flex items-center gap-3 bg-gradient-to-r from-amber-50 to-orange-50 rounded-xl px-4 py-3 border border-amber-100">
                <Bitcoin size={18} className="text-amber-600" />
                <div className="text-sm">
                  <span className="text-gray-600">BTC/PLN:</span>
                  {rateLoading ? (
                    <span className="ml-2 text-amber-600 animate-pulse">Loading...</span>
                  ) : rateError ? (
                    <span className="ml-2 text-red-500" title={rateError}>Error</span>
                  ) : (
                    <span className="ml-2 font-bold text-amber-700">
                      {formatCurrency(btcPlnRate)}
                    </span>
                  )}
                </div>
              </div>
              
              {/* Compact Time Period Filter */}
              <div className="flex items-center gap-3 bg-gradient-to-r from-blue-50 to-indigo-50 rounded-xl px-4 py-3 border border-blue-100">
                <Calendar size={18} className="text-blue-600" />
                <div className="flex gap-2">
                  {['daily', 'weekly', 'monthly'].map((period) => (
                    <button
                      key={period}
                      onClick={() => setGroupBy(period)}
                      className={`px-4 py-2 rounded-lg text-xs font-bold uppercase tracking-wide transition-all duration-300 ${
                        groupBy === period
                          ? 'bg-gradient-to-r from-blue-600 to-indigo-600 text-white shadow-md'
                          : 'bg-white text-gray-700 hover:bg-gray-50 border border-gray-200'
                      }`}
                    >
                      {period}
                    </button>
                  ))}
                </div>
              </div>
            </div>
          </div>
        </div>

        {data.length === 0 ? (
          <div className="bg-yellow-50 border border-yellow-200 rounded-lg p-6 text-center">
            <AlertCircle className="text-yellow-600 mx-auto mb-3" size={32} />
            <p className="text-yellow-800 font-medium">No data available</p>
            <p className="text-yellow-700 text-sm mt-1">There are no offers matching the selected criteria.</p>
          </div>
        ) : (
          <>
            {/* Compact Stats Row - Using Horizontal Space Efficiently */}
            <div className="grid grid-cols-2 lg:grid-cols-3 gap-4 mb-6">
              {/* Total Volume Card - Compact */}
              <div className="group relative overflow-hidden">
                <div className="absolute inset-0 bg-gradient-to-br from-emerald-400 to-green-600 rounded-xl blur-xl opacity-20 group-hover:opacity-30 transition-opacity duration-300"></div>
                <div className="relative backdrop-blur-sm bg-white rounded-xl shadow-md hover:shadow-xl transition-all duration-300 p-4 border border-green-100 hover:border-green-300 hover:-translate-y-1">
                  <div className="flex items-center gap-3">
                    <div className="bg-gradient-to-br from-emerald-400 to-green-600 rounded-lg p-2 shadow-md flex-shrink-0">
                      <DollarSign className="text-white" size={18} />
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-xs font-bold text-green-800 uppercase tracking-wide mb-1">Volume</p>
                      <p className="text-2xl font-extrabold bg-gradient-to-r from-emerald-600 to-green-600 bg-clip-text text-transparent truncate">
                        {formatCurrency(stats.totalVolume)}
                      </p>
                    </div>
                  </div>
                  <div className="mt-2 h-0.5 bg-gradient-to-r from-emerald-400 to-green-600 rounded-full"></div>
                </div>
              </div>

              {/* Total Profit Card - Compact with PLN */}
              <div className="group relative overflow-hidden">
                <div className="absolute inset-0 bg-gradient-to-br from-blue-400 to-indigo-600 rounded-xl blur-xl opacity-20 group-hover:opacity-30 transition-opacity duration-300"></div>
                <div className="relative backdrop-blur-sm bg-white rounded-xl shadow-md hover:shadow-xl transition-all duration-300 p-4 border border-blue-100 hover:border-blue-300 hover:-translate-y-1">
                  <div className="flex items-center gap-3">
                    <div className="bg-gradient-to-br from-blue-400 to-indigo-600 rounded-lg p-2 shadow-md flex-shrink-0">
                      <TrendingUp className="text-white" size={18} />
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-xs font-bold text-blue-800 uppercase tracking-wide mb-1">Profit</p>
                      <p className="text-xl font-extrabold bg-gradient-to-r from-blue-600 to-indigo-600 bg-clip-text text-transparent truncate">
                        {formatNumber(stats.totalProfitSats)}
                      </p>
                      <p className="text-xs font-medium text-blue-600">sats</p>
                      {btcPlnRate && !rateLoading && (
                        <p className="text-sm font-bold text-indigo-600 mt-1">
                          ≈ {formatCurrency(totalProfitPln)}
                        </p>
                      )}
                    </div>
                  </div>
                  <div className="mt-2 h-0.5 bg-gradient-to-r from-blue-400 to-indigo-600 rounded-full"></div>
                </div>
              </div>

              {/* Avg Success Rate Card - Compact */}
              <div className="group relative overflow-hidden">
                <div className="absolute inset-0 bg-gradient-to-br from-purple-400 to-pink-600 rounded-xl blur-xl opacity-20 group-hover:opacity-30 transition-opacity duration-300"></div>
                <div className="relative backdrop-blur-sm bg-white rounded-xl shadow-md hover:shadow-xl transition-all duration-300 p-4 border border-purple-100 hover:border-purple-300 hover:-translate-y-1">
                  <div className="flex items-center gap-3">
                    <div className="bg-gradient-to-br from-purple-400 to-pink-600 rounded-lg p-2 shadow-md flex-shrink-0">
                      <TrendingUp className="text-white" size={18} />
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-xs font-bold text-purple-800 uppercase tracking-wide mb-1">Success Rate</p>
                      <p className="text-2xl font-extrabold bg-gradient-to-r from-purple-600 to-pink-600 bg-clip-text text-transparent">
                        {stats.avgSuccess?.toFixed(1)}%
                      </p>
                    </div>
                  </div>
                  <div className="mt-2 h-0.5 bg-gradient-to-r from-purple-400 to-pink-600 rounded-full"></div>
                </div>
              </div>

              {/* Success/Failed Card - Compact */}
              <div className="group relative overflow-hidden">
                <div className="absolute inset-0 bg-gradient-to-br from-amber-400 to-orange-600 rounded-xl blur-xl opacity-20 group-hover:opacity-30 transition-opacity duration-300"></div>
                <div className="relative backdrop-blur-sm bg-white rounded-xl shadow-md hover:shadow-xl transition-all duration-300 p-4 border border-orange-100 hover:border-orange-300 hover:-translate-y-1">
                  <div className="flex items-center gap-3">
                    <div className="bg-gradient-to-br from-amber-400 to-orange-600 rounded-lg p-2 shadow-md flex-shrink-0">
                      <Calendar className="text-white" size={18} />
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-xs font-bold text-orange-800 uppercase tracking-wide mb-1">Success/Failed</p>
                      <p className="text-2xl font-extrabold bg-gradient-to-r from-amber-600 to-orange-600 bg-clip-text text-transparent">
                        {formatNumber(stats.totalSuccess)}/{formatNumber(stats.totalFailed)}
                      </p>
                    </div>
                  </div>
                  <div className="mt-2 h-0.5 bg-gradient-to-r from-amber-400 to-orange-600 rounded-full"></div>
                </div>
              </div>

              {/* Time to Accept Card - Compact */}
              <div className="group relative overflow-hidden">
                <div className="absolute inset-0 bg-gradient-to-br from-cyan-400 to-blue-600 rounded-xl blur-xl opacity-20 group-hover:opacity-30 transition-opacity duration-300"></div>
                <div className="relative backdrop-blur-sm bg-white rounded-xl shadow-md hover:shadow-xl transition-all duration-300 p-4 border border-cyan-100 hover:border-cyan-300 hover:-translate-y-1">
                  <div className="flex items-center gap-3">
                    <div className="bg-gradient-to-br from-cyan-400 to-blue-600 rounded-lg p-2 shadow-md flex-shrink-0">
                      <Clock className="text-white" size={18} />
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-xs font-bold text-cyan-800 uppercase tracking-wide mb-1">Time to Accept</p>
                      <p className="text-2xl font-extrabold bg-gradient-to-r from-cyan-600 to-blue-600 bg-clip-text text-transparent">
                        {formatTime(stats.avgTimeToAccept)}
                      </p>
                    </div>
                  </div>
                  <div className="mt-2 h-0.5 bg-gradient-to-r from-cyan-400 to-blue-600 rounded-full"></div>
                </div>
              </div>

              {/* Time to Full Payment Card - Compact */}
              <div className="group relative overflow-hidden">
                <div className="absolute inset-0 bg-gradient-to-br from-teal-400 to-emerald-600 rounded-xl blur-xl opacity-20 group-hover:opacity-30 transition-opacity duration-300"></div>
                <div className="relative backdrop-blur-sm bg-white rounded-xl shadow-md hover:shadow-xl transition-all duration-300 p-4 border border-teal-100 hover:border-teal-300 hover:-translate-y-1">
                  <div className="flex items-center gap-3">
                    <div className="bg-gradient-to-br from-teal-400 to-emerald-600 rounded-lg p-2 shadow-md flex-shrink-0">
                      <Clock className="text-white" size={18} />
                    </div>
                    <div className="flex-1 min-w-0">
                      <p className="text-xs font-bold text-teal-800 uppercase tracking-wide mb-1">Time to Payment</p>
                      <p className="text-2xl font-extrabold bg-gradient-to-r from-teal-600 to-emerald-600 bg-clip-text text-transparent">
                        {formatTime(stats.avgTimeToFullPayment)}
                      </p>
                    </div>
                  </div>
                  <div className="mt-2 h-0.5 bg-gradient-to-r from-teal-400 to-emerald-600 rounded-full"></div>
                </div>
              </div>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-6">
              <div className="bg-white rounded-xl shadow-lg hover:shadow-xl transition-shadow duration-300 border border-gray-200 p-6 card-shine">
                <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                  <div className="h-2 w-2 rounded-full bg-purple-500"></div>
                  Success Rate Trend
                </h3>
                <ResponsiveContainer width="100%" height={300}>
                  <LineChart data={data}>
                    <CartesianGrid strokeDasharray="3 3" stroke="#e5e7eb" />
                    <XAxis dataKey="date" angle={-45} textAnchor="end" height={80} tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <YAxis domain={[0, 100]} tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <Tooltip contentStyle={{ backgroundColor: '#fff', border: '1px solid #e5e7eb', borderRadius: '8px' }} />
                    <Legend />
                    <Line type="monotone" dataKey="success_percentage" stroke="#8b5cf6" strokeWidth={2} name="Success %" dot={{ fill: '#8b5cf6', r: 4 }} />
                  </LineChart>
                </ResponsiveContainer>
              </div>

              <div className="bg-white rounded-xl shadow-lg hover:shadow-xl transition-shadow duration-300 border border-gray-200 p-6 card-shine">
                <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                  <div className="h-2 w-2 rounded-full bg-green-500"></div>
                  Volume (PLN)
                </h3>
                <ResponsiveContainer width="100%" height={300}>
                  <BarChart data={data}>
                    <CartesianGrid strokeDasharray="3 3" stroke="#e5e7eb" />
                    <XAxis dataKey="date" angle={-45} textAnchor="end" height={80} tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <YAxis tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <Tooltip formatter={(value) => formatCurrency(value)} contentStyle={{ backgroundColor: '#fff', border: '1px solid #e5e7eb', borderRadius: '8px' }} />
                    <Legend />
                    <Bar dataKey="volume" fill="#10b981" name="Volume" />
                  </BarChart>
                </ResponsiveContainer>
              </div>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-6">
              <div className="bg-white rounded-xl shadow-lg hover:shadow-xl transition-shadow duration-300 border border-gray-200 p-6 card-shine">
                <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                  <div className="h-2 w-2 rounded-full bg-blue-500"></div>
                  Success vs Failed Offers
                </h3>
                <ResponsiveContainer width="100%" height={300}>
                  <BarChart data={data}>
                    <CartesianGrid strokeDasharray="3 3" stroke="#e5e7eb" />
                    <XAxis dataKey="date" angle={-45} textAnchor="end" height={80} tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <YAxis tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <Tooltip contentStyle={{ backgroundColor: '#fff', border: '1px solid #e5e7eb', borderRadius: '8px' }} />
                    <Legend />
                    <Bar dataKey="success" fill="#3b82f6" name="Success" />
                    <Bar dataKey="failed" fill="#ef4444" name="Failed" />
                  </BarChart>
                </ResponsiveContainer>
              </div>

              <div className="bg-white rounded-xl shadow-lg hover:shadow-xl transition-shadow duration-300 border border-gray-200 p-6 card-shine">
                <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                  <div className="h-2 w-2 rounded-full bg-amber-500"></div>
                  Profit Trend (Sats & PLN)
                </h3>
                <ResponsiveContainer width="100%" height={300}>
                  <LineChart data={data.map(d => ({
                    ...d,
                    profit_pln: satsToPln(parseFloat(d.profit || 0))
                  }))}>
                    <CartesianGrid strokeDasharray="3 3" stroke="#e5e7eb" />
                    <XAxis dataKey="date" angle={-45} textAnchor="end" height={80} tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <YAxis yAxisId="left" tick={{ fill: '#6b7280', fontSize: 12 }} label={{ value: 'Sats', angle: -90, position: 'insideLeft', style: { fill: '#f59e0b' } }} />
                    <YAxis yAxisId="right" orientation="right" tick={{ fill: '#6b7280', fontSize: 12 }} tickFormatter={(value) => value.toFixed(2)} label={{ value: 'PLN', angle: 90, position: 'insideRight', style: { fill: '#10b981' } }} />
                    <Tooltip
                      formatter={(value, name) => {
                        if (name === 'Profit (PLN)') return [formatCurrencyChart(value), name];
                        return [formatNumber(value) + ' sats', name];
                      }}
                      contentStyle={{ backgroundColor: '#fff', border: '1px solid #e5e7eb', borderRadius: '8px' }}
                    />
                    <Legend />
                    <Line yAxisId="left" type="monotone" dataKey="profit" stroke="#f59e0b" strokeWidth={2} name="Profit (Sats)" dot={{ fill: '#f59e0b', r: 4 }} />
                    <Line yAxisId="right" type="monotone" dataKey="profit_pln" stroke="#10b981" strokeWidth={2} name="Profit (PLN)" dot={{ fill: '#10b981', r: 4 }} />
                  </LineChart>
                </ResponsiveContainer>
              </div>
            </div>

            <div className="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-6">
              <div className="bg-white rounded-xl shadow-lg hover:shadow-xl transition-shadow duration-300 border border-gray-200 p-6 card-shine">
                <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                  <div className="h-2 w-2 rounded-full bg-cyan-500"></div>
                  Time to first Reservation
                </h3>
                <ResponsiveContainer width="100%" height={300}>
                  <LineChart data={data}>
                    <CartesianGrid strokeDasharray="3 3" stroke="#e5e7eb" />
                    <XAxis dataKey="date" angle={-45} textAnchor="end" height={80} tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <YAxis tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <Tooltip formatter={(value) => formatTime(value)} contentStyle={{ backgroundColor: '#fff', border: '1px solid #e5e7eb', borderRadius: '8px' }} />
                    <Legend />
                    <Line type="monotone" dataKey="avg_reserved_seconds" stroke="#06b6d4" strokeWidth={2} name="Time to Accept" dot={{ fill: '#06b6d4', r: 4 }} />
                  </LineChart>
                </ResponsiveContainer>
              </div>

              <div className="bg-white rounded-xl shadow-lg hover:shadow-xl transition-shadow duration-300 border border-gray-200 p-6 card-shine">
                <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                  <div className="h-2 w-2 rounded-full bg-teal-500"></div>
                  Time to Full Payment
                </h3>
                <ResponsiveContainer width="100%" height={300}>
                  <LineChart data={data}>
                    <CartesianGrid strokeDasharray="3 3" stroke="#e5e7eb" />
                    <XAxis dataKey="date" angle={-45} textAnchor="end" height={80} tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <YAxis tick={{ fill: '#6b7280', fontSize: 12 }} />
                    <Tooltip formatter={(value) => formatTime(value)} contentStyle={{ backgroundColor: '#fff', border: '1px solid #e5e7eb', borderRadius: '8px' }} />
                    <Legend />
                    <Line type="monotone" dataKey="avg_total_seconds" stroke="#14b8a6" strokeWidth={2} name="Time to Payment" dot={{ fill: '#14b8a6', r: 4 }} />
                  </LineChart>
                </ResponsiveContainer>
              </div>
            </div>

            <div className="bg-white rounded-xl shadow-lg hover:shadow-xl transition-shadow duration-300 border border-gray-200 p-6 card-shine">
              <h3 className="text-lg font-bold text-gray-900 mb-4 flex items-center gap-2">
                <div className="h-2 w-2 rounded-full bg-orange-500"></div>
                Volume in Satoshis
              </h3>
              <ResponsiveContainer width="100%" height={300}>
                <BarChart data={data}>
                  <CartesianGrid strokeDasharray="3 3" stroke="#e5e7eb" />
                  <XAxis dataKey="date" angle={-45} textAnchor="end" height={80} tick={{ fill: '#6b7280', fontSize: 12 }} />
                  <YAxis tick={{ fill: '#6b7280', fontSize: 12 }} />
                  <Tooltip formatter={(value) => formatNumber(value) + ' sats'} contentStyle={{ backgroundColor: '#fff', border: '1px solid #e5e7eb', borderRadius: '8px' }} />
                  <Legend />
                  <Bar dataKey="volume_sats" fill="#f97316" name="Volume (sats)" />
                </BarChart>
              </ResponsiveContainer>
            </div>
          </>
        )}
      </div>
    </div>
  );
};

export default OffersDashboard;
