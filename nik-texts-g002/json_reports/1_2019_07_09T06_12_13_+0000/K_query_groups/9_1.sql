-- queryid: -4605761145085266400
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '187'
select
 json_build_object($1, version(),
 $2, current_setting($3),
 $4, (select regexp_replace(current_setting($5), $6, $7)),
 $8, (select regexp_replace(current_setting($9), $10, $11)))
