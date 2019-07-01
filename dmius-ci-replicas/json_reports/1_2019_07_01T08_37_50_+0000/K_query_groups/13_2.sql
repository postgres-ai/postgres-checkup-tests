-- queryid: 7147090945536157000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '815'
with data as (
 select
 coalesce(usename, $1) as "user",
 coalesce(datname, $2) as "database",
 coalesce(state, $3) as "current_state",
 count(*) as "count",
 count(*) filter (where state_change < now() - interval $4) as "state_changed_more_1m_ago",
 count(*) filter (where state_change < now() - interval $5) as "state_changed_more_1h_ago",
 count(*) filter (where xact_start < now() - interval $6) as "tx_age_more_1m",
 count(*) filter (where xact_start < now() - interval $7) as "tx_age_more_1h"
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
 select row_number() over () num, data.*
 from data
)
select json_object_agg(num_data.num, num_data) from num_data
