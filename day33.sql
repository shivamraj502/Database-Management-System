use db;

-- ✅ Day 33 — CASE Statements

-- Concepts:

-- CASE WHEN
-- Conditional logic inside SQL

-- Practice:

-- Classify salary as:

-- High
-- Medium
-- Low

create table employee2(
name varchar(10),
phone varchar(10)
,sal int
);

insert into employee2 values("he",1111111111,44),("hello",2222222222,33);
select * from employee2;


select 
sal,
phone,
case 
	when sal > 40 then 'high'
    when sal >3 then 'medium'
    else 'low'
end as level
from employee2;