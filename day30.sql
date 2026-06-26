-- 🎯 Day 30 — Monthly Challenge

-- Build:
-- SQL database for E-commerce system

-- Tables:
-- Users
-- Orders
-- Products
-- Payments

-- Write 15 queries.

use db;
-- ==========================================
-- STEP 2: CREATE TABLES
-- ==========================================

-- Users Table
CREATE TABLE Users (
    user_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE,
    city VARCHAR(50)
);

-- Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2),
    stock INT
);

-- Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

-- Payments Table
CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10,2),
    payment_method VARCHAR(50),
    payment_status VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);


-- ==========================================
-- STEP 3: INSERT DATA
-- ==========================================

-- Insert Users
INSERT INTO Users VALUES
(1,'Shivam','shivam@gmail.com','Bangalore'),
(2,'Rahul','rahul@gmail.com','Delhi'),
(3,'Aman','aman@gmail.com','Mumbai');

-- Insert Products
INSERT INTO Products VALUES
(101,'Laptop',60000,10),
(102,'Phone',30000,20),
(103,'Headphones',2000,50);

-- Insert Orders
INSERT INTO Orders VALUES
(1001,1,101,1,'2026-06-01'),
(1002,2,102,2,'2026-06-02'),
(1003,1,103,3,'2026-06-03');

-- Insert Payments
INSERT INTO Payments VALUES
(501,1001,60000,'UPI','Paid'),
(502,1002,60000,'Card','Paid'),
(503,1003,6000,'Cash','Pending');


-- ==========================================
-- STEP 4: PRACTICE QUERIES
-- ==========================================

-- Q1: Show all users
SELECT * FROM Users;


-- Q2: Show all products
SELECT * FROM Products;


-- Q3: Find products with price greater than 5000
SELECT * 
FROM Products
WHERE price > 5000;


-- Q4: Sort products by price descending
SELECT * 
FROM Products
ORDER BY price DESC;


-- Q5: Count total users
SELECT COUNT(*) AS total_users
FROM Users;


-- Q6: Find average product price
SELECT AVG(price) AS avg_price
FROM Products;


-- Q7: Find highest product price
SELECT MAX(price) AS max_price
FROM Products;


-- Q8: Show orders with user names
SELECT o.order_id, u.name
FROM Orders o
JOIN Users u
ON o.user_id = u.user_id;


-- Q9: Show orders with product names
SELECT o.order_id, p.product_name
FROM Orders o
JOIN Products p
ON o.product_id = p.product_id;


-- Q10: Show complete order details
SELECT o.order_id, u.name, p.product_name, o.quantity
FROM Orders o
JOIN Users u ON o.user_id = u.user_id
JOIN Products p ON o.product_id = p.product_id;


-- Q11: Find total sales amount
SELECT SUM(amount) AS total_sales
FROM Payments
WHERE payment_status = 'Paid';


-- Q12: Show pending payments
SELECT *
FROM Payments
WHERE payment_status = 'Pending';


-- Q13: Find user-wise total orders
SELECT user_id, COUNT(*) AS total_orders
FROM Orders
GROUP BY user_id;


-- Q14: Find product-wise total quantity sold
SELECT product_id, SUM(quantity) AS total_sold
FROM Orders
GROUP BY product_id;


-- Q15: Show users who ordered more than once
SELECT user_id, COUNT(*) AS order_count
FROM Orders
GROUP BY user_id
HAVING COUNT(*) > 1;