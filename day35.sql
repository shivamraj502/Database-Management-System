-- ✅ Day 35 — Window Functions (Very Important for FAANG)

-- Concepts:

-- ROW_NUMBER()
-- RANK()
-- DENSE_RANK()
-- PARTITION BY

-- Practice:

-- Find top 3 salaries per department.

use db;
create table employee3(
name varchar(10),
phone varchar(10)
,sal int
);

insert into employee3 values("he",1111111111,44),("hello",2222222222,33);
select * from employee3;



SELECT name, sal,
ROW_NUMBER() OVER(ORDER BY sal DESC) AS row_num
FROM employee3;


SELECT name, sal,
RANK() OVER(ORDER BY sal DESC) AS rank_num
FROM employee3;

SELECT name, salary,
DENSE_RANK() OVER(ORDER BY salary DESC) AS dense_rank_num
FROM Employee;


SELECT name, dept, salary,
RANK() OVER(PARTITION BY dept ORDER BY salary DESC) AS rank_num
FROM Employee;