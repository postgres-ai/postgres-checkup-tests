-- queryid: 4227063200314075600
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '95'
create table public.t_with_redundant_ref_idx as select i from generate_series(1, 1000000) _(i)
