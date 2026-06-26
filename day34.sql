-- ✅ Day 34 — Advanced GROUP BY

-- Concepts:

-- Multiple column grouping
-- HAVING with conditions
-- Filtering aggregates

-- Practice:

-- Find departments with avg salary > 60000.

use db;

SELECT dept, city, AVG(salary)
FROM Employee
GROUP BY dept, city;

SELECT dept, AVG(salary)
FROM Employee
GROUP BY dept
HAVING AVG(salary) > 60000;


SELECT dept, COUNT(*) AS total
FROM Employee
GROUP BY dept
HAVING COUNT(*) > 5;