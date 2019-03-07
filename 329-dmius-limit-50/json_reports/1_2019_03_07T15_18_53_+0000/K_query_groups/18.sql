-- queryid: -3142345568409161000
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
), data as (
 select
 pci.relname as index_name,
 pn.nspname as schema_name,
 pct.relname as table_name,
 quote_ident(pn.nspname) as formated_schema_name,
 quote_ident(pci.relname) as formated_index_name,
 quote_ident(pct.relname) as formated_table_name,
 coalesce(nullif(quote_ident(pn.nspname), $6) || $7, $8) || quote_ident(pct.relname) as formated_relation_name,
 pg_relation_size(pidx.indexrelid) index_size_bytes,
 format(
 $9,
 quote_ident(pci.relname),
 $10,
 pct.relname) as drop_code,
 replace(
 format($11, pg_get_indexdef(pidx.indexrelid), pct.relname),
 $12,
 $13
 ) as revert_code,
 case when fi.index_name is not null then $14 else $15 end as supports_fk
 from pg_index pidx
 join pg_class as pci on pci.oid = pidx.indexrelid
 join pg_class as pct on pct.oid = pidx.indrelid
 left join pg_namespace pn on pn.oid = pct.relnamespace
 left join fk_indexes fi on
 fi.fk_table_ref = pct.relname
 and fi.opclasses like (array_to_string(pidx.indclass, $16) || $17)
 where pidx.indisvalid = $18
), data_total as (
 select
 sum(index_size_bytes) as index_size_bytes_sum
 from data
), num_data as (
 select
 row_number() over () num,
 data.*
 from data
 limit $19
), data_json as (
 select
 json_object_agg(d.schema_name || $20 || d.index_name, d) as json
 from num_data d
)
select
 json_build_object(
 $21,
 (select * from data_json),
 $22,
 (select row_to_json(dt) from data_total as dt)
 )
