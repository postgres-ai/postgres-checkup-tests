-- NOTICE: current query size (bytes): '109'
create table t_fk_2 as select id, (random() * 1000000)::int8 as t1_id from generate_series(1, 1000000) _(id)
