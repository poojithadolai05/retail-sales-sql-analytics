-- Total revenue from all orders
SELECT 
    SUM((selling_price - discount) * quantity) AS total_revenue
FROM order_items;
