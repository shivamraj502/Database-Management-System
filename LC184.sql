use db;

CREATE TABLE Department (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE Employee8 (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    departmentId INT,
    FOREIGN KEY (departmentId) REFERENCES Department(id)
);

INSERT INTO Department VALUES
(1, 'IT'),
(2, 'Sales');

INSERT INTO Employee8 VALUES
(1, 'Joe', 70000, 1),
(2, 'Jim', 90000, 1),
(3, 'Henry', 80000, 2),
(4, 'Sam', 60000, 2),
(5, 'Max', 90000, 1);

SELECT * FROM Department;

SELECT * FROM Employee8;

SELECT departmentId FROM Employee8;

select d.name as Department,e.name as Employee,e.salary as Salary
from Employee8 e
left join Department d
on e.departmentId = d.id
group by e.dapartmentId
having Salary = max(e.salary);

-- SELECT d.name AS Department,
--        e.name AS Employee,
--        e.salary AS Salary
-- FROM Employee e
-- JOIN Department d
-- ON e.departmentId = d.id
-- WHERE (e.departmentId, e.salary) IN (
--     SELECT departmentId, MAX(salary)
--     FROM Employee
--     GROUP BY departmentId
-- );