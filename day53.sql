-- ✅ Day 53 — Shadow Paging

-- Concepts:
-- Shadow copy technique
-- Advantages & disadvantages

-- Practice:
-- Compare WAL vs Shadow Paging.


-- Shadow Paging → Recovery technique where DBMS keeps a shadow copy of database pages and updates changes in new pages instead of overwriting old data.
-- Shadow Copy Technique → Original pages remain unchanged, and modified pages are written separately until transaction commits.
-- Advantages → Easy recovery, no need for logs, fast rollback.
-- Disadvantages → Extra storage usage, fragmentation, slower for large databases.
-- WAL vs Shadow Paging → WAL uses logs for recovery, while Shadow Paging uses copied pages to restore data after failures.