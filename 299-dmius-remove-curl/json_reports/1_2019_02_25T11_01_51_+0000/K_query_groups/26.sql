-- queryid: 8726250694613120000
create table t_rar_q as select id, (random() * 1000000)::int8 as t_dat from generate_series(1, 1000000) _(id)
