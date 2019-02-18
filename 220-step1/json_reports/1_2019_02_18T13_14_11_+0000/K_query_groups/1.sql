with data as (
 with step1 as (
 select
 i.nspname as schema_name,
 i.tblname as table_name,
 i.idxname as index_name,
 i.reltuples,
 i.relpages,
 i.relam,
 a.attrelid AS table_oid,
 current_setting($1)::numeric AS bs,
 fillfactor,
 
 case when version() ~ $2 then $3 else $4 end as maxalign,
 /* per page header, fixed size: 20 for 7.X, 24 for others */
 $5 AS pagehdr,
 /* per page btree opaque data */
 $6 AS pageopqdata,
 /* per tuple header: add IndexAttributeBitMapData if some cols are null-able */
 case
 when max(coalesce(s.null_frac,$7)) = $8 then $9 
 else $10 + (( $11 + $12 - $13 ) / $14) 
 end as index_tuple_hdr_bm,
 /* data len: we remove null values save space using it fractionnal part from stats */
 sum(($15 - coalesce(s.null_frac, $16)) * coalesce(s.avg_width, $17)) as nulldatawidth,
 max(case when a.atttypid = $18::regtype then $19 else $20 end) > $21 as is_na
 from pg_attribute as a
 join (
 select
 nspname, tbl.relname AS tblname, idx.relname AS idxname, idx.reltuples, idx.relpages, idx.relam,
 indrelid, indexrelid, indkey::smallint[] AS attnum,
 coalesce(substring(array_to_string(idx.reloptions, $22) from $23)::smallint, $24) as fillfactor
 from pg_index
 join pg_class idx on idx.oid = pg_index.indexrelid
 join pg_class tbl on tbl.oid = pg_index.indrelid
 join pg_namespace on pg_namespace.oid = idx.relnamespace
 where pg_index.indisvalid AND tbl.relkind = $25 AND idx.relpages > $26
 ) as i on a.attrelid = i.indexrelid
 join pg_stats as s on
 s.schemaname = i.nspname
 and (
 (s.tablename = i.tblname and s.attname = pg_catalog.pg_get_indexdef(a.attrelid, a.attnum, $27)) 
 OR (s.tablename = i.idxname AND s.attname = a.attname) 
 )
 join pg_type as t on a.atttypid = t.oid
 where a.attnum > $28
 group by 1, 2, 3, 4, 5, 6, 7, 8, 9
 ), step2 as (
 select
 *,
 (
 index_tuple_hdr_bm + maxalign
 
 - case when index_tuple_hdr_bm % maxalign = $29 THEN maxalign else index_tuple_hdr_bm % maxalign end
 + nulldatawidth + maxalign
 
 - case
 when nulldatawidth = $30 then $31
 when nulldatawidth::integer % maxalign = $32 then maxalign
 else nulldatawidth::integer % maxalign
 end
 )::numeric as nulldatahdrwidth
 
 from step1
 ), step3 as (
 select
 *,
 
 coalesce($33 + ceil(reltuples / floor((bs - pageopqdata - pagehdr) / ($34 + nulldatahdrwidth)::float)), $35) as est_pages,
 coalesce($36 + ceil(reltuples / floor((bs - pageopqdata - pagehdr) * fillfactor / ($37 * ($38 + nulldatahdrwidth)::float))), $39) as est_pages_ff
 
 from step2
 join pg_am am on step2.relam = am.oid
 where am.amname = $40
 ), step4 as (
 SELECT
 *,
 bs*(relpages)::bigint AS real_size,
 
 bs*(relpages-est_pages)::bigint AS extra_size,
 $41 * (relpages-est_pages)::float / relpages AS extra_ratio,
 bs*(relpages-est_pages_ff) AS bloat_size,
 $42 * (relpages-est_pages_ff)::float / relpages AS bloat_ratio
 
 from step3
 
 )
 select
 case is_na when $43 then $44 else $45 end as "Is N/A",
 format(
 $46,
 left(index_name, $47) || case when length(index_name) > $48 then $49 else $50 end,
 coalesce(nullif(schema_name, $51) || $52, $53) || table_name
 ) as "Index (Table)",
 real_size as "Real size bytes",
 pg_size_pretty(real_size::numeric) as "Size",
 extra_ratio as "Extra ratio",
 case
 when extra_size::numeric >= $54
 then $55 || pg_size_pretty(extra_size::numeric)::text || $56 || round(extra_ratio::numeric, $57)::text || $58
 else $59
 end as "Extra",
 case
 when extra_size::numeric >= $60
 then extra_size
 else $61
 end as "Extra size bytes",
 case
 when bloat_size::numeric >= $62
 then $63 || pg_size_pretty(bloat_size::numeric)::text || $64 || round(bloat_ratio::numeric, $65)::text || $66
 else $67
 end as "Bloat",
 case
 when (bloat_size)::numeric >=$68
 then bloat_size
 else $69
 end as "Bloat size bytes",
 case
 when (bloat_ratio)::numeric >=$70
 then bloat_ratio
 else $71
 end as "Bloat ratio",
 case
 when (real_size - bloat_size)::numeric >=$72
 then $73 || pg_size_pretty((real_size - bloat_size)::numeric)
 else $74
 end as "Live",
 case
 when (real_size - bloat_size)::numeric >=$75
 then (real_size - bloat_size)::numeric
 else $76
 end as "Live bytes", 
 fillfactor
 from step4
 order by real_size desc nulls last
), limited_data as (
 select * from data limit $77
), limited_json_data as (
 select json_object_agg(ld."Index (Table)", ld) as json from limited_data ld
), total_data as (
 select
 sum($78) as count,
 sum("Extra size bytes") as "Extra size bytes sum",
 sum("Real size bytes") as "Real size bytes sum",
 sum("Bloat size bytes") as "Bloat size bytes sum",
 (sum("Bloat size bytes")::numeric/sum("Real size bytes")::numeric * $79) as "Bloat ratio",
 sum("Extra size bytes") as "Extra size bytes sum"
 from data
)
select
 json_build_object(
 $80,
 (select * from limited_json_data),
 $81,
 (select row_to_json(total_data) from total_data)
 )
