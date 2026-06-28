-- ✅ Day 122 — Most Asked DBMS Questions (Part 2)

-- Concepts:
-- Normalization
-- 1NF, 2NF, 3NF, BCNF
-- Denormalization

-- Practice:
-- When to denormalize?
-- SQL:
-- Second highest salary

use db;
create table Employee7(
id int primary key,
salary int
);

insert into Employee7() values(1,100),(2,200),(3,300);

select salary 
from Employee7
where salary =(
select max(salary) 
from Employee7
where salary < (
select max(salary)
from Employee7)
);


select max(salary) 
from Employee7
where salary < (
select max(salary)
from Employee7);


SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (
    SELECT MAX(salary)
    FROM Employee
);



select (
	select distinct salary
    from Employee7
    order by salary desc
    limit 2 offset 1
)as SecondHighestSalary;

SELECT DISTINCT salary
FROM Employee7
ORDER BY salary DESC
LIMIT 2 OFFSET 1;

                                                -- Mistakes
-- how to find if a table having only one salary
-- use distinct, limit and offset

-- If you want to print 2 values, don’t use scalar subquery:
-- SELECT (subquery)
-- Because that expects only 1 value.

