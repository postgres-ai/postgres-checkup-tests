-- queryid: 1240453345977110000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '3172'
with data as (
 select
 c.oid,
 (select spcname from pg_tablespace where oid = reltablespace) as tblspace,
 nspname as schema_name,
 relname as table_name,
 c.reltuples as row_estimate,
 pg_total_relation_size(c.oid) as total_bytes,
 pg_indexes_size(c.oid) as index_bytes,
 pg_total_relation_size(reltoastrelid) as toast_bytes,
 pg_total_relation_size(c.oid) - pg_indexes_size(c.oid) - coalesce(pg_total_relation_size(reltoastrelid), $1) as table_bytes
 from pg_class c
 left join pg_namespace n on n.oid = c.relnamespace
 where relkind = $2 and nspname <> $3
 order by c.relpages desc
), data2 as (
 select
 $4::oid as oid,
 $5 as tblspace,
 $6 as schema_name,
 $7 as table_name,
 sum(row_estimate) as row_estimate,
 sum(total_bytes) as total_bytes,
 sum(index_bytes) as index_bytes,
 sum(toast_bytes) as toast_bytes,
 sum(table_bytes) as table_bytes
 from data
 union all
 select
 $8::oid as oid,
 $9,
 $10 as schema_name,
 $11 || coalesce(tblspace, $12) || $13 as table_name,
 sum(row_estimate) as row_estimate,
 sum(total_bytes) as total_bytes,
 sum(index_bytes) as index_bytes,
 sum(toast_bytes) as toast_bytes,
 sum(table_bytes) as table_bytes
 from data
 where (select count(distinct coalesce(tblspace, $14)) from data) > $15
 group by tblspace
 union all
 select * from data
), tables as (
 select
 coalesce(nullif(schema_name, $16) || $17, $18) || table_name || coalesce($19 || tblspace || $20, $21) as "Table",
 $22 || case
 when row_estimate > $23^$24 then round(row_estimate::numeric / $25^$26::numeric, $27)::text || $28
 when row_estimate > $29^$30 then round(row_estimate::numeric / $31^$32::numeric, $33)::text || $34
 when row_estimate > $35^$36 then round(row_estimate::numeric / $37^$38::numeric, $39)::text || $40
 when row_estimate > $41^$42 then round(row_estimate::numeric / $43^$44::numeric, $45)::text || $46
 else row_estimate::text
 end as "Rows",
 pg_size_pretty(total_bytes) || $47 || round(
 $48 * total_bytes::numeric / nullif(sum(total_bytes) over (partition by (schema_name is null), left(table_name, $49) = $50), $51),
 $52
 )::text || $53 as "Total Size",
 pg_size_pretty(table_bytes) || $54 || round(
 $55 * table_bytes::numeric / nullif(sum(table_bytes) over (partition by (schema_name is null), left(table_name, 3) = '***'), $56),
 $57
 )::text || $58 as "Table Size",
 pg_size_pretty(index_bytes) || $59 || round(
 $60 * index_bytes::numeric / nullif(sum(index_bytes) over (partition by (schema_name is null), left(table_name, 3) = '***'), $61),
 $62
 )::text || $63 as "Index(es) Size",
 pg_size_pretty(toast_bytes) || $64 || round(
 $65 * toast_bytes::numeric / nullif(sum(toast_bytes) over (partition by (schema_name is null), left(table_name, 3) = '***'), $66),
 $67
 )::text || $68 as "TOAST Size"
 from data2
 where schema_name is distinct from $69
 order by oid is null desc, total_bytes desc nulls last
), total as (
 select
 $70::bigint as num,
 ts.*
 from tables ts
 where "Table" = $71
), num_tables as (
 select
 row_number() over () num,
 ts.*
 from tables ts
 where "Table" <> $72
), together as (
 select * from total
 union all
 select * from num_tables
)
select json_object_agg(t."Table", t) as json from together t
