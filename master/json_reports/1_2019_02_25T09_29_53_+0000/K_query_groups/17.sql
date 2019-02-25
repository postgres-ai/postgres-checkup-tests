-- queryid: 3610341630322679000
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
 limit $26
)
select 
 json_build_object(
 $27, 
 (select json_object_agg(i.datname, i) from per_instance i), 
 $28, 
 (select json_object_agg(d.relation, d) from per_database d),
 $29,
 (select count($30) from per_database where overrided_settings = $31)
 )
