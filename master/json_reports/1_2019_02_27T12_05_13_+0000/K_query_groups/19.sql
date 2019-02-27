-- queryid: -2951921325210440700
create table bloated as select i from generate_series(1, 100000) _(i)
