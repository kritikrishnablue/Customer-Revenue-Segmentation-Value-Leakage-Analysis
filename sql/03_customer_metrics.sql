-- Objective: Create customer-level revenue and transaction metrics

DROP TABLE IF EXISTS customer_metrics;

CREATE TABLE customer_metrics AS
SELECT
    user_id,
    COUNT(*) AS total_transactions,
    SUM(purchase_amount) AS total_revenue,
    ROUND(AVG(purchase_amount), 2) AS avg_purchase
FROM transactions
GROUP BY user_id;
