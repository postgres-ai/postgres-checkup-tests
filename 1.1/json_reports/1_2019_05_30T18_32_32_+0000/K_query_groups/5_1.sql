-- queryid: -6927439939325166000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '1215'
with timeouts as (
 select json_object_agg(s.name,s ) from pg_settings s where name in ($1, $2, $3)
), locks as (
 select json_object_agg(s.name,s ) from pg_settings s where name in ($4, $5, $6, $7, $8, $9)
), databases_stat as (
 select
 *,
 ((now() - sd.stats_reset)::interval(0)::text) as stats_reset_age
 from pg_stat_database sd
 where datname in (SELECT datname FROM pg_database WHERE datistemplate = $10)
 order by deadlocks desc
), num_dbs_data as (
 select
 row_number() over () num,
 ds.*
 from databases_stat ds
), dbs_data as (
 select json_object_agg(sd.datname, sd) from num_dbs_data sd
), db_specified_settings as (
 select json_object_agg(dbs.database, dbs) from
 (select
 (select datname from pg_database where oid = pd.setdatabase) as database,
 *
 from pg_db_role_setting pd
 where
 setconfig::text ~ $11
 and setdatabase is not null and setdatabase <> $12
 ) dbs
), user_specified_settings as (
 select json_object_agg(pr.rolname, pr) from pg_roles pr where rolconfig::text ~ $13
)
select
 json_build_object(
 $14, (select * from timeouts), $15, (select * from locks),
 $16, (select * from dbs_data),
 $17, (select * from db_specified_settings),
 $18, (select * from user_specified_settings)
 )
