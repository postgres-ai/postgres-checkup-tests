-- queryid: -1953130978734338600
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '332'
with settings as (
 select
 json_object_agg(s.name, s)
 from (
 select *
 from pg_settings s
 where
 name not in ($1, $2, $3)
 order by name) s
), configs as (
 select
 json_object_agg(s.name, s)
 from (select * from pg_config s order by name) s
)
select json_build_object($4, (select * from settings), $5, (select * from configs))
