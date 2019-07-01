-- queryid: -3798127187466836000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '325'
with stat_statements as (
 select json_object_agg(pg_settings.name, pg_settings) as json from pg_settings where name ~ $1
), kcache as (
 select json_object_agg(pg_settings.name, pg_settings) as json from pg_settings where name ~ $2
)
select json_build_object($3, (select * from stat_statements), $4, (select * from kcache))
