-- Customer order frequency using window function
SELECT 
    c.customer_name,
    COUNT(o.order_id) AS total_orders,
    RANK() OVER (ORDER BY COUNT(o.order_id) DESC) AS frequency_rank
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name;
