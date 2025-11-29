-- Top customers by total spending
SELECT 
    c.customer_name,
    SUM((oi.selling_price - oi.discount) * oi.quantity) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;
