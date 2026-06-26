-- ✅ Day 39 — B+ Trees (Core Interview Topic)

-- Concepts:

-- Structure of B+ Tree
-- Why databases use B+ tree
-- Height and search complexity

-- Practice:

-- Explain why B+ tree better than binary tree.


use db;

CREATE TABLE Employee5 (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    salary INT,
    city VARCHAR(30)
);

INSERT INTO Employee5 VALUES
(101, 'Shivam', 'IT', 70000, 'Bangalore'),
(102, 'Rahul', 'HR', 50000, 'Delhi'),
(103, 'Aman', 'IT', 80000, 'Mumbai'),
(104, 'Riya', 'Finance', 90000, 'Chennai'),
(105, 'Karan', 'IT', 60000, 'Delhi'),
(106, 'Sneha', 'HR', 55000, 'Bangalore'),
(107, 'Arjun', 'Finance', 75000, 'Mumbai'),
(108, 'Priya', 'IT', 85000, 'Delhi');

SELECT * FROM Employee5;


SELECT *
FROM Employee5
WHERE emp_id = 103;

SELECT *
FROM Employee5
WHERE salary BETWEEN 60000 AND 85000;


SELECT *
FROM Employee5
ORDER BY salary;

CREATE INDEX idx_salary
ON Employee5(salary);

SELECT *
FROM Employee5
WHERE salary = 90000;




-- ques:
-- B+ Tree is better than binary tree because it remains balanced, has smaller height, reduces disk access, supports fast range queries, and provides efficient O(log n) search for large databases.