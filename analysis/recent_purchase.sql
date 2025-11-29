-- Most recent purchase date per customer
SELECT 
    c.customer_name,
    MAX(o.order_date) AS last_purchase_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY last_purchase_date DESC;
