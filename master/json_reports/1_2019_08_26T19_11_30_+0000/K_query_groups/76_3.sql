-- queryid: -1861943955546907400
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '101'
create table exp_redundant.t_with_redundant_ref_idx as select i from generate_series(1, 1000000) _(i)
