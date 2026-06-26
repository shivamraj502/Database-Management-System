-- ✅ Day 47 — Serializability

-- Concepts:
-- Conflict serializability
-- View serializability
-- Precedence graph

-- Practice:
-- Draw precedence graph.


-- Serializability is a property of concurrent schedules that ensures multiple transactions execute together without errors and produce the same result as a serial schedule. 

-- one-line revision
-- Conflict Serializability → Check by swapping non-conflicts
-- View Serializability → Same result as serial schedule
-- Precedence Graph → Graph to detect serializability 💯

-- A precedence graph is a directed graph used to model dependencies and ordering constraints between entities, such as tasks in parallel computing or transactions in database systems

-- in one line: Serializability
-- Serializability ensures that concurrent transaction execution gives the same result as some serial execution, maintaining database consistency. 💯