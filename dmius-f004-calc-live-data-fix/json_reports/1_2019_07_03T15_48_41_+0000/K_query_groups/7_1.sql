-- queryid: 3654530128444090000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '5581'
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
 ), step1 as (
 select
 tbl.oid tblid,
 ns.nspname as schema_name,
 tbl.relname as table_name,
 tbl.reltuples,
 tbl.relpages as heappages,
 coalesce(toast.relpages, $2) as toastpages,
 coalesce(toast.reltuples, $3) as toasttuples,
 coalesce(substring(array_to_string(tbl.reloptions, $4) from $5 for $6)::int2, $7) as fillfactor,
 current_setting($8)::numeric as bs,
 case when version() ~ $9 then $10 else $11 end as ma, 
 $12 as page_hdr,
 $13 + case when max(coalesce(null_frac, $14)) > $15 then ($16 + count(*)) / $17 else $18::int end
 + case when tbl.relhasoids then $19 else $20 end as tpl_hdr_size,
 sum(($21 - coalesce(s.null_frac, $22)) * coalesce(s.avg_width, $23)) as tpl_data_size,
 bool_or(att.atttypid = $24::regtype) or count(att.attname) <> count(s.attname) as is_na
 from pg_attribute as att
 join pg_class as tbl on att.attrelid = tbl.oid and tbl.relkind = $25
 join pg_namespace as ns on ns.oid = tbl.relnamespace
 join pg_stats as s on s.schemaname = ns.nspname and s.tablename = tbl.relname and not s.inherited and s.attname = att.attname
 left join pg_class as toast on tbl.reltoastrelid = toast.oid
 where att.attnum > $26 and not att.attisdropped and s.schemaname not in ($27, $28) and tbl.relpages > $29
 group by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, tbl.relhasoids
 order by 2, 3
 ), step2 as (
 select
 *,
 (
 $30 + tpl_hdr_size + tpl_data_size + ($31 * ma)
 - case when tpl_hdr_size % ma = $32 then ma else tpl_hdr_size % ma end
 - case when ceil(tpl_data_size)::int % ma = $33 then ma else ceil(tpl_data_size)::int % ma end
 ) as tpl_size,
 bs - page_hdr as size_per_block,
 (heappages + toastpages) as tblpages
 from step1
 ), step3 as (
 select
 *,
 ceil(reltuples / ((bs - page_hdr) / tpl_size)) + ceil(toasttuples / $34) as est_tblpages,
 ceil(reltuples / ((bs - page_hdr) * fillfactor / (tpl_size * $35))) + ceil(toasttuples / $36) as est_tblpages_ff
 
 from step2
 ), step4 as (
 select
 *,
 tblpages * bs as real_size,
 (tblpages - est_tblpages) * bs as extra_size,
 case when tblpages - est_tblpages > $37 then $38 * (tblpages - est_tblpages) / tblpages::float else $39 end as extra_ratio,
 (tblpages - est_tblpages_ff) * bs as bloat_size,
 case when tblpages > est_tblpages then (tblpages - est_tblpages_ff) * bs else $40 end as bloat_size_safe,
 case when tblpages - est_tblpages_ff > $41 then $42 * (tblpages - est_tblpages_ff) / tblpages::float else $43 end as bloat_ratio
 
 from step3
 left join pg_stat_user_tables su on su.relid = tblid
 
 
 )
 select
 case is_na when $44 then $45 else $46 end as "is_na",
 coalesce(nullif(step4.schema_name, $47) || $48, $49) || step4.table_name as "table_name",
 pg_size_pretty(real_size::numeric) as "real_size",
 case
 when extra_size::numeric >= $50
 then extra_size::numeric
 else $51
 end as "extra_size_bytes",
 extra_ratio as "extra_ratio_percent",
 case
 when extra_size::numeric >= $52
 then $53 || pg_size_pretty(extra_size::numeric)::text || $54 || round(extra_ratio::numeric, $55)::text || $56
 else $57
 end as "extra",
 case
 when bloat_size::numeric >= $58
 then bloat_size::numeric
 else $59
 end as "bloat_size_bytes",
 bloat_ratio as "bloat_ratio_percent",
 case
 when bloat_size::numeric >= $60
 then $61 || pg_size_pretty(bloat_size::numeric)::text || $62 || round(bloat_ratio::numeric, $63)::text || $64
 else $65
 end as "bloat_estimate",
 real_size as "real_size_bytes",
 case
 when real_size > bloat_size_safe
 then $66 || pg_size_pretty((real_size - bloat_size_safe)::numeric)
 else $67
 end as "live_data_size",
 case
 when (real_size - bloat_size_safe)::numeric >=$68
 then (real_size - bloat_size_safe)::numeric
 else $69
 end as "live_data_size_bytes",
 greatest(last_autovacuum, last_vacuum)::timestamp(0)::text
 || case greatest(last_autovacuum, last_vacuum)
 when last_autovacuum then $70
 else $71
 end
 as "last_vaccuum",
 (
 select
 coalesce(substring(array_to_string(reloptions, $72) from $73)::smallint, $74)
 from pg_class
 where oid = tblid
 ) as "fillfactor",
 case when ot.table_id is not null then $75 else $76 end as overrided_settings,
 case
 when (real_size - bloat_size)::numeric >=$77
 then real_size::numeric / (real_size - bloat_size)::numeric
 else $78
 end as "bloat_ratio"
 from step4
 left join overrided_tables ot on ot.table_id = step4.tblid
 order by bloat_size desc nulls last
), limited_data as (
 select * from data
), num_limited_data as (
 select
 row_number() over () num,
 limited_data.*
 from limited_data
), limited_json_data as (
 select json_object_agg(ld."table_name", ld) as json from num_limited_data ld
), total_data as (
 select
 sum($79) as count,
 sum("extra_size_bytes") as "extra_size_bytes_sum",
 sum("real_size_bytes") as "real_size_bytes_sum",
 sum("bloat_size_bytes") as "bloat_size_bytes_sum",
 sum("live_data_size_bytes") as "live_data_size_bytes_sum",
 (sum("bloat_size_bytes")::numeric/sum("real_size_bytes")::numeric * $80) as "bloat_ratio_percent_avg",
 (sum("real_size_bytes")::numeric/sum("live_data_size_bytes")::numeric) as "bloat_ratio_avg",
 sum("extra_size_bytes") as "extra_size_bytes_sum"
 from data
)
select
 json_build_object(
 $81,
 (select * from limited_json_data),
 $82,
 (select row_to_json(total_data) from total_data),
 $83,
 (select count($84) from limited_data where overrided_settings = $85),
 $86,
 (select pg_database_size(current_database()))
 )
