-- ✅ Day 32 — ALTER & UPDATE

-- Concepts:

-- ALTER TABLE
-- ADD / MODIFY / DROP column
-- UPDATE queries
-- DELETE queries

-- Practice:

-- Update salary with 10% increment for department 5.

use db;

-- ADD Column

-- Adds new column.

-- Syntax
-- ALTER TABLE Employee
-- ADD salary INT;

create table employee(
name varchar(10),
phone varchar(10)
);

insert into employee values("he",1111111111),("hello",2222222222);
select * from employee;

alter table employee
add salary int;


-- MODIFY Column

-- Changes datatype or size.

-- Syntax
-- ALTER TABLE Employee
-- MODIFY name VARCHAR(100);

alter table employee
modify name varchar(100);

select * from employee;

-- DROP Column

-- Removes column.

-- Syntax
-- ALTER TABLE Employee
-- DROP COLUMN phone;


alter table employee
drop salary;

select * from employee;


-- UPDATE Query

-- Used to modify existing records.

-- Syntax
-- UPDATE table_name
-- SET column=value
-- WHERE condition;

UPDATE Employee
SET salary=50000
WHERE emp_id=1;

update employee
set name = 'shiva'
where phone = '1111111111';

select * from employee;

-- 6️⃣ DELETE Query

-- Removes rows from table.

-- Syntax
-- DELETE FROM table_name
-- WHERE condition;

DELETE FROM Employee
WHERE emp_id=2;

-- qus
UPDATE Employee
SET salary = salary * 1.10
WHERE dept_id = 5;