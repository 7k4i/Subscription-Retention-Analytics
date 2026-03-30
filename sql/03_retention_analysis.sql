-- =========================================
-- Retention Analysis
-- =========================================
-- Goal: Measure user retention over time using cohort analysis
-- Retention is defined as users who have activity (events) after signup

WITH cohort AS (
    -- Step 1: Assign each user to a cohort based on signup week
    SELECT DISTINCT 
        user_id,
        DATE_TRUNC('week', signup_date) AS cohort_week
    FROM users
),

activity AS (
    -- Step 2: Identify user activity by week
    SELECT DISTINCT 
        user_id,
        DATE_TRUNC('week', event_date) AS activity_week
    FROM events
),

user_activity AS (
    -- Step 3: Join cohort and activity, calculate time difference
    SELECT
        c.user_id,
        c.cohort_week,
        a.activity_week,
        DATE_PART('day', a.activity_week - c.cohort_week) / 7 AS weeks_since_signup
    FROM cohort c
    JOIN activity a
        ON c.user_id = a.user_id
),

retention_count AS (
    -- Step 4: Count retained users for each cohort and week
    SELECT
        cohort_week,
        weeks_since_signup,
        COUNT(DISTINCT user_id) AS retained_users
    FROM user_activity
    GROUP BY cohort_week, weeks_since_signup
),

cohort_size AS (
    -- Step 5: Calculate total users per cohort
    SELECT
        DATE_TRUNC('week', signup_date) AS cohort_week,
        COUNT(user_id) AS cohort_size
    FROM users
    GROUP BY cohort_week
)

-- Final: Calculate retention rate
SELECT
    rc.cohort_week,
    rc.weeks_since_signup,
    rc.retained_users,
    cs.cohort_size,
    ROUND(rc.retained_users * 1.0 / cs.cohort_size, 2) AS retention_rate
FROM retention_count rc
JOIN cohort_size cs
    ON rc.cohort_week = cs.cohort_week
ORDER BY rc.cohort_week, rc.weeks_since_signup;
