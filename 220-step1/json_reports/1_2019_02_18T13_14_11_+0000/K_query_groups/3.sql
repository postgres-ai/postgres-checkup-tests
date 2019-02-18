with indexes as (
 

WITH table_scans as (
 SELECT relid,
 tables.idx_scan + tables.seq_scan as all_scans,
 ( tables.n_tup_ins + tables.n_tup_upd + tables.n_tup_del ) as writes,
 pg_relation_size(relid) as table_size
 FROM pg_stat_user_tables as tables
),
all_writes as (
 SELECT sum(writes) as total_writes
 FROM table_scans
),
indexes as (
 SELECT idx_stat.relid, idx_stat.indexrelid,
 idx_stat.schemaname, idx_stat.relname as tablename,
 idx_stat.indexrelname as indexname,
 idx_stat.idx_scan,
 pg_relation_size(idx_stat.indexrelid) as index_bytes,
 indexdef ~* $1 AS idx_is_btree
 FROM pg_stat_user_indexes as idx_stat
 JOIN pg_index
 USING (indexrelid)
 JOIN pg_indexes as indexes
 ON idx_stat.schemaname = indexes.schemaname
 AND idx_stat.relname = indexes.tablename
 AND idx_stat.indexrelname = indexes.indexname
 WHERE pg_index.indisunique = $2
),
index_ratios AS (
SELECT schemaname, tablename, indexname,
 idx_scan, all_scans,
 round(( CASE WHEN all_scans = $3 THEN $4::NUMERIC
 ELSE idx_scan::NUMERIC/all_scans * $5 END),$6) as index_scan_pct,
 writes,
 round((CASE WHEN writes = $7 THEN idx_scan::NUMERIC ELSE idx_scan::NUMERIC/writes END),$8)
 as scans_per_write,
 pg_size_pretty(index_bytes) as index_size,
 pg_size_pretty(table_size) as table_size,
 idx_is_btree, index_bytes
 FROM indexes
 JOIN table_scans
 USING (relid)
),
index_groups AS (
SELECT $9 as reason, *, $10 as grp
FROM index_ratios
WHERE
 idx_scan = $11
 and idx_is_btree
UNION ALL
SELECT $12 as reason, *, $13 as grp
FROM index_ratios
WHERE
 scans_per_write <= $14
 and index_scan_pct < $15
 and idx_scan > $16
 and writes > $17
 and idx_is_btree
UNION ALL
SELECT $18 as reason, *, $19 as grp
FROM index_ratios
WHERE
 index_scan_pct < $20
 and scans_per_write > $21
 and idx_scan > $22
 and idx_is_btree
 and index_bytes > $23
UNION ALL
SELECT $24 as reason, index_ratios.*, $25 as grp
FROM index_ratios, all_writes
WHERE
 ( writes::NUMERIC / ( total_writes + $26 ) ) > $27
 AND NOT idx_is_btree
 AND index_bytes > $28
ORDER BY grp, index_bytes DESC )
SELECT 
 reason,
 schemaname as schema_name,
 tablename as table_name,
 indexname as index_name,
 index_scan_pct,
 scans_per_write,
 index_size,
 table_size,
 idx_scan,
 all_scans
FROM index_groups
), redundant_indexes as (
 






with index_data as (
 select
 *,
 indkey::text as columns,
 array_to_string(indclass, $29) as opclasses
 from pg_index
), redundant as (
 select
 tnsp.nspname AS schema_name,
 trel.relname AS table_name,
 irel.relname AS index_name,
 am1.amname as access_method,
 format($30, i1.indexrelid::regclass)::text as reason,
 pg_get_indexdef(i1.indexrelid) main_index_def,
 pg_size_pretty(pg_relation_size(i1.indexrelid)) main_index_size,
 pg_get_indexdef(i2.indexrelid) index_def,
 pg_size_pretty(pg_relation_size(i2.indexrelid)) index_size,
 s.idx_scan as index_usage
 from
 index_data as i1
 join index_data as i2 on (
 i1.indrelid = i2.indrelid /* same table */
 and i1.indexrelid <> i2.indexrelid /* NOT same index */
 )
 inner join pg_opclass op1 on i1.indclass[$31] = op1.oid
 inner join pg_opclass op2 on i2.indclass[$32] = op2.oid
 inner join pg_am am1 on op1.opcmethod = am1.oid
 inner join pg_am am2 on op2.opcmethod = am2.oid
 join pg_stat_user_indexes as s on s.indexrelid = i2.indexrelid
 join pg_class as trel on trel.oid = i2.indrelid
 join pg_namespace as tnsp on trel.relnamespace = tnsp.oid
 join pg_class as irel on irel.oid = i2.indexrelid
 where
 not i1.indisprimary 
 and not ( 
 (i1.indisprimary or i1.indisunique)
 and (not i2.indisprimary or not i2.indisunique)
 )
 and am1.amname = am2.amname 
 and (
 i2.columns like (i1.columns || $33) 
 or i1.columns = i2.columns 
 )
 and (
 i2.opclasses like (i1.opclasses || $34)
 or i1.opclasses = i2.opclasses
 )
 
 and pg_get_expr(i1.indexprs, i1.indrelid) is not distinct from pg_get_expr(i2.indexprs, i2.indrelid)
 
 and pg_get_expr(i1.indpred, i1.indrelid) is not distinct from pg_get_expr(i2.indpred, i2.indrelid)
)
select * from redundant
), migrations as (
 






















with unused as (
 select
 format($35, pg_stat_user_indexes.idx_scan)::text as reason,
 pg_stat_user_indexes.relname as table_name,
 pg_stat_user_indexes.schemaname || $36 || indexrelname::text as index_name,
 pg_stat_user_indexes.idx_scan,
 (coalesce(n_tup_ins, $37) + coalesce(n_tup_upd, $38) - coalesce(n_tup_hot_upd, $39) + coalesce(n_tup_del, $40)) as write_activity,
 pg_stat_user_tables.seq_scan,
 pg_stat_user_tables.n_live_tup,
 pg_get_indexdef(pg_index.indexrelid) as index_def,
 pg_size_pretty(pg_relation_size(pg_index.indexrelid::regclass)) as index_size,
 pg_index.indexrelid
 from pg_stat_user_indexes
 join pg_stat_user_tables
 on pg_stat_user_indexes.relid = pg_stat_user_tables.relid
 join pg_index
 ON pg_index.indexrelid = pg_stat_user_indexes.indexrelid
 where
 pg_stat_user_indexes.idx_scan = $41 /* < 10 or smth */
 and pg_index.indisunique is false
 and pg_stat_user_indexes.idx_scan::float/(coalesce(n_tup_ins,$42)+coalesce(n_tup_upd,$43)-coalesce(n_tup_hot_upd,$44)+coalesce(n_tup_del,$45)+$46)::float<$47
), index_data as (
 select
 *,
 indkey::text as columns,
 array_to_string(indclass, $48) as opclasses
 from pg_index
), redundant as (
 select
 i2.indrelid::regclass::text as table_name,
 i2.indexrelid::regclass::text as index_name,
 am1.amname as access_method,
 format($49, i1.indexrelid::regclass)::text as reason,
 pg_get_indexdef(i1.indexrelid) main_index_def,
 pg_get_indexdef(i2.indexrelid) index_def,
 pg_size_pretty(pg_relation_size(i2.indexrelid)) index_size,
 s.idx_scan as index_usage,
 i2.indexrelid
 from
 index_data as i1
 join index_data as i2 on (
 i1.indrelid = i2.indrelid /* same table */
 and i1.indexrelid <> i2.indexrelid /* NOT same index */
 )
 inner join pg_opclass op1 on i1.indclass[$50] = op1.oid
 inner join pg_opclass op2 on i2.indclass[$51] = op2.oid
 inner join pg_am am1 on op1.opcmethod = am1.oid
 inner join pg_am am2 on op2.opcmethod = am2.oid
 join pg_stat_user_indexes as s on s.indexrelid = i2.indexrelid
 where
 not i1.indisprimary 
 and not ( 
 (i1.indisprimary or i1.indisunique)
 and (not i2.indisprimary or not i2.indisunique)
 )
 and am1.amname = am2.amname 
 and (
 i2.columns like (i1.columns || $52) 
 or i1.columns = i2.columns 
 )
 and (
 i2.opclasses like (i1.opclasses || $53)
 or i1.opclasses = i2.opclasses
 )
 
 and pg_get_expr(i1.indexprs, i1.indrelid) is not distinct from pg_get_expr(i2.indexprs, i2.indrelid)
 
 and pg_get_expr(i1.indpred, i1.indrelid) is not distinct from pg_get_expr(i2.indpred, i2.indrelid)
), together as (
 select reason, table_name, index_name, index_size, index_def, $54 as main_index_def, indexrelid
 from unused
 union all
 select reason, table_name, index_name, index_size, index_def, main_index_def, indexrelid
 from redundant
 where index_usage = $55
), droplines as (
 select format($56, max(index_name), max(index_size), string_agg(reason, $57), table_name) as line
 from together t1
 group by table_name, index_name
 order by table_name, index_name
), createlines as (
 select
 replace(
 format($58, max(index_def), table_name),
 $59,
 $60
 )as line
 from together t2
 group by table_name, index_name
 order by table_name, index_name
)
select $61 as run_in_separate_transactions
union all
select * from droplines
union all
select $62
union all
select $63
union all
select * from createlines
), deploy as (
 select * from (select * from migrations limit (select count($64) from migrations)/$65) as docode where docode.run_in_separate_transactions not like $66
), revert as (
 select * from (select * from migrations offset ((select count($67) from migrations)/$68 + $69)) as revertcode where revertcode.run_in_separate_transactions not like $70 
), deploy_code as (
 select json_agg(jsondata.json) from (select run_in_separate_transactions as json from deploy) jsondata
), revert_code as (
 select json_agg(jsondata.json) from (select run_in_separate_transactions as json from revert) jsondata
), unsed as (
 select json_object_agg(i."index_name", i) as json from indexes i
), redundant as (
 select json_object_agg(ri."index_name", ri) as json from redundant_indexes ri
), database_stat as (
 select
 row_to_json(dbstat)
 from (
 select
 sd.stats_reset::timestamptz(0),
 age(
 date_trunc($71,now()),
 date_trunc($72,sd.stats_reset)
 ) as stats_age
 from pg_stat_database sd
 where datname = current_database()
 ) dbstat
)
select json_build_object(
 $73,
 (select * from unsed),
 $74,
 (select * from redundant),
 $75,
 (select * from deploy_code),
 $76,
 (select * from revert_code),
 $77,
 (select * from database_stat)
 )
