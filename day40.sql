-- ✅ Day 40 — Hash Indexing

-- Concepts:

-- Static hashing
-- Dynamic hashing
-- Extendible hashing

-- Practice:

-- When hash index is better than B+ tree?


use db;
CREATE TABLE Employee6 (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    salary INT,
    city VARCHAR(30)
);

INSERT INTO Employee6 VALUES
(101, 'Shivam', 'IT', 70000, 'Bangalore'),
(102, 'Rahul', 'HR', 50000, 'Delhi'),
(103, 'Aman', 'IT', 80000, 'Mumbai'),
(104, 'Riya', 'Finance', 90000, 'Chennai'),
(105, 'Karan', 'IT', 60000, 'Delhi'),
(106, 'Sneha', 'HR', 55000, 'Bangalore'),
(107, 'Arjun', 'Finance', 75000, 'Mumbai'),
(108, 'Priya', 'IT', 85000, 'Delhi');

SELECT * FROM Employee6;

SELECT *
FROM Employee6
WHERE emp_id = 103;


SELECT *
FROM Employee6
WHERE city = 'Delhi';


SELECT *
FROM Employee6
WHERE salary = 90000;

SELECT *
FROM Employee6
WHERE dept = 'IT'
AND city = 'Delhi';

SELECT *
FROM Employee6
WHERE salary BETWEEN 60000 AND 85000;

-- qus:
-- Hash index is better than B+ tree for exact match queries because it provides direct bucket access and average O(1) lookup. However, for range queries and ordered traversal, B+ tree is better.

-- Use of Hash Index in Queries
-- Query				Hash Index
-- WHERE emp_id=103		Excellent ✅
-- WHERE city='Delhi'	Excellent ✅
-- WHERE salary=90000	Excellent ✅
-- WHERE dept='IT' AND city='Delhi'		Good ✅
-- BETWEEN 60000 AND 85000				Bad ❌

