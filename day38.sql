-- 📅 Week 6 — Query Optimization + Indexing
-- ✅ Day 38 — Indexing Deep Dive

-- Concepts:

-- Clustered index
-- Non-clustered index
-- Composite index
-- Covering index

-- Practice:

-- Where should index be created in given query?

use db;
-- ==========================================
-- DAY 38 : INDEXING DEEP DIVE
-- ==========================================

-- Create Database
CREATE DATABASE index_practice;
USE index_practice;

-- ==========================================
-- Create Sample Table
-- ==========================================
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(50),
    salary INT,
    city VARCHAR(50)
);

-- Insert Sample Data
INSERT INTO Employee VALUES
(1,'Shivam','IT',70000,'Bangalore'),
(2,'Rahul','HR',50000,'Delhi'),
(3,'Aman','IT',80000,'Mumbai'),
(4,'Riya','Finance',90000,'Chennai'),
(5,'Karan','IT',60000,'Delhi');


-- ==========================================
-- 1. Clustered Index
-- Usually Primary Key acts as clustered index
-- ==========================================

CREATE TABLE Student (
    student_id INT PRIMARY KEY,
    name VARCHAR(50)
);


-- ==========================================
-- 2. Non-Clustered Index
-- Index on city column
-- ==========================================

CREATE INDEX idx_city
ON Employee(city);


-- Query using Non-clustered Index
SELECT *
FROM Employee
WHERE city = 'Delhi';


-- ==========================================
-- 3. Composite Index
-- Index on dept + salary
-- ==========================================

CREATE INDEX idx_dept_salary
ON Employee(dept, salary);


-- Query using Composite Index
SELECT *
FROM Employee
WHERE dept = 'IT'
AND salary > 50000;


-- ==========================================
-- 4. Covering Index
-- dept + salary + name
-- ==========================================

CREATE INDEX idx_cover
ON Employee(dept, salary, name);


-- Query using Covering Index
SELECT name, salary
FROM Employee
WHERE dept = 'IT'
AND salary > 50000;


-- ==========================================
-- Additional Practice Queries
-- ==========================================

-- Query 1: Search employee by ID
SELECT *
FROM Employee
WHERE emp_id = 3;


-- Query 2: Search by city
SELECT *
FROM Employee
WHERE city = 'Bangalore';


-- Query 3: Search by dept + salary
SELECT *
FROM Employee
WHERE dept = 'IT'
AND salary > 60000;


-- Query 4: Orders Example
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    amount INT
);

INSERT INTO Orders VALUES
(101,1,'2025-01-01',5000),
(102,2,'2025-02-01',7000),
(103,1,'2025-03-01',6000);

-- Best index for below query
CREATE INDEX idx_customer_date
ON Orders(customer_id, order_date);

-- Practice Query
SELECT *
FROM Orders
WHERE customer_id = 1
AND order_date > '2025-01-01';



-- Quick Summary
-- Index Type	Purpose
-- Clustered	Physical ordering
-- Non-clustered	Separate lookup
-- Composite	Multiple columns
-- Covering	All query columns in index