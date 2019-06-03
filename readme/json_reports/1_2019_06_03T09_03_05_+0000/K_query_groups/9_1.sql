-- queryid: 2832171118643663000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '1791'
with overrided_tables as (
 select
 pc.oid as table_id,
 pn.nspname as scheme_name,
 pc.relname as table_name,
 pc.reloptions as options
 from pg_class pc
 join pg_namespace pn on pn.oid = pc.relnamespace
 where reloptions::text ~ $1
), per_instance as (
 select
 datname,
 age(datfrozenxid),
 round(
 age(datfrozenxid)::numeric * $2
 / ($3 * $4^$5 - current_setting($6)::numeric
 )::numeric,
 $7
 ) as capacity_used,
 datfrozenxid,
 (age(datfrozenxid) > $8)::int as warning
 from pg_database
 order by 3 desc
), num_per_instance as (
 select
 row_number() over () num,
 per_instance.*
 from per_instance
), per_database as (
 select
 coalesce(nullif(n.nspname || $9, $10), $11) || c.relname as relation,
 greatest(age(c.relfrozenxid), age(t.relfrozenxid)) as age,
 round(
 (greatest(age(c.relfrozenxid), age(t.relfrozenxid))::numeric *
 $12 / ($13 * $14^$15 - current_setting($16)::numeric)::numeric),
 $17
 ) as capacity_used,
 c.relfrozenxid as rel_relfrozenxid,
 t.relfrozenxid as toast_relfrozenxid,
 (greatest(age(c.relfrozenxid), age(t.relfrozenxid)) > $18)::int as warning,
 case when ot.table_id is not null then $19 else $20 end as overrided_settings
 from pg_class c
 join pg_namespace n on c.relnamespace = n.oid
 left join pg_class t ON c.reltoastrelid = t.oid
 left join overrided_tables ot on ot.table_id = c.oid
 where c.relkind IN ($21, $22) and not (n.nspname = $23 and c.relname <> $24)
 and n.nspname <> $25
 order by 3 desc
), num_per_database as (
 select
 row_number() over () num,
 per_database.*
 from per_database
)
select
 json_build_object(
 $26,
 (select json_object_agg(i.datname, i) from num_per_instance i),
 $27,
 (select json_object_agg(d.relation, d) from num_per_database d),
 $28,
 (select count($29) from per_database where overrided_settings = $30)
 )
