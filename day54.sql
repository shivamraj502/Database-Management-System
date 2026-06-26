-- ✅ Day 54 — Storage Architecture

-- Concepts:
-- Pages
-- Records
-- Buffer manager
-- Disk vs Memory

-- Practice:
-- Why DB uses pages instead of bytes?


-- Pages → Fixed-size blocks in which DBMS stores and transfers data between disk and memory.
-- Records → Individual rows/data entries stored inside pages.
-- Buffer Manager → Component that manages movement of pages between disk and main memory.
-- Disk vs Memory → Disk provides permanent storage but is slower, while memory is faster but temporary.
-- Why DB uses pages instead of bytes? → Pages improve efficiency by reading/writing data in blocks instead of one byte at a time.