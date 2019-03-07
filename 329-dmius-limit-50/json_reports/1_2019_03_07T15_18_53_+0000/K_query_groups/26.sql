-- queryid: 4276799848214763500
select
 datname
 from pg_database
 where datname not in ($1, $2, $3)
 order by datname
