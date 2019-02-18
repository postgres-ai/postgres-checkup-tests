with data as (
 
select
 coalesce(usename, $1) as "User",
 coalesce(datname, $2) as "DB",
 coalesce(state, $3) as "Current State",
 count(*) as "Count",
 count(*) filter (where state_change < now() - interval $4) as "State changed >1m ago",
 count(*) filter (where state_change < now() - interval $5) as "State changed >1h ago"
from pg_stat_activity
group by grouping sets ((datname, usename, state), (usename, state), ())
order by
 usename is null desc,
 datname is null desc,
 2 asc,
 3 asc,
 count(*) desc
),
num_data as (
 select row_number() over () num, data.* from data
)
select json_object_agg(num_data.num, num_data) from num_data
