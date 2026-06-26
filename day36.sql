-- 🔁 Day 36 — Revision SQL Advanced

-- Solve 8–10 problems using:

-- GROUP BY
-- WINDOW functions
-- CASE


use db;
-- leetcode 183
# Write your MySQL query statement below
select name as Customers
from Customers c
left join Orders o
on c.id = o.customerId
where customerId is null;







3. Customer Who Visited but Did Not Make Any Transactions (1581)

Concept:

LEFT JOIN
GROUP BY

Difficulty: ⭐ Easy

4. Average Selling Price (1251)

Concept:

GROUP BY
Aggregate
JOIN

Difficulty: ⭐ Medium

5. Immediate Food Delivery II

Concept:

GROUP BY
Aggregates

Difficulty: ⭐ Medium

CASE Problems
6. Exchange Seats (626)

Concept:

CASE WHEN

Difficulty: ⭐ Medium

7. Tree Node (608)

Concept:

CASE
Conditional logic

Difficulty: ⭐ Medium

8. Sales Person

Concept:

CASE / Filtering logic

Difficulty: ⭐ Medium

Window Function Problems
9. Department Highest Salary (184)

Concept:

RANK / DENSE_RANK
GROUP BY

Difficulty: ⭐ Medium

10. Department Top Three Salaries (185)

Concept:

DENSE_RANK
PARTITION BY

Difficulty: ⭐ Hard

11. Rank Scores (178)

Concept:

DENSE_RANK

Difficulty: ⭐ Medium

12. Consecutive Numbers (180)

Concept:

Window functions / Self Join

Difficulty: ⭐ Medium

Mixed Advanced Problems
13. Second Highest Salary (176)

Concept:

Ranking
Aggregate

Difficulty: ⭐ Easy

14. Nth Highest Salary (177)

Concept:

Ranking
Functions

Difficulty: ⭐ Medium

15. Human Traffic of Stadium

Concept:

Window Functions
Advanced logic

Difficulty: ⭐ Hard

Best Revision Order (My Suggestion)
Easy

182 → 1581 → 176

Medium

1251 → 626 → 178 → 184

Hard

185 → 180 → 15

Must Solve for FAANG SQL

Priority:

🔥 1251
🔥 178
🔥 184
🔥 185
🔥 180

These are very valuable for interviews. 💪