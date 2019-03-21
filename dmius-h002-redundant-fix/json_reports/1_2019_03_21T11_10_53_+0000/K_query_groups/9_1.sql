-- queryid: -4991387957218323
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '85'
select json_object_agg(s.name, s) from (select * from pg_settings s order by name) s
