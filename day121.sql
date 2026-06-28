-- Day 121 — Most Asked DBMS Questions (Part 1)

-- Concepts:
-- DBMS vs RDBMS
-- Keys types
-- ER vs Relational model
-- Data independence

-- Practice:
-- Explain each in simple words.
-- SQL:
-- Find duplicate emails in table.

select email as Email
from Person
group by email
having count(*) > 1;