-- queryid: 4276799848214763500
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '87'
select
 datname
 from pg_database
 where datname not in ($1, $2, $3)
 order by datname
