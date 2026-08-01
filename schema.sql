 -- E-Commerce Sales Database Schema

CREATE DATABASE ecommerce_sales;

-- Select Database
USE ecommerce_sales;


-- Customers Table
-- Stores customer information

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(55),
    last_name VARCHAR(55),
    gender VARCHAR(55),
    email VARCHAR(55),
    phone_no BIGINT,
    city VARCHAR(55)
);

-- Categories Table
-- Stores product categories

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(55)
);

-- Products Table
-- Stores product details


CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(55),
    category_id INT,
    price DECIMAL(10,2),
    stock_quantity INT,

    FOREIGN KEY (category_id)
    REFERENCES categories(category_id)
);

-- Orders Table
-- Stores customer orders

CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT,
    order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method VARCHAR(55),
    order_status VARCHAR(55),

    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);

-- Order Items Table
-- Stores products included in each order

CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    total_price DECIMAL(10,2),

    FOREIGN KEY (order_id)
    REFERENCES orders(order_id),

    FOREIGN KEY (product_id)
    REFERENCES products(product_id)
);

