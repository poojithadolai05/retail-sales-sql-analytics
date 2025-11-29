-- Discount given vs revenue after discount per product
SELECT
    p.product_name,
    SUM(oi.discount) AS total_discount_given,
    SUM((oi.selling_price - oi.discount) * oi.quantity) AS revenue_after_discount
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_discount_given DESC;
