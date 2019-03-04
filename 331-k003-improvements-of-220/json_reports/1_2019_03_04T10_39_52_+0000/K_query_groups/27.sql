-- NOTICE: current query size (bytes): '85'
alter table t_fk_2 add constraint fk_t2_t1 foreign key (t1_id) references t_fk_1(id)
