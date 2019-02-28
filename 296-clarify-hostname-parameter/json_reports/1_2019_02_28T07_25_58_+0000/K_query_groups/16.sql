-- queryid: -7718336515547744000
create table t_fk_1 as select id::int8 from generate_series(0, 1000000) _(id)
