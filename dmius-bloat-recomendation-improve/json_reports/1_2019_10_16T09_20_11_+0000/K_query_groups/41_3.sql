-- queryid: -5095830603244401000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '85'
create table t_with_redundant_index as select i from generate_series(1, 1000000) _(i)
