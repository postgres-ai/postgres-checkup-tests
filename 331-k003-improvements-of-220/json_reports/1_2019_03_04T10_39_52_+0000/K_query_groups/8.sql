-- NOTICE: current query size (bytes): '85'
select json_object_agg(s.name, s) from (select * from pg_settings s order by name) s
