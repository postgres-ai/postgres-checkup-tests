-- NOTICE: current query size (bytes): '80'
INSERT INTO test_schema.order(cnt) select id from generate_series($1, $2) _(id)
