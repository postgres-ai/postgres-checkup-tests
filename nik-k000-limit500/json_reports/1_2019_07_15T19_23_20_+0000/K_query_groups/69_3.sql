-- queryid: -7517313879194011000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '80'
INSERT INTO test_schema.orders(cnt) select id from generate_series($1, $2) _(id)
