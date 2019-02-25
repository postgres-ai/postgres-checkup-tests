-- queryid: -837353630728469800
create table t_slw_q as select id::int8 from generate_series(0, 10000000) _(id)
