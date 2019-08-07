# PostgreSQL Checkup. Project: 'test_1'. Database: 'my_test_db'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-08-07 16:41:09 +0300


<a name="postgres-checkup_top">&nbsp;</a>
### Table of contents ###

[A002 Version Information](#postgres-checkup_A002)  
[A003 Postgres Settings](#postgres-checkup_A003)  
[A004 Cluster Information](#postgres-checkup_A004)  
[A005 Extensions](#postgres-checkup_A005)  
[A006 Postgres Setting Deviations](#postgres-checkup_A006)  
[A007 Altered Settings](#postgres-checkup_A007)  
[D004 pg_stat_statements and pg_stat_kcache Settings](#postgres-checkup_D004)  
[F001 Autovacuum: Current Settings](#postgres-checkup_F001)  
[F002 Autovacuum: Transaction ID Wraparound Check](#postgres-checkup_F002)  
[F003 Autovacuum: Dead Tuples](#postgres-checkup_F003)  
[F004 Autovacuum: Heap Bloat (Estimated)](#postgres-checkup_F004)  
[F005 Autovacuum: Index Bloat (Estimated)](#postgres-checkup_F005)  
[F008 Autovacuum: Resource Usage](#postgres-checkup_F008)  
[G001 Memory-related Settings](#postgres-checkup_G001)  
[G002 Connections and Current Activity](#postgres-checkup_G002)  
[G003 Timeouts, Locks, Deadlocks](#postgres-checkup_G003)  
[H001 Invalid Indexes](#postgres-checkup_H001)  
[H002 Unused and Redundant Indexes](#postgres-checkup_H002)  
[H003 Non-indexed Foreign Keys](#postgres-checkup_H003)  
[K001 Globally Aggregated Query Metrics](#postgres-checkup_K001)  
[K002 Workload Type ("First Word" Analysis)](#postgres-checkup_K002)  
[K003 Top-50 Queries by total_time](#postgres-checkup_K003)  
[L001 Table Sizes](#postgres-checkup_L001)  
[L003 Integer (int2, int4) Out-of-range Risks in PKs](#postgres-checkup_L003)  



---
<a name="postgres-checkup_A002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A002 Version Information #

## Observations ##
Data collected: 2019-08-07 16:40:34 +0300 MSK  



### Master (`localhost`) ###

```
PostgreSQL 11.4 on x86_64-pc-linux-gnu, compiled by gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-36), 64-bit
```






## Conclusions ##
  - All nodes have the same Postgres version (`11.4`).  

  - Postgres major version being used is `11` and it is currently supported by PostgreSQL Global Development Group. End of life is scheduled 2023-11-09. It means that in case of bugs and security issues, updates (new minor versions) with fixes will be released and available for use. Read more: [Versioning Policy](https://www.postgresql.org/support/versioning/).  

  - [P2] The minor version being used (`11.4`) is not up-to-date (the newest version: `11.5`). See [the full list of changes between 11.4 and 11.5](https://why-upgrade.depesz.com/show?from=11.4&to=11.5).  

  
 


## Recommendations ##
  - [P2] Consider performing upgrade to the newest minor version: `11.5`.  

  - For more information about minor and major upgrades see:  
    - Official documentation: https://www.postgresql.org/docs/current/upgrading.html  

  
 


---
<a name="postgres-checkup_A003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A003 Postgres Settings #

## Observations ##
Data collected: 2019-08-07 16:40:35 +0300 MSK  



### Master (`localhost`) ###  
| &#9660;&nbsp;Category | Setting | Value | Unit | Pretty value |
|---------|---------|-------|------|--------------|
| Autovacuum|[autovacuum](https://postgresqlco.nf/en/doc/param/autovacuum) | on |  |  |
| Autovacuum|[autovacuum_analyze_scale_factor](https://postgresqlco.nf/en/doc/param/autovacuum_analyze_scale_factor) | 0.1 |  |  |
| Autovacuum|[autovacuum_analyze_threshold](https://postgresqlco.nf/en/doc/param/autovacuum_analyze_threshold) | 50 |  |  |
| Autovacuum|[autovacuum_freeze_max_age](https://postgresqlco.nf/en/doc/param/autovacuum_freeze_max_age) | 200000000 |  |  |
| Autovacuum|[autovacuum_max_workers](https://postgresqlco.nf/en/doc/param/autovacuum_max_workers) | 3 |  |  |
| Autovacuum|[autovacuum_multixact_freeze_max_age](https://postgresqlco.nf/en/doc/param/autovacuum_multixact_freeze_max_age) | 400000000 |  |  |
| Autovacuum|[autovacuum_naptime](https://postgresqlco.nf/en/doc/param/autovacuum_naptime) | 60 | s  |  |
| Autovacuum|[autovacuum_vacuum_cost_delay](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_delay) | 20 | ms  |  |
| Autovacuum|[autovacuum_vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_limit) | -1 |  |  |
| Autovacuum|[autovacuum_vacuum_scale_factor](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_scale_factor) | 0.2 |  |  |
| Autovacuum|[autovacuum_vacuum_threshold](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_threshold) | 50 |  |  |
| Client Connection Defaults / Locale and Formatting|[client_encoding](https://postgresqlco.nf/en/doc/param/client_encoding) | UTF8 |  |  |
| Client Connection Defaults / Locale and Formatting|[DateStyle](https://postgresqlco.nf/en/doc/param/DateStyle) | ISO,  MDY |  |  |
| Client Connection Defaults / Locale and Formatting|[default_text_search_config](https://postgresqlco.nf/en/doc/param/default_text_search_config) | pg_catalog.english |  |  |
| Client Connection Defaults / Locale and Formatting|[extra_float_digits](https://postgresqlco.nf/en/doc/param/extra_float_digits) | 0 |  |  |
| Client Connection Defaults / Locale and Formatting|[IntervalStyle](https://postgresqlco.nf/en/doc/param/IntervalStyle) | postgres |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_collate](https://postgresqlco.nf/en/doc/param/lc_collate) | en_US.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_ctype](https://postgresqlco.nf/en/doc/param/lc_ctype) | en_US.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_messages](https://postgresqlco.nf/en/doc/param/lc_messages) | en_US.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_monetary](https://postgresqlco.nf/en/doc/param/lc_monetary) | en_US.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_numeric](https://postgresqlco.nf/en/doc/param/lc_numeric) | en_US.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_time](https://postgresqlco.nf/en/doc/param/lc_time) | en_US.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[server_encoding](https://postgresqlco.nf/en/doc/param/server_encoding) | UTF8 |  |  |
| Client Connection Defaults / Locale and Formatting|[TimeZone](https://postgresqlco.nf/en/doc/param/TimeZone) | W-SU |  |  |
| Client Connection Defaults / Locale and Formatting|[timezone_abbreviations](https://postgresqlco.nf/en/doc/param/timezone_abbreviations) | Default |  |  |
| Client Connection Defaults / Other Defaults|[dynamic_library_path](https://postgresqlco.nf/en/doc/param/dynamic_library_path) | $libdir |  |  |
| Client Connection Defaults / Other Defaults|[gin_fuzzy_search_limit](https://postgresqlco.nf/en/doc/param/gin_fuzzy_search_limit) | 0 |  |  |
| Client Connection Defaults / Other Defaults|[tcp_keepalives_count](https://postgresqlco.nf/en/doc/param/tcp_keepalives_count) | 0 |  |  |
| Client Connection Defaults / Other Defaults|[tcp_keepalives_idle](https://postgresqlco.nf/en/doc/param/tcp_keepalives_idle) | 0 | s  |  |
| Client Connection Defaults / Other Defaults|[tcp_keepalives_interval](https://postgresqlco.nf/en/doc/param/tcp_keepalives_interval) | 0 | s  |  |
| Client Connection Defaults / Shared Library Preloading|[jit_provider](https://postgresqlco.nf/en/doc/param/jit_provider) | llvmjit |  |  |
| Client Connection Defaults / Shared Library Preloading|[local_preload_libraries](https://postgresqlco.nf/en/doc/param/local_preload_libraries) |  |  |  |
| Client Connection Defaults / Shared Library Preloading|[session_preload_libraries](https://postgresqlco.nf/en/doc/param/session_preload_libraries) |  |  |  |
| Client Connection Defaults / Shared Library Preloading|[shared_preload_libraries](https://postgresqlco.nf/en/doc/param/shared_preload_libraries) | pg_stat_statements |  |  |
| Client Connection Defaults / Statement Behavior|[bytea_output](https://postgresqlco.nf/en/doc/param/bytea_output) | hex |  |  |
| Client Connection Defaults / Statement Behavior|[check_function_bodies](https://postgresqlco.nf/en/doc/param/check_function_bodies) | on |  |  |
| Client Connection Defaults / Statement Behavior|[client_min_messages](https://postgresqlco.nf/en/doc/param/client_min_messages) | notice |  |  |
| Client Connection Defaults / Statement Behavior|[default_tablespace](https://postgresqlco.nf/en/doc/param/default_tablespace) |  |  |  |
| Client Connection Defaults / Statement Behavior|[default_transaction_deferrable](https://postgresqlco.nf/en/doc/param/default_transaction_deferrable) | off |  |  |
| Client Connection Defaults / Statement Behavior|[default_transaction_isolation](https://postgresqlco.nf/en/doc/param/default_transaction_isolation) | read committed |  |  |
| Client Connection Defaults / Statement Behavior|[default_transaction_read_only](https://postgresqlco.nf/en/doc/param/default_transaction_read_only) | off |  |  |
| Client Connection Defaults / Statement Behavior|[gin_pending_list_limit](https://postgresqlco.nf/en/doc/param/gin_pending_list_limit) | 4096 | kB  | 4.00 MiB |
| Client Connection Defaults / Statement Behavior|[idle_in_transaction_session_timeout](https://postgresqlco.nf/en/doc/param/idle_in_transaction_session_timeout) | 0 | ms  |  |
| Client Connection Defaults / Statement Behavior|[lock_timeout](https://postgresqlco.nf/en/doc/param/lock_timeout) | 0 | ms  |  |
| Client Connection Defaults / Statement Behavior|[row_security](https://postgresqlco.nf/en/doc/param/row_security) | on |  |  |
| Client Connection Defaults / Statement Behavior|[search_path](https://postgresqlco.nf/en/doc/param/search_path) | "$user",  public |  |  |
| Client Connection Defaults / Statement Behavior|[session_replication_role](https://postgresqlco.nf/en/doc/param/session_replication_role) | origin |  |  |
| Client Connection Defaults / Statement Behavior|[statement_timeout](https://postgresqlco.nf/en/doc/param/statement_timeout) | 0 | ms  |  |
| Client Connection Defaults / Statement Behavior|[temp_tablespaces](https://postgresqlco.nf/en/doc/param/temp_tablespaces) |  |  |  |
| Client Connection Defaults / Statement Behavior|[transaction_deferrable](https://postgresqlco.nf/en/doc/param/transaction_deferrable) | off |  |  |
| Client Connection Defaults / Statement Behavior|[transaction_isolation](https://postgresqlco.nf/en/doc/param/transaction_isolation) | read committed |  |  |
| Client Connection Defaults / Statement Behavior|[transaction_read_only](https://postgresqlco.nf/en/doc/param/transaction_read_only) | off |  |  |
| Client Connection Defaults / Statement Behavior|[vacuum_cleanup_index_scale_factor](https://postgresqlco.nf/en/doc/param/vacuum_cleanup_index_scale_factor) | 0.1 |  |  |
| Client Connection Defaults / Statement Behavior|[vacuum_freeze_min_age](https://postgresqlco.nf/en/doc/param/vacuum_freeze_min_age) | 50000000 |  |  |
| Client Connection Defaults / Statement Behavior|[vacuum_freeze_table_age](https://postgresqlco.nf/en/doc/param/vacuum_freeze_table_age) | 150000000 |  |  |
| Client Connection Defaults / Statement Behavior|[vacuum_multixact_freeze_min_age](https://postgresqlco.nf/en/doc/param/vacuum_multixact_freeze_min_age) | 5000000 |  |  |
| Client Connection Defaults / Statement Behavior|[vacuum_multixact_freeze_table_age](https://postgresqlco.nf/en/doc/param/vacuum_multixact_freeze_table_age) | 150000000 |  |  |
| Client Connection Defaults / Statement Behavior|[xmlbinary](https://postgresqlco.nf/en/doc/param/xmlbinary) | base64 |  |  |
| Client Connection Defaults / Statement Behavior|[xmloption](https://postgresqlco.nf/en/doc/param/xmloption) | content |  |  |
| Connections and Authentication / Authentication|[authentication_timeout](https://postgresqlco.nf/en/doc/param/authentication_timeout) | 60 | s  |  |
| Connections and Authentication / Authentication|[db_user_namespace](https://postgresqlco.nf/en/doc/param/db_user_namespace) | off |  |  |
| Connections and Authentication / Authentication|[krb_caseins_users](https://postgresqlco.nf/en/doc/param/krb_caseins_users) | off |  |  |
| Connections and Authentication / Authentication|[krb_server_keyfile](https://postgresqlco.nf/en/doc/param/krb_server_keyfile) | FILE:/etc/sysconfig/pgsql/krb5.keytab |  |  |
| Connections and Authentication / Authentication|[password_encryption](https://postgresqlco.nf/en/doc/param/password_encryption) | md5 |  |  |
| Connections and Authentication / Connection Settings|[bonjour](https://postgresqlco.nf/en/doc/param/bonjour) | off |  |  |
| Connections and Authentication / Connection Settings|[bonjour_name](https://postgresqlco.nf/en/doc/param/bonjour_name) |  |  |  |
| Connections and Authentication / Connection Settings|[listen_addresses](https://postgresqlco.nf/en/doc/param/listen_addresses) | localhost |  |  |
| Connections and Authentication / Connection Settings|[max_connections](https://postgresqlco.nf/en/doc/param/max_connections) | 100 |  |  |
| Connections and Authentication / Connection Settings|[port](https://postgresqlco.nf/en/doc/param/port) | 5432 |  |  |
| Connections and Authentication / Connection Settings|[superuser_reserved_connections](https://postgresqlco.nf/en/doc/param/superuser_reserved_connections) | 3 |  |  |
| Connections and Authentication / Connection Settings|[unix_socket_directories](https://postgresqlco.nf/en/doc/param/unix_socket_directories) | /var/run/postgresql,  /tmp |  |  |
| Connections and Authentication / Connection Settings|[unix_socket_group](https://postgresqlco.nf/en/doc/param/unix_socket_group) |  |  |  |
| Connections and Authentication / Connection Settings|[unix_socket_permissions](https://postgresqlco.nf/en/doc/param/unix_socket_permissions) | 0777 |  |  |
| Connections and Authentication / SSL|[ssl](https://postgresqlco.nf/en/doc/param/ssl) | off |  |  |
| Connections and Authentication / SSL|[ssl_ca_file](https://postgresqlco.nf/en/doc/param/ssl_ca_file) |  |  |  |
| Connections and Authentication / SSL|[ssl_cert_file](https://postgresqlco.nf/en/doc/param/ssl_cert_file) | server.crt |  |  |
| Connections and Authentication / SSL|[ssl_ciphers](https://postgresqlco.nf/en/doc/param/ssl_ciphers) | HIGH:MEDIUM:+3DES:!aNULL |  |  |
| Connections and Authentication / SSL|[ssl_crl_file](https://postgresqlco.nf/en/doc/param/ssl_crl_file) |  |  |  |
| Connections and Authentication / SSL|[ssl_dh_params_file](https://postgresqlco.nf/en/doc/param/ssl_dh_params_file) |  |  |  |
| Connections and Authentication / SSL|[ssl_ecdh_curve](https://postgresqlco.nf/en/doc/param/ssl_ecdh_curve) | prime256v1 |  |  |
| Connections and Authentication / SSL|[ssl_key_file](https://postgresqlco.nf/en/doc/param/ssl_key_file) | server.key |  |  |
| Connections and Authentication / SSL|[ssl_passphrase_command](https://postgresqlco.nf/en/doc/param/ssl_passphrase_command) |  |  |  |
| Connections and Authentication / SSL|[ssl_passphrase_command_supports_reload](https://postgresqlco.nf/en/doc/param/ssl_passphrase_command_supports_reload) | off |  |  |
| Connections and Authentication / SSL|[ssl_prefer_server_ciphers](https://postgresqlco.nf/en/doc/param/ssl_prefer_server_ciphers) | on |  |  |
| Customized Options|[pg_stat_statements.max](https://postgresqlco.nf/en/doc/param/pg_stat_statements.max) | 5000 |  |  |
| Customized Options|[pg_stat_statements.save](https://postgresqlco.nf/en/doc/param/pg_stat_statements.save) | on |  |  |
| Customized Options|[pg_stat_statements.track](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track) | top |  |  |
| Customized Options|[pg_stat_statements.track_utility](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track_utility) | on |  |  |
| Developer Options|[allow_system_table_mods](https://postgresqlco.nf/en/doc/param/allow_system_table_mods) | off |  |  |
| Developer Options|[ignore_checksum_failure](https://postgresqlco.nf/en/doc/param/ignore_checksum_failure) | off |  |  |
| Developer Options|[ignore_system_indexes](https://postgresqlco.nf/en/doc/param/ignore_system_indexes) | off |  |  |
| Developer Options|[jit_debugging_support](https://postgresqlco.nf/en/doc/param/jit_debugging_support) | off |  |  |
| Developer Options|[jit_dump_bitcode](https://postgresqlco.nf/en/doc/param/jit_dump_bitcode) | off |  |  |
| Developer Options|[jit_expressions](https://postgresqlco.nf/en/doc/param/jit_expressions) | on |  |  |
| Developer Options|[jit_profiling_support](https://postgresqlco.nf/en/doc/param/jit_profiling_support) | off |  |  |
| Developer Options|[jit_tuple_deforming](https://postgresqlco.nf/en/doc/param/jit_tuple_deforming) | on |  |  |
| Developer Options|[post_auth_delay](https://postgresqlco.nf/en/doc/param/post_auth_delay) | 0 | s  |  |
| Developer Options|[pre_auth_delay](https://postgresqlco.nf/en/doc/param/pre_auth_delay) | 0 | s  |  |
| Developer Options|[trace_notify](https://postgresqlco.nf/en/doc/param/trace_notify) | off |  |  |
| Developer Options|[trace_recovery_messages](https://postgresqlco.nf/en/doc/param/trace_recovery_messages) | log |  |  |
| Developer Options|[trace_sort](https://postgresqlco.nf/en/doc/param/trace_sort) | off |  |  |
| Developer Options|[wal_consistency_checking](https://postgresqlco.nf/en/doc/param/wal_consistency_checking) |  |  |  |
| Developer Options|[zero_damaged_pages](https://postgresqlco.nf/en/doc/param/zero_damaged_pages) | off |  |  |
| Error Handling|[data_sync_retry](https://postgresqlco.nf/en/doc/param/data_sync_retry) | off |  |  |
| Error Handling|[exit_on_error](https://postgresqlco.nf/en/doc/param/exit_on_error) | off |  |  |
| Error Handling|[restart_after_crash](https://postgresqlco.nf/en/doc/param/restart_after_crash) | on |  |  |
| File Locations|[config_file](https://postgresqlco.nf/en/doc/param/config_file) | /home/db_main_node/postgresql.conf |  |  |
| File Locations|[data_directory](https://postgresqlco.nf/en/doc/param/data_directory) | /home/db_main_node |  |  |
| File Locations|[external_pid_file](https://postgresqlco.nf/en/doc/param/external_pid_file) |  |  |  |
| File Locations|[hba_file](https://postgresqlco.nf/en/doc/param/hba_file) | /home/db_main_node/pg_hba.conf |  |  |
| File Locations|[ident_file](https://postgresqlco.nf/en/doc/param/ident_file) | /home/db_main_node/pg_ident.conf |  |  |
| Lock Management|[deadlock_timeout](https://postgresqlco.nf/en/doc/param/deadlock_timeout) | 1000 | ms  |  |
| Lock Management|[max_locks_per_transaction](https://postgresqlco.nf/en/doc/param/max_locks_per_transaction) | 64 |  |  |
| Lock Management|[max_pred_locks_per_page](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_page) | 2 |  |  |
| Lock Management|[max_pred_locks_per_relation](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_relation) | -2 |  |  |
| Lock Management|[max_pred_locks_per_transaction](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_transaction) | 64 |  |  |
| Preset Options|[block_size](https://postgresqlco.nf/en/doc/param/block_size) | 8192 |  |  |
| Preset Options|[data_checksums](https://postgresqlco.nf/en/doc/param/data_checksums) | off |  |  |
| Preset Options|[data_directory_mode](https://postgresqlco.nf/en/doc/param/data_directory_mode) | 0700 |  |  |
| Preset Options|[debug_assertions](https://postgresqlco.nf/en/doc/param/debug_assertions) | off |  |  |
| Preset Options|[integer_datetimes](https://postgresqlco.nf/en/doc/param/integer_datetimes) | on |  |  |
| Preset Options|[max_function_args](https://postgresqlco.nf/en/doc/param/max_function_args) | 100 |  |  |
| Preset Options|[max_identifier_length](https://postgresqlco.nf/en/doc/param/max_identifier_length) | 63 |  |  |
| Preset Options|[max_index_keys](https://postgresqlco.nf/en/doc/param/max_index_keys) | 32 |  |  |
| Preset Options|[segment_size](https://postgresqlco.nf/en/doc/param/segment_size) | 131072 | 8kB  | 1.00 GiB |
| Preset Options|[server_version](https://postgresqlco.nf/en/doc/param/server_version) | 11.4 |  |  |
| Preset Options|[server_version_num](https://postgresqlco.nf/en/doc/param/server_version_num) | 110004 |  |  |
| Preset Options|[wal_block_size](https://postgresqlco.nf/en/doc/param/wal_block_size) | 8192 |  |  |
| Preset Options|[wal_segment_size](https://postgresqlco.nf/en/doc/param/wal_segment_size) | 16777216 | B  |  |
| Process Title|[cluster_name](https://postgresqlco.nf/en/doc/param/cluster_name) |  |  |  |
| Process Title|[update_process_title](https://postgresqlco.nf/en/doc/param/update_process_title) | on |  |  |
| Query Tuning / Genetic Query Optimizer|[geqo](https://postgresqlco.nf/en/doc/param/geqo) | on |  |  |
| Query Tuning / Genetic Query Optimizer|[geqo_effort](https://postgresqlco.nf/en/doc/param/geqo_effort) | 5 |  |  |
| Query Tuning / Genetic Query Optimizer|[geqo_generations](https://postgresqlco.nf/en/doc/param/geqo_generations) | 0 |  |  |
| Query Tuning / Genetic Query Optimizer|[geqo_pool_size](https://postgresqlco.nf/en/doc/param/geqo_pool_size) | 0 |  |  |
| Query Tuning / Genetic Query Optimizer|[geqo_seed](https://postgresqlco.nf/en/doc/param/geqo_seed) | 0 |  |  |
| Query Tuning / Genetic Query Optimizer|[geqo_selection_bias](https://postgresqlco.nf/en/doc/param/geqo_selection_bias) | 2 |  |  |
| Query Tuning / Genetic Query Optimizer|[geqo_threshold](https://postgresqlco.nf/en/doc/param/geqo_threshold) | 12 |  |  |
| Query Tuning / Other Planner Options|[constraint_exclusion](https://postgresqlco.nf/en/doc/param/constraint_exclusion) | partition |  |  |
| Query Tuning / Other Planner Options|[cursor_tuple_fraction](https://postgresqlco.nf/en/doc/param/cursor_tuple_fraction) | 0.1 |  |  |
| Query Tuning / Other Planner Options|[default_statistics_target](https://postgresqlco.nf/en/doc/param/default_statistics_target) | 100 |  |  |
| Query Tuning / Other Planner Options|[force_parallel_mode](https://postgresqlco.nf/en/doc/param/force_parallel_mode) | off |  |  |
| Query Tuning / Other Planner Options|[from_collapse_limit](https://postgresqlco.nf/en/doc/param/from_collapse_limit) | 8 |  |  |
| Query Tuning / Other Planner Options|[jit](https://postgresqlco.nf/en/doc/param/jit) | off |  |  |
| Query Tuning / Other Planner Options|[join_collapse_limit](https://postgresqlco.nf/en/doc/param/join_collapse_limit) | 8 |  |  |
| Query Tuning / Planner Cost Constants|[cpu_index_tuple_cost](https://postgresqlco.nf/en/doc/param/cpu_index_tuple_cost) | 0.005 |  |  |
| Query Tuning / Planner Cost Constants|[cpu_operator_cost](https://postgresqlco.nf/en/doc/param/cpu_operator_cost) | 0.0025 |  |  |
| Query Tuning / Planner Cost Constants|[cpu_tuple_cost](https://postgresqlco.nf/en/doc/param/cpu_tuple_cost) | 0.01 |  |  |
| Query Tuning / Planner Cost Constants|[effective_cache_size](https://postgresqlco.nf/en/doc/param/effective_cache_size) | 524288 | 8kB  | 4.00 GiB |
| Query Tuning / Planner Cost Constants|[jit_above_cost](https://postgresqlco.nf/en/doc/param/jit_above_cost) | 100000 |  |  |
| Query Tuning / Planner Cost Constants|[jit_inline_above_cost](https://postgresqlco.nf/en/doc/param/jit_inline_above_cost) | 500000 |  |  |
| Query Tuning / Planner Cost Constants|[jit_optimize_above_cost](https://postgresqlco.nf/en/doc/param/jit_optimize_above_cost) | 500000 |  |  |
| Query Tuning / Planner Cost Constants|[min_parallel_index_scan_size](https://postgresqlco.nf/en/doc/param/min_parallel_index_scan_size) | 64 | 8kB  | 512.00 KiB |
| Query Tuning / Planner Cost Constants|[min_parallel_table_scan_size](https://postgresqlco.nf/en/doc/param/min_parallel_table_scan_size) | 1024 | 8kB  | 8.00 MiB |
| Query Tuning / Planner Cost Constants|[parallel_setup_cost](https://postgresqlco.nf/en/doc/param/parallel_setup_cost) | 1000 |  |  |
| Query Tuning / Planner Cost Constants|[parallel_tuple_cost](https://postgresqlco.nf/en/doc/param/parallel_tuple_cost) | 0.1 |  |  |
| Query Tuning / Planner Cost Constants|[random_page_cost](https://postgresqlco.nf/en/doc/param/random_page_cost) | 2.22 |  |  |
| Query Tuning / Planner Cost Constants|[seq_page_cost](https://postgresqlco.nf/en/doc/param/seq_page_cost) | 1 |  |  |
| Query Tuning / Planner Method Configuration|[enable_bitmapscan](https://postgresqlco.nf/en/doc/param/enable_bitmapscan) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_gathermerge](https://postgresqlco.nf/en/doc/param/enable_gathermerge) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_hashagg](https://postgresqlco.nf/en/doc/param/enable_hashagg) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_hashjoin](https://postgresqlco.nf/en/doc/param/enable_hashjoin) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_indexonlyscan](https://postgresqlco.nf/en/doc/param/enable_indexonlyscan) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_indexscan](https://postgresqlco.nf/en/doc/param/enable_indexscan) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_material](https://postgresqlco.nf/en/doc/param/enable_material) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_mergejoin](https://postgresqlco.nf/en/doc/param/enable_mergejoin) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_nestloop](https://postgresqlco.nf/en/doc/param/enable_nestloop) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_parallel_append](https://postgresqlco.nf/en/doc/param/enable_parallel_append) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_parallel_hash](https://postgresqlco.nf/en/doc/param/enable_parallel_hash) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_partition_pruning](https://postgresqlco.nf/en/doc/param/enable_partition_pruning) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_partitionwise_aggregate](https://postgresqlco.nf/en/doc/param/enable_partitionwise_aggregate) | off |  |  |
| Query Tuning / Planner Method Configuration|[enable_partitionwise_join](https://postgresqlco.nf/en/doc/param/enable_partitionwise_join) | off |  |  |
| Query Tuning / Planner Method Configuration|[enable_seqscan](https://postgresqlco.nf/en/doc/param/enable_seqscan) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_sort](https://postgresqlco.nf/en/doc/param/enable_sort) | on |  |  |
| Query Tuning / Planner Method Configuration|[enable_tidscan](https://postgresqlco.nf/en/doc/param/enable_tidscan) | on |  |  |
| Replication|[track_commit_timestamp](https://postgresqlco.nf/en/doc/param/track_commit_timestamp) | off |  |  |
| Replication / Master Server|[synchronous_standby_names](https://postgresqlco.nf/en/doc/param/synchronous_standby_names) |  |  |  |
| Replication / Master Server|[vacuum_defer_cleanup_age](https://postgresqlco.nf/en/doc/param/vacuum_defer_cleanup_age) | 0 |  |  |
| Replication / Sending Servers|[max_replication_slots](https://postgresqlco.nf/en/doc/param/max_replication_slots) | 10 |  |  |
| Replication / Sending Servers|[max_wal_senders](https://postgresqlco.nf/en/doc/param/max_wal_senders) | 10 |  |  |
| Replication / Sending Servers|[wal_keep_segments](https://postgresqlco.nf/en/doc/param/wal_keep_segments) | 0 |  |  |
| Replication / Sending Servers|[wal_sender_timeout](https://postgresqlco.nf/en/doc/param/wal_sender_timeout) | 60000 | ms  |  |
| Replication / Standby Servers|[hot_standby](https://postgresqlco.nf/en/doc/param/hot_standby) | on |  |  |
| Replication / Standby Servers|[hot_standby_feedback](https://postgresqlco.nf/en/doc/param/hot_standby_feedback) | off |  |  |
| Replication / Standby Servers|[max_standby_archive_delay](https://postgresqlco.nf/en/doc/param/max_standby_archive_delay) | 30000 | ms  |  |
| Replication / Standby Servers|[max_standby_streaming_delay](https://postgresqlco.nf/en/doc/param/max_standby_streaming_delay) | 30000 | ms  |  |
| Replication / Standby Servers|[wal_receiver_status_interval](https://postgresqlco.nf/en/doc/param/wal_receiver_status_interval) | 10 | s  |  |
| Replication / Standby Servers|[wal_receiver_timeout](https://postgresqlco.nf/en/doc/param/wal_receiver_timeout) | 60000 | ms  |  |
| Replication / Standby Servers|[wal_retrieve_retry_interval](https://postgresqlco.nf/en/doc/param/wal_retrieve_retry_interval) | 5000 | ms  |  |
| Replication / Subscribers|[max_logical_replication_workers](https://postgresqlco.nf/en/doc/param/max_logical_replication_workers) | 4 |  |  |
| Replication / Subscribers|[max_sync_workers_per_subscription](https://postgresqlco.nf/en/doc/param/max_sync_workers_per_subscription) | 2 |  |  |
| Reporting and Logging / What to Log|[application_name](https://postgresqlco.nf/en/doc/param/application_name) | checkup |  |  |
| Reporting and Logging / What to Log|[debug_pretty_print](https://postgresqlco.nf/en/doc/param/debug_pretty_print) | on |  |  |
| Reporting and Logging / What to Log|[debug_print_parse](https://postgresqlco.nf/en/doc/param/debug_print_parse) | off |  |  |
| Reporting and Logging / What to Log|[debug_print_plan](https://postgresqlco.nf/en/doc/param/debug_print_plan) | off |  |  |
| Reporting and Logging / What to Log|[debug_print_rewritten](https://postgresqlco.nf/en/doc/param/debug_print_rewritten) | off |  |  |
| Reporting and Logging / What to Log|[log_autovacuum_min_duration](https://postgresqlco.nf/en/doc/param/log_autovacuum_min_duration) | -1 | ms  |  |
| Reporting and Logging / What to Log|[log_checkpoints](https://postgresqlco.nf/en/doc/param/log_checkpoints) | off |  |  |
| Reporting and Logging / What to Log|[log_connections](https://postgresqlco.nf/en/doc/param/log_connections) | off |  |  |
| Reporting and Logging / What to Log|[log_disconnections](https://postgresqlco.nf/en/doc/param/log_disconnections) | off |  |  |
| Reporting and Logging / What to Log|[log_duration](https://postgresqlco.nf/en/doc/param/log_duration) | off |  |  |
| Reporting and Logging / What to Log|[log_error_verbosity](https://postgresqlco.nf/en/doc/param/log_error_verbosity) | default |  |  |
| Reporting and Logging / What to Log|[log_hostname](https://postgresqlco.nf/en/doc/param/log_hostname) | off |  |  |
| Reporting and Logging / What to Log|[log_line_prefix](https://postgresqlco.nf/en/doc/param/log_line_prefix) | %m [%p]  |  |  |
| Reporting and Logging / What to Log|[log_lock_waits](https://postgresqlco.nf/en/doc/param/log_lock_waits) | off |  |  |
| Reporting and Logging / What to Log|[log_replication_commands](https://postgresqlco.nf/en/doc/param/log_replication_commands) | off |  |  |
| Reporting and Logging / What to Log|[log_statement](https://postgresqlco.nf/en/doc/param/log_statement) | none |  |  |
| Reporting and Logging / What to Log|[log_temp_files](https://postgresqlco.nf/en/doc/param/log_temp_files) | -1 | kB  |  |
| Reporting and Logging / What to Log|[log_timezone](https://postgresqlco.nf/en/doc/param/log_timezone) | W-SU |  |  |
| Reporting and Logging / When to Log|[log_min_duration_statement](https://postgresqlco.nf/en/doc/param/log_min_duration_statement) | -1 | ms  |  |
| Reporting and Logging / When to Log|[log_min_error_statement](https://postgresqlco.nf/en/doc/param/log_min_error_statement) | error |  |  |
| Reporting and Logging / When to Log|[log_min_messages](https://postgresqlco.nf/en/doc/param/log_min_messages) | warning |  |  |
| Reporting and Logging / Where to Log|[event_source](https://postgresqlco.nf/en/doc/param/event_source) | PostgreSQL |  |  |
| Reporting and Logging / Where to Log|[log_destination](https://postgresqlco.nf/en/doc/param/log_destination) | stderr |  |  |
| Reporting and Logging / Where to Log|[log_directory](https://postgresqlco.nf/en/doc/param/log_directory) | log |  |  |
| Reporting and Logging / Where to Log|[log_file_mode](https://postgresqlco.nf/en/doc/param/log_file_mode) | 0600 |  |  |
| Reporting and Logging / Where to Log|[log_filename](https://postgresqlco.nf/en/doc/param/log_filename) | postgresql-%a.log |  |  |
| Reporting and Logging / Where to Log|[logging_collector](https://postgresqlco.nf/en/doc/param/logging_collector) | on |  |  |
| Reporting and Logging / Where to Log|[log_rotation_age](https://postgresqlco.nf/en/doc/param/log_rotation_age) | 1440 | min  |  |
| Reporting and Logging / Where to Log|[log_rotation_size](https://postgresqlco.nf/en/doc/param/log_rotation_size) | 0 | kB  | 0.00 bytes |
| Reporting and Logging / Where to Log|[log_truncate_on_rotation](https://postgresqlco.nf/en/doc/param/log_truncate_on_rotation) | on |  |  |
| Reporting and Logging / Where to Log|[syslog_facility](https://postgresqlco.nf/en/doc/param/syslog_facility) | local0 |  |  |
| Reporting and Logging / Where to Log|[syslog_ident](https://postgresqlco.nf/en/doc/param/syslog_ident) | postgres |  |  |
| Reporting and Logging / Where to Log|[syslog_sequence_numbers](https://postgresqlco.nf/en/doc/param/syslog_sequence_numbers) | on |  |  |
| Reporting and Logging / Where to Log|[syslog_split_messages](https://postgresqlco.nf/en/doc/param/syslog_split_messages) | on |  |  |
| Resource Usage / Asynchronous Behavior|[backend_flush_after](https://postgresqlco.nf/en/doc/param/backend_flush_after) | 0 | 8kB  | 0.00 bytes |
| Resource Usage / Asynchronous Behavior|[effective_io_concurrency](https://postgresqlco.nf/en/doc/param/effective_io_concurrency) | 1 |  |  |
| Resource Usage / Asynchronous Behavior|[max_parallel_maintenance_workers](https://postgresqlco.nf/en/doc/param/max_parallel_maintenance_workers) | 2 |  |  |
| Resource Usage / Asynchronous Behavior|[max_parallel_workers](https://postgresqlco.nf/en/doc/param/max_parallel_workers) | 8 |  |  |
| Resource Usage / Asynchronous Behavior|[max_parallel_workers_per_gather](https://postgresqlco.nf/en/doc/param/max_parallel_workers_per_gather) | 2 |  |  |
| Resource Usage / Asynchronous Behavior|[max_worker_processes](https://postgresqlco.nf/en/doc/param/max_worker_processes) | 8 |  |  |
| Resource Usage / Asynchronous Behavior|[old_snapshot_threshold](https://postgresqlco.nf/en/doc/param/old_snapshot_threshold) | -1 | min  |  |
| Resource Usage / Asynchronous Behavior|[parallel_leader_participation](https://postgresqlco.nf/en/doc/param/parallel_leader_participation) | on |  |  |
| Resource Usage / Background Writer|[bgwriter_delay](https://postgresqlco.nf/en/doc/param/bgwriter_delay) | 200 | ms  |  |
| Resource Usage / Background Writer|[bgwriter_flush_after](https://postgresqlco.nf/en/doc/param/bgwriter_flush_after) | 64 | 8kB  | 512.00 KiB |
| Resource Usage / Background Writer|[bgwriter_lru_maxpages](https://postgresqlco.nf/en/doc/param/bgwriter_lru_maxpages) | 100 |  |  |
| Resource Usage / Background Writer|[bgwriter_lru_multiplier](https://postgresqlco.nf/en/doc/param/bgwriter_lru_multiplier) | 2 |  |  |
| Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_delay](https://postgresqlco.nf/en/doc/param/vacuum_cost_delay) | 0 | ms  |  |
| Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/vacuum_cost_limit) | 200 |  |  |
| Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_page_dirty](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_dirty) | 20 |  |  |
| Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_page_hit](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_hit) | 1 |  |  |
| Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_page_miss](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_miss) | 10 |  |  |
| Resource Usage / Disk|[temp_file_limit](https://postgresqlco.nf/en/doc/param/temp_file_limit) | -1 | kB  |  |
| Resource Usage / Kernel Resources|[max_files_per_process](https://postgresqlco.nf/en/doc/param/max_files_per_process) | 1000 |  |  |
| Resource Usage / Memory|[autovacuum_work_mem](https://postgresqlco.nf/en/doc/param/autovacuum_work_mem) | -1 | kB  |  |
| Resource Usage / Memory|[dynamic_shared_memory_type](https://postgresqlco.nf/en/doc/param/dynamic_shared_memory_type) | posix |  |  |
| Resource Usage / Memory|[huge_pages](https://postgresqlco.nf/en/doc/param/huge_pages) | try |  |  |
| Resource Usage / Memory|[maintenance_work_mem](https://postgresqlco.nf/en/doc/param/maintenance_work_mem) | 65536 | kB  | 64.00 MiB |
| Resource Usage / Memory|[max_prepared_transactions](https://postgresqlco.nf/en/doc/param/max_prepared_transactions) | 0 |  |  |
| Resource Usage / Memory|[max_stack_depth](https://postgresqlco.nf/en/doc/param/max_stack_depth) | 2048 | kB  | 2.00 MiB |
| Resource Usage / Memory|[shared_buffers](https://postgresqlco.nf/en/doc/param/shared_buffers) | 16384 | 8kB  | 128.00 MiB |
| Resource Usage / Memory|[temp_buffers](https://postgresqlco.nf/en/doc/param/temp_buffers) | 1024 | 8kB  | 8.00 MiB |
| Resource Usage / Memory|[track_activity_query_size](https://postgresqlco.nf/en/doc/param/track_activity_query_size) | 1024 | B  |  |
| Resource Usage / Memory|[work_mem](https://postgresqlco.nf/en/doc/param/work_mem) | 4096 | kB  | 4.00 MiB |
| Statistics / Monitoring|[log_executor_stats](https://postgresqlco.nf/en/doc/param/log_executor_stats) | off |  |  |
| Statistics / Monitoring|[log_parser_stats](https://postgresqlco.nf/en/doc/param/log_parser_stats) | off |  |  |
| Statistics / Monitoring|[log_planner_stats](https://postgresqlco.nf/en/doc/param/log_planner_stats) | off |  |  |
| Statistics / Monitoring|[log_statement_stats](https://postgresqlco.nf/en/doc/param/log_statement_stats) | off |  |  |
| Statistics / Query and Index Statistics Collector|[stats_temp_directory](https://postgresqlco.nf/en/doc/param/stats_temp_directory) | pg_stat_tmp |  |  |
| Statistics / Query and Index Statistics Collector|[track_activities](https://postgresqlco.nf/en/doc/param/track_activities) | on |  |  |
| Statistics / Query and Index Statistics Collector|[track_counts](https://postgresqlco.nf/en/doc/param/track_counts) | on |  |  |
| Statistics / Query and Index Statistics Collector|[track_functions](https://postgresqlco.nf/en/doc/param/track_functions) | none |  |  |
| Statistics / Query and Index Statistics Collector|[track_io_timing](https://postgresqlco.nf/en/doc/param/track_io_timing) | off |  |  |
| Version and Platform Compatibility / Other Platforms and Clients|[transform_null_equals](https://postgresqlco.nf/en/doc/param/transform_null_equals) | off |  |  |
| Version and Platform Compatibility / Previous PostgreSQL Versions|[array_nulls](https://postgresqlco.nf/en/doc/param/array_nulls) | on |  |  |
| Version and Platform Compatibility / Previous PostgreSQL Versions|[backslash_quote](https://postgresqlco.nf/en/doc/param/backslash_quote) | safe_encoding |  |  |
| Version and Platform Compatibility / Previous PostgreSQL Versions|[default_with_oids](https://postgresqlco.nf/en/doc/param/default_with_oids) | off |  |  |
| Version and Platform Compatibility / Previous PostgreSQL Versions|[escape_string_warning](https://postgresqlco.nf/en/doc/param/escape_string_warning) | on |  |  |
| Version and Platform Compatibility / Previous PostgreSQL Versions|[lo_compat_privileges](https://postgresqlco.nf/en/doc/param/lo_compat_privileges) | off |  |  |
| Version and Platform Compatibility / Previous PostgreSQL Versions|[operator_precedence_warning](https://postgresqlco.nf/en/doc/param/operator_precedence_warning) | off |  |  |
| Version and Platform Compatibility / Previous PostgreSQL Versions|[quote_all_identifiers](https://postgresqlco.nf/en/doc/param/quote_all_identifiers) | off |  |  |
| Version and Platform Compatibility / Previous PostgreSQL Versions|[standard_conforming_strings](https://postgresqlco.nf/en/doc/param/standard_conforming_strings) | on |  |  |
| Version and Platform Compatibility / Previous PostgreSQL Versions|[synchronize_seqscans](https://postgresqlco.nf/en/doc/param/synchronize_seqscans) | on |  |  |
| Write-Ahead Log / Archiving|[archive_command](https://postgresqlco.nf/en/doc/param/archive_command) | (disabled) |  |  |
| Write-Ahead Log / Archiving|[archive_mode](https://postgresqlco.nf/en/doc/param/archive_mode) | off |  |  |
| Write-Ahead Log / Archiving|[archive_timeout](https://postgresqlco.nf/en/doc/param/archive_timeout) | 0 | s  |  |
| Write-Ahead Log / Checkpoints|[checkpoint_completion_target](https://postgresqlco.nf/en/doc/param/checkpoint_completion_target) | 0.5 |  |  |
| Write-Ahead Log / Checkpoints|[checkpoint_flush_after](https://postgresqlco.nf/en/doc/param/checkpoint_flush_after) | 32 | 8kB  | 256.00 KiB |
| Write-Ahead Log / Checkpoints|[checkpoint_timeout](https://postgresqlco.nf/en/doc/param/checkpoint_timeout) | 300 | s  |  |
| Write-Ahead Log / Checkpoints|[checkpoint_warning](https://postgresqlco.nf/en/doc/param/checkpoint_warning) | 30 | s  |  |
| Write-Ahead Log / Checkpoints|[max_wal_size](https://postgresqlco.nf/en/doc/param/max_wal_size) | 1024 | MB  | 1.00 GiB |
| Write-Ahead Log / Checkpoints|[min_wal_size](https://postgresqlco.nf/en/doc/param/min_wal_size) | 80 | MB  | 80.00 MiB |
| Write-Ahead Log / Settings|[commit_delay](https://postgresqlco.nf/en/doc/param/commit_delay) | 0 |  |  |
| Write-Ahead Log / Settings|[commit_siblings](https://postgresqlco.nf/en/doc/param/commit_siblings) | 5 |  |  |
| Write-Ahead Log / Settings|[fsync](https://postgresqlco.nf/en/doc/param/fsync) | on |  |  |
| Write-Ahead Log / Settings|[full_page_writes](https://postgresqlco.nf/en/doc/param/full_page_writes) | on |  |  |
| Write-Ahead Log / Settings|[synchronous_commit](https://postgresqlco.nf/en/doc/param/synchronous_commit) | on |  |  |
| Write-Ahead Log / Settings|[wal_buffers](https://postgresqlco.nf/en/doc/param/wal_buffers) | 512 | 8kB  | 4.00 MiB |
| Write-Ahead Log / Settings|[wal_compression](https://postgresqlco.nf/en/doc/param/wal_compression) | off |  |  |
| Write-Ahead Log / Settings|[wal_level](https://postgresqlco.nf/en/doc/param/wal_level) | replica |  |  |
| Write-Ahead Log / Settings|[wal_log_hints](https://postgresqlco.nf/en/doc/param/wal_log_hints) | off |  |  |
| Write-Ahead Log / Settings|[wal_sync_method](https://postgresqlco.nf/en/doc/param/wal_sync_method) | fdatasync |  |  |
| Write-Ahead Log / Settings|[wal_writer_delay](https://postgresqlco.nf/en/doc/param/wal_writer_delay) | 200 | ms  |  |
| Write-Ahead Log / Settings|[wal_writer_flush_after](https://postgresqlco.nf/en/doc/param/wal_writer_flush_after) | 128 | 8kB  | 1.00 MiB |

  


---
<a name="postgres-checkup_A004">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A004 Cluster Information #

## Observations ##
Data collected: 2019-08-07 16:40:40 +0300 MSK  

|&#9660;&nbsp;Indicator | localhost |
|--------|-------|
|Config file |/home/db_main_node/postgresql.conf|
|Role |Master|
|Replicas ||
|Started At |2019-08-06&nbsp;22:22:53+03|
|Uptime |18:17:47|
|Checkpoints |15772|
|Forced Checkpoints |0.1%|
|Checkpoint MB/sec |0.000286|
|Database Name |my_test_db|
|Database Size |1413&nbsp;MB|
|Stats Since |2019-08-07&nbsp;16:20:30+03|
|Stats Age |00:20:10|
|Cache Effectiveness |87.79%|
|Successful Commits |99.78%|
|Conflicts |0|
|Temp Files: total size |773&nbsp;MB|
|Temp Files: total number of files |72|
|Temp Files: total number of files per day |72|
|Temp Files: avg file size |11&nbsp;MB|
|Deadlocks |0|
|Deadlocks per day |0|


### Databases sizes ###

| Database | &#9660;&nbsp;Size |
|----------|--------|
| `test` | 3.25&nbsp;GiB |
| `my_test_db` | 1.38&nbsp;GiB |
| `postgres` | 7.77&nbsp;MiB |
| `checkup_test_db` | 7.77&nbsp;MiB |
| `template1` | 7.63&nbsp;MiB |
| `template0` | 7.63&nbsp;MiB |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A005">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A005 Extensions #

## Observations ##
Data collected: 2019-08-07 16:40:40 +0300 MSK  



### Master (`localhost`) ###
| &#9660;&nbsp;Database | Extension name | Installed version | Default version | Is old |
|---------|----------------|-------------------|-----------------|--------|
| `checkup_test_db` | `plpgsql` | 1.0 | 1.0 | <no value> |
| `my_test_db` | `pg_stat_statements` | 1.6 | 1.6 | <no value> |
| `my_test_db` | `plpgsql` | 1.0 | 1.0 | <no value> |
| `test` | `pg_repack` | 1.4.4 | 1.4.4 | <no value> |
| `test` | `pg_stat_statements` | 1.6 | 1.6 | <no value> |
| `test` | `plpgsql` | 1.0 | 1.0 | <no value> |




## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A006">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A006 Postgres Setting Deviations #

## Observations ##
Data collected: 2019-08-07 16:40:40 +0300 MSK  

### Settings (pg_settings) that Differ ###

No differences in `pg_settings` are found.

### Configs(pg_config) that differ ###

No differences in `pg_config` are found.



## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A007">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A007 Altered Settings #

## Observations ##
Data collected: 2019-08-07 16:40:45 +0300 MSK  



### Master (`localhost`) ###
| Source | Settings count | Changed settings |
|-------|----------------|-----------------|
| /home/db_main_node/postgresql.auto.conf | 1 |  random_page_cost |
| /home/db_main_node/postgresql.conf | 22 |  DateStyle default_text_search_config dynamic_shared_memory_type lc_messages lc_monetary lc_numeric lc_time log_destination log_directory log_filename logging_collector log_line_prefix log_rotation_age log_rotation_size log_timezone log_truncate_on_rotation max_connections max_wal_size min_wal_size shared_buffers shared_preload_libraries TimeZone |
| default | 271 | |








## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_D004">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# D004 pg_stat_statements and pg_stat_kcache Settings #

## Observations ##
Data collected: 2019-08-07 16:40:45 +0300 MSK  



### Master (`localhost`) ###

#### `pg_stat_statements` extension settings ####
| Setting | Value | Unit | Type | Min value | Max value |
|--------|-------|------|------|-----------|-----------|
|[pg_stat_statements.max](https://postgresqlco.nf/en/doc/param/pg_stat_statements.max)|5000||integer|100 |2147483647  |
|[pg_stat_statements.save](https://postgresqlco.nf/en/doc/param/pg_stat_statements.save)|on||bool|| |
|[pg_stat_statements.track](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track)|top||enum|| |
|[pg_stat_statements.track_utility](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track_utility)|on||bool|| |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_F001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F001 Autovacuum: Current Settings #

## Observations ##
Data collected: 2019-08-07 16:40:46 +0300 MSK  



### Master (`localhost`) ###
| &#9660;&nbsp;Setting name | Value | Unit | Pretty value |
|-------------|-------|------|--------------|
|[autovacuum](https://postgresqlco.nf/en/doc/param/autovacuum)|on|<no value> | |
|[autovacuum_analyze_scale_factor](https://postgresqlco.nf/en/doc/param/autovacuum_analyze_scale_factor)|0.1|<no value> | |
|[autovacuum_analyze_threshold](https://postgresqlco.nf/en/doc/param/autovacuum_analyze_threshold)|50|<no value> | |
|[autovacuum_freeze_max_age](https://postgresqlco.nf/en/doc/param/autovacuum_freeze_max_age)|200000000|<no value> | |
|[autovacuum_max_workers](https://postgresqlco.nf/en/doc/param/autovacuum_max_workers)|3|<no value> | |
|[autovacuum_multixact_freeze_max_age](https://postgresqlco.nf/en/doc/param/autovacuum_multixact_freeze_max_age)|400000000|<no value> | |
|[autovacuum_naptime](https://postgresqlco.nf/en/doc/param/autovacuum_naptime)|60|s | |
|[autovacuum_vacuum_cost_delay](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_delay)|20|ms | |
|[autovacuum_vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_limit)|-1|<no value> | |
|[autovacuum_vacuum_scale_factor](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_scale_factor)|0.2|<no value> | |
|[autovacuum_vacuum_threshold](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_threshold)|50|<no value> | |
|[autovacuum_work_mem](https://postgresqlco.nf/en/doc/param/autovacuum_work_mem)|-1|kB | |
|[maintenance_work_mem](https://postgresqlco.nf/en/doc/param/maintenance_work_mem)|65536|kB | 64.00 MiB|
|[vacuum_cleanup_index_scale_factor](https://postgresqlco.nf/en/doc/param/vacuum_cleanup_index_scale_factor)|0.1|<no value> | |
|[vacuum_cost_delay](https://postgresqlco.nf/en/doc/param/vacuum_cost_delay)|0|ms | |
|[vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/vacuum_cost_limit)|200|<no value> | |
|[vacuum_cost_page_dirty](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_dirty)|20|<no value> | |
|[vacuum_cost_page_hit](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_hit)|1|<no value> | |
|[vacuum_cost_page_miss](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_miss)|10|<no value> | |
|[vacuum_defer_cleanup_age](https://postgresqlco.nf/en/doc/param/vacuum_defer_cleanup_age)|0|<no value> | |
|[vacuum_freeze_min_age](https://postgresqlco.nf/en/doc/param/vacuum_freeze_min_age)|50000000|<no value> | |
|[vacuum_freeze_table_age](https://postgresqlco.nf/en/doc/param/vacuum_freeze_table_age)|150000000|<no value> | |
|[vacuum_multixact_freeze_min_age](https://postgresqlco.nf/en/doc/param/vacuum_multixact_freeze_min_age)|5000000|<no value> | |
|[vacuum_multixact_freeze_table_age](https://postgresqlco.nf/en/doc/param/vacuum_multixact_freeze_table_age)|150000000|<no value> | |


#### Tuned tables ####

| &#9660;&nbsp;Namespace | Relation | Options |
|----------|----------|------|
|public |t_with_bloat | autovacuum_vacuum_scale_factor=0.01<br/> |






## Conclusions ##
  - [P1] Autovacuum is not well-tuned. The following parameters are default, meaning that autovacuum behavior is far from optimal for an OLTP workload leading to higher levels of bloat in tables and indexes, lagging statistics:  
    - `autovacuum_vacuum_scale_factor` = 0.2 and `autovacuum_vacuum_threshold` = 50  
    - `autovacuum_analyze_scale_factor` = 0.1 and `autovacuum_analyze_threshold` = 50  
    - `autovacuum_vacuum_cost_delay` = 20 and `autovacuum_vacuum_cost_limit` = -1  
  

  
 


## Recommendations ##
  - [P1] Autovacuum is not well-tuned. Consider its tuning for your workload. The links below can be helpful.  

  - Useful links related to autovacuum tuning:  
    - [PostgreSQL Documentation. 19.10. Automatic Vacuuming](https://www.postgresql.org/docs/current/runtime-config-autovacuum.html)  
    - [Autovacuum Tuning Basics](https://www.2ndquadrant.com/en/blog/autovacuum-tuning-basics/) (2ndQuadrant, 2017)  
    - [Visualizing & Tuning Postgres Autovacuum](https://pganalyze.com/blog/visualizing-and-tuning-postgres-autovacuum) (pganalyze, 2017)  
    - [A Case Study of Tuning Autovacuum in Amazon RDS for PostgreSQL](https://aws.amazon.com/ru/blogs/database/a-case-study-of-tuning-autovacuum-in-amazon-rds-for-postgresql/) (AWS, 2018)  
    - [Understanding Autovacuum](https://www.youtube.com/watch?v=GqrBp0gyNHs) (video, 55 min, Citus Data, 2016)  

  
 


---
<a name="postgres-checkup_F002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F002 Autovacuum: Transaction ID Wraparound Check #

## Observations ##
- Data collected: 2019-08-07 16:40:46 +0300 MSK
- Current database: my_test_db




### Master (`localhost`) ###


#### Databases ####


| \# | Database | &#9660;&nbsp;Age | Capacity used, % | Warning | datfrozenxid |
|--|--------|-----|------------------|---------|--------------|
| 1 |`postgres`|43237 |0 |  |561 |
| 2 |`test`|43237 |0 |  |561 |
| 3 |`template1`|43237 |0 |  |561 |
| 4 |`template0`|43237 |0 |  |561 |
| 5 |`my_test_db`|43237 |0 |  |561 |
| 6 |`checkup_test_db`|43237 |0 |  |561 |


#### Tables in the observed database ####
The list is limited to 10 items. Total: 18.

| \# | Relation | Age | &#9660;&nbsp;Capacity used, % | Warning |rel_relfrozenxid | toast_relfrozenxid |
|---|-------|-----|------------------|---------|-----------------|--------------------|
| 1 |`t_rar_q` |129 |0 |  |43669 |0 |
| 2 |`t_fillfactor` |127 |0 |  |43671 |0 |
| 3 |`t_with_unused_index` |126 |0 |  |43672 |0 |
| 4 |`t_with_redundant_index` |124 |0 |  |43674 |0 |
| 5 |`t_with_redundant_idx` |121 |0 |  |43677 |0 |
| 6 |`t_with_redundant_ref_idx` |109 |0 |  |43689 |0 |
| 7 |`exp_redundant.t_with_redundant_ref_idx` |104 |0 |  |43694 |0 |
| 8 |`test_schema.t_with_invalid_index` |99 |0 |  |43699 |0 |
| 9 |`bloated` |97 |0 |  |43701 |0 |
| 10 |`t_red_fk_1` |93 |0 |  |43705 |0 |


\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_F003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead Tuples #

## Observations ##
Data collected: 2019-08-07 16:40:46 +0300 MSK  
Current database: my_test_db  
Stats reset: 00:20:00 ago (2019-08-07 16:20:30 +0300 MSK)  
### Master (`localhost`) ###
  
  
| \#|  Relation | reltype | Since last autovacuum | Since last vacuum | Autovacuum Count | Vacuum Count | n_tup_ins | n_tup_upd | n_tup_del | pg_class.reltuples | n_live_tup | n_dead_tup | &#9660;Dead Tuples Ratio, % |
|---|-------|------|-----------------------|-------------------|----------|---------|-----------|-----------|-----------|--------------------|------------|------------|-----------|
| 1 |`test_schema.t_with_invalid_index` |r |<no value> |00:19:09.481826 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 2 |`t_slw_q` |r |<no value> |00:19:05.493314 |0 |1 |10000001 |0 |0 |10000048 |10000048 |0 | 0  |
| 3 |`t2` |r |<no value> |00:18:32.428888 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 4 |`t1` |r |<no value> |00:18:37.012809 |0 |1 |1000001 |0 |0 |1000001 |1000001 |0 | 0  |
| 5 |`t_red_fk_2` |r |<no value> |00:19:08.460897 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 6 |`t_red_fk_1` |r |<no value> |00:19:08.973739 |0 |1 |1000001 |0 |0 |1000001 |1000001 |0 | 0  |
| 7 |`t_rar_q` |r |00:17:13.199823 |00:19:12.169845 |1 |1 |1000000 |744854 |0 |1000000 |1000000 |0 | 0  |
| 8 |`t_with_unused_index` |r |<no value> |00:19:11.907294 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 9 |`t_with_redundant_idx` |r |<no value> |00:19:10.541261 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 10 |`t_with_redundant_index` |r |<no value> |00:19:11.643459 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 11 |`exp_redundant.t_with_redundant_ref_idx` |r |<no value> |00:19:09.727105 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 12 |`bloated` |r |<no value> |00:19:09.295562 |0 |1 |100000 |0 |50000 |50000 |50000 |0 | 0  |
| 13 |`t_with_redundant_ref_idx` |r |<no value> |00:19:10.096731 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 14 |`t_with_bloat`\* |r |00:16:51.504933 |00:19:04.912721 |1 |1 |1000000 |1000000 |0 |1000000 |1000000 |0 | 0  |

\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##

## Recommendations ##


---
<a name="postgres-checkup_F004">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap Bloat (Estimated) #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-08-07 16:40:47 +0300 MSK  
Current database: my_test_db  
NOTICE: only tables larger than 800&nbsp;KiB are analyzed.  


### Master (`localhost`) ###


  

| \# | Table | Real Size | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat factor | Est. bloat level, % | Live Data Size | Last vacuum | Fillfactor |
|----|-------|------|------------------------------|-------------------|-------------------|---------------------|----------------|-------------|------------|
|&nbsp;|===== TOTAL ===== |844.40&nbsp;MiB |46.84&nbsp;MiB |49,111,040 |1.06 |5.55 | ~797.57&nbsp;MiB ||||
|1 |`t_with_bloat`\* |69.15&nbsp;MiB |34.71&nbsp;MiB |36,388,864 |2.01 | **50.19** |~34.44&nbsp;MiB | 2019-08-07 16:23:55 (auto)  |100 |
|2 |`t_rar_q` |49.89&nbsp;MiB |7.80&nbsp;MiB |8,175,616 |1.19 |15.63 |~42.09&nbsp;MiB | 2019-08-07 16:23:34 (auto)  |100 |
|3 |`bloated` |3.47&nbsp;MiB |1.74&nbsp;MiB |1,818,624 |2.00 | **50.11** |~1.73&nbsp;MiB | 2019-08-07 16:21:38  |100 |
|4 |`t_slw_q` |345.69&nbsp;MiB |1.36&nbsp;MiB |1,417,216 |1.00 |0.39 |~344.34&nbsp;MiB | 2019-08-07 16:21:41  |100 |
|5 |`t2` |42.24&nbsp;MiB |152.00&nbsp;KiB |155,648 |1.00 |0.35 |~42.09&nbsp;MiB | 2019-08-07 16:22:14  |100 |
|6 |`t_red_fk_2` |42.24&nbsp;MiB |152.00&nbsp;KiB |155,648 |1.00 |0.35 |~42.09&nbsp;MiB | 2019-08-07 16:21:38  |100 |
|7 |`t_with_unused_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-08-07 16:21:35  |100 |
|8 |`test_schema.t_with_invalid_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-08-07 16:21:37  |100 |
|9 |`t1` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-08-07 16:22:10  |100 |
|10 |`t_red_fk_1` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-08-07 16:21:38  |100 |
|11 |`t_with_redundant_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-08-07 16:21:35  |100 |
|12 |`exp_redundant.t_with_redundant_ref_idx` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-08-07 16:21:37  |100 |
|13 |`t_with_redundant_ref_idx` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-08-07 16:21:37  |100 |
|14 |`t_with_redundant_idx` |49.77&nbsp;MiB |24.00&nbsp;KiB |24,576 |1.00 |0.05 |~49.75&nbsp;MiB | 2019-08-07 16:21:36  |100 |

\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'

## Conclusions ##
  - The estimated table (heap) bloat in this DB is low, just ~5.55% (~46.84 MiB). No action is needed now. Keep watching it though.

  - [P2] There are 2 tables with size > 1 MiB and table bloat estimate >= 40.00% and < 90.00%:  
    - `t_with_bloat`: size 69.15 MiB, can be reduced 2.01 times, by ~34.71 MiB (~50.19%)  
    - `bloated`: size 3.47 MiB, can be reduced 2.00 times, by ~1.74 MiB (~50.11%)  
  

  
 


## Recommendations ##
  - [P2] Consider the following:
    - to prevent a high level of bloat in the future, tune autovacuum: consider more aggressive autovacuum settings (see F001);
    - eliminate or reduce the current table bloat using one of the approaches listed below.

  - If you want to get exact bloat numbers, clone the database, get table sizes, then apply database-wide `VACUUM FULL` (it eliminate all the bloat), and get new table sizes. Then compare old and new numbers.

  - To reduce the table bloat, consider one of the following approaches:
    - [`VACUUM FULL`](https://www.postgresql.org/docs/current/sql-vacuum.html) (:warning:  requires downtime / maintenance window),
    - one of the tools reducing the bloat online, without interrupting the operations:
        - [pg_repack](https://github.com/reorg/pg_repack),
        - [pg_squeeze](https://github.com/cybertec-postgresql/pg_squeeze),
        - [pgcompacttable](https://github.com/dataegret/pgcompacttable).

  - Read more on this topic:
    - [Bloat estimation for tables](http://blog.ioguix.net/postgresql/2014/09/10/Bloat-estimation-for-tables.html) (2014, ioguix)
    - [Show database bloat](https://wiki.postgresql.org/wiki/Show_database_bloat) (PostgreSQL wiki)
    - [PostgreSQL Bloat: origins, monitoring and managing](https://www.compose.com/articles/postgresql-bloat-origins-monitoring-and-managing/) (2016, Compose)
    - [Dealing with significant Postgres database bloat — what are your options?](https://medium.com/compass-true-north/dealing-with-significant-postgres-database-bloat-what-are-your-options-a6c1814a03a5) (2018, Compass)
    - [Postgres database bloat analysis](https://about.gitlab.com/handbook/engineering/infrastructure/blueprint/201901-postgres-bloat/) (2019, GitLab)

  
 


---
<a name="postgres-checkup_F005">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F005 Autovacuum: Index Bloat (Estimated) #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-08-07 16:40:47 +0300 MSK  
Current database: my_test_db  
NOTICE: only tables larger than 800&nbsp;KiB are analyzed.  




### Master (`localhost`) ###
  

| \# | Index (Table) | Index Size | Table Size | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat factor |Est. bloat level, % | Live Data Size | Fillfactor  |
|----|---------------|------------|------------|------------------------------|-------------------|-------------------|--------------------|----------------|-------------|
|&nbsp;|===== TOTAL ===== |388.15&nbsp;MiB |310.88&nbsp;MiB |23.96&nbsp;MiB |25,116,672|1.07 |6.17|364.19&nbsp;MiB |||
|1 | `t_rar_q_idx` (`t_rar_q`) |42.86&nbsp;MiB |49.93&nbsp;MiB |21.50&nbsp;MiB |22,544,384 |2.01 | **50.16** |~21.36&nbsp;MiB |90 |
|2 | `i_bloated` (`bloated`) |2.16&nbsp;MiB |3.50&nbsp;MiB |1.08&nbsp;MiB |1,130,496 |2.00 | **50.00** |~1.08&nbsp;MiB |90 |
|3 | `i_redundant_1` (`t_with_redundant_index`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|4 | `i_redundant_2` (`t_with_redundant_index`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|5 | `t_with_redundant_idx_f1_f2` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|6 | `t_with_redundant_idx_id` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|7 | `t_with_redundant_idx_pkey` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|8 | `t_with_redundant_ref_idx_1` (`t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|9 | `t_with_redundant_ref_idx_2` (`t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|10 | `t_with_redundant_ref_idx_3` (`t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|11 | `t_with_redundant_ref_idx_1` (`exp_redundant.t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|12 | `t_with_redundant_ref_idx_2` (`exp_redundant.t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|13 | `t_with_redundant_ref_idx_3` (`exp_redundant.t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|14 | `r_red_fk_1_id_idx` (`t_red_fk_1`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|15 | `r_red_fk_1_x_idx` (`t_red_fk_1`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|16 | `t_red_fk_1_pkey` (`t_red_fk_1`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|17 | `t1_pkey` (`t1`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|18 | `i_unused` (`t_with_unused_index`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |



## Conclusions ##
  - The estimated index (btree only) bloat in this DB is low, just ~6.17% (~23.96 MiB). No action is needed now. Keep watching it though.

  - [P2] There are 2 indexes with size > 1 MiB and index bloat estimate >= 40.00% and < 90.00%:  
    - `t_rar_q_idx`: size 42.86 MiB, can be reduced 2.01 times, by ~23.65 MiB (~50.16%)
    - `i_bloated`: size 2.16 MiB, can be reduced 2.00 times, by ~1.19 MiB (~50.00%)
  

  
 


## Recommendations ##
  - [P2] Consider the following:
    - to prevent a high level of bloat in the future, tune autovacuum: consider more aggressive autovacuum settings (see F001);
    - eliminate or reduce the current index bloat using one of the approaches listed below.

  - If you want to get exact bloat numbers, clone the database, get index sizes, then apply database-wide `VACUUM FULL` (it eliminates all the bloat), and gets new table sizes. Then compare old and new numbers.

  - To reduce the index bloat, consider one of the following approaches:
    - [`VACUUM FULL`](https://www.postgresql.org/docs/current/sql-vacuum.html) (:warning:  requires downtime / maintenance window),
    - [`REINDEX`](https://www.postgresql.org/docs/current/sql-reindex.html) (`REINDEX INDEX`, `REINDEX TABLE`; :warning:  requires downtime / maintenance window),
    - recreating indexes online using `CREATE INDEX CONCURRENTLY`, `DROP INDEX CONCURRENTLY` and renaming (not trivial for indexes supporting PK, FK) // `REINDEX CONCURRENTLY` is available in Postgres 12+,
    - one of the tools reducing the bloat online, without interrupting the operations:  
        - [pg_repack](https://github.com/reorg/pg_repack),
        - [pg_squeeze](https://github.com/reorg/pg_repack),
        - [pgcompacttable](https://github.com/dataegret/pgcompacttable).

  - Read more on this topic:
    - [Index maintenance](https://wiki.postgresql.org/wiki/Index_Maintenance) (PostgreSQL wiki)
    - [Btree bloat query](http://blog.ioguix.net/postgresql/2014/11/03/Btree-bloat-query-part-4.html) (2014, ioguix)
    - [PostgreSQL Index bloat under a microscope](http://pgeoghegan.blogspot.com/2017/07/postgresql-index-bloat-microscope.html) (2017, Peter Geoghegan)
    - [PostgreSQL Bloat: origins, monitoring and managing](https://www.compose.com/articles/postgresql-bloat-origins-monitoring-and-managing/) (2016, Compose)  
    - [Dealing with significant Postgres database bloat — what are your options?](Dealing with significant Postgres database bloat — what are your options?) (2018, Compass)
    - [Postgres database bloat analysis](https://about.gitlab.com/handbook/engineering/infrastructure/blueprint/201901-postgres-bloat/) (2019, GitLab)

  
 


---
<a name="postgres-checkup_F008">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F008 Autovacuum: Resource Usage #

## Observations ##
Data collected: 2019-08-07 16:40:47 +0300 MSK  
### Settings ###




| Setting name | Value | Unit | Pretty value |
|-------------|-------|------|--------------|
| [autovacuum_max_workers](https://postgresqlco.nf/en/doc/param/autovacuum_max_workers)|3|<no value> |  |
| [autovacuum_vacuum_cost_delay](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_delay)|20|ms |  |
| [autovacuum_vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_limit)|-1|<no value> |  |
| [autovacuum_work_mem](https://postgresqlco.nf/en/doc/param/autovacuum_work_mem)|-1|kB |  |
| [log_autovacuum_min_duration](https://postgresqlco.nf/en/doc/param/log_autovacuum_min_duration)|-1|ms |  |
| [maintenance_work_mem](https://postgresqlco.nf/en/doc/param/maintenance_work_mem)|65536|kB | 64.00 MiB |
| [max_connections](https://postgresqlco.nf/en/doc/param/max_connections)|100|<no value> |  |
| [shared_buffers](https://postgresqlco.nf/en/doc/param/shared_buffers)|16384|8kB | 128.00 MiB |
| [vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/vacuum_cost_limit)|200|<no value> |  |
| [work_mem](https://postgresqlco.nf/en/doc/param/work_mem)|4096|kB | 4.00 MiB |


### CPU ###

Cpu count you can see in report A001  

### RAM ###

Ram amount you can see in report A001

Max workers memory: 192&nbsp;MiB


### DISK ###

:warning: Warning: collection of current impact on disks is not yet implemented. Please refer to Postgres logs and see current read and write IO bandwidth caused by autovacuum.

## Conclusions ##

## Recommendations ##


---
<a name="postgres-checkup_G001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# G001 Memory-related Settings #

## Observations ##
Data collected: 2019-08-07 16:40:48 +0300 MSK  



### Master (`localhost`) ###

| Setting name | Value | Unit | Pretty value |
|-------------|-------|------|--------------|
| [autovacuum_max_workers](https://postgresqlco.nf/en/doc/param/autovacuum_max_workers) | 3| <no value> |  |
| [autovacuum_work_mem](https://postgresqlco.nf/en/doc/param/autovacuum_work_mem) | -1| kB |  |
| [effective_cache_size](https://postgresqlco.nf/en/doc/param/effective_cache_size) | 524288| 8kB | 4.00 GiB |
| [maintenance_work_mem](https://postgresqlco.nf/en/doc/param/maintenance_work_mem) | 65536| kB | 64.00 MiB |
| [max_connections](https://postgresqlco.nf/en/doc/param/max_connections) | 100| <no value> |  |
| [shared_buffers](https://postgresqlco.nf/en/doc/param/shared_buffers) | 16384| 8kB | 128.00 MiB |
| [temp_buffers](https://postgresqlco.nf/en/doc/param/temp_buffers) | 1024| 8kB | 8.00 MiB |
| [work_mem](https://postgresqlco.nf/en/doc/param/work_mem) | 4096| kB | 4.00 MiB |






## Conclusions ##

## Recommendations ##


---
<a name="postgres-checkup_G002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# G002 Connections and Current Activity #

## Observations ##
Data collected: 2019-08-07 16:40:48 +0300 MSK  



### Master (`localhost`) ###
  

 \# | User | DB | Current state | Count | State changed >1m ago | State changed >1h ago | Tx age >1m | Tx age >1h
|----|------|----|---------------|-------|-----------------------|-----------------------|------------|-----------
| 1 |ALL users|ALL databases| ALL states | <no value> | 4 | 0 | 0 | 0 | 
| 2 |ALL users|ALL databases| ALL states | <no value> | 0 | 0 | 0 | 0 | 
| 3 |ALL users|ALL databases| ALL states | <no value> | 0 | 0 | 0 | 0 | 
| 4 |`postgres`|ALL databases| active | <no value> | 0 | 0 | 0 | 0 | 
| 5 |`postgres`|ALL databases| ALL states | <no value> | 0 | 0 | 0 | 0 | 
| 6 |`postgres`|ALL databases| ALL states | <no value> | 0 | 0 | 0 | 0 | 
| 7 |`postgres`|ALL databases| idle | <no value> | 4 | 0 | 0 | 0 | 
| 8 |`postgres`|`checkup_test_db`| idle | <no value> | 1 | 0 | 0 | 0 | 
| 9 |`postgres`|`my_test_db`| active | <no value> | 0 | 0 | 0 | 0 | 
| 10 |`postgres`|`my_test_db`| idle | <no value> | 1 | 0 | 0 | 0 | 
| 11 |`postgres`|`postgres`| idle | <no value> | 1 | 0 | 0 | 0 | 
| 12 |`postgres`|`test`| idle | <no value> | 1 | 0 | 0 | 0 | 





## Conclusions ##
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_G003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# G003 Timeouts, Locks, Deadlocks #

## Observations ##
Data collected: 2019-08-07 16:40:48 +0300 MSK  



### Master (`localhost`) ###
#### Timeouts ####
| Setting name | Value | Unit | Pretty value |
|-------------|-------|------|--------------|
| [authentication_timeout](https://postgresqlco.nf/en/doc/param/authentication_timeout)|60|s| |
| [idle_in_transaction_session_timeout](https://postgresqlco.nf/en/doc/param/idle_in_transaction_session_timeout)|0|ms| |
| [statement_timeout](https://postgresqlco.nf/en/doc/param/statement_timeout)|0|ms| |

#### Locks ####
| Setting name | Value | Unit | Pretty value |
|-------------|-------|------|--------------|
| [deadlock_timeout](https://postgresqlco.nf/en/doc/param/deadlock_timeout)|1000|ms| |
| [lock_timeout](https://postgresqlco.nf/en/doc/param/lock_timeout)|0|ms| |
| [max_locks_per_transaction](https://postgresqlco.nf/en/doc/param/max_locks_per_transaction)|64|<no value>| |
| [max_pred_locks_per_page](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_page)|2|<no value>| |
| [max_pred_locks_per_relation](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_relation)|-2|<no value>| |
| [max_pred_locks_per_transaction](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_transaction)|64|<no value>| |


#### Database specified settings ####
| Database | Setting |
|---------|---------|
| `checkup_test_db` | [lock_timeout=4s] 

#### User specified settings ####
| User | Setting |
|------|---------|
| `checkup_test_user` | [lock_timeout=3s] 

#### Databases data ####
  

| \# | Database | Conflicts | &#9660;&nbsp;Deadlocks | Stats reset at | Stat reset |
|--|-----------|-------|-----------|----------------|------------|
| 1| `postgres` | 0 | 0 | 2019-06-22T19:18:14.957005+03:00|45 days 21:22:34 |
| 2| `test` | 0 | 0 | 2019-06-22T19:18:44.656812+03:00|45 days 21:22:04 |
| 3| `my_test_db` | 0 | 0 | 2019-08-07T16:20:30.325441+03:00|00:20:19 |
| 4| `checkup_test_db` | 0 | 0 | 2019-08-07T16:12:38.11223+03:00|00:28:11 |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_H001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# H001 Invalid Indexes #

## Observations ##
Data collected: 2019-08-07 16:40:49 +0300 MSK  
Current database: my_test_db  


### Master (`localhost`) ###


  

| \# | Table | Index name | Index size | Supports FK |
|---|-------|------------|------------|----------|
&nbsp;|=====TOTAL=====||0.00&nbsp;bytes ||
| 1 |`test_schema.t_with_invalid_index` | `i_invalid` |0.00&nbsp;bytes | |



## Conclusions ##


## Recommendations ##
#### Rebuild invalid indexes ####
```
-- Call each line separately. "CONCURRENTLY" queries cannot be
-- combined in multi-statement requests.

DROP INDEX CONCURRENTLY i_invalid; -- Invalid index, table t_with_invalid_index
CREATE INDEX CONCURRENTLY i_invalid ON test_schema.t_with_invalid_index USING btree (i); -- table t_with_invalid_index


```


---
<a name="postgres-checkup_H002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# H002 Unused and Redundant Indexes #
## Observations ##
Data collected: 2019-08-07 16:40:49 +0300 MSK  
Current database: my_test_db  
Stats reset: 00:20:00 ago (2019-08-07 16:20:30 +0300 MSK)  
:warning: Statistics age is less than 30 days. Make decisions on index cleanup with caution!  
NOTICE: only indexes larger than 800&nbsp;KiB are analyzed.  
### Never Used Indexes ###

  

| \#| Table | Index | localhost usage | &#9660;&nbsp;Index size | Table size | Supports FK |
|--|-------|-------|----|-----|-----|-----|
|&nbsp;|=====TOTAL=====|||409.62&nbsp;MiB|766.80&nbsp;MiB||
|1|`t2`|`t2_t1_id_idx`|0|21.45&nbsp;MiB|42.24&nbsp;MiB||
|2|`t_with_redundant_index`|`i_redundant_2`|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|3|`t_with_redundant_index`|`i_redundant_1`|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|4|`t_with_redundant_idx`|`t_with_redundant_idx_f3_2`|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|5|`t_with_redundant_idx`|`t_with_redundant_idx_f3_1`|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|6|`t_with_redundant_idx`|`t_with_redundant_idx_f2`|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|7|`t_with_redundant_idx`|`t_with_redundant_idx_f1_f2`|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|8|`t_with_redundant_idx`|`t_with_redundant_idx_f1_2`|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|9|`t_with_redundant_idx`|`t_with_redundant_idx_f1`|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|10|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_3`|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|11|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_2`|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|12|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_1`|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|13|`exp_redundant.t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_3`|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|14|`exp_redundant.t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_2`|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|15|`exp_redundant.t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_1`|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|16|`t_with_unused_index`|`i_unused`|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|17|`t_red_fk_1`|`r_red_fk_1_x_idx`|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|18|`t_red_fk_1`|`r_red_fk_1_id_idx`|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|19|`t_red_fk_2`|`r_red_fk_2_fk_idx`|0|21.45&nbsp;MiB|42.24&nbsp;MiB||
|20|`bloated`|`i_bloated`|0|2.16&nbsp;MiB|3.47&nbsp;MiB||



### Rarely Used Indexes ###

  

|\#| Table | Index | localhost usage | &#9660;&nbsp;Index size | Table size | Comment | Supports FK|
|--|-------|-------|-----|-----|-----|----|-----|
|&nbsp;|=====TOTAL=====|||42.86&nbsp;MiB|49.89&nbsp;MiB|||
|1|`t_rar_q`|`t_rar_q_idx`|scans: 1\/hour, writes: 1,744,854\/hour|42.86&nbsp;MiB|49.89&nbsp;MiB|Low Scans, High Writes||



### Redundant Indexes ###

  

|\#| Table | Index | Redundant to |localhost usage | &#9660;&nbsp;Index size | Table size | Supports FK |
|--|-------|-------|--------------|--|-----|-----|-----|
|&nbsp;|=====TOTAL=====||||235.90&nbsp;MiB|441.06&nbsp;MiB||
|1|`t_with_redundant_index`|`i_redundant_2`|`i_redundant_1`<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|2|`t_with_redundant_idx`|`t_with_redundant_idx_id`|`t_with_redundant_idx_pkey`<br/>|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|3|`t_with_redundant_idx`|`t_with_redundant_idx_f1`|`t_with_redundant_idx_f1_uniq`<br/>|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|4|`t_with_redundant_idx`|`t_with_redundant_idx_f1_2`|`t_with_redundant_idx_f1`<br/>`t_with_redundant_idx_f1_uniq`<br/>|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|5|`t_with_redundant_idx`|`t_with_redundant_idx_f3_2`|`t_with_redundant_idx_f3_1`<br/>|0|21.45&nbsp;MiB|49.77&nbsp;MiB||
|6|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_2`|`t_with_redundant_ref_idx_1`<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|7|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_3`|`t_with_redundant_ref_idx_1`<br/>`t_with_redundant_ref_idx_2`<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|8|`exp_redundant.t_with_redundant_ref_idx`|`exp_redundant.t_with_redundant_ref_idx_2`|`exp_redundant.t_with_redundant_ref_idx_1`<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|9|`exp_redundant.t_with_redundant_ref_idx`|`exp_redundant.t_with_redundant_ref_idx_3`|`exp_redundant.t_with_redundant_ref_idx_1`<br/>`exp_redundant.t_with_redundant_ref_idx_2`<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB||
|10|`t_red_fk_1`|`r_red_fk_1_id_idx`|`t_red_fk_1_pkey`<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|11|`t_red_fk_1`|`r_red_fk_1_x_idx`|`r_red_fk_1_id_idx`<br/>`t_red_fk_1_pkey`<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|



## Conclusions ##


## Recommendations ##



#### "DO" database migration code ####
```
DROP INDEX CONCURRENTLY i_bloated; -- 2208 kB, Never Used Indexes, table bloated
DROP INDEX CONCURRENTLY t2_t1_id_idx; -- 21 MB, Never Used Indexes, table t2
DROP INDEX CONCURRENTLY r_red_fk_1_id_idx; -- 21 MB, Never Used Indexes, t_red_fk_1_pkey, r_red_fk_1_x_idx, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_1_x_idx; -- 21 MB, Never Used Indexes, r_red_fk_1_id_idx, t_red_fk_1_pkey, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_2_fk_idx; -- 21 MB, Never Used Indexes, table t_red_fk_2
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1; -- 21 MB, t_with_redundant_idx_f1_f2, t_with_redundant_idx_f1_2, t_with_redundant_idx_f1_uniq, Never Used Indexes, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1_2; -- 21 MB, Never Used Indexes, t_with_redundant_idx_f1_uniq, t_with_redundant_idx_f1_f2, t_with_redundant_idx_f1, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1_f2; -- 21 MB, Never Used Indexes, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f2; -- 21 MB, Never Used Indexes, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f3_1; -- 21 MB, t_with_redundant_idx_f3_2, Never Used Indexes, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f3_2; -- 21 MB, Never Used Indexes, t_with_redundant_idx_f3_1, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_id; -- 21 MB, t_with_redundant_idx_pkey, table t_with_redundant_idx
DROP INDEX CONCURRENTLY i_redundant_1; -- 21 MB, Never Used Indexes, i_redundant_2, table t_with_redundant_index
DROP INDEX CONCURRENTLY i_redundant_2; -- 21 MB, i_redundant_1, Never Used Indexes, table t_with_redundant_index
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_1; -- 21 MB, exp_redundant.t_with_redundant_ref_idx_2, exp_redundant.t_with_redundant_ref_idx_3, Never Used Indexes, t_with_redundant_ref_idx_2, t_with_redundant_ref_idx_3, Never Used Indexes, table t_with_redundant_ref_idx
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_2; -- 21 MB, Never Used Indexes, t_with_redundant_ref_idx_3, exp_redundant.t_with_redundant_ref_idx_1, Never Used Indexes, t_with_redundant_ref_idx_1, exp_redundant.t_with_redundant_ref_idx_3, table t_with_redundant_ref_idx
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_3; -- 21 MB, t_with_redundant_ref_idx_2, Never Used Indexes, Never Used Indexes, t_with_redundant_ref_idx_1, exp_redundant.t_with_redundant_ref_idx_1, exp_redundant.t_with_redundant_ref_idx_2, table t_with_redundant_ref_idx
DROP INDEX CONCURRENTLY i_unused; -- 21 MB, Never Used Indexes, table t_with_unused_index

```


#### "UNDO" database migration code ####
```
CREATE INDEX CONCURRENTLY i_bloated ON public.bloated USING btree (i); -- table bloated
CREATE INDEX CONCURRENTLY t2_t1_id_idx ON public.t2 USING btree (t1_id); -- table t2
CREATE INDEX CONCURRENTLY r_red_fk_1_id_idx ON public.t_red_fk_1 USING btree (id); -- table t_red_fk_1
CREATE INDEX CONCURRENTLY r_red_fk_1_x_idx ON public.t_red_fk_1 USING btree (id); -- table t_red_fk_1
CREATE INDEX CONCURRENTLY r_red_fk_2_fk_idx ON public.t_red_fk_2 USING btree (r_t1_id); -- table t_red_fk_2
CREATE INDEX CONCURRENTLY t_with_redundant_idx_f1 ON public.t_with_redundant_idx USING btree (f1); -- table t_with_redundant_idx
CREATE INDEX CONCURRENTLY t_with_redundant_idx_f1_2 ON public.t_with_redundant_idx USING btree (f1); -- table t_with_redundant_idx
CREATE INDEX CONCURRENTLY t_with_redundant_idx_f1_f2 ON public.t_with_redundant_idx USING btree (f1, f2); -- table t_with_redundant_idx
CREATE INDEX CONCURRENTLY t_with_redundant_idx_f2 ON public.t_with_redundant_idx USING btree (f2); -- table t_with_redundant_idx
CREATE INDEX CONCURRENTLY t_with_redundant_idx_f3_1 ON public.t_with_redundant_idx USING btree (f3); -- table t_with_redundant_idx
CREATE INDEX CONCURRENTLY t_with_redundant_idx_f3_2 ON public.t_with_redundant_idx USING btree (f3); -- table t_with_redundant_idx
CREATE INDEX CONCURRENTLY t_with_redundant_idx_id ON public.t_with_redundant_idx USING btree (id); -- table t_with_redundant_idx
CREATE INDEX CONCURRENTLY i_redundant_1 ON public.t_with_redundant_index USING btree (i); -- table t_with_redundant_index
CREATE INDEX CONCURRENTLY i_redundant_2 ON public.t_with_redundant_index USING btree (i); -- table t_with_redundant_index
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_1 ON public.t_with_redundant_ref_idx USING btree (i); -- table t_with_redundant_ref_idx
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_2 ON public.t_with_redundant_ref_idx USING btree (i); -- table t_with_redundant_ref_idx
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_3 ON public.t_with_redundant_ref_idx USING btree (i); -- table t_with_redundant_ref_idx
CREATE INDEX CONCURRENTLY i_unused ON public.t_with_unused_index USING btree (i); -- table t_with_unused_index

```


---
<a name="postgres-checkup_H003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# H003 Non-indexed Foreign Keys #

## Observations ##
Data collected: 2019-08-07 16:40:49 +0300 MSK  
Current database: my_test_db  
NOTICE: only indexes larger than 800&nbsp;KiB on tables larger than 800&nbsp;KiB are analyzed.  

### Master (`localhost`) ###



Nothing found



## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K001 Globally Aggregated Query Metrics

## Observations ##
Data collected: 2019-08-07 16:40:50 +0300 MSK  
Current database: my_test_db  



### Master (`localhost`) ###
Start: 2019-08-07T16:39:51.357262+03:00  
End: 2019-08-07T16:40:50.231715+03:00  
Period seconds: 58.87445  
Period age: 00:00:58.874453  

Error (calls): 0.00 (0.00%)  
Error (total time): 0.00 (0.00%)

| Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|46<br/>0.78/sec<br/>1.00/call<br/>100.00% |661.51&nbsp;ms<br/>11.236&nbsp;ms/sec<br/>14.381&nbsp;ms/call<br/>100.00% |230<br/>3.91/sec<br/>5.00/call<br/>100.00% |1,334&nbsp;blks<br/>22.66&nbsp;blks/sec<br/>29.00&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|





## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K002 Workload Type ("First Word" Analysis)

## Observations ##
Data collected: 2019-08-07 16:40:50 +0300 MSK  
Current database: my_test_db  



### Master (`localhost`) ###
Start: 2019-08-07T16:39:51.357262+03:00  
End: 2019-08-07T16:40:50.231715+03:00  
Period seconds: 58.87445  
Period age: 00:00:58.874453  

Error (calls): 0.00 (0.00%)  
Error (total time): 0.00 (0.00%)

|\# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------|
|1 |pga4dash |46<br/>0.78/sec<br/>1.00/call<br/>100.00% |661.51&nbsp;ms<br/>11.236&nbsp;ms/sec<br/>14.381&nbsp;ms/call<br/>100.00% |230<br/>3.91/sec<br/>5.00/call<br/>100.00% |1,334&nbsp;blks<br/>22.66&nbsp;blks/sec<br/>29.00&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|2 |select |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|3 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|4 |update |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|5 |with |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|6 |drop |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|7 |vacuum |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|8 |alter |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|





## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K003 Top-50 Queries by total_time

## Observations ##
Data collected: 2019-08-07 16:40:50 +0300 MSK  
Current database: my_test_db  



### Master (`localhost`) ###
Start: 2019-08-07T16:39:51.357262+03:00  
End: 2019-08-07T16:40:50.231715+03:00  
Period seconds: 58.87445  
Period age: 00:00:58.874453  

Error (calls): 0.00 (0.00%)  
Error (total time): 0.00 (0.00%)

The list is limited to 50 items.  

| \# | Query | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|----------|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|1 |/\*pga4dash\*/<br/>SELECT&nbsp;$1&nbsp;AS&nbsp;chart\_name,<br/>&nbsp;row\_to\_json(t)&nbsp;AS&nbsp;chart\_data<br/>FROM&nbsp;<br/>(SELECT<br/>&nbsp;(SELECT&nbsp;count(\*)&nbsp;FROM&nbsp;<br/>pg\_stat\_activity&nbsp;WHERE&nbsp;datname&nbsp;<br/>=&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;oid&nbsp;=&nbsp;$2))&nbsp;AS&nbsp;"Total",<br/>&nbsp;(<br/>SELECT&nbsp;count(\*)&nbsp;FROM&nbsp;pg\_stat\_activity&nbsp;<br/>WHERE&nbsp;state&nbsp;=&nbsp;$3&nbsp;AND&nbsp;datname&nbsp;=&nbsp;<br/>(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;oid&nbsp;=&nbsp;$4))&nbsp;AS&nbsp;"Active",<br/>(SELECT&nbsp;count(\*)&nbsp;FROM&nbsp;pg\_stat\_activity&nbsp;<br/>WHERE&nbsp;state&nbsp;=&nbsp;$5&nbsp;AND&nbsp;datname&nbsp;=&nbsp;<br/>(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;oid&nbsp;=&nbsp;$6))&nbsp;AS&nbsp;"Idle"<br/>)&nbsp;t<br/>UNION&nbsp;<br/>ALL<br/>SELECT&nbsp;$7&nbsp;AS&nbsp;chart\_name,&nbsp;row\_to\_json(<br/>t)&nbsp;AS&nbsp;chart\_data<br/>FROM&nbsp;(SELECT<br/>(SELECT&nbsp;sum(xact\_commit)&nbsp;+&nbsp;sum(<br/>xact\_rollback)&nbsp;FROM&nbsp;pg\_stat\_database&nbsp;<br/>WHERE&nbsp;datname&nbsp;=&nbsp;(SELECT&nbsp;datname&nbsp;<br/>FROM&nbsp;pg\_database&nbsp;WHERE&nbsp;oid&nbsp;=&nbsp;$8))&nbsp;<br/>AS&nbsp;"Transactions",<br/>&nbsp;(SELECT&nbsp;sum(<br/>xact\_commit)&nbsp;FROM&nbsp;pg\_stat\_database&nbsp;<br/>WHERE&nbsp;datname&nbsp;=&nbsp;(SELECT&nbsp;datname&nbsp;<br/>FROM&nbsp;pg\_database&nbsp;WHERE&nbsp;oid&nbsp;=&nbsp;$9))&nbsp;<br/>AS&nbsp;"Commits",<br/>&nbsp;(SELECT&nbsp;sum(xact\_rollback)&nbsp;<br/>FROM&nbsp;pg\_stat\_database&nbsp;WHERE&nbsp;datname&nbsp;<br/>=&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;oid&nbsp;=&nbsp;$10))&nbsp;AS&nbsp;"Rollbacks"<br/>)&nbsp;<br/>t<br/>UNION&nbsp;ALL<br/>SELECT&nbsp;$11&nbsp;AS&nbsp;chart\_name,<br/>&nbsp;r...<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/1_1.sql) |46<br/>0.78/sec<br/>1.00/call<br/>100.00% |661.51&nbsp;ms<br/>11.236&nbsp;ms/sec<br/>14.381&nbsp;ms/call<br/>100.00% |230<br/>3.91/sec<br/>5.00/call<br/>100.00% |1,334&nbsp;blks<br/>22.66&nbsp;blks/sec<br/>29.00&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|2 |/\*pga4dash\*/<br/>SELECT&nbsp;$1&nbsp;AS&nbsp;chart\_name,<br/>&nbsp;row\_to\_json(t)&nbsp;AS&nbsp;chart\_data<br/>FROM&nbsp;<br/>(SELECT<br/>&nbsp;(SELECT&nbsp;count(\*)&nbsp;FROM&nbsp;<br/>pg\_stat\_activity&nbsp;WHERE&nbsp;datname&nbsp;<br/>=&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;oid&nbsp;=&nbsp;$2))&nbsp;AS&nbsp;"Total",<br/>&nbsp;(<br/>SELECT&nbsp;count(\*)&nbsp;FROM&nbsp;pg\_stat\_activity&nbsp;<br/>WHERE&nbsp;state&nbsp;=&nbsp;$3&nbsp;AND&nbsp;datname&nbsp;=&nbsp;<br/>(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;oid&nbsp;=&nbsp;$4))&nbsp;AS&nbsp;"Active",<br/>(SELECT&nbsp;count(\*)&nbsp;FROM&nbsp;pg\_stat\_activity&nbsp;<br/>WHERE&nbsp;state&nbsp;=&nbsp;$5&nbsp;AND&nbsp;datname&nbsp;=&nbsp;<br/>(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;oid&nbsp;=&nbsp;$6))&nbsp;AS&nbsp;"Idle"<br/>)&nbsp;t<br/>UNION&nbsp;<br/>ALL<br/>SELECT&nbsp;$7&nbsp;AS&nbsp;chart\_name,&nbsp;row\_to\_json(<br/>t)&nbsp;AS&nbsp;chart\_data<br/>FROM&nbsp;(SELECT<br/>(SELECT&nbsp;sum(xact\_commit)&nbsp;+&nbsp;sum(<br/>xact\_rollback)&nbsp;FROM&nbsp;pg\_stat\_database&nbsp;<br/>WHERE&nbsp;datname&nbsp;=&nbsp;(SELECT&nbsp;datname&nbsp;<br/>FROM&nbsp;pg\_database&nbsp;WHERE&nbsp;oid&nbsp;=&nbsp;$8))&nbsp;<br/>AS&nbsp;"Transactions",<br/>&nbsp;(SELECT&nbsp;sum(<br/>xact\_commit)&nbsp;FROM&nbsp;pg\_stat\_database&nbsp;<br/>WHERE&nbsp;datname&nbsp;=&nbsp;(SELECT&nbsp;datname&nbsp;<br/>FROM&nbsp;pg\_database&nbsp;WHERE&nbsp;oid&nbsp;=&nbsp;$9))&nbsp;<br/>AS&nbsp;"Commits",<br/>&nbsp;(SELECT&nbsp;sum(xact\_rollback)&nbsp;<br/>FROM&nbsp;pg\_stat\_database&nbsp;WHERE&nbsp;datname&nbsp;<br/>=&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;oid&nbsp;=&nbsp;$10))&nbsp;AS&nbsp;"Rollbacks"<br/>)&nbsp;<br/>t<br/>UNION&nbsp;ALL<br/>SELECT&nbsp;$11&nbsp;AS&nbsp;chart\_name,<br/>&nbsp;r...<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/2_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|3 |select&nbsp;count(\*)&nbsp;from&nbsp;t\_slw\_q<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/3_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|4 |create&nbsp;index&nbsp;t\_rar\_q\_idx&nbsp;on&nbsp;t\_rar\_q(<br/>id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/4_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|5 |create&nbsp;index&nbsp;concurrently&nbsp;i\_redundant\_1&nbsp;<br/>on&nbsp;t\_with\_redundant\_index(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/5_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|6 |alter&nbsp;table&nbsp;t\_red\_fk\_2&nbsp;add&nbsp;constraint&nbsp;<br/>fk\_red\_fk2\_t1&nbsp;foreign&nbsp;key&nbsp;(r\_t1\_id)&nbsp;<br/>references&nbsp;t\_red\_fk\_1(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/6_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|7 |create&nbsp;table&nbsp;t\_with\_unused\_index&nbsp;<br/>as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(<br/>1,&nbsp;1000000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/7_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|8 |create&nbsp;index&nbsp;t\_with\_redundant\_ref\_idx\_2&nbsp;<br/>on&nbsp;public.t\_with\_redundant\_ref\_idx&nbsp;<br/>using&nbsp;btree&nbsp;(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/8_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|9 |alter&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;add&nbsp;primary&nbsp;<br/>key&nbsp;(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/9_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|10 |create&nbsp;table&nbsp;t\_with\_bloat&nbsp;as&nbsp;select&nbsp;<br/>i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;<br/>\_(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/10_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|11 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f3\_2&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f3)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/11_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|12 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f3\_2&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f3)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/12_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|13 |VACUUM&nbsp;ANALYZE<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/13_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|14 |update&nbsp;t\_with\_bloat&nbsp;set&nbsp;i&nbsp;=&nbsp;i<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/14_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|15 |create&nbsp;unique&nbsp;index&nbsp;t\_with\_redundant\_idx\_f1\_uniq&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx&nbsp;(f1)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/15_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|16 |alter&nbsp;table&nbsp;t2&nbsp;add&nbsp;constraint&nbsp;fk\_t2\_t1&nbsp;<br/>foreign&nbsp;key&nbsp;(t1\_id)&nbsp;references&nbsp;<br/>t1(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/16_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|17 |with&nbsp;snap1(j)&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;$1::json<br/>),&nbsp;snap2(j)&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;$2::json<br/>),&nbsp;delta(seconds)&nbsp;as&nbsp;(<br/>&nbsp;select<br/>(select&nbsp;j\->>$3&nbsp;from&nbsp;snap2)::numeric<br/>\-&nbsp;(select&nbsp;j\->>$4&nbsp;from&nbsp;snap1)::numeric<br/>),&nbsp;s1(md5,&nbsp;obj)&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;\_.\*<br/>from&nbsp;snap1,&nbsp;lateral&nbsp;json\_each(j\->$5)&nbsp;<br/>as&nbsp;\_<br/>&nbsp;),&nbsp;s2(md5,&nbsp;obj)&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;<br/>\_.\*<br/>&nbsp;from&nbsp;snap2,&nbsp;lateral&nbsp;json\_each(<br/>j\->$6)&nbsp;as&nbsp;\_<br/>&nbsp;),&nbsp;si&nbsp;as&nbsp;(&nbsp;<br/>&nbsp;select&nbsp;<br/>s1.md5<br/>&nbsp;from&nbsp;s1<br/>&nbsp;intersect<br/>&nbsp;select&nbsp;<br/>s2.md5<br/>&nbsp;from&nbsp;s2<br/>&nbsp;),&nbsp;sum\_si\_s1&nbsp;as&nbsp;<br/>(&nbsp;<br/>&nbsp;select<br/>&nbsp;sum((s1.obj\->>$7)::numeric)&nbsp;<br/>as&nbsp;sum\_calls,<br/>&nbsp;sum((s1.obj\->>$8)::numeric)&nbsp;<br/>as&nbsp;sum\_total\_time,<br/>&nbsp;$9&nbsp;as&nbsp;key<br/>from&nbsp;s1<br/>&nbsp;where&nbsp;s1.md5&nbsp;in&nbsp;(select&nbsp;<br/>md5&nbsp;from&nbsp;si)<br/>&nbsp;),&nbsp;sum\_si\_s2&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;sum((s2.obj\->>$10)::numeric)&nbsp;<br/>as&nbsp;sum\_calls,<br/>&nbsp;sum((s2.obj\->>$11)::numeric)&nbsp;<br/>as&nbsp;sum\_total\_time,<br/>&nbsp;$12&nbsp;as&nbsp;key<br/>from&nbsp;s2<br/>&nbsp;where&nbsp;s2.md5&nbsp;in&nbsp;(select&nbsp;<br/>md5&nbsp;from&nbsp;si)<br/>&nbsp;),&nbsp;sum\_s1&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;sum((s1.obj\->>$13)::numeric)&nbsp;<br/>as&nbsp;sum\_calls,<br/>&nbsp;sum((s1.obj\->>$14)::numeric)&nbsp;<br/>as&nbsp;sum\_total\_time,<br/>&nbsp;sum((s1.obj\->>$15)::numeric)&nbsp;<br/>as&nbsp;sum\_rows,<br/>&nbsp;sum((s1.obj\->>$16)::numeric)&nbsp;<br/>as&nbsp;sum\_shared\_blks\_hit,<br/>&nbsp;sum((s1.obj\->>$17)::...<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/17_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|18 |create&nbsp;unique&nbsp;index&nbsp;t\_with\_redundant\_idx\_f1\_uniq&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx&nbsp;(f1)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/18_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|19 |create&nbsp;table&nbsp;t\_with\_bloat&nbsp;as&nbsp;select&nbsp;<br/>i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;<br/>\_(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/19_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|20 |create&nbsp;index&nbsp;t\_with\_redundant\_ref\_idx\_2&nbsp;<br/>on&nbsp;exp\_redundant.t\_with\_redundant\_ref\_idx&nbsp;<br/>using&nbsp;btree&nbsp;(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/20_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|21 |create&nbsp;index&nbsp;concurrently&nbsp;i\_redundant\_2&nbsp;<br/>on&nbsp;t\_with\_redundant\_index(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/21_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|22 |alter&nbsp;table&nbsp;t2&nbsp;add&nbsp;constraint&nbsp;fk\_t2\_t1&nbsp;<br/>foreign&nbsp;key&nbsp;(t1\_id)&nbsp;references&nbsp;<br/>t1(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/22_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|23 |alter&nbsp;table&nbsp;t1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(<br/>id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/23_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|24 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f2&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f2)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/24_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|25 |create&nbsp;index&nbsp;t\_rar\_q\_idx&nbsp;on&nbsp;t\_rar\_q(<br/>id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/25_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|26 |create&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;as&nbsp;select&nbsp;<br/>id::int8&nbsp;from&nbsp;generate\_series(0,<br/>&nbsp;1000000)&nbsp;\_(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/26_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|27 |create&nbsp;index&nbsp;t\_with\_redundant\_ref\_idx\_2&nbsp;<br/>on&nbsp;public.t\_with\_redundant\_ref\_idx&nbsp;<br/>using&nbsp;btree&nbsp;(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/27_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|28 |create&nbsp;index&nbsp;concurrently&nbsp;i\_redundant\_2&nbsp;<br/>on&nbsp;t\_with\_redundant\_index(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/28_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|29 |update&nbsp;t\_with\_bloat&nbsp;set&nbsp;i&nbsp;=&nbsp;i<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/29_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|30 |create&nbsp;table&nbsp;test\_schema.t\_with\_invalid\_index&nbsp;<br/>as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(<br/>1,&nbsp;1000000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/30_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|31 |select&nbsp;count(\*)&nbsp;from&nbsp;t\_slw\_q<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/31_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|32 |create&nbsp;index&nbsp;r\_red\_fk\_1\_X\_idx&nbsp;on&nbsp;<br/>t\_red\_fk\_1(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/32_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|33 |create&nbsp;table&nbsp;t1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;<br/>from&nbsp;generate\_series(0,&nbsp;1000000)&nbsp;<br/>\_(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/33_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|34 |create&nbsp;index&nbsp;concurrently&nbsp;i\_unused&nbsp;<br/>on&nbsp;t\_with\_unused\_index(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/34_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|35 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f3\_1&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f3)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/35_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|36 |alter&nbsp;table&nbsp;t\_with\_redundant\_idx&nbsp;<br/>add&nbsp;primary&nbsp;key&nbsp;(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/36_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|37 |vacuum&nbsp;analyze&nbsp;t2<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/37_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|38 |create&nbsp;table&nbsp;t1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;<br/>from&nbsp;generate\_series(0,&nbsp;1000000)&nbsp;<br/>\_(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/38_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|39 |alter&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;add&nbsp;primary&nbsp;<br/>key&nbsp;(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/39_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|40 |create&nbsp;index&nbsp;t\_with\_redundant\_ref\_idx\_1&nbsp;<br/>on&nbsp;exp\_redundant.t\_with\_redundant\_ref\_idx&nbsp;<br/>using&nbsp;btree&nbsp;(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/40_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|41 |create&nbsp;index&nbsp;on&nbsp;t2&nbsp;using&nbsp;btree&nbsp;(<br/>t1\_id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/41_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|42 |alter&nbsp;table&nbsp;t\_red\_fk\_2&nbsp;add&nbsp;constraint&nbsp;<br/>fk\_red\_fk2\_t1&nbsp;foreign&nbsp;key&nbsp;(r\_t1\_id)&nbsp;<br/>references&nbsp;t\_red\_fk\_1(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/42_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|43 |update&nbsp;t\_rar\_q&nbsp;set&nbsp;t\_dat=$1&nbsp;where&nbsp;<br/>t\_dat&nbsp;between&nbsp;$2&nbsp;and&nbsp;$3<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/43_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|44 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f2&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f2)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/44_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|45 |VACUUM&nbsp;ANALYZE<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/45_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|46 |create&nbsp;table&nbsp;t\_slw\_q&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;<br/>from&nbsp;generate\_series(0,&nbsp;10000000)&nbsp;<br/>\_(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/46_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|47 |create&nbsp;index&nbsp;r\_red\_fk\_1\_X\_idx&nbsp;on&nbsp;<br/>t\_red\_fk\_1(id)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/47_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|48 |vacuum&nbsp;analyze&nbsp;t2<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/48_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|49 |create&nbsp;table&nbsp;t\_with\_redundant\_index&nbsp;<br/>as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(<br/>1,&nbsp;1000000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/49_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|50 |create&nbsp;index&nbsp;concurrently&nbsp;i\_unused&nbsp;<br/>on&nbsp;t\_with\_unused\_index(i)<br/>[Full query](../../json_reports/1_2019_08_07T16_39_35_+0300/K_query_groups/50_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |





## Conclusions ##
  - [P1] For some query groups, `total_time` > 30.00% of overall timing, observed on: node: `localhost`. Such a high percentage means that those queries are "major contributors" to resource consumption on those nodes. In other words, if a query group has `total_time` which is 30.00% of overall timing, it means that during the observation period, 30.00% of time CPUs were working on that node processing queries from this group.

  
 


## Recommendations ##
  - [P1] For some query groups, `total_time` > 30.00% of overall timing. To reduce `total_time` for particular query group consider the following tactics:  
    - perform query micro-optimization (take particular query examples related to the group, use `EXPLAIN` and `EXPLAIN (BUFFERS, ANALYZE)` to optimize it; consider using [Joe](https://gitlab.com/postgres-ai/joe) to boost the optimization process);
    - if the frequency of execution is high (check the `calls / second` metric), try to find a way to reduce the frequency, changing the application code and/or, if applicable, applying caching.

  
 


---
<a name="postgres-checkup_L001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# L001 Table Sizes #

## Observations ##
Data collected: 2019-08-07 16:41:09 +0300 MSK  
Current database: my_test_db  



### Master (`localhost`) ###
  

| \# | Table | Rows | &#9660;&nbsp;Total size | Table size | Index(es) Size | TOAST Size |
|---|---|------|------------|------------|----------------|------------|
|&nbsp;|===== TOTAL ===== |~23M |1.38&nbsp;GiB |845.04&nbsp;MiB |559.74&nbsp;MiB |0.00&nbsp;bytes |
|1 |`t_slw_q` | ~10M |345.81&nbsp;MiB (24.62%) |345.81&nbsp;MiB (40.92%) |0.00&nbsp;bytes (0.00%) | |
|2 |`t_with_redundant_idx` | ~1M |242.82&nbsp;MiB (17.28%) |49.81&nbsp;MiB (5.89%) |193.01&nbsp;MiB (0.00%) | |
|3 |`t_with_redundant_ref_idx` | ~1M |98.95&nbsp;MiB (7.04%) |34.61&nbsp;MiB (4.10%) |64.34&nbsp;MiB (0.00%) | |
|4 |`exp_redundant.t_with_redundant_ref_idx` | ~1M |98.95&nbsp;MiB (7.04%) |34.61&nbsp;MiB (4.10%) |64.34&nbsp;MiB (0.00%) | |
|5 |`t_red_fk_1` | ~1M |98.95&nbsp;MiB (7.04%) |34.61&nbsp;MiB (4.10%) |64.34&nbsp;MiB (0.00%) | |
|6 |`t_rar_q` | ~1M |92.79&nbsp;MiB (6.60%) |49.93&nbsp;MiB (5.91%) |42.86&nbsp;MiB (0.00%) | |
|7 |`t_with_redundant_index` | ~1M |77.50&nbsp;MiB (5.52%) |34.61&nbsp;MiB (4.10%) |42.90&nbsp;MiB (0.00%) | |
|8 |`t_with_bloat` | ~1M |69.19&nbsp;MiB (4.93%) |69.19&nbsp;MiB (8.19%) |0.00&nbsp;bytes (0.00%) | |
|9 |`t_red_fk_2` | ~1M |63.72&nbsp;MiB (4.54%) |42.28&nbsp;MiB (5.00%) |21.45&nbsp;MiB (0.00%) | |
|10 |`t2` | ~1M |63.72&nbsp;MiB (4.54%) |42.28&nbsp;MiB (5.00%) |21.45&nbsp;MiB (0.00%) | |
|11 |`t_with_unused_index` | ~1M |56.06&nbsp;MiB (3.99%) |34.61&nbsp;MiB (4.10%) |21.45&nbsp;MiB (0.00%) | |
|12 |`t1` | ~1M |56.06&nbsp;MiB (3.99%) |34.61&nbsp;MiB (4.10%) |21.45&nbsp;MiB (0.00%) | |
|13 |`test_schema.t_with_invalid_index` | ~1M |34.61&nbsp;MiB (2.46%) |34.61&nbsp;MiB (4.10%) |0.00&nbsp;bytes (0.00%) | |
|14 |`bloated` | ~50K |5.65&nbsp;MiB (0.40%) |3.50&nbsp;MiB (0.41%) |2.16&nbsp;MiB (0.00%) | |
|15 |`test_schema.orders` | ~101 |24.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB (0.00%) |16.00&nbsp;KiB (0.00%) | |
|16 |`test_schema.orders_A` | ~101 |24.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB (0.00%) |16.00&nbsp;KiB (0.00%) | |
|17 |`t_fillfactor` | ~0 |0.00&nbsp;bytes (0.00%) |0.00&nbsp;bytes (0.00%) |0.00&nbsp;bytes (0.00%) | |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_L003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# L003 Integer (int2, int4) Out-of-range Risks in PKs #

## Observations ##
Data collected: 2019-08-07 16:41:09 +0300 MSK  
Current database: my_test_db
NOTICE: only tables larger than 8&nbsp;MiB are analyzed.  
  
### Master (`localhost`) ###
  

| Table | PK | Type | Current max value | &#9660;&nbsp;Capacity used, % |
|------|----|------|-------------------|-------------------------------|
|`test_schema.orders` | `id` | int4 |800,000,000 | 37.25|
|`test_schema."orders_A"` | `id` | int4 |300,000,000 | 13.97|


## Conclusions ##

## Recommendations ##
