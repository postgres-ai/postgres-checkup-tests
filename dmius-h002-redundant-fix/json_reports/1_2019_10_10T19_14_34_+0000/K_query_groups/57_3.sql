-- queryid: 7567018294079165000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '37'
delete from bloated where i % $1 = $2
