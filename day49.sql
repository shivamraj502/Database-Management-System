-- ✅ Day 49 — Deadlocks

-- Concepts:
-- Deadlock conditions
-- Prevention
-- Detection
-- Recovery

-- Practice:
-- Real world deadlock example.


-- Deadlock occurs when two or more transactions wait for each other’s resources forever, so none of them can proceed.
-- DBMS handles this using prevention, detection, and recovery techniques to avoid system blockage and maintain smooth execution. 💯


-- Deadlock Conditions
-- Deadlock happens when these 4 conditions exist:
-- Mutual Exclusion
-- Hold and Wait
-- No Preemption
-- Circular Wait


-- Prevention
-- Methods to stop deadlock before it happens.
-- Examples:
-- Prevent circular wait
-- Force resource ordering
-- Goal:
-- Avoid deadlock


-- Detection
-- DBMS checks whether deadlock has occurred.
-- Common method:
-- Wait-for graph
-- If graph has cycle → Deadlock detected 


-- Recovery
-- Action taken after deadlock detection.
-- Methods:
-- Abort one transaction
-- Rollback transaction
-- Restart transaction
-- Goal:
-- Break deadlock


-- One-line revision
-- Deadlock Conditions → Requirements for deadlock
-- Prevention → 		Avoid deadlock before it occurs
-- Detection →			Find deadlock
-- Recovery → 			Resolve deadlock