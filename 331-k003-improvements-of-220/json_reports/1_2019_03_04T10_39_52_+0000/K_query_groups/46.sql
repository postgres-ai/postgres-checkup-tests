-- NOTICE: current query size (bytes): '100'
alter table t_red_fk_2 add constraint fk_red_fk2_t1 foreign key (r_t1_id) references t_red_fk_1(id)
