-- queryid: -6797651002030005000
select setting::integer / $1 from pg_settings where name = $2
