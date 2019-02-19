with data as (
 select
 coalesce(nullif(schemaname || $1, $2), $3) || c.relname as "relation",
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
 round((n_dead_tup::numeric * $4 / nullif(n_dead_tup + n_live_tup, $5))::numeric, $6) as dead_ratio
 from pg_stat_all_tables
 join pg_class c on c.oid = relid
 where reltuples > $7
 order by 13 desc limit $8
), dead_tuples as (
 select json_object_agg(data."relation", data) as json from data
), database_stat as (
 select
 row_to_json(dbstat)
 from (
 select
 sd.stats_reset::timestamptz(0),
 age(
 date_trunc($9,now()),
 date_trunc($10,sd.stats_reset)
 ) as stats_age
 from pg_stat_database sd
 where datname = current_database()
 ) dbstat
)
select
 json_build_object(
 $11,
 (select * from dead_tuples),
 $12,
 (select * from database_stat)
 )
