create database db;
use db;

create table emp(
emp_id int,
emp_name varchar(15),
salary double,
dep_id int
);

insert into emp value(101,"ram",100000,1),(102,"raam",100000,2),(103,"rama",100000,3),(104,"aram",100000,4),(105,"aaram",100000,5),(106,"raaam",100000,6);
insert into emp value(107,"aam",700000,1),(108,"aaaam",800000,null),(109,"jama",900000,2);

create table dept(
dept_id int,
dept_name varchar(15),
location varchar(15)
);

insert into dept value(1,"IT","bengaluru"),(2,"HR","mumbai"),(3,"FINANCE","delhi"),(4,"MARKETING","bengaluru");
insert into dept value(5,"IiT","patna");

select *
from emp
inner join dept on emp.dep_id = dept.dept_id;

select *
from emp
left join dept on emp.dep_id = dept.dept_id;

select *
from emp
right join dept on emp.dep_id = dept.dept_id;

-- select *
-- from emp
-- full join dept on emp.dep_id = dept.dept_id;

SELECT * 
FROM emp
LEFT JOIN dept ON emp.dep_id = dept.dept_id
UNION
SELECT * 
FROM emp
RIGHT JOIN dept ON emp.dep_id = dept.dept_id;

SELECT * 
FROM emp
JOIN dept ON emp.dep_id = dept.dept_id;

SELECT * 
FROM emp
cross JOIN dept;