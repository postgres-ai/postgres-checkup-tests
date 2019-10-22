-- queryid: 146226286915031040
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '130'
create table ctnr as select id, id as pnum, id as m_id, id as type_id, id as b, id as todel from generate_series(1, 1000000) _(id)
