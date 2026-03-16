-- ======================================================
-- SaaS Customer Churn & Retention Analysis
-- Data Exploration and Aggregation Queries
-- ======================================================


-- ------------------------------------------------------
-- 1. Monthly Customer Signup Growth
-- Used for: Customer Acquisition Trend (Tableau)
-- ------------------------------------------------------

SELECT
    DATE_TRUNC('month', created_at) AS signup_month,
    COUNT(account_id) AS new_accounts
FROM ravenstack_accounts
GROUP BY signup_month
ORDER BY signup_month;



-- ------------------------------------------------------
-- 2. Revenue Distribution by Plan (MRR)
-- Used for: Revenue Distribution by Plan chart
-- ------------------------------------------------------

SELECT
    plan_tier,
    SUM(mrr) AS total_mrr
FROM ravenstack_subscriptions
GROUP BY plan_tier
ORDER BY total_mrr DESC;



-- ------------------------------------------------------
-- 3. Customer Churn Drivers
-- Used for: Customer Churn Drivers chart
-- ------------------------------------------------------

SELECT
    reason_code,
    COUNT(account_id) AS churn_count
FROM ravenstack_churn_events
GROUP BY reason_code
ORDER BY churn_count DESC;



-- ------------------------------------------------------
-- 4. Feature Usage Segmentation vs Churn
-- Used for: Feature Usage vs Churn Rate chart
-- ------------------------------------------------------

SELECT
    CASE
        WHEN total_usage > 500 THEN 'High Usage'
        WHEN total_usage > 200 THEN 'Medium Usage'
        ELSE 'Low Usage'
    END AS usage_segment,
    COUNT(account_id) AS accounts,
    SUM(CASE WHEN churned = 1 THEN 1 ELSE 0 END) AS churned_accounts
FROM ravenstack_feature_usage
GROUP BY usage_segment;



-- ------------------------------------------------------
-- 5. Cohort Retention Analysis
-- Used for: Cohort Retention Heatmap
-- ------------------------------------------------------

SELECT
    cohort_month,
    cohort_age,
    COUNT(active_accounts) AS active_accounts
FROM cohort_retention_table
GROUP BY cohort_month, cohort_age
ORDER BY cohort_month, cohort_age;
