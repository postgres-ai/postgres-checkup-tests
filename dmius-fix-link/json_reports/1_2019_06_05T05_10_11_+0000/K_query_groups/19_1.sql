-- queryid: 2911641097746118700
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '100'
alter table t_red_fk_2 add constraint fk_red_fk2_t1 foreign key (r_t1_id) references t_red_fk_1(id)
