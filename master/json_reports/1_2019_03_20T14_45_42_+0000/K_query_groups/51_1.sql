-- queryid: 5419102683897635000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '38'
delete from bloated where i % $1 = $2
