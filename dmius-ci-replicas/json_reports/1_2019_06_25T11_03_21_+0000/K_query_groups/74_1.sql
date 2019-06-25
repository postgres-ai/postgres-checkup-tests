-- queryid: -2951921325210440700
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '70'
create table bloated as select i from generate_series(1, 100000) _(i)
