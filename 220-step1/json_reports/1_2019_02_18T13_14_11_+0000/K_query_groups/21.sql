with data as (
 






select 
 coalesce(nullif(pn.nspname, $1) || $2, $3) || pct.relname as "relation_name",
 pci.relname as index_name,
 pn.nspname as schema_name,
 pct.relname as table_name,
 pg_size_pretty(pg_relation_size(pidx.indexrelid)) index_size,
 format(
 $4,
 pidx.indexrelid::regclass::text,
 $5,
 pct.relname) as drop_code,
 replace(
 format($6, pg_get_indexdef(pidx.indexrelid), pct.relname),
 $7,
 $8
 ) as revert_code
from pg_index pidx
join pg_class as pci on pci.oid = pidx.indexrelid
join pg_class as pct on pct.oid = pidx.indrelid
left join pg_namespace pn on pn.oid = pct.relnamespace
where pidx.indisvalid = $9
),
num_data as (
 select row_number() over () num, data.* from data
)
select json_object_agg(num_data.num, num_data) from num_data
