-- queryid: 4425566965367016000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '38'
delete from bloated where i % $1 = $2
