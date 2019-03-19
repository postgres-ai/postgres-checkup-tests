-- queryid: 1127861613357849500
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '9658'
with fk_indexes as (
 select
 schemaname as schema_name,
 (indexrelid::regclass)::text as index_name,
 (relid::regclass)::text as table_name,
 (confrelid::regclass)::text as fk_table_ref,
 array_to_string(indclass, $1) as opclasses
 from
 pg_stat_user_indexes
 join pg_index using (indexrelid)
 left join pg_constraint
 on array_to_string(indkey, $2) = array_to_string(conkey, $3)
 and schemaname = (connamespace::regnamespace)::text
 and conrelid = relid
 and contype = $4
 where idx_scan = $5
 and indisunique is false
 and conkey is not null 
), table_scans as (
 select relid,
 tables.idx_scan + tables.seq_scan as all_scans,
 ( tables.n_tup_ins + tables.n_tup_upd + tables.n_tup_del ) as writes,
 pg_relation_size(relid) as table_size
 from pg_stat_user_tables as tables
), all_writes as (
 select sum(writes) as total_writes
 from table_scans
), indexes as (
 select
 idx_stat.relid,
 idx_stat.indexrelid,
 idx_stat.schemaname as schema_name,
 idx_stat.relname as table_name,
 idx_stat.indexrelname as index_name,
 quote_ident(idx_stat.schemaname) as formated_schema_name,
 quote_ident(idx_stat.indexrelname) as formated_index_name,
 quote_ident(idx_stat.relname) as formated_table_name,
 coalesce(nullif(quote_ident(idx_stat.schemaname), $6) || $7, $8) || quote_ident(idx_stat.relname) as formated_relation_name,
 idx_stat.idx_scan,
 pg_relation_size(idx_stat.indexrelid) as index_bytes,
 indexdef ~* $9 as idx_is_btree,
 pg_get_indexdef(pg_index.indexrelid) as index_def,
 array_to_string(pg_index.indclass, $10) as opclasses
 from pg_stat_user_indexes as idx_stat
 join pg_index
 using (indexrelid)
 join pg_indexes as indexes
 on idx_stat.schemaname = indexes.schemaname
 and idx_stat.relname = indexes.tablename
 and idx_stat.indexrelname = indexes.indexname
 where
 pg_index.indisunique = $11
 and pg_index.indisvalid = $12
), index_ratios as (
 select
 i.indexrelid as index_id,
 i.schema_name,
 i.table_name,
 i.index_name,
 idx_scan,
 all_scans,
 round(( case when all_scans = $13 then $14::numeric
 else idx_scan::numeric/all_scans * $15 end), $16) as index_scan_pct,
 writes,
 round((case when writes = $17 then idx_scan::numeric else idx_scan::numeric/writes end), $18)
 as scans_per_write,
 index_bytes as index_size_bytes,
 table_size as table_size_bytes,
 idx_is_btree,
 index_def,
 formated_index_name,
 formated_schema_name,
 formated_table_name,
 formated_relation_name,
 i.opclasses,
 case when fi.index_name is not null then $19 else $20 end as supports_fk
 from indexes i
 left join fk_indexes fi on
 fi.fk_table_ref = i.table_name
 and fi.opclasses like (i.opclasses || $21)
 join table_scans
 using (relid)
),

never_used_indexes as (
 select
 $22 as reason,
 ir.*
 from index_ratios ir
 where
 idx_scan = $23
 and idx_is_btree
 order by index_size_bytes desc
), never_used_indexes_num as (
 select row_number() over () num, nui.* 
 from never_used_indexes nui
 limit $24
), never_used_indexes_total as (
 select
 sum(index_size_bytes) as index_size_bytes_sum,
 sum(table_size_bytes) as table_size_bytes_sum
 from never_used_indexes
), never_used_indexes_json as (
 select
 json_object_agg(nuin.schema_name || $25 || nuin.index_name, nuin) as json
 from never_used_indexes_num nuin
),

rarely_used_indexes as (
 select
 $26 as reason,
 *,
 $27 as grp
 from index_ratios
 where
 scans_per_write <= $28
 and index_scan_pct < $29
 and idx_scan > $30
 and writes > $31
 and idx_is_btree
 union all
 select
 $32 as reason,
 *,
 $33 as grp
 from index_ratios
 where
 index_scan_pct < $34
 and scans_per_write > $35
 and idx_scan > $36
 and idx_is_btree
 and index_size_bytes > $37
 union all
 select
 $38 as reason,
 index_ratios.*,
 $39 as grp
 from index_ratios, all_writes
 where
 ( writes::numeric / ( total_writes + $40 ) ) > $41
 and not idx_is_btree
 and index_size_bytes > $42
 order by grp, index_size_bytes desc
), rarely_used_indexes_num as (
 select row_number() over () num, rui.*
 from rarely_used_indexes rui
 limit $43
), rarely_used_indexes_total as (
 select
 sum(index_size_bytes) as index_size_bytes_sum,
 sum(table_size_bytes) as table_size_bytes_sum
 from rarely_used_indexes
), rarely_used_indexes_json as (
 select
 json_object_agg(ruin.schema_name || $44 || ruin.index_name, ruin) as json
 from rarely_used_indexes_num ruin
),

index_data as (
 select
 *,
 indkey::text as columns,
 array_to_string(indclass, $45) as opclasses
 from pg_index
 where indisvalid = $46
), redundant_indexes as (
 select
 i2.indexrelid as index_id,
 tnsp.nspname AS schema_name,
 trel.relname AS table_name,
 pg_relation_size(trel.oid) as table_size_bytes,
 irel.relname AS index_name,
 am1.amname as access_method,
 (i1.indexrelid::regclass)::text as reason,
 pg_get_indexdef(i1.indexrelid) main_index_def,
 pg_size_pretty(pg_relation_size(i1.indexrelid)) main_index_size,
 pg_get_indexdef(i2.indexrelid) index_def,
 pg_relation_size(i2.indexrelid) index_size_bytes,
 s.idx_scan as index_usage,
 quote_ident(tnsp.nspname) as formated_schema_name,
 quote_ident(irel.relname) as formated_index_name,
 quote_ident(trel.relname) AS formated_table_name,
 coalesce(nullif(quote_ident(tnsp.nspname), $47) || $48, $49) || quote_ident(trel.relname) as formated_relation_name,
 i2.opclasses
 from
 index_data as i1
 join index_data as i2 on (
 i1.indrelid = i2.indrelid 
 and i1.indexrelid <> i2.indexrelid 
 )
 inner join pg_opclass op1 on i1.indclass[$50] = op1.oid
 inner join pg_opclass op2 on i2.indclass[$51] = op2.oid
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
 i2.columns like (i1.columns || $52) 
 or i1.columns = i2.columns 
 )
 and (
 i2.opclasses like (i1.opclasses || $53)
 or i1.opclasses = i2.opclasses
 )
 
 and pg_get_expr(i1.indexprs, i1.indrelid) is not distinct from pg_get_expr(i2.indexprs, i2.indrelid)
 
 and pg_get_expr(i1.indpred, i1.indrelid) is not distinct from pg_get_expr(i2.indpred, i2.indrelid)
), redundant_indexes_fk as (
 select
 ri.*,
 case when fi.index_name is not null then $54 else $55 end as supports_fk
 from redundant_indexes ri
 left join fk_indexes fi on
 fi.fk_table_ref = ri.table_name
 and fi.opclasses like (ri.opclasses || $56)
), redundant_indexes_grouped as (
 select
 index_id,
 schema_name,
 table_name,
 table_size_bytes,
 index_name,
 access_method,
 string_agg(reason, $57) as reason,
 string_agg(main_index_def, $58) as main_index_def,
 string_agg(main_index_size, $59) as main_index_size,
 index_def,
 index_size_bytes,
 index_usage,
 formated_index_name,
 formated_schema_name,
 formated_table_name,
 formated_relation_name,
 supports_fk
 from redundant_indexes_fk
 group by
 index_id,
 table_size_bytes,
 schema_name,
 table_name,
 index_name,
 access_method,
 index_def,
 index_size_bytes,
 index_usage,
 formated_index_name,
 formated_schema_name,
 formated_table_name,
 formated_relation_name,
 supports_fk
 order by index_size_bytes desc
), redundant_indexes_num as (
 select row_number() over () num, rig.*
 from redundant_indexes_grouped rig
 limit $60
),
redundant_indexes_json as (
 select
 json_object_agg(rin.schema_name || $61 || rin.index_name, rin) as json
 from redundant_indexes_num rin
), redundant_indexes_total as (
 select
 sum(index_size_bytes) as index_size_bytes_sum,
 sum(table_size_bytes) as table_size_bytes_sum
 from redundant_indexes_grouped
),

together as (
 select
 reason::text,
 index_id::text,
 schema_name::text,
 table_name::text,
 index_name::text,
 pg_size_pretty(index_size_bytes)::text as index_size,
 index_def::text,
 $62 as main_index_def,
 formated_index_name::text,
 formated_schema_name::text,
 formated_table_name::text,
 formated_relation_name::text
 from never_used_indexes
 union all
 select
 reason::text,
 index_id::text,
 schema_name::text,
 table_name::text,
 index_name::text,
 pg_size_pretty(index_size_bytes)::text as index_size,
 index_def::text,
 main_index_def::text,
 formated_index_name::text,
 formated_schema_name::text,
 formated_table_name::text,
 formated_relation_name::text
 from redundant_indexes
), do_lines as (
 select format($63, max(formated_index_name), max(index_size), string_agg(reason, $64), table_name) as line
 from together t1
 group by table_name, index_name
 order by table_name, index_name
), undo_lines as (
 select
 replace(
 format($65, max(index_def), table_name),
 $66,
 $67
 )as line
 from together t2
 group by table_name, index_name
 order by table_name, index_name
), database_stat as (
 select
 row_to_json(dbstat)
 from (
 select
 sd.stats_reset::timestamptz(0),
 age(
 date_trunc($68,now()),
 date_trunc($69,sd.stats_reset)
 ) as stats_age,
 ((extract($70 from now()) - extract($71 from sd.stats_reset))/$72)::int as days
 from pg_stat_database sd
 where datname = current_database()
 ) dbstat
)

select
 json_build_object(
 $73,
 (select * from never_used_indexes_json),
 $74,
 (select row_to_json(nuit) from never_used_indexes_total as nuit),
 $75,
 (select * from rarely_used_indexes_json),
 $76,
 (select row_to_json(ruit) from rarely_used_indexes_total as ruit),
 $77,
 (select * from redundant_indexes_json),
 $78,
 (select row_to_json(rit) from redundant_indexes_total as rit),
 $79,
 (select json_agg(dl.line) from do_lines as dl),
 $80,
 (select json_agg(ul.line) from undo_lines as ul),
 $81,
 (select * from database_stat)
 )
