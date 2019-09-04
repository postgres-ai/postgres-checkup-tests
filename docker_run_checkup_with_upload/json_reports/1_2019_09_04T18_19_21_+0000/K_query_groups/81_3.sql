-- queryid: -6446764050704029000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '75'
create table t_with_bloat as select i from generate_series(1, 1000000) _(i)
