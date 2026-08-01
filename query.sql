-- Query 1: Display all customers
SELECT * FROM customers;

-- Query 2: Display all products
SELECT * FROM products;

-- Query 3: Show products costing more than ₹1000
SELECT * FROM products WHERE price > 1000;

-- Query 4: Show delivered orders
SELECT * FROM orders WHERE order_status = 'Delivered';

-- Query 5: Sort products by price (Highest to Lowest)
SELECT product_name, price
FROM products
ORDER BY price DESC;

-- Query 6: Total number of customers
SELECT COUNT(*) AS total_customers FROM customers;

-- Query 7: Average product price
SELECT AVG(price) AS average_price FROM products;

-- Query 8: Most expensive product
SELECT MAX(price) AS highest_price
FROM products;

-- Query 9: Total stock available
SELECT SUM(stock_quantity) AS total_stock
FROM products;

-- Query 10: Number of products in each category
SELECT
    c.category_name,
    COUNT(*) AS total_products
FROM products p
JOIN categories c
    ON p.category_id = c.category_id
GROUP BY c.category_name;

-- Query 11: Display customer orders
SELECT
    o.order_id,
    c.first_name,
    c.last_name,
    o.order_status
FROM orders o
JOIN customers c
    ON o.customer_id = c.customer_id;

-- Query 12: Display products with category names
SELECT
    p.product_name,
    c.category_name,
    p.price
FROM products p
JOIN categories c
    ON p.category_id = c.category_id;

-- Query 13: Show order details
SELECT
    oi.order_id,
    p.product_name,
    oi.quantity,
    oi.total_price
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id;

-- Query 14: Total revenue generated
SELECT
    SUM(total_price) AS total_revenue
FROM order_items;

-- Query 15: Revenue by category
SELECT
    c.category_name,
    SUM(oi.total_price) AS revenue
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
JOIN categories c
    ON p.category_id = c.category_id
GROUP BY c.category_name
ORDER BY revenue DESC;

-- Query 16: Top selling products
SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity_sold
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_quantity_sold DESC;

-- Query 17: Orders by payment method
SELECT
    payment_method,
    COUNT(*) AS total_orders
FROM orders
GROUP BY payment_method;

-- Query 18: Orders by status
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM orders
GROUP BY order_status;

-- Query 19: Top spending customers
SELECT
    c.first_name,
    c.last_name,
    SUM(oi.total_price) AS total_spent
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY c.customer_id
ORDER BY total_spent DESC;

-- Query 20: Products with low stock
SELECT
    product_name,
    stock_quantity
FROM products
WHERE stock_quantity < 30;

-- Query 21: Top 5 Best-Selling Products
SELECT
    p.product_name,
    SUM(oi.quantity) AS quantity_sold
FROM order_items oi
JOIN products p
    ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY quantity_sold DESC
LIMIT 5;

-- Query 22: Customer-wise Total Orders
SELECT
    c.first_name,
    c.last_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
    ON c.customer_id = o.customer_id
GROUP BY c.customer_id;