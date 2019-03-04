-- NOTICE: current query size (bytes): '82'
create table t_red_fk_1 as select id::int8 from generate_series(0, 1000000) _(id)
