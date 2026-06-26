use db;

create table student(
    name varchar(15),
    id int,
    sem int
);

insert into student() values("shivam",221,7),("shi",332,7),("shiva",882,7);
select * from student;

/*day88*/

create table student2(
    name varchar(15),
    id int,
    sem int,
    marks int
);

insert into student2() values("shivam",221,7,98),("shi",332,7,88),("shiva",882,7,99),("shivalaya",82,7,78);
select * from student2
where marks >80

order by marks desc
;


/*day89*/
create table join1(
    name varchar(15),
    id int,
    marks int
);

create table join2(
    name varchar(15),
    id int,
    sem int,
    marks int
);

insert into join1() values("shivam",221,98),("shi",332,88),("shiva",882,99),("shivalaya",82,78);
insert into join2() values("shivam",221,7,98),("shi",332,7,88),("shiva",882,7,99),("shivalaya",82,7,78);
insert into join2() values("shivalaya",87,7,78);

select * from 
join1 j1 cross JOIN join2 j2
on j1.id = j2.id
;


/*day90*/
SELECT
count(*) as count,
avg(marks) as average,
sum(marks) as total
from student2
;



-- Day 91 – Subqueries
-- Task:
-- Query inside query
-- 👉 Build:
-- Students with highest marks

select max(marks)
from student2
;

select *
from student2
where marks = (
	select max(marks)
    from student2
)
;

select *
from student2
where marks = (
	select max(marks)
    from student2
    where marks < (select max(marks) from student2)
)
;


-- day103
CREATE TABLE students (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50),
    age INT,
    branch VARCHAR(20)
);

INSERT INTO students(name, age, branch)
VALUES
('Shivam',21,'CSE'),
('Rahul',22,'ISE');

CREATE TABLE courses (
    id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50)
);

INSERT INTO courses(course_name)
VALUES
('DBMS'),
('Java'),
('Python');
