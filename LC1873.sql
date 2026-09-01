-- select employee_id, salary as bonus ,
-- case 
--     when id % 2 not LIKE 0 or nameCharAt(0) not like 'M' then 0
--     else salary
-- from Employees;
-- id %2 != 0 or charAt[0] of name != M then bonus =0


-- select 
-- sal,
-- phone,
-- case 
-- 	when sal > 40 then 'high'
--     when sal >3 then 'medium'
--     else 'low'
-- end as level
-- from employee2;

select employee_id,
case 
    when employee_id % 2 = 0 or left(name,1) = 'M' then 0
    else salary
end as bonus
from Employees
order by employee_id
;