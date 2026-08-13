select * 
from Stadium s1, Stadium s2, Stadium s3
where s1.id+1 = s2.id and s1.people > 100 and s2.id+1 = s3.id and s2.people > 100 and s3.id+1 = s4.id and s4.people > 100 
order by visit_date asc
;


select diff
from t2
where
(
    select * ,id - row_number() over(order by id) as diff
    from Stadium 
    where people >= 100
)as t2
group by diff;


with cte2 as
(
    select * ,id - row_number() over(order by id) as diff
    from Stadium 
    where people >= 100
)

select id, visit_date, people
from cte2
where diff in
(
select diff
from cte2
group by diff
having count(*) >= 3
)
;