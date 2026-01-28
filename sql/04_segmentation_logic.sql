-- Objective: Rank customers by revenue and assign value segments

DROP TABLE IF EXISTS customer_ranked;

CREATE TABLE customer_ranked AS
SELECT
    user_id,
    total_transactions,
    total_revenue,
    avg_purchase,
    SUM(total_revenue) OVER (ORDER BY total_revenue DESC)
        / SUM(total_revenue) OVER () AS cumulative_revenue_pct
FROM customer_metrics;

DROP TABLE IF EXISTS customer_segments;

CREATE TABLE customer_segments AS
SELECT
    *,
    CASE
        WHEN cumulative_revenue_pct <= 0.20 THEN 'Top 20%'
        WHEN cumulative_revenue_pct <= 0.50 THEN 'Mid 30%'
        ELSE 'Bottom 50%'
    END AS value_segment
FROM customer_ranked;
