-- queryid: 6083449333754262000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '917'
with data as (
 
 select
 /* rownum in snapshot may be not equal to resulting rownum */
 row_number() over (order by total_time desc) as rownum,
 /* pg_stat_statements_part */
 left(query, $1) as query, /* obsolete left ? check pg_stat_statements for cutting */
 calls,
 total_time,
 /*
 min_time,
 max_time,
 mean_time
 stddev_time
 */
 rows,
 shared_blks_hit,
 shared_blks_read,
 shared_blks_dirtied,
 shared_blks_written,
 local_blks_hit,
 local_blks_read,
 local_blks_dirtied,
 local_blks_written,
 temp_blks_read,
 temp_blks_written,
 blk_read_time,
 blk_write_time,
 queryid,
 /*
 save hash
 */
 md5( queryid::text || dbid::text || userid::text ) as md5
 from pg_stat_statements s
 order by total_time desc
 limit $2
 
 )
 select json_build_object(
 $3::text, to_json(now()::timestamptz)::json,
 $4::text, to_json(extract($5 from now()::timestamptz))::json,
 $6, json_object_agg(data.md5, data.*)
 )
 from data
