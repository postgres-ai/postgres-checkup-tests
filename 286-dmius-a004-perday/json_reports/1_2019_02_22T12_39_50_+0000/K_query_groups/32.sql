-- queryid: -173255943013310720
create table t_with_invalid_index as select i from generate_series(1, 1000000) _(i)
