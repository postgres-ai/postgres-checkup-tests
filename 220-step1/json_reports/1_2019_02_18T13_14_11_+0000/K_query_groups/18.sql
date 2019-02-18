with per_instance as (
 select
 datname,
 age(datfrozenxid),
 round(
 age(datfrozenxid)::numeric * $1
 / ($2 * $3^$4 - current_setting($5)::numeric
 )::numeric,
 $6
 ) as capacity_used,
 datfrozenxid,
 (age(datfrozenxid) > $7)::int as warning
 from pg_database
 order by 3 desc
), per_database as (
 select
 coalesce(nullif(n.nspname || $8, $9), $10) || c.relname as relation,
 greatest(age(c.relfrozenxid), age(t.relfrozenxid)) as age,
 round(
 (greatest(age(c.relfrozenxid), age(t.relfrozenxid))::numeric * 
 $11 / ($12 * $13^$14 - current_setting($15)::numeric)::numeric),
 $16
 ) as capacity_used,
 c.relfrozenxid as rel_relfrozenxid,
 t.relfrozenxid as toast_relfrozenxid,
 (greatest(age(c.relfrozenxid), age(t.relfrozenxid)) > $17)::int as warning
 from pg_class c
 join pg_namespace n on c.relnamespace = n.oid
 left join pg_class t ON c.reltoastrelid = t.oid
 where c.relkind IN ($18, $19) and not (n.nspname = $20 and c.relname <> $21)
 and n.nspname <> $22
 order by 3 desc
 limit $23
)
select 
 json_build_object(
 $24, 
 (select json_object_agg(i.datname, i) from per_instance i), 
 $25, 
 (select json_object_agg(d.relation, d) from per_database d)
 )
