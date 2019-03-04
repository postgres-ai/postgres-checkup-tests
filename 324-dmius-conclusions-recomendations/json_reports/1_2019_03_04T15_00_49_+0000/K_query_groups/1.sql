-- queryid: -1469805226583902500
with overrided_tables as (
select
 pc.oid as table_id,
 pn.nspname as scheme_name,
 pc.relname as table_name,
 pc.reloptions as options
from pg_class pc
join pg_namespace pn on pn.oid = pc.relnamespace
where reloptions::text ~ $1
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
 current_setting($2)::numeric AS bs,
 fillfactor,
 
 case when version() ~ $3 then $4 else $5 end as maxalign,
 /* per page header, fixed size: 20 for 7.X, 24 for others */
 $6 AS pagehdr,
 /* per page btree opaque data */
 $7 AS pageopqdata,
 /* per tuple header: add IndexAttributeBitMapData if some cols are null-able */
 case
 when max(coalesce(s.null_frac,$8)) = $9 then $10 
 else $11 + (( $12 + $13 - $14 ) / $15) 
 end as index_tuple_hdr_bm,
 /* data len: we remove null values save space using it fractionnal part from stats */
 sum(($16 - coalesce(s.null_frac, $17)) * coalesce(s.avg_width, $18)) as nulldatawidth,
 max(case when a.atttypid = $19::regtype then $20 else $21 end) > $22 as is_na
from pg_attribute as a
join (
 select
 tbl.oid tblid, nspname, tbl.relname AS tblname, idx.relname AS idxname, idx.reltuples, idx.relpages, idx.relam,
 indrelid, indexrelid, indkey::smallint[] AS attnum,
 coalesce(substring(array_to_string(idx.reloptions, $23) from $24)::smallint, $25) as fillfactor
 from pg_index
 join pg_class idx on idx.oid = pg_index.indexrelid
 join pg_class tbl on tbl.oid = pg_index.indrelid
 join pg_namespace on pg_namespace.oid = idx.relnamespace
 where pg_index.indisvalid AND tbl.relkind = $26 AND idx.relpages > $27
) as i on a.attrelid = i.indexrelid
join pg_stats as s on
 s.schemaname = i.nspname
 and (
 (s.tablename = i.tblname and s.attname = pg_catalog.pg_get_indexdef(a.attrelid, a.attnum, $28)) 
 OR (s.tablename = i.idxname AND s.attname = a.attname) 
 )
join pg_type as t on a.atttypid = t.oid
where a.attnum > $29
group by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10
), step2 as (
select
 *,
 (
 index_tuple_hdr_bm + maxalign
 
 - case when index_tuple_hdr_bm % maxalign = $30 THEN maxalign else index_tuple_hdr_bm % maxalign end
 + nulldatawidth + maxalign
 
 - case
 when nulldatawidth = $31 then $32
 when nulldatawidth::integer % maxalign = $33 then maxalign
 else nulldatawidth::integer % maxalign
 end
 )::numeric as nulldatahdrwidth
 
from step1
), step3 as (
select
 *,
 
 coalesce($34 + ceil(reltuples / floor((bs - pageopqdata - pagehdr) / ($35 + nulldatahdrwidth)::float)), $36) as est_pages,
 coalesce($37 + ceil(reltuples / floor((bs - pageopqdata - pagehdr) * fillfactor / ($38 * ($39 + nulldatahdrwidth)::float))), $40) as est_pages_ff
 
from step2
join pg_am am on step2.relam = am.oid
where am.amname = $41
), step4 as (
SELECT
 *,
 bs*(relpages)::bigint AS real_size,

 bs*(relpages-est_pages)::bigint AS extra_size,
 $42 * (relpages-est_pages)::float / relpages AS extra_ratio,
 bs*(relpages-est_pages_ff) AS bloat_size,
 $43 * (relpages-est_pages_ff)::float / relpages AS bloat_ratio
 
from step3

), index_data as (
 select
 case is_na when $44 then $45 else $46 end as "Is N/A",
 format(
 $47,
 left(index_name, $48) || case when length(index_name) > $49 then $50 else $51 end,
 coalesce(nullif(step4.schema_name, $52) || $53, $54) || step4.table_name
 ) as "Index (Table)",
 quote_ident(index_name) as index_name,
 coalesce(nullif(quote_ident(step4.schema_name), $55) || $56, $57) || quote_ident(step4.table_name) as table_name,
 real_size as "Real size bytes",
 pg_size_pretty(real_size::numeric) as "Size",
 extra_ratio as "Extra ratio",
 case
 when extra_size::numeric >= $58
 then $59 || pg_size_pretty(extra_size::numeric)::text || $60 || round(extra_ratio::numeric, $61)::text || $62
 else $63
 end as "Extra",
 case
 when extra_size::numeric >= $64
 then extra_size
 else $65
 end as "Extra size bytes",
 case
 when bloat_size::numeric >= $66
 then $67 || pg_size_pretty(bloat_size::numeric)::text || $68 || round(bloat_ratio::numeric, $69)::text || $70
 else $71
 end as "Bloat",
 case
 when (bloat_size)::numeric >=$72
 then bloat_size
 else $73
 end as "Bloat size bytes",
 case
 when (bloat_ratio)::numeric >=$74
 then bloat_ratio
 else $75
 end as "Bloat ratio",
 case
 when (real_size - bloat_size)::numeric >=$76
 then $77 || pg_size_pretty((real_size - bloat_size)::numeric)
 else $78
 end as "Live",
 case
 when (real_size - bloat_size)::numeric >=$79
 then (real_size - bloat_size)::numeric
 else $80
 end as "Live bytes", 
 fillfactor,
 case when ot.table_id is not null then $81 else $82 end as overrided_settings
 from step4
 left join overrided_tables ot on ot.table_id = step4.tblid
 order by real_size desc nulls last
), limited_data as (
 select * from index_data limit $83
), limited_json_data as (
 select json_object_agg(ld."Index (Table)", ld) as json from limited_data ld
), total_data as (
 select
 sum($84) as count,
 sum("Extra size bytes") as "Extra size bytes sum",
 sum("Real size bytes") as "Real size bytes sum",
 sum("Bloat size bytes") as "Bloat size bytes sum",
 (sum("Bloat size bytes")::numeric/sum("Real size bytes")::numeric * $85) as "Bloat ratio",
 sum("Extra size bytes") as "Extra size bytes sum"
 from index_data
)
select
 json_build_object(
 $86,
 (select * from limited_json_data),
 $87,
 (select row_to_json(total_data) from total_data),
 $88,
 (select count($89) from limited_data where overrided_settings = $90)
 )
