select user_id,
concat (upper(left(name,1)),lower(right(name,length(name)-1))) as name
from Users
order by user_id  
;

-- select user_id,
-- concat (upper(left(name,1)),lower(name,2)) as name
-- from Users
-- order by user_id  
-- ;


-- LENGTH(str) — returns length of string in bytes
-- CHAR_LENGTH(str) — returns length of string in characters
-- CONCAT(str1, str2, ...) — joins multiple strings together
-- CONCAT_WS(sep, str1, str2, ...) — joins strings with a separator
-- LEFT(str, n) — returns first n characters
-- RIGHT(str, n) — returns last n characters
-- SUBSTRING(str, start, len) — extracts part of a string (also SUBSTR)
-- UPPER(str) — converts to uppercase
-- LOWER(str) — converts to lowercase
-- TRIM(str) — removes leading/trailing spaces
-- LTRIM(str) — removes leading spaces only
-- RTRIM(str) — removes trailing spaces only
-- REPLACE(str, from_str, to_str) — replaces occurrences of a substring
-- REVERSE(str) — reverses the string
-- REPEAT(str, n) — repeats string n times
-- LPAD(str, len, pad_str) — pads string on the left to a given length
-- RPAD(str, len, pad_str) — pads string on the right to a given length
-- INSTR(str, substr) — returns position of first occurrence of substring
-- LOCATE(substr, str, pos) — finds position of substring (optionally starting from pos)
-- STRCMP(str1, str2) — compares two strings (returns -1, 0, or 1)

-- Bonus (very common in LeetCode problems):

-- LIKE — pattern matching with % and _ wildcards
-- REGEXP — pattern matching using regular expressions