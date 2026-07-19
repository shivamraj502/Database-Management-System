# Write your MySQL query statement below
select Department, Employee, Salary
from
    (
    select d.name as Department,
    e.name as Employee,
    e.salary as Salary,
    dense_rank() over (partition by e.departmentId order by e.salary desc) as rnk
    from employee e
    left join department d
    on e.departmentId = d.id
) ranked    -- /ranke(any name)    -- ← this is the required alias
where rnk <= 3;
-- group by d.name  -- Mistakes
-- limit 3
