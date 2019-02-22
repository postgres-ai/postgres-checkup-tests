-- queryid: 2634164020010936000
with data as (
 with step1 as (
 select
 tbl.oid tblid,
 ns.nspname as schema_name,
 tbl.relname as table_name,
 tbl.reltuples,
 tbl.relpages as heappages,
 coalesce(toast.relpages, $1) as toastpages,
 coalesce(toast.reltuples, $2) as toasttuples,
 coalesce(substring(array_to_string(tbl.reloptions, $3) from $4 for $5)::int2, $6) as fillfactor,
 current_setting($7)::numeric as bs,
 case when version() ~ $8 then $9 else $10 end as ma, 
 $11 as page_hdr,
 $12 + case when max(coalesce(null_frac, $13)) > $14 then ($15 + count(*)) / $16 else $17::int end
 + case when tbl.relhasoids then $18 else $19 end as tpl_hdr_size,
 sum(($20 - coalesce(s.null_frac, $21)) * coalesce(s.avg_width, $22)) as tpl_data_size,
 bool_or(att.atttypid = $23::regtype) or count(att.attname) <> count(s.attname) as is_na
 from pg_attribute as att
 join pg_class as tbl on att.attrelid = tbl.oid and tbl.relkind = $24
 join pg_namespace as ns on ns.oid = tbl.relnamespace
 join pg_stats as s on s.schemaname = ns.nspname and s.tablename = tbl.relname and not s.inherited and s.attname = att.attname
 left join pg_class as toast on tbl.reltoastrelid = toast.oid
 where att.attnum > $25 and not att.attisdropped and s.schemaname not in ($26, $27)
 group by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, tbl.relhasoids
 order by 2, 3
 ), step2 as (
 select
 *,
 (
 $28 + tpl_hdr_size + tpl_data_size + ($29 * ma)
 - case when tpl_hdr_size % ma = $30 then ma else tpl_hdr_size % ma end
 - case when ceil(tpl_data_size)::int % ma = $31 then ma else ceil(tpl_data_size)::int % ma end
 ) as tpl_size,
 bs - page_hdr as size_per_block,
 (heappages + toastpages) as tblpages
 from step1
 ), step3 as (
 select
 *,
 ceil(reltuples / ((bs - page_hdr) / tpl_size)) + ceil(toasttuples / $32) as est_tblpages,
 ceil(reltuples / ((bs - page_hdr) * fillfactor / (tpl_size * $33))) + ceil(toasttuples / $34) as est_tblpages_ff
 
 from step2
 ), step4 as (
 select
 *,
 tblpages * bs as real_size,
 (tblpages - est_tblpages) * bs as extra_size,
 case when tblpages - est_tblpages > $35 then $36 * (tblpages - est_tblpages) / tblpages::float else $37 end as extra_ratio,
 (tblpages - est_tblpages_ff) * bs as bloat_size,
 case when tblpages - est_tblpages_ff > $38 then $39 * (tblpages - est_tblpages_ff) / tblpages::float else $40 end as bloat_ratio
 
 from step3
 left join pg_stat_user_tables su on su.relid = tblid
 
 
 )
 select
 case is_na when $41 then $42 else $43 end as "Is N/A",
 coalesce(nullif(schema_name, $44) || $45, $46) || table_name as "Table",
 pg_size_pretty(real_size::numeric) as "Size",
 case
 when extra_size::numeric >= $47
 then extra_size::numeric
 else $48
 end as "Extra size bytes",
 extra_ratio as "Extra_ratio",
 case
 when extra_size::numeric >= $49
 then $50 || pg_size_pretty(extra_size::numeric)::text || $51 || round(extra_ratio::numeric, $52)::text || $53
 else $54
 end as "Extra",
 case
 when bloat_size::numeric >= $55
 then bloat_size::numeric
 else $56
 end as "Bloat size bytes",
 bloat_ratio as "Bloat ratio",
 case
 when bloat_size::numeric >= $57
 then $58 || pg_size_pretty(bloat_size::numeric)::text || $59 || round(bloat_ratio::numeric, $60)::text || $61
 else $62
 end as "Bloat estimate",
 real_size as "Real size bytes",
 case
 when (real_size - bloat_size)::numeric >=$63
 then $64 || pg_size_pretty((real_size - bloat_size)::numeric)
 else $65
 end as "Live",
 case
 when (real_size - bloat_size)::numeric >=$66
 then (real_size - bloat_size)::numeric
 else $67
 end as "Live bytes",
 greatest(last_autovacuum, last_vacuum)::timestamp(0)::text
 || case greatest(last_autovacuum, last_vacuum)
 when last_autovacuum then $68
 else $69 end as "Last Vaccuum",
 (
 select
 coalesce(substring(array_to_string(reloptions, $70) from $71)::smallint, $72)
 from pg_class
 where oid = tblid
 ) as "Fillfactor"
 from step4
 order by bloat_size desc nulls last
), limited_data as (
 select * from data limit $73
), limited_json_data as (
 select json_object_agg(ld."Table", ld) as json from limited_data ld
), total_data as (
 select
 sum($74) as count,
 sum("Extra size bytes") as "Extra size bytes sum",
 sum("Real size bytes") as "Real size bytes sum",
 sum("Bloat size bytes") as "Bloat size bytes sum",
 (sum("Bloat size bytes")::numeric/sum("Real size bytes")::numeric * $75) as "Bloat ratio",
 sum("Extra size bytes") as "Extra size bytes sum"
 from data
)
select
 json_build_object(
 $76,
 (select * from limited_json_data),
 $77,
 (select row_to_json(total_data) from total_data)
 )
