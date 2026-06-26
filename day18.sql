create database day18;
use day18;

create table student(
name varchar(15),
marks int
);

insert into student value ("a",10),("b",20),("c",30),("d",40);

select * 
from student;

select max(marks) as maxMarks
from student;

select name, marks as thirdMaxMarks
from student
where marks= (select max(marks) from student
where marks <(select max(marks) from student
where marks <(select max(marks) from student)));

-- select max(select max(marks) from student);


-- Question 1:
-- Write a query to find the names of all employees who work in the departments named 'IT' or 'HR'.
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Insert into Departments
INSERT INTO Departments VALUES 
(1, 'IT'),
(2, 'HR'),
(3, 'Sales'),
(4, 'Marketing'),
(5, 'Finance');

-- Insert into Employees
INSERT INTO Employees VALUES 
(101, 'Amit Sharma',     75000, 1),
(102, 'Priya Singh',     65000, 1),
(103, 'Rahul Verma',     82000, 3),
(104, 'Sneha Gupta',     48000, 2),
(105, 'Vikas Patel',     92000, 1),
(106, 'Anjali Mehta',    55000, 4),
(107, 'Rohit Kumar',     68000, 3),
(108, 'Neha Sharma',     45000, 2),
(109, 'Suresh Reddy',    125000, 5),
(110, 'Kavita Joshi',    72000, 4),
(111, 'Arjun Rao',       89000, 3),
(112, 'Pooja Malhotra',  38000, 2);

select * from departments;
select * from employees;

-- select name 
-- from employees
-- where department_name in it or hr;

-- select name 
-- from employees
-- where department_id in
-- (select department_id
-- from departments
-- where department_name in ('it' , 'hr'));

select name 
from employees
where department_id in
(select department_id
from departments
where department_name in ('it' , 'hr'));


-- Question 2:
-- Write a query to find the names of customers who have placed at least one order with amount greater than 5000.
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(20)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    amount DECIMAL(10,2)
);

-- Insert Customers
INSERT INTO customers VALUES 
(1, 'Ram'),
(2, 'Shyam'),
(3, 'Amit'),
(4, 'Sita'),
(5, 'Gita');

-- Insert Orders
INSERT INTO orders VALUES 
(101, 1, 4500),
(102, 1, 7200),
(103, 2, 3000),
(104, 3, 8500),
(105, 3, 4200),
(106, 4, 9200),
(107, 5, 1500);

select * from customers;
select * from orders;

-- WRONG QUERY
-- select name 
-- from customers
-- where customers_id =(
-- select customers_id 
-- from orders 
-- where amount in ( amount>5000)
-- );

-- CORRECT 
select customer_name 
from customers
where customer_id in (
select customer_id 
from orders 
where amount > 5000
);


-- 2. EXISTS Operator (2 Questions)
-- Question 3:
-- Write a query to find the names of all employees who have a salary greater than 60000 and belong to a department that actually exists in the Departments table (use correlated subquery with EXISTS).

-- Create Tables
CREATE TABLE emp (
    emp_id INT,
    emp_name VARCHAR(20),
    salary INT,
    dep_id INT
);

CREATE TABLE dept (
    dept_id INT,
    dept_name VARCHAR(20)
);

-- Insert Data into emp
INSERT INTO emp VALUES 
(101, 'Ram',    55000, 1),
(102, 'Shyam',  75000, 2),
(103, 'Aman',   65000, 3),
(104, 'Rohan',  90000, 1),
(105, 'Sita',   45000, 5),
(106, 'Gita',   82000, 4),
(107, 'Mohan',  72000, NULL);

-- Insert Data into dept
INSERT INTO dept VALUES 
(1, 'IT'),
(2, 'HR'),
(3, 'Finance'),
(4, 'Marketing');


select * from emp;
select * from dept;

-- select *,emp_name 
-- from emp
-- where salary > 60000;

select *,emp_name 
from emp
where salary > 60000
and exists (
select 1
from dept
where emp.dep_id=dept.dept_id)
;



-- Question 4:
-- Write a query to find the names of all customers who have placed at least one order (use EXISTS).

-- Customers Table
CREATE TABLE customers2 (
    customer_id INT,
    customer_name VARCHAR(20)
);

INSERT INTO customers2 VALUES 
(1, 'Shivam'),
(2, 'Rahul'),
(3, 'Priya'),
(4, 'Amit'),
(5, 'Neha');

-- Orders Table
CREATE TABLE orders2 (
    order_id INT,
    customer_id INT,
    amount INT
);

INSERT INTO orders2 VALUES 
(101, 1, 500),
(102, 1, 1200),
(103, 3, 800),
(104, 2, 300);

-- select * 
-- from customers2
-- where customer_id and exist(
-- select 1 
-- from orders
-- where customers2.customer_id = orders2.order_id
-- );

select * 
from customers2
where exists(
select 1 
from orders2
where customers2.customer_id =orders2.customer_id
);



-- ANY / ALL Operators (2 Questions)
-- Question 5 (ANY):
-- Write a query to find the names and salary of employees whose salary is greater than the salary of any employee in the 'Sales' department.
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Create Employees Table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- Insert into Departments
INSERT INTO Departments VALUES 
(1, 'IT'),
(2, 'HR'),
(3, 'Sales'),
(4, 'Marketing'),
(5, 'Finance');

-- Insert into Employees
INSERT INTO Employees VALUES 
(101, 'Amit Sharma',     75000, 1),
(102, 'Priya Singh',     65000, 1),
(103, 'Rahul Verma',     82000, 3),
(104, 'Sneha Gupta',     48000, 2),
(105, 'Vikas Patel',     92000, 1),
(106, 'Anjali Mehta',    55000, 4),
(107, 'Rohit Kumar',     68000, 3),
(108, 'Neha Sharma',     45000, 2),
(109, 'Suresh Reddy',    125000, 5),
(110, 'Kavita Joshi',    72000, 4),
(111, 'Arjun Rao',       89000, 3),
(112, 'Pooja Malhotra',  38000, 2);

select * from departments;
select * from employees;

-- select name,salary 
-- from employees
-- where salary > (select min(salary) from employees where department_id = 3);
select name,salary 
from employees
where salary > any (select salary from employees where department_id = 3);




-- Question 6 (ALL):
-- Write a query to find the names and salary of employees whose salary is greater than the salary of all employees in the 'Marketing' department.
-- ,give me very simple table , query and data to insert in table
select name,salary 
from employees
where salary > all (select salary from employees where department_id = 4);