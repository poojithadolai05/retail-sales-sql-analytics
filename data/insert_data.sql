-- Sample data for Retail Sales SQL Analytics

-- Customers
INSERT INTO customers (customer_name, email, city, join_date) VALUES
('Aarav Sharma', 'aarav@gmail.com', 'Delhi', '2023-01-10'),
('Rekha Rao', 'rekha@gmail.com', 'Hyderabad', '2023-02-15'),
('Vikram Singh', 'vikram@gmail.com', 'Mumbai', '2023-03-05'),
('Sneha Iyer', 'sneha@gmail.com', 'Chennai', '2023-04-20'),
('Rohan Das', 'rohan@gmail.com', 'Kolkata', '2023-05-12');

-- Categories
INSERT INTO categories (category_name) VALUES
('Electronics'),
('Clothing'),
('Groceries'),
('Home Appliances');

-- Products
INSERT INTO products (product_name, category_id, price) VALUES
('Smartphone X1', 1, 15000),
('Laptop Pro 15', 1, 55000),
('Bluetooth Earbuds', 1, 2500),
('Men T-Shirt', 2, 600),
('Women Kurti', 2, 1200),
('Rice 5kg Pack', 3, 350),
('Milk 1L', 3, 50),
('Air Fryer', 4, 7000),
('Mixer Grinder', 4, 4500);

-- Orders
INSERT INTO orders (customer_id, order_date) VALUES
(1, '2023-07-01'),
(2, '2023-07-05'),
(3, '2023-07-10'),
(1, '2023-07-15'),
(4, '2023-07-17'),
(5, '2023-07-18'),
(2, '2023-07-20'),
(3, '2023-07-21');

-- Order items
INSERT INTO order_items (order_id, product_id, quantity, selling_price, discount) VALUES
(1, 1, 1, 15000, 1000),
(1, 3, 1, 2500, 200),
(2, 4, 2, 600, 50),
(3, 2, 1, 55000, 5000),
(4, 6, 3, 350, 20),
(5, 8, 1, 7000, 500),
(6, 7, 5, 50, 0),
(7, 5, 1, 1200, 100),
(8, 9, 1, 4500, 200);
