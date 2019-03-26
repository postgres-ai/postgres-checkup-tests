-- queryid: -2089766995098017300
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '3381'
with data as (
 with fk_actions ( code, action ) as (
 values ($1, $2),
 ($3, $4),
 ($5, $6),
 ($7, $8),
 ($9, $10)
 ), fk_list as (
 select
 pg_constraint.oid as fkoid, conrelid, confrelid as parentid,
 conname,
 relname,
 nspname,
 fk_actions_update.action as update_action,
 fk_actions_delete.action as delete_action,
 conkey as key_cols,
 pg_class.relpages
 from pg_constraint
 join pg_class on conrelid = pg_class.oid
 join pg_namespace on pg_class.relnamespace = pg_namespace.oid
 join fk_actions as fk_actions_update on confupdtype = fk_actions_update.code
 join fk_actions as fk_actions_delete on confdeltype = fk_actions_delete.code
 where contype = $11 and pg_class.relpages > $12
 ), fk_attributes as (
 select fkoid, conrelid, attname, attnum
 from fk_list
 join pg_attribute on conrelid = attrelid and attnum = any(key_cols)
 order by fkoid, attnum
 ), fk_cols_list as (
 select fkoid, array_agg(attname) as cols_list
 from fk_attributes
 group by fkoid
 ), index_list as (
 select
 indexrelid as indexid,
 pg_class.relname as indexname,
 indrelid,
 indkey,
 indpred is not null as has_predicate
 from pg_index
 join pg_class on indexrelid = pg_class.oid
 where indisvalid and pg_class.relkind = $13 and pg_class.relpages > $14
 ), fk_index_match as (
 select
 fk_list.*,
 indexid,
 indexname,
 indkey::int[] as indexatts,
 has_predicate,
 array_length(key_cols, $15) as fk_colcount,
 array_length(indkey,$16) as index_colcount,
 relpages,
 cols_list
 from fk_list
 join fk_cols_list using (fkoid)
 left join index_list on
 conrelid = indrelid
 and (indkey::int2[])[$17:(array_length(key_cols,$18) -$19)] operator(pg_catalog.@>) key_cols
 ), fk_perfect_match as (
 select fkoid
 from fk_index_match
 where
 (index_colcount - $20) <= fk_colcount
 and not has_predicate
 ), fk_index_check as (
 select $21 as issue, *, $22 as issue_sort
 from fk_index_match
 where indexid is null
 union all
 select $23 as issue, *, $24
 from fk_index_match
 where
 indexid is not null
 and fkoid not in (select fkoid from fk_perfect_match)
 ), parent_table_stats as (
 select
 fkoid,
 tabstats.relname as parent_name,
 (n_tup_ins + n_tup_upd + n_tup_del + n_tup_hot_upd) as parent_writes,
 fk_list.relpages
 from pg_stat_user_tables as tabstats
 join fk_list on relid = parentid
 ), fk_table_stats as (
 select
 fkoid,
 (n_tup_ins + n_tup_upd + n_tup_del + n_tup_hot_upd) as writes,
 seq_scan as table_scans,
 relpages
 from pg_stat_user_tables as tabstats
 join fk_list on relid = conrelid
 )
 select
 nspname as schema_name,
 relname as table_name,
 conname as fk_name,
 issue,
 conrelid,
 writes,
 table_scans,
 parent_name,
 parentid,
 parent_writes,
 cols_list,
 indexid
 from fk_index_check
 join parent_table_stats using (fkoid)
 join fk_table_stats using (fkoid)
 where
 fk_table_stats.relpages > $25
 and (
 writes > $26
 or parent_writes > $27
 or parent_table_stats.relpages > $28
 )
 order by issue_sort, fk_table_stats.relpages desc, table_name, fk_name
),
num_data as (
 select row_number() over () num,
 schema_name,
 table_name,
 fk_name,
 issue,
 round(pg_relation_size(conrelid)/($29^$30)::numeric) as table_mb,
 writes,
 table_scans,
 parent_name,
 round(pg_relation_size(parentid)/($31^$32)::numeric) as parent_mb,
 parent_writes,
 cols_list,
 pg_get_indexdef(indexid) as indexdef
 from data limit $33
)
select json_object_agg(num_data.num, num_data) from num_data
