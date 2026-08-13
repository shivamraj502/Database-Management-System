-- from cft as t1
-- (

-- )

-- select count(*) as total
-- from ( 
-- select distinct(player_id)
-- from Activity
-- ) as table2
-- ;

select round(count(distinct player_id) / (select count(distinct player_id) from Activity) , 2) as fraction
from Activity
where (player_id,date_sub(event_date, interval 1 day)) in (
select player_id, min(event_date) as dateMin
from Activity
group by player_id
);

