-- queryid: -6244646587443230000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '10515'
with fk_indexes as (
 select
 n.nspname as schema_name,
 ci.relname as index_name,
 cr.relname as table_name,
 (confrelid::regclass)::text as fk_table_ref,
 array_to_string(indclass, $1) as opclasses
 from pg_index i
 join pg_class ci on ci.oid = i.indexrelid and ci.relkind = $2
 join pg_class cr on cr.oid = i.indrelid and cr.relkind = $3
 join pg_namespace n on n.oid = ci.relnamespace
 join pg_constraint cn on cn.conrelid = cr.oid
 left join pg_stat_user_indexes si on si.indexrelid = i.indexrelid
 where
 contype = $4
 and i.indisunique is false
 and conkey is not null
 and ci.relpages > $5
 and si.idx_scan < $6
), table_scans as (
 select relid,
 tables.idx_scan + tables.seq_scan as all_scans,
 ( tables.n_tup_ins + tables.n_tup_upd + tables.n_tup_del ) as writes,
 pg_relation_size(relid) as table_size
 from pg_stat_user_tables as tables
 join pg_class c on c.oid = relid
 where c.relpages > $7
), all_writes as (
 select sum(writes) as total_writes
 from table_scans
), indexes as (
 select
 i.indrelid,
 i.indexrelid,
 n.nspname as schema_name,
 cr.relname as table_name,
 ci.relname as index_name,
 quote_ident(n.nspname) as formated_schema_name,
 quote_ident(ci.relname) as formated_index_name,
 quote_ident(cr.relname) as formated_table_name,
 coalesce(nullif(quote_ident(n.nspname), $8) || $9, $10) || quote_ident(cr.relname) as formated_relation_name,
 si.idx_scan,
 pg_relation_size(i.indexrelid) as index_bytes,
 ci.relpages,
 (case when a.amname = $11 then $12 else $13 end) as idx_is_btree,
 pg_get_indexdef(i.indexrelid) as index_def,
 array_to_string(i.indclass, $14) as opclasses
 from pg_index i
 join pg_class ci on ci.oid = i.indexrelid and ci.relkind = $15
 join pg_class cr on cr.oid = i.indrelid and cr.relkind = $16
 join pg_namespace n on n.oid = ci.relnamespace
 join pg_am a ON ci.relam = a.oid
 left join pg_stat_user_indexes si on si.indexrelid = i.indexrelid
 where
 i.indisunique = $17
 and i.indisvalid = $18
 and ci.relpages > $19
), index_ratios as (
 select
 i.indexrelid as index_id,
 i.schema_name,
 i.table_name,
 i.index_name,
 idx_scan,
 all_scans,
 round(( case when all_scans = $20 then $21::numeric
 else idx_scan::numeric/all_scans * $22 end), $23) as index_scan_pct,
 writes,
 round((case when writes = $24 then idx_scan::numeric else idx_scan::numeric/writes end), $25)
 as scans_per_write,
 index_bytes as index_size_bytes,
 table_size as table_size_bytes,
 i.relpages,
 idx_is_btree,
 index_def,
 formated_index_name,
 formated_schema_name,
 formated_table_name,
 formated_relation_name,
 i.opclasses,
 case when fi.index_name is not null then $26 else $27 end as supports_fk
 from indexes i
 left join fk_indexes fi on
 fi.fk_table_ref = i.table_name
 and fi.schema_name = i.schema_name 
 and fi.opclasses like (i.opclasses || $28)
 join table_scans ts on ts.relid = i.indrelid
),

never_used_indexes as (
 select
 $29 as reason,
 ir.*
 from index_ratios ir
 where
 idx_scan = $30
 and idx_is_btree
 order by index_size_bytes desc
), never_used_indexes_num as (
 select row_number() over () num, nui.* 
 from never_used_indexes nui
 limit $31
), never_used_indexes_total as (
 select
 sum(index_size_bytes) as index_size_bytes_sum,
 sum(table_size_bytes) as table_size_bytes_sum
 from never_used_indexes
), never_used_indexes_json as (
 select
 json_object_agg(nuin.schema_name || $32 || nuin.index_name, nuin) as json
 from never_used_indexes_num nuin
),

rarely_used_indexes as (
 select
 $33 as reason,
 *,
 $34 as grp
 from index_ratios
 where
 scans_per_write <= $35
 and index_scan_pct < $36
 and idx_scan > $37
 and writes > $38
 and idx_is_btree
 union all
 select
 $39 as reason,
 *,
 $40 as grp
 from index_ratios
 where
 index_scan_pct < $41
 and scans_per_write > $42
 and idx_scan > $43
 and idx_is_btree
 and index_size_bytes > $44
 union all
 select
 $45 as reason,
 index_ratios.*,
 $46 as grp
 from index_ratios, all_writes
 where
 ( writes::numeric / ( total_writes + $47 ) ) > $48
 and not idx_is_btree
 and index_size_bytes > $49
 order by grp, index_size_bytes desc
), rarely_used_indexes_num as (
 select row_number() over () num, rui.*
 from rarely_used_indexes rui
 limit $50
), rarely_used_indexes_total as (
 select
 sum(index_size_bytes) as index_size_bytes_sum,
 sum(table_size_bytes) as table_size_bytes_sum
 from rarely_used_indexes
), rarely_used_indexes_json as (
 select
 json_object_agg(ruin.schema_name || $51 || ruin.index_name, ruin) as json
 from rarely_used_indexes_num ruin
),

index_data as (
 select
 *,
 indkey::text as columns,
 array_to_string(indclass, $52) as opclasses
 from pg_index i
 join pg_class ci on ci.oid = i.indexrelid and ci.relkind = $53
 where indisvalid = $54 and ci.relpages > $55
), redundant_indexes as (
 select
 i2.indexrelid as index_id,
 tnsp.nspname AS schema_name,
 trel.relname AS table_name,
 pg_relation_size(trel.oid) as table_size_bytes,
 irel.relname AS index_name,
 am1.amname as access_method,
 (i1.indexrelid::regclass)::text as reason,
 i1.indexrelid as reason_index_id,
 pg_get_indexdef(i1.indexrelid) main_index_def,
 pg_size_pretty(pg_relation_size(i1.indexrelid)) main_index_size,
 pg_get_indexdef(i2.indexrelid) index_def,
 pg_relation_size(i2.indexrelid) index_size_bytes,
 s.idx_scan as index_usage,
 quote_ident(tnsp.nspname) as formated_schema_name,
 coalesce(nullif(quote_ident(tnsp.nspname), $56) || $57, $58) || quote_ident(irel.relname) as formated_index_name,
 quote_ident(trel.relname) AS formated_table_name,
 coalesce(nullif(quote_ident(tnsp.nspname), $59) || $60, $61) || quote_ident(trel.relname) as formated_relation_name,
 i2.opclasses
 from
 index_data as i1
 join index_data as i2 on (
 i1.indrelid = i2.indrelid 
 and i1.indexrelid <> i2.indexrelid 
 )
 inner join pg_opclass op1 on i1.indclass[$62] = op1.oid
 inner join pg_opclass op2 on i2.indclass[$63] = op2.oid
 inner join pg_am am1 on op1.opcmethod = am1.oid
 inner join pg_am am2 on op2.opcmethod = am2.oid
 join pg_stat_user_indexes as s on s.indexrelid = i2.indexrelid
 join pg_class as trel on trel.oid = i2.indrelid
 join pg_namespace as tnsp on trel.relnamespace = tnsp.oid
 join pg_class as irel on irel.oid = i2.indexrelid
 where
 not i2.indisprimary 
 and not ( 
 i2.indisunique and not i1.indisprimary
 )
 and am1.amname = am2.amname 
 and i1.columns like (i2.columns || $64) 
 and i1.opclasses like (i2.opclasses || $65)
 
 
 
 
), redundant_indexes_fk as (
 select
 ri.*,
 case when fi.index_name is not null then $66 else $67 end as supports_fk
 from redundant_indexes ri
 left join fk_indexes fi on
 fi.fk_table_ref = ri.table_name
 and fi.opclasses like (ri.opclasses || $68)
 where substring(ri.main_index_def from position($69 in ri.main_index_def) for length(ri.main_index_def)) <> 
	substring(ri.index_def from position($70 in ri.index_def) for length(ri.index_def))
),

redundant_indexes_tmp_num as (
 select row_number() over () num, rig.*
 from redundant_indexes_fk rig
), redundant_indexes_tmp_links as (
 select
 ri1.*,
 ri2.num as r_num
 from redundant_indexes_tmp_num ri1
 left join redundant_indexes_tmp_num ri2 on ri2.reason_index_id = ri1.index_id and ri1.reason_index_id = ri2.index_id
), redundant_indexes_tmp_cut as (
 select
 *
 from redundant_indexes_tmp_links
 where num < r_num or r_num is null
), redundant_indexes_cut_grouped as (
 select
 distinct(num),
 *
 from redundant_indexes_tmp_cut
 order by index_size_bytes desc
), redundant_indexes_grouped as (
 select
 index_id,
 schema_name,
 table_name,
 table_size_bytes,
 index_name,
 access_method,
 string_agg(distinct reason, $71) as reason,
 string_agg(main_index_def, $72) as main_index_def,
 string_agg(main_index_size, $73) as main_index_size,
 index_def,
 index_size_bytes,
 index_usage,
 formated_index_name,
 formated_schema_name,
 formated_table_name,
 formated_relation_name,
 supports_fk
 from redundant_indexes_cut_grouped
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
 limit $74
), redundant_indexes_json as (
 select
 json_object_agg(rin.schema_name || $75 || rin.index_name, rin) as json
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
 $76 as main_index_def,
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
 select format($77, max(formated_index_name), max(index_size), string_agg(reason, $78), table_name) as line
 from together t1
 group by table_name, index_name
 order by table_name, index_name
), undo_lines as (
 select
 replace(
 format($79, max(index_def), table_name),
 $80,
 $81
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
 date_trunc($82,now()),
 date_trunc($83,sd.stats_reset)
 ) as stats_age,
 ((extract($84 from now()) - extract($85 from sd.stats_reset))/$86)::int as days
 from pg_stat_database sd
 where datname = current_database()
 ) dbstat
)

select
 json_build_object(
 $87,
 (select * from never_used_indexes_json),
 $88,
 (select row_to_json(nuit) from never_used_indexes_total as nuit),
 $89,
 (select * from rarely_used_indexes_json),
 $90,
 (select row_to_json(ruit) from rarely_used_indexes_total as ruit),
 $91,
 (select * from redundant_indexes_json),
 $92,
 (select row_to_json(rit) from redundant_indexes_total as rit),
 $93,
 (select json_agg(dl.line) from do_lines as dl),
 $94,
 (select json_agg(ul.line) from undo_lines as ul),
 $95,
 (select * from database_stat)
 )
