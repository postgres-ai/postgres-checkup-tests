-- queryid: 8785073352377354000
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
 where att.attnum > $26 and not att.attisdropped and s.schemaname not in ($27, $28)
 group by 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, tbl.relhasoids
 order by 2, 3
 ), step2 as (
 select
 *,
 (
 $29 + tpl_hdr_size + tpl_data_size + ($30 * ma)
 - case when tpl_hdr_size % ma = $31 then ma else tpl_hdr_size % ma end
 - case when ceil(tpl_data_size)::int % ma = $32 then ma else ceil(tpl_data_size)::int % ma end
 ) as tpl_size,
 bs - page_hdr as size_per_block,
 (heappages + toastpages) as tblpages
 from step1
 ), step3 as (
 select
 *,
 ceil(reltuples / ((bs - page_hdr) / tpl_size)) + ceil(toasttuples / $33) as est_tblpages,
 ceil(reltuples / ((bs - page_hdr) * fillfactor / (tpl_size * $34))) + ceil(toasttuples / $35) as est_tblpages_ff
 
 from step2
 ), step4 as (
 select
 *,
 tblpages * bs as real_size,
 (tblpages - est_tblpages) * bs as extra_size,
 case when tblpages - est_tblpages > $36 then $37 * (tblpages - est_tblpages) / tblpages::float else $38 end as extra_ratio,
 (tblpages - est_tblpages_ff) * bs as bloat_size,
 case when tblpages - est_tblpages_ff > $39 then $40 * (tblpages - est_tblpages_ff) / tblpages::float else $41 end as bloat_ratio
 
 from step3
 left join pg_stat_user_tables su on su.relid = tblid
 
 
 )
 select
 case is_na when $42 then $43 else $44 end as "Is N/A",
 coalesce(nullif(step4.schema_name, $45) || $46, $47) || step4.table_name as "Table",
 pg_size_pretty(real_size::numeric) as "Size",
 case
 when extra_size::numeric >= $48
 then extra_size::numeric
 else $49
 end as "Extra size bytes",
 extra_ratio as "Extra_ratio",
 case
 when extra_size::numeric >= $50
 then $51 || pg_size_pretty(extra_size::numeric)::text || $52 || round(extra_ratio::numeric, $53)::text || $54
 else $55
 end as "Extra",
 case
 when bloat_size::numeric >= $56
 then bloat_size::numeric
 else $57
 end as "Bloat size bytes",
 bloat_ratio as "Bloat ratio",
 case
 when bloat_size::numeric >= $58
 then $59 || pg_size_pretty(bloat_size::numeric)::text || $60 || round(bloat_ratio::numeric, $61)::text || $62
 else $63
 end as "Bloat estimate",
 real_size as "Real size bytes",
 case
 when (real_size - bloat_size)::numeric >=$64
 then $65 || pg_size_pretty((real_size - bloat_size)::numeric)
 else $66
 end as "Live",
 case
 when (real_size - bloat_size)::numeric >=$67
 then (real_size - bloat_size)::numeric
 else $68
 end as "Live bytes",
 greatest(last_autovacuum, last_vacuum)::timestamp(0)::text
 || case greatest(last_autovacuum, last_vacuum)
 when last_autovacuum then $69
 else $70 end as "Last Vaccuum",
 (
 select
 coalesce(substring(array_to_string(reloptions, $71) from $72)::smallint, $73)
 from pg_class
 where oid = tblid
 ) as "Fillfactor",
 case when ot.table_id is not null then $74 else $75 end as overrided_settings
 from step4
 left join overrided_tables ot on ot.table_id = step4.tblid
 order by bloat_size desc nulls last
), limited_data as (
 select * from data limit $76
), num_limited_data as (
 select
 row_number() over () num,
 limited_data.*
 from limited_data
), limited_json_data as (
 select json_object_agg(ld."Table", ld) as json from num_limited_data ld
), total_data as (
 select
 sum($77) as count,
 sum("Extra size bytes") as "Extra size bytes sum",
 sum("Real size bytes") as "Real size bytes sum",
 sum("Bloat size bytes") as "Bloat size bytes sum",
 (sum("Bloat size bytes")::numeric/sum("Real size bytes")::numeric * $78) as "Bloat ratio",
 sum("Extra size bytes") as "Extra size bytes sum"
 from data
)
select
 json_build_object(
 $79,
 (select * from limited_json_data),
 $80,
 (select row_to_json(total_data) from total_data),
 $81,
 (select count($82) from limited_data where overrided_settings = $83)
 )
