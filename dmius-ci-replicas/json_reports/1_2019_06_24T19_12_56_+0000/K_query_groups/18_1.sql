-- queryid: -8820281542468019000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '113'
select json_object_agg(s.name, s)
 from pg_settings s
 where name in (
 $1,
 $2,
 $3,
 $4,
 $5,
 $6,
 $7,
 $8
 )
