-- Monthly revenue trend
SELECT 
    DATE_TRUNC('month', o.order_date) AS month,
    SUM((oi.selling_price - oi.discount) * oi.quantity) AS monthly_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;
