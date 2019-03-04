-- NOTICE: current query size (bytes): '38'
delete from bloated where i % $1 = $2
