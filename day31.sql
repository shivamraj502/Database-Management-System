use db;

-- 📅 Week 5 — Advanced SQL Mastery
-- ✅ Day 31 — SQL Constraints Deep Dive

-- Concepts:
-- PRIMARY KEY vs UNIQUE
-- FOREIGN KEY
-- CASCADE operations
-- ON DELETE / ON UPDATE

-- Practice:
-- Create tables with foreign key and cascade delete.

create table student5(
	student_id int ,
	name varchar(10),
    course_id int primary key
    );
    
create table course(
	course_id int primary key,
	cname varchar(10),
    foreign key (course_id) references student5(course_id)
    );
    

-- 1251
# Write your MySQL query statement below
select p.product_id, 
round(ifnull(sum(u.units * p.price)/sum(u.units),0),2) as average_price
from Prices p
left join UnitsSold u
on p.product_id = u.product_id
and u.purchase_date Between p.start_date and p.end_date
group by p.product_id;

-- 175
# Write your MySQL query statement below
select p.firstName,p.lastName,a.city,a.state
from Person p
left join Address a
on p.personId = a.personId;
    
    