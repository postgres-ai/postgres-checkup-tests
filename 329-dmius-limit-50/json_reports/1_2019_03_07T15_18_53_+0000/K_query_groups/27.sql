-- queryid: -8065068459892479000
SELECT pg_catalog.pg_tablespace_location(oid)
 FROM pg_catalog.pg_tablespace
 WHERE pg_tablespace_location(oid) ~ $1
