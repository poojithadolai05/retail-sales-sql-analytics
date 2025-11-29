-- Revenue by product category
SELECT 
    c.category_name,
    SUM((oi.selling_price - oi.discount) * oi.quantity) AS revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
JOIN categories c ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY revenue DESC;
