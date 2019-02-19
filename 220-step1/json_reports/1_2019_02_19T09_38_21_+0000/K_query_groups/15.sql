select json_object_agg(s.name, s) from pg_settings s where name in ($1, $2, $3, $4, $5, $6, $7)
