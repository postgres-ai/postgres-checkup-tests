-- queryid: 591824813582986000
create table t_red_fk_2 as select id, (random() * 1000000)::int8 as r_t1_id from generate_series(1, 1000000) _(id)
