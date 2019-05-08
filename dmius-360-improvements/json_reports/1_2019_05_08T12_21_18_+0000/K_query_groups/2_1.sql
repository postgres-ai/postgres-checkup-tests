-- queryid: -7193506341245030000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '5958'
with data as (
 with overrided_tables as (
 select
 pc.oid as table_id,
 pn.nspname as scheme_name,
 pc.relname as table_name,
 pc.reloptions as options
 from pg_class pc
 join pg_namespace pn on pn.oid = pc.relnamespace
 where reloptions::text ~ $1
 ), step0 as (
 select
 tbl.oid tblid,
 nspname,
 tbl.relname AS tblname,
 idx.relname AS idxname,
 idx.reltuples,
 idx.relpages,
 idx.relam,
 indrelid,
 indexrelid,
 regexp_split_to_table(indkey::text, $2)::smallint AS attnum, 
 coalesce(substring(array_to_string(idx.reloptions, $3) from $4)::smallint, $5) as fillfactor,
 pg_total_relation_size(tbl.oid) - pg_indexes_size(tbl.oid) - coalesce(pg_total_relation_size(tbl.reltoastrelid), $6) as table_size_bytes
 from pg_index
 join pg_class idx on idx.oid = pg_index.indexrelid
 join pg_class tbl on tbl.oid = pg_index.indrelid
 join pg_namespace on pg_namespace.oid = idx.relnamespace
 join pg_am a ON idx.relam = a.oid
 where a.amname = $7
 AND pg_index.indisvalid
 AND tbl.relkind = $8
 AND idx.relpages > $9
 AND pg_namespace.nspname NOT IN ($10, $11)
 ), step1 as (
 select
 i.tblid,
 i.nspname as schema_name,
 i.tblname as table_name,
 i.idxname as index_name,
 i.reltuples,
 i.relpages,
 i.relam,
 a.attrelid AS table_oid,
 current_setting($12)::numeric AS bs,
 fillfactor,
 
 case when version() ~ $13 then $14 else $15 end as maxalign,
 /* per page header, fixed size: 20 for 7.X, 24 for others */
 $16 AS pagehdr,
 /* per page btree opaque data */
 $17 AS pageopqdata,
 /* per tuple header: add IndexAttributeBitMapData if some cols are null-able */
 case
 when max(coalesce(s.null_frac,$18)) = $19 then $20 
 else $21 + (( $22 + $23 - $24 ) / $25) 
 end as index_tuple_hdr_bm,
 /* data len: we remove null values save space using it fractionnal part from stats */
 sum(($26 - coalesce(s.null_frac, $27)) * coalesce(s.avg_width, $28)) as nulldatawidth,
 max(case when a.atttypid = $29::regtype then $30 else $31 end) > $32 as is_na,
 i.table_size_bytes
 from pg_attribute as a
 join step0 as i on a.attrelid = i.indexrelid AND a.attnum = i.attnum
 join pg_stats as s on
 s.schemaname = i.nspname
 and (
 (s.tablename = i.tblname and s.attname = pg_catalog.pg_get_indexdef(a.attrelid, a.attnum, $33)) 
 OR (s.tablename = i.idxname AND s.attname = a.attname) 
 )
 join pg_type as t on a.atttypid = t.oid
 where a.attnum > $34
 group by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 17
 ), step2 as (
 select
 *,
 (
 index_tuple_hdr_bm + maxalign
 
 - case when index_tuple_hdr_bm % maxalign = $35 THEN maxalign else index_tuple_hdr_bm % maxalign end
 + nulldatawidth + maxalign
 
 - case
 when nulldatawidth = $36 then $37
 when nulldatawidth::integer % maxalign = $38 then maxalign
 else nulldatawidth::integer % maxalign
 end
 )::numeric as nulldatahdrwidth
 
 from step1
 ), step3 as (
 select
 *,
 
 coalesce($39 + ceil(reltuples / floor((bs - pageopqdata - pagehdr) / ($40 + nulldatahdrwidth)::float)), $41) as est_pages,
 coalesce($42 + ceil(reltuples / floor((bs - pageopqdata - pagehdr) * fillfactor / ($43 * ($44 + nulldatahdrwidth)::float))), $45) as est_pages_ff
 
 from step2
 join pg_am am on step2.relam = am.oid
 where am.amname = $46
 ), step4 as (
 SELECT
 *,
 bs*(relpages)::bigint AS real_size,
 
 bs*(relpages-est_pages)::bigint AS extra_size,
 $47 * (relpages-est_pages)::float / relpages AS extra_ratio,
 bs*(relpages-est_pages_ff) AS bloat_size,
 $48 * (relpages-est_pages_ff)::float / relpages AS bloat_ratio
 
 from step3
 
 )
 select
 case is_na when $49 then $50 else $51 end as "is_na",
 index_name as "index_name",
 coalesce(nullif(step4.schema_name, $52) || $53, $54) || step4.table_name as "table_name",
 format(
 $55,
 left(index_name, $56) || case when length(index_name) > $57 then $58 else $59 end,
 coalesce(nullif(step4.schema_name, $60) || $61, $62) || step4.table_name
 ) as "index_table_name",
 real_size as "real_size_bytes",
 pg_size_pretty(real_size::numeric) as "size",
 extra_ratio as "extra_ratio_percent",
 case
 when extra_size::numeric >= $63
 then $64 || pg_size_pretty(extra_size::numeric)::text || $65 || round(extra_ratio::numeric, $66)::text || $67
 else $68
 end as "extra",
 case
 when extra_size::numeric >= $69
 then extra_size
 else $70
 end as "extra_size_bytes",
 case
 when bloat_size::numeric >= $71
 then $72 || pg_size_pretty(bloat_size::numeric)::text || $73 || round(bloat_ratio::numeric, $74)::text || $75
 else $76
 end as "bloat",
 case
 when (bloat_size)::numeric >=$77
 then bloat_size
 else $78
 end as "bloat_size_bytes",
 case
 when (bloat_ratio)::numeric >=$79
 then bloat_ratio
 else $80
 end as "bloat_ratio_percent",
 case
 when (real_size - bloat_size)::numeric >=$81
 then $82 || pg_size_pretty((real_size - bloat_size)::numeric)
 else $83
 end as "live",
 case
 when (real_size - bloat_size)::numeric >=$84
 then (real_size - bloat_size)::numeric
 else $85
 end as "live_bytes",
 fillfactor,
 case when ot.table_id is not null then $86 else $87 end as overrided_settings,
 table_size_bytes
 from step4
 left join overrided_tables ot on ot.table_id = step4.tblid
 order by bloat_size desc nulls last
), limited_data as (
 select * from data limit $88
), num_limited_data as (
 select
 row_number() over () num,
 limited_data.*
 from limited_data
), limited_json_data as (
 select json_object_agg(ld."index_table_name", ld) as json from num_limited_data ld
), total_data as (
 select
 sum($89) as count,
 sum("extra_size_bytes") as "extra_size_bytes_sum",
 sum("real_size_bytes") as "real_size_bytes_sum",
 sum("bloat_size_bytes") as "bloat_size_bytes_sum",
 (sum("bloat_size_bytes")::numeric/sum("real_size_bytes")::numeric * $90) as "bloat_ratio_percent_avg",
 sum("extra_size_bytes") as "extra_size_bytes_sum",
 sum("table_size_bytes") as "table_size_bytes_sum"
 from data
)
select
 json_build_object(
 $91,
 (select * from limited_json_data),
 $92,
 (select row_to_json(total_data) from total_data),
 $93,
 (select count($94) from limited_data where overrided_settings = $95)
 )
