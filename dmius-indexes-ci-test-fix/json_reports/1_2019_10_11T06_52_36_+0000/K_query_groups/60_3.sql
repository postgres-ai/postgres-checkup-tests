-- queryid: 5156236148593934000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '95'
create table test_schema.t_with_invalid_index as select i from generate_series(1, 1000000) _(i)
