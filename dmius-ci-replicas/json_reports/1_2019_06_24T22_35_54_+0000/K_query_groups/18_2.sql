-- queryid: -8065068459892479000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '117'
SELECT pg_catalog.pg_tablespace_location(oid)
 FROM pg_catalog.pg_tablespace
 WHERE pg_tablespace_location(oid) ~ $1
