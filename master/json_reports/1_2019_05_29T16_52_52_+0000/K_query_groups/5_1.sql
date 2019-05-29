-- queryid: -4833461161022857000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '1546'
with overrided_tables as (
 select
 pc.oid as table_id,
 pn.nspname as scheme_name,
 pc.relname as table_name,
 pc.reloptions as options
 from pg_class pc
 join pg_namespace pn on pn.oid = pc.relnamespace
 where reloptions::text ~ $1
), data as (
 select
 coalesce(nullif(schemaname || $2, $3), $4) || c.relname as "relation",
 c.relkind,
 now() - last_autovacuum as since_last_autovacuum,
 now() - last_vacuum as since_last_vacuum,
 autovacuum_count as av_count,
 vacuum_count as v_count,
 n_tup_ins, 
 n_tup_upd, 
 n_tup_del,
 reltuples::int8 as pg_class_reltuples,
 n_live_tup,
 n_dead_tup,
 round((n_dead_tup::numeric * $5 / nullif(n_dead_tup + n_live_tup, $6))::numeric, $7) as dead_ratio,
 case when ot.table_id is not null then $8 else $9 end as overrided_settings
 from pg_stat_all_tables
 join pg_class c on c.oid = relid
 left join overrided_tables ot on ot.table_id = c.oid
 where reltuples > $10
 order by 13 desc
), num_dead_tuples as (
 select
 row_number() over () num,
 data.*
 from data
), dead_tuples as (
 select json_object_agg(num_dead_tuples."relation", num_dead_tuples) as json from num_dead_tuples
), database_stat as (
 select
 row_to_json(dbstat)
 from (
 select
 sd.stats_reset::timestamptz(0),
 age(
 date_trunc($11,now()),
 date_trunc($12,sd.stats_reset)
 ) as stats_age
 from pg_stat_database sd
 where datname = current_database()
 ) dbstat
)
select
 json_build_object(
 $13,
 (select * from dead_tuples),
 $14,
 (select * from database_stat),
 $15,
 (select count($16) from data where overrided_settings = $17)
 )
