-- queryid: -8799259724768328000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '475'
with data as (
 select
 ae.name,
 installed_version,
 default_version,
 case when installed_version <> default_version then $1 end as is_old
 from pg_extension e
 join pg_available_extensions ae on extname = ae.name
 order by ae.name
 ), withsettins as (
 select
 data.*,
 (select json_object_agg(name, setting)
 from pg_settings
 where name ~ data.name) as settings from data
 order by name
 )
 select json_object_agg(withsettins.name, withsettins) as json from withsettins
