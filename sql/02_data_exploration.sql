-- Basic Table Checks
SELECT COUNT(*) AS total_users FROM users;
SELECT COUNT(*) AS total_subscriptions FROM subscriptions;
SELECT COUNT(*) AS total_events FROM events;
SELECT COUNT(*) AS total_payments FROM payments;


-- Preview Data
SELECT * FROM users LIMIT 5;
SELECT * FROM subscriptions LIMIT 5;
SELECT * FROM events LIMIT 5;
SELECT * FROM payments LIMIT 5;


-- User Location Distribution
SELECT
	country,
	COUNT (DISTINCT user_id) AS user_count
FROM users u 
GROUP BY country;


-- Channel Distribution
SELECT
	acquisition_channel,
	COUNT(user_id) AS user_count
FROM users
GROUP BY acquisition_channel;


-- Signup Trend Across Weeks
SELECT 
    DATE_TRUNC('week', signup_date) AS signup_week,
    COUNT(*) AS users
FROM users
GROUP BY signup_week
ORDER BY signup_week;


-- Subscription Status Distribution
SELECT 
    status,
    COUNT(*) AS count
FROM subscriptions
GROUP BY status;


-- Events Distribution
SELECT 
    event_type,
    COUNT(*) AS count
FROM events
GROUP BY event_type;


-- Revenue Overview
SELECT 
    SUM(amount) AS total_revenue,
    AVG(amount) AS avg_payment
FROM payments;


-- Channel Revenue Distribution 
SELECT
	u.acquisition_channel,
	SUM(p.amount) AS total_revenue,
	AVG(p.amount) AS avg_payment
FROM payments p
JOIN users u
ON p.user_id = u.user_id
GROUP BY u.acquisition_channel;


-- Location Revenue Distribution
SELECT
	u.country,
	SUM(p.amount) AS total_revenue,
	AVG(p.amount) AS avg_payment
FROM payments p
JOIN users u
ON p.user_id = u.user_id
GROUP BY u.country;


-- Check Missing Values
SELECT COUNT(*) FROM users WHERE signup_date IS NULL;
SELECT COUNT(*) FROM subscriptions WHERE user_id IS NULL;
SELECT COUNT(*) FROM events WHERE event_date IS NULL;
SELECT COUNT(*) FROM payments WHERE amount IS NULL;
