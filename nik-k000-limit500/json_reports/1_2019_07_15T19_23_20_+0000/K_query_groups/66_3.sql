-- queryid: 6806253729491897000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '84'
INSERT INTO test_schema."orders_A"(cnt) select id from generate_series($1, $2) _(id)
