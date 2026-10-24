select sell_date,count(*) as num_sold,product as products
from Activities 
group by sell_date
order by sell_date;