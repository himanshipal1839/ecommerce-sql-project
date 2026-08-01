# E-Commerce Sales SQL Project

## Project Overview

This project demonstrates the design and analysis of an E-Commerce Sales Database using MySQL. It includes database creation, sample data insertion, and SQL queries to answer common business questions related to customers, products, orders, and sales performance.

## Objectives

- Design a relational database for an e-commerce business.
- Store customer, product, category, and order information.
- Perform business analysis using SQL queries.
- Practice SQL concepts such as JOIN, GROUP BY, ORDER BY, aggregate functions, and filtering.

## Database Schema

The database contains the following tables:

- Customers
- Categories
- Products
- Orders
- Order_Items

### Relationships

- One customer can place multiple orders.
- One category can contain multiple products.
- One order can contain multiple products through the Order_Items table.
- Each product belongs to one category.

## Tools Used

- MySQL / MariaDB
- XAMPP
- VS Code
- Git & GitHub

## Project Structure

```
ecommerce-sql-project
│
├── schema.sql
├── insert_data.sql
├── queries.sql
├── README.md
└── screenshots/
```

## SQL Concepts Covered

- CREATE DATABASE
- CREATE TABLE
- PRIMARY KEY
- FOREIGN KEY
- AUTO_INCREMENT
- INSERT INTO
- SELECT
- WHERE
- ORDER BY
- GROUP BY
- Aggregate Functions (COUNT, SUM, AVG, MAX)
- INNER JOIN
- LIMIT

## Business Questions Answered

- Display all customers
- Display all products
- Find products priced above a specific amount
- View delivered orders
- Count total customers
- Calculate average product price
- Find the most expensive product
- Calculate total available stock
- Count products by category
- Display customer orders
- Display products with their categories
- View order details
- Calculate total revenue
- Calculate revenue by category
- Identify top-selling products
- Count orders by payment method
- Count orders by order status
- Identify top-spending customers
- Find products with low stock

## Screenshots

Screenshots of the database tables and SQL query outputs are available in the `screenshots` folder.
