-- NOTICE: current query size (bytes): '76'
create table t_with_bloat as select i from generate_series(1, 1000000) _(i)
