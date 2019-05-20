-- queryid: -678916242629262500
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '83'
create table t_with_unused_index as select i from generate_series(1, 1000000) _(i)
