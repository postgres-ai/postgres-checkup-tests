-- queryid: -1491185255100233500
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '100'
CREATE TABLE test_schema.orders
(
 id serial,
 cnt integer,
 CONSTRAINT orders_pk PRIMARY KEY (id)
)
