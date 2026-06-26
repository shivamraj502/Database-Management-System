use db;

/*✅ Day 23 — Normalization Part 1

Concepts
1NF
2NF
Practice
Convert table to 2NF.
*/

CREATE TABLE student4 (
    student_id INT,
    name VARCHAR(50),
    courses VARCHAR(100)
);

INSERT INTO student4 VALUES
(101, 'Shivam', 'DBMS,OS'),
(102, 'Rahul', 'CN,OOP');

select * from student4;

