-- Objective: Generate business insights for revenue concentration and value leakage

-- Revenue contribution by segment
SELECT
    value_segment,
    COUNT(*) AS customer_count,
    ROUND(SUM(total_revenue), 2) AS segment_revenue,
    ROUND(
        SUM(total_revenue) /
        (SELECT SUM(total_revenue) FROM customer_segments) * 100,
        2
    ) AS revenue_share_pct
FROM customer_segments
GROUP BY value_segment
ORDER BY revenue_share_pct DESC;

-- Behavioral differences
SELECT
    value_segment,
    ROUND(AVG(total_transactions), 2) AS avg_transactions,
    ROUND(AVG(avg_purchase), 2) AS avg_purchase_value
FROM customer_segments
GROUP BY value_segment;

-- Revenue at risk (top customers)
SELECT
    ROUND(SUM(total_revenue), 2) AS revenue_at_risk
FROM customer_segments
WHERE value_segment = 'Top 20%';

-- Bottom segment contribution
SELECT
    ROUND(SUM(total_revenue), 2) AS bottom_50_revenue,
    ROUND(
        SUM(total_revenue) /
        (SELECT SUM(total_revenue) FROM customer_segments) * 100,
        2
    ) AS bottom_50_revenue_pct
FROM customer_segments
WHERE value_segment = 'Bottom 50%';
