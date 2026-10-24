create database d1;
use d1;

create table employee(
empid int primary key,
empname varchar(10),
empdept varchar(10),
empsal double(6,2),
empaddr varchar(10)
);

insert into employee(empid,empname,empdept,empsal,empaddr) values(101,"shivam","dept",1000.21,"kengeri");
select * from employee;

create table customer(
empid int primary key,
empname varchar(10),
empdept varchar(10),
empsal double(6,2),
empaddr varchar(10)
);

show tables;

create table balance(
saving int primary key,
current_ac varchar(10),
withdraw_bal varchar(10),
add_bal double(6,2),
remove_bal varchar(10)
);

create table balance(
saving int primary key,
current_ac int,
withdraw_bal int,
add_bal double(6,2),
remove_bal int
);

show tables;

insert into balance(saving,current_ac,withdraw_bal,add_bal,remove_bal) values(101,120,111,1000.21,144);
select * from balance;

create table employees_data(
empid int primary key,
empname varchar(10),
empdept varchar(10),
empsal decimal(6,2),
empaddr varchar(10),
empCity varchar(15)
);

insert into employees_data(empid,empname,empdept,empsal,empaddr,empcity) values(102,"shivam","dept",1000.21,"kengeri","patna");
insert into employees_data(empid,empname,empdept,empsal,empaddr,empcity) values(103,"shiva","dept",1000.21,"kengeri","patna");
insert into employees_data(empid,empname,empdept,empsal,empaddr,empcity) values(104,"shiam","dept",1000.21,"kengeri","nalande");
insert into employees_data(empid,empname,empdept,empsal,empaddr,empcity) values(105,"ivam","dept",1000.21,"kengeri","patna");
insert into employees_data(empid,empname,empdept,empsal,empaddr,empcity) values(106,"shvam","dept",1000.21,"kengeri","bengaluru");
insert into employees_data(empid,empname,empdept,empsal,empaddr,empcity) values(107,"shim","dept",1000.21,"kengeri","patna");

select count(empid) as totalcount from employees_data
group by empcity;

-- write a query to display the empid ,emp name and loan amount who have taken loans. tables are empl, acct, branch and loan.
create table employees_datas(
empid int primary key,
empname varchar(10),
empdept varchar(10),
empsal decimal(6,2),
empaddr varchar(10),
empCity varchar(15),
emploan decimal(7,2)
);

insert into employees_datas(empid,empname,empdept,empsal,empaddr,empcity,emploan) values(102,"shivam","cs",1000.21,"kengeri","patna",44444);
insert into employees_datas(empid,empname,empdept,empsal,empaddr,empcity,emploan) values(103,"sha","se",1000.21,"ngeri","patna",55555);
insert into employees_datas(empid,empname,empdept,empsal,empaddr,empcity,emploan) values(104,"iam","is",1000.21,"keeri","nalande",88888);
insert into employees_datas(empid,empname,empdept,empsal,empaddr,empcity,emploan) values(105,"ivam","ds",1000.21,"ngeri","patna",89999);
insert into employees_datas(empid,empname,empdept,empsal,empaddr,empcity,emploan) values(106,"hvam","ai",1000.21,"kengi","bengaluru",6666);
insert into employees_datas(empid,empname,empdept,empsal,empaddr,empcity,emploan) values(107,"him","ml",1000.21,"ngeri","patna",98099);

select * from employees_datas;






-- write a query to display the employee name who have more than one account 

CREATE TABLE empl (
    empid INT PRIMARY KEY,
    empname VARCHAR(50)
);

CREATE TABLE acct (
    accid INT PRIMARY KEY,
    empid INT,
    balance INT
);

CREATE TABLE branch (
    branchid INT PRIMARY KEY,
    branchname VARCHAR(50)
);

CREATE TABLE loan (
    loanid INT PRIMARY KEY,
    empid INT,
    loanamount INT
);

INSERT INTO empl VALUES
(101, 'Ravi Kumar'),
(102, 'Anita Sharma'),
(103, 'Suresh Patel'),
(104, 'Neha Verma');

INSERT INTO acct VALUES
(1, 101, 50000),
(2, 101, 75000),
(3, 102, 60000),
(4, 103, 40000),
(5, 103, 30000);

INSERT INTO branch VALUES
(1, 'SBI Delhi'),
(2, 'HDFC Mumbai');

INSERT INTO loan VALUES
(201, 101, 200000),
(202, 103, 150000);

SELECT e.empname, COUNT(a.accid) AS account_count
FROM empl e
JOIN acct a ON e.empid = a.empid
GROUP BY e.empid, e.empname
HAVING COUNT(a.accid) > 1;

SELECT e.empid, e.empname, l.loanamount
FROM empl e
JOIN loan l ON e.empid = l.empid;






-- write a query to show the branch name ,branch city where we have the maximum employee
ALTER TABLE branch
ADD branchcity VARCHAR(50);

UPDATE branch SET branchcity = 'Delhi' WHERE branchid = 1;
UPDATE branch SET branchcity = 'Mumbai' WHERE branchid = 2;

ALTER TABLE empl
ADD branchid INT;

UPDATE empl SET branchid = 1 WHERE empid IN (101,102);
UPDATE empl SET branchid = 2 WHERE empid IN (103,104);

SELECT b.branchname, b.branchcity
FROM branch b
JOIN empl e ON b.branchid = e.branchid
GROUP BY b.branchid, b.branchname, b.branchcity
HAVING COUNT(e.empid) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(empid) AS cnt
        FROM empl
        GROUP BY branchid
    ) x
);




-- write a query to diasplay the employee id ,name , employee city and branch city where the city of the employee and city of the branch is different
ALTER TABLE empl
ADD empcity VARCHAR(50);

UPDATE empl SET empcity = 'Delhi' WHERE empid = 101;
UPDATE empl SET empcity = 'Delhi' WHERE empid = 102;
UPDATE empl SET empcity = 'Ahmedabad' WHERE empid = 103;
UPDATE empl SET empcity = 'Pune' WHERE empid = 104;

SELECT e.empid, e.empname, e.empcity, b.branchcity
FROM empl e
JOIN branch b ON e.branchid = b.branchid
WHERE e.empcity <> b.branchcity;


