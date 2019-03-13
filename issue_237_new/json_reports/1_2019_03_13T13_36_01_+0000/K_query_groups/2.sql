-- queryid: -221348159466462940
with data as (
 with data as (
 select s.*
 from pg_stat_database s
 where s.datname = current_database()
 )
 select $1 as metric, version() as value
 union all
 select
 $2 as metric,
 (select setting from pg_settings where name = $3) as value
 union all
 select
 $4 as metric,
 case
 when pg_is_in_recovery() then $5 || $6
 || ((((case
 when pg_last_wal_receive_lsn() = pg_last_wal_replay_lsn() then $7
 else extract ($8 from now() - pg_last_xact_replay_timestamp())
 end)::int)::text || $9)::interval)::text
 || $10 || pg_is_wal_replay_paused()::text || $11
 else
 $12
 end as value
 union all
 (
 with repl_groups as (
 select sync_state, state, string_agg(host(client_addr), $13) as hosts
 from pg_stat_replication
 group by 1, 2
 )
 select
 $14,
 string_agg(sync_state || $15 || state || $16 || hosts, $17)
 from repl_groups
 )
 union all
 select $18, pg_postmaster_start_time()::timestamptz(0)::text
 union all
 select $19, (now() - pg_postmaster_start_time())::interval(0)::text
 union all
 select
 $20,
 (select (checkpoints_timed + checkpoints_req)::text from pg_stat_bgwriter)
 union all
 select
 $21,
 (
 select round($22 * checkpoints_req::numeric /
 (nullif(checkpoints_timed + checkpoints_req, $23)), $24)::text || $25
 from pg_stat_bgwriter
 )
 union all
 select
 $26,
 (
 select round((nullif(buffers_checkpoint::numeric, $27) /
 (($28 * $29 /
 (current_setting($30)::numeric))
 * extract($31 from now() - stats_reset)
 ))::numeric, $32)::text
 from pg_stat_bgwriter
 )
 union all
 select repeat($33, $34), repeat($35, $36)
 union all
 select $37 as metric, datname as value from data
 union all
 select $38, pg_size_pretty(pg_database_size(current_database()))
 union all
 select $39, stats_reset::timestamptz(0)::text from data
 union all
 select $40, (now() - stats_reset)::interval(0)::text from data
 union all
 select $41, (
 with exts as (
 select extname || $42 || extversion e, ($43 + row_number() over (order by extname)) / $44 i from pg_extension
 ), lines(l) as (
 select string_agg(e, $45 order by i) l from exts group by i
 )
 select string_agg(l, $46) from lines
 )
 union all
 select $47, (round(blks_hit * $48::numeric / (blks_hit + blks_read), $49))::text || $50 from data 
 union all
 select $51, (round(xact_commit * $52::numeric / (xact_commit + xact_rollback), $53))::text || $54 from data
 union all
 select $55, conflicts::text from data
 union all
 select $56, pg_size_pretty(temp_bytes)::text from data
 union all
 select $57, temp_files::text from data
 union all
 select
 $58,
 case
 when (((extract($59 from now()) - extract($60 from data.stats_reset))/$61)::int) <> $62 then
 (temp_files / (((extract($63 from now()) - extract($64 from data.stats_reset))/$65)::int))::text
 else
 temp_files::text
 end
 from data
 union all
 select $66, pg_size_pretty(temp_bytes::numeric / nullif(temp_files, $67))::text from data
 union all
 select $68, deadlocks::text from data
 union all
 select
 $69,
 case
 when ((extract($70 from now()) - extract($71 from data.stats_reset))/$72)::int <> $73 then
 (deadlocks / (((extract($74 from now()) - extract($75 from data.stats_reset))/$76)::int))::text
 else
 deadlocks::text
 end
 from data
), general_info_json as (
 select json_object_agg(data.metric, data) as json from data where data.metric not like $77
), database_sizes as (
 select pd.datname, pg_database_size(pd.datname) as db_size from pg_database pd order by db_size desc
), sorted_database_sizes as (
 select json_object_agg(datname, db_size) from database_sizes ds
)
select
 json_build_object(
 $78,
 (select * from general_info_json),
 $79,
 (select * from sorted_database_sizes)
 )
