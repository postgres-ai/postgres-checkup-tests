with settings_count as (
 select json_object_agg(coalesce(s.sourcefile, $1), s.count)
 from (select sourcefile, count(ps.*) as count from pg_settings ps group by 1) s
), changes as (
 select
 json_agg(json_build_object(
 $2, s.sourcefile,
 $3, s.count,
 $4, s.examples
 ))
 from (
 select
 sourcefile,
 count(ps.*) as count,
 (json_agg(name order by name) filter (where sourcefile is not null)) as examples
 from pg_settings ps group by 1
 ) s
)
select json_build_object($5, (select * from settings_count), $6, (select * from changes))
