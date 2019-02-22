-- queryid: -5128248192178664000
select json_object_agg(s.name, s) from (select * from pg_config s order by name) s
