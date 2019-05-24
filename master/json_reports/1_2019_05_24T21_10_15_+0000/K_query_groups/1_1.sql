-- queryid: 4933918777521902000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '3298'
with data as (
 with data as (
 select s.*
 from pg_stat_database s
 where s.datname = current_database()
 )
 select
 $1 as metric,
 (select setting from pg_settings where name = $2) as value
 union all
 select
 $3 as metric,
 case
 when pg_is_in_recovery() then $4 || $5
 || ((((case
 when pg_last_wal_receive_lsn() = pg_last_wal_replay_lsn() then $6
 else extract ($7 from now() - pg_last_xact_replay_timestamp())
 end)::int)::text || $8)::interval)::text
 || $9 || pg_is_wal_replay_paused()::text || $10
 else
 $11
 end as value
 union all
 (
 with repl_groups as (
 select sync_state, state, string_agg(host(client_addr), $12) as hosts
 from pg_stat_replication
 group by 1, 2
 )
 select
 $13,
 string_agg(sync_state || $14 || state || $15 || hosts, $16)
 from repl_groups
 )
 union all
 select $17, pg_postmaster_start_time()::timestamptz(0)::text
 union all
 select $18, (now() - pg_postmaster_start_time())::interval(0)::text
 union all
 select
 $19,
 (select (checkpoints_timed + checkpoints_req)::text from pg_stat_bgwriter)
 union all
 select
 $20,
 (
 select round($21 * checkpoints_req::numeric /
 (nullif(checkpoints_timed + checkpoints_req, $22)), $23)::text || $24
 from pg_stat_bgwriter
 )
 union all
 select
 $25,
 (
 select round((nullif(buffers_checkpoint::numeric, $26) /
 (($27 * $28 /
 (current_setting($29)::numeric))
 * extract($30 from now() - stats_reset)
 ))::numeric, $31)::text
 from pg_stat_bgwriter
 )
 union all
 select repeat($32, $33), repeat($34, $35)
 union all
 select $36 as metric, datname as value from data
 union all
 select $37, pg_size_pretty(pg_database_size(current_database()))
 union all
 select $38, stats_reset::timestamptz(0)::text from data
 union all
 select $39, (now() - stats_reset)::interval(0)::text from data
 union all
 select $40, (round(blks_hit * $41::numeric / (blks_hit + blks_read), $42))::text || $43 from data 
 union all
 select $44, (round(xact_commit * $45::numeric / (xact_commit + xact_rollback), $46))::text || $47 from data
 union all
 select $48, conflicts::text from data
 union all
 select $49, pg_size_pretty(temp_bytes)::text from data
 union all
 select $50, temp_files::text from data
 union all
 select
 $51,
 case
 when (((extract($52 from now()) - extract($53 from data.stats_reset))/$54)::int) <> $55 then
 (temp_files / (((extract($56 from now()) - extract($57 from data.stats_reset))/$58)::int))::text
 else
 temp_files::text
 end
 from data
 union all
 select $59, pg_size_pretty(temp_bytes::numeric / nullif(temp_files, $60))::text from data
 union all
 select $61, deadlocks::text from data
 union all
 select
 $62,
 case
 when ((extract($63 from now()) - extract($64 from data.stats_reset))/$65)::int <> $66 then
 (deadlocks / (((extract($67 from now()) - extract($68 from data.stats_reset))/$69)::int))::text
 else
 deadlocks::text
 end
 from data
), general_info_json as (
 select json_object_agg(data.metric, data) as json from data where data.metric not like $70
), database_sizes as (
 select pd.datname, pg_database_size(pd.datname) as db_size from pg_database pd order by db_size desc
), sorted_database_sizes as (
 select json_object_agg(datname, db_size) from database_sizes ds
)
select
 json_build_object(
 $71,
 (select * from general_info_json),
 $72,
 (select * from sorted_database_sizes)
 )
