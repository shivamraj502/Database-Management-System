-- 🔁 Day 20 — Revision (Joins + Subqueries)
-- Solve 10 LeetCode SQL problems.
create database db;
use db;

/**
1757 — Recyclable and Low Fat Products
584 — Find Customer Referee
595 — Big Countries
1148 — Article Views I
1683 — Invalid Tweets
1581 — Customer Who Visited but Did Not Make Any Transactions
181 — Employees Earning More Than Their Managers
182 — Duplicate Emails
197 — Rising Temperature
1251 — Average Selling Price

584: -- Q: Why use OR referee_id IS NULL?
-- A: Because NULL != 2 is not TRUE; it returns UNKNOWN.
*/

										/*182*/
create table Person(
	id int,
    email varchar(10)
    );
    
insert into Person() values(1,"a"),(2,"b"),(3,"a");
select email as Email 
from Person
group by email
having count(*) > 1;

/*197*/ -- DATEDIFF() → function
select w1.id
from Weather w1 
join Weather w2
on datediff(w1.recordDate,w2.recordDate) = 1
where w1.temperature > w2.temperature;


/*1251*/  -- Average Selling Price
SELECT p.product_id,
ROUND(IFNULL(SUM(u.units * p.price) / SUM(u.units), 0), 2) AS average_price
FROM Prices p
LEFT JOIN UnitsSold u
ON p.product_id = u.product_id
AND u.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY p.product_id;
