-- queryid: -3946074279987536000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '95'
select json_object_agg(s.name, s) from (select * from pg_settings s order by category, name) s
