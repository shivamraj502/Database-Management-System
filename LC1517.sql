# Write your MySQL query statement below
-- select user_id, name, mail
-- from Users 
-- where mail = '^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode[.]com$';

-- select user_id, name, mail
-- from Users 
-- where mail regexp '^[A-Za-z][A-Za-z0-9.\_\-]*@leetcode.com$';

-- select user_id, name, mail
-- from Users 
-- where mail regexp '^[A-Za-z][A-Za-z0-9_\.\-]*@leetcode.com$';

-- select user_id, name, mail
-- from Users 
-- where mail regexp '^[A-Za-z][A-Za-z0-9.\_\-]*@leetcode[.]com$';

-- select *
-- from Users 
-- where mail regexp '^[A-Za-z][A-Za-z0-9.\_\-]*@leetcode[.][a-z]$';

-- select *
-- from Users 
-- where mail regexp binary '^[A-Za-z][A-Za-z0-9._-]*@leetcode[.]com$';

-- SELECT user_id, name, mail
-- FROM Users
-- WHERE mail REGEXP BINARY '^[A-Za-z][A-Za-z0-9_-]*@leetcode[.]com$';

-- SELECT user_id, name, mail
-- FROM Users
-- WHERE regexp_like(mail, '^[A-Za-z][A-Za-z0-9_-]*@leetcode[.]com$','c');

SELECT user_id, name, mail
FROM Users
WHERE REGEXP_LIKE(
    mail,
    '^[A-Za-z][A-Za-z0-9._-]*@leetcode[.]com$',
    'c'
);


-- ## SQL REGEXP_LIKE() — Quick Notes

-- ### 1. SQL Keywords
-- - `SELECT` — Select columns to display.
-- - `FROM` — Specify the table.
-- - `WHERE` — Filter rows based on a condition.

-- ### 2. Function
-- - `REGEXP_LIKE()` — Checks whether text matches a regular expression.

-- ### 3. Changeable Names
-- - `Users` — Table name; change to your table name.
-- - `user_id, name, mail` — Column names; change to existing columns.
-- - First `mail` inside `REGEXP_LIKE()` — Column to validate.

-- ### 4. Regular Expression
-- - `^` — Start of string.
-- - `[A-Za-z]` — First character must be a letter.
-- - `[A-Za-z0-9._-]` — Allowed characters: letters, digits, `.`, `_`, `-`.
-- - `*` — Zero or more repetitions of the preceding group.
-- - `@leetcode` — Must contain this exact text.
-- - `[.]` — Literal dot (`.`).
-- - `com` — Must end with `com` after the dot.
-- - `$` — End of string.

-- ### 5. Match Option
-- - `'c'` — Case-sensitive matching.

-- ### 6. Syntax Symbols
-- - `()` — Enclose function arguments.
-- - `,` — Separate columns or arguments.
-- - `'...'` — Enclose string literals.
-- - `;` — Ends the SQL statement; optional in some tools.

-- ### Quick Revision
-- - Keywords and function names: keep their required spelling.
-- - Table and column names: change according to your database.
-- - Regex pattern: change according to the required validation rule.
-- - `'c'`: use for case-sensitive matching.