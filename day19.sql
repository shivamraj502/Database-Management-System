use db;

-- Employees
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    department_id INT
);

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

select * from employees;

-- Create a View
CREATE VIEW emp_view AS
SELECT 
    employee_id,
    name,
    salary,
    department_id
FROM Employees;

select * from emp_view;

-- Better View with formatted salary and department info
CREATE VIEW employee_details AS
SELECT 
    employee_id,
    name AS Employee_Name,
    salary AS Salary,
    department_id AS Dept_ID,
    CONCAT('₹', FORMAT(salary, 2)) AS Salary_Formatted
FROM Employees;

select * from employee_details;