use db;

create table employee(
name varchar(10) not null,
empId int primary key,
address varchar(10) unique,
age int
);

insert into employee values("hewo",101,"patna",18),("heo",1001,"patn",19);

select * from employee
where age>18;