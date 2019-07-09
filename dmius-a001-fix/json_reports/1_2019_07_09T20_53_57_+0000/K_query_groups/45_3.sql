-- queryid: -5601151487238124000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '82'
create table t_red_fk_1 as select id::int8 from generate_series(0, 1000000) _(id)
