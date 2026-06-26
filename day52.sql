-- 📅 Week 8 — Recovery + Storage + NoSQL Intro
-- ✅ Day 52 — Database Recovery

-- Concepts:
-- Failure types
-- Log based recovery
-- Checkpoints
-- WAL (Write Ahead Logging)

-- Practice:
-- Explain recovery after crash.

-- Failure Types → Different kinds of failures like transaction failure, system crash, or disk failure that can affect database operations.
-- Log-Based Recovery → Recovery method that uses logs to undo or redo transactions after failure.
-- Checkpoints → Saved recovery points that reduce recovery time after a crash.
-- WAL (Write Ahead Logging) → Technique where changes are first written to log before updating database.
-- Recovery After Crash → DBMS uses logs and checkpoints to restore database to a consistent state after failure. 💯