/*🧠 Day 21 — SQL Mock Interview

Practice:

Second highest salary
Duplicate records
Department max salary
*/

use db;

create table student3(
    name varchar(15),
    id int,
    sem int,
    marks int
);

insert into student3() values("shivam",221,7,98),("shi",332,7,88),("shiva",882,7,99),("shivalaya",82,7,78);

-- 1.
select max(marks) 
from student3
where marks < (
select max(marks) 
from student3
)
;

-- 2.
select marks
from student3
group by marks
having count(*) > 1
;

-- 3
select dept_id,max(salary) as max_sal
from employee
group by dept_id;