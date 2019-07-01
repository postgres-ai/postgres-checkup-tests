-- queryid: -6797651002030005000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '62'
select setting::integer / $1 from pg_settings where name = $2
