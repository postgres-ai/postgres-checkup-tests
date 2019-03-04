-- NOTICE: current query size (bytes): '70'
create table bloated as select i from generate_series(1, 100000) _(i)
