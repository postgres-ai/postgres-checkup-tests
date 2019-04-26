-- queryid: 7113340044002110000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '5562'
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
 tbl.oid tblid, nspname, tbl.relname AS tblname, idx.relname AS idxname, idx.reltuples, idx.relpages, idx.relam,
 indrelid, indexrelid, regexp_split_to_table(indkey::text, $2)::smallint AS attnum, 
 coalesce(substring(array_to_string(idx.reloptions, $3) from $4)::smallint, $5) as fillfactor
 from pg_index
 join pg_class idx on idx.oid = pg_index.indexrelid
 join pg_class tbl on tbl.oid = pg_index.indrelid
 join pg_namespace on pg_namespace.oid = idx.relnamespace
 join pg_am a ON idx.relam = a.oid
 where a.amname = $6
 AND pg_index.indisvalid
 AND tbl.relkind = $7
 AND idx.relpages > $8
 AND pg_namespace.nspname NOT IN ($9, $10)
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
 current_setting($11)::numeric AS bs,
 fillfactor,
 
 case when version() ~ $12 then $13 else $14 end as maxalign,
 /* per page header, fixed size: 20 for 7.X, 24 for others */
 $15 AS pagehdr,
 /* per page btree opaque data */
 $16 AS pageopqdata,
 /* per tuple header: add IndexAttributeBitMapData if some cols are null-able */
 case
 when max(coalesce(s.null_frac,$17)) = $18 then $19 
 else $20 + (( $21 + $22 - $23 ) / $24) 
 end as index_tuple_hdr_bm,
 /* data len: we remove null values save space using it fractionnal part from stats */
 sum(($25 - coalesce(s.null_frac, $26)) * coalesce(s.avg_width, $27)) as nulldatawidth,
 max(case when a.atttypid = $28::regtype then $29 else $30 end) > $31 as is_na
 from pg_attribute as a
 join step0 as i on a.attrelid = i.indexrelid AND a.attnum = i.attnum
 join pg_stats as s on
 s.schemaname = i.nspname
 and (
 (s.tablename = i.tblname and s.attname = pg_catalog.pg_get_indexdef(a.attrelid, a.attnum, $32)) 
 OR (s.tablename = i.idxname AND s.attname = a.attname) 
 )
 join pg_type as t on a.atttypid = t.oid
 where a.attnum > $33
 group by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
 ), step2 as (
 select
 *,
 (
 index_tuple_hdr_bm + maxalign
 
 - case when index_tuple_hdr_bm % maxalign = $34 THEN maxalign else index_tuple_hdr_bm % maxalign end
 + nulldatawidth + maxalign
 
 - case
 when nulldatawidth = $35 then $36
 when nulldatawidth::integer % maxalign = $37 then maxalign
 else nulldatawidth::integer % maxalign
 end
 )::numeric as nulldatahdrwidth
 
 from step1
 ), step3 as (
 select
 *,
 
 coalesce($38 + ceil(reltuples / floor((bs - pageopqdata - pagehdr) / ($39 + nulldatahdrwidth)::float)), $40) as est_pages,
 coalesce($41 + ceil(reltuples / floor((bs - pageopqdata - pagehdr) * fillfactor / ($42 * ($43 + nulldatahdrwidth)::float))), $44) as est_pages_ff
 
 from step2
 join pg_am am on step2.relam = am.oid
 where am.amname = $45
 ), step4 as (
 SELECT
 *,
 bs*(relpages)::bigint AS real_size,
 
 bs*(relpages-est_pages)::bigint AS extra_size,
 $46 * (relpages-est_pages)::float / relpages AS extra_ratio,
 bs*(relpages-est_pages_ff) AS bloat_size,
 $47 * (relpages-est_pages_ff)::float / relpages AS bloat_ratio
 
 from step3
 
 )
 select
 case is_na when $48 then $49 else $50 end as "Is N/A",
 format(
 $51,
 left(index_name, $52) || case when length(index_name) > $53 then $54 else $55 end,
 coalesce(nullif(step4.schema_name, $56) || $57, $58) || step4.table_name
 ) as "Index (Table)",
 real_size as "Real size bytes",
 pg_size_pretty(real_size::numeric) as "Size",
 extra_ratio as "Extra ratio",
 case
 when extra_size::numeric >= $59
 then $60 || pg_size_pretty(extra_size::numeric)::text || $61 || round(extra_ratio::numeric, $62)::text || $63
 else $64
 end as "Extra",
 case
 when extra_size::numeric >= $65
 then extra_size
 else $66
 end as "Extra size bytes",
 case
 when bloat_size::numeric >= $67
 then $68 || pg_size_pretty(bloat_size::numeric)::text || $69 || round(bloat_ratio::numeric, $70)::text || $71
 else $72
 end as "Bloat",
 case
 when (bloat_size)::numeric >=$73
 then bloat_size
 else $74
 end as "Bloat size bytes",
 case
 when (bloat_ratio)::numeric >=$75
 then bloat_ratio
 else $76
 end as "Bloat ratio",
 case
 when (real_size - bloat_size)::numeric >=$77
 then $78 || pg_size_pretty((real_size - bloat_size)::numeric)
 else $79
 end as "Live",
 case
 when (real_size - bloat_size)::numeric >=$80
 then (real_size - bloat_size)::numeric
 else $81
 end as "Live bytes", 
 fillfactor,
 case when ot.table_id is not null then $82 else $83 end as overrided_settings
 from step4
 left join overrided_tables ot on ot.table_id = step4.tblid
 order by bloat_size desc nulls last
), limited_data as (
 select * from data limit $84
), num_limited_data as (
 select
 row_number() over () num,
 limited_data.*
 from limited_data
), limited_json_data as (
 select json_object_agg(ld."Index (Table)", ld) as json from num_limited_data ld
), total_data as (
 select
 sum($85) as count,
 sum("Extra size bytes") as "Extra size bytes sum",
 sum("Real size bytes") as "Real size bytes sum",
 sum("Bloat size bytes") as "Bloat size bytes sum",
 (sum("Bloat size bytes")::numeric/sum("Real size bytes")::numeric * $86) as "Bloat ratio",
 sum("Extra size bytes") as "Extra size bytes sum"
 from data
)
select
 json_build_object(
 $87,
 (select * from limited_json_data),
 $88,
 (select row_to_json(total_data) from total_data),
 $89,
 (select count($90) from limited_data where overrided_settings = $91)
 )
