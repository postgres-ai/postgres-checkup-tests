-- NOTICE: current query size (bytes): '83'
create table t_with_unused_index as select i from generate_series(1, 1000000) _(i)
