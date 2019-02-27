-- queryid: -6436803300980800000
with global_settings as (
 select
 json_object_agg(s.name, s)
 from (
 select *
 from pg_settings
 where (
 name ~ $1
 or name in (
 $2,
 $3
 )
 )
 order by name
 ) s
), table_settings as (
 select
 json_object_agg(s.namespace || $4 || s.relname, s)
 from
 (select
 (select nspname from pg_namespace where oid = relnamespace)
 namespace,
 relname,
 reloptions
 from pg_class
 where reloptions::text ~ $5
 order by namespace, relname
 ) s
)
select json_build_object($6, (select * from global_settings), $7, (select * from table_settings))
