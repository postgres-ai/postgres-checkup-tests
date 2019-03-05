-- queryid: 6592396101052552000
INSERT INTO test_schema.order(cnt) select id from generate_series($1, $2) _(id)
