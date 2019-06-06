-- queryid: 2527906257619262000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '126'
create table t_with_redundant_idx as select id, id as f1, id as f2, id as f3, id as f4 from generate_series(1, 1000000) _(id)
