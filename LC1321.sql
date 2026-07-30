with cte as
(
select visited_on, sum(amount) as total_amount
from Customer
group by visited_on
),

cte2 as
( 
select visited_on, sum(total_amount) 
over(order by visited_on rows between 6 preceding and current row)
as amount,
round(avg(total_amount) over(order by visited_on rows between 6 preceding and current row),2) 
as average_amount
from cte
)

select *
from cte2
where visited_on >= (
    select visited_on from cte2 order by visited_on limit 1
) + interval 6 day
order by visited_on;



-- select 
--     c1.visited_on,
--     sum(c2.amount) as amount,
--     round(sum(c2.amount) / 7, 2) as average_amount
-- from Customer c1
-- join Customer c2
-- on datediff(c1.visited_on, c2.visited_on) between 0 and 6
-- group by c1.visited_on
-- having count(distinct c2.visited_on) = 7
-- order by c1.visited_on;