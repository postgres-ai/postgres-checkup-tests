# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-03-14 05:46:28 +0000


<a name="postgres-checkup_top"></a>
### Table of contents ###

[A001 System information](#postgres-checkup_A001)  
[A002 Version information](#postgres-checkup_A002)  
[A003 Postgres settings](#postgres-checkup_A003)  
[A004 Cluster information](#postgres-checkup_A004)  
[A005 Extensions](#postgres-checkup_A005)  
[A006 Postgres setting deviations](#postgres-checkup_A006)  
[A007 Altered settings](#postgres-checkup_A007)  
[A008 Disk usage and file system type](#postgres-checkup_A008)  
[D002 Useful Linux tools](#postgres-checkup_D002)  
[D004 pg_stat_statements and kcache settings](#postgres-checkup_D004)  
[F001 Autovacuum: Current settings](#postgres-checkup_F001)  
[F002 Autovacuum: Transaction wraparound check](#postgres-checkup_F002)  
[F003 Autovacuum: Dead tuples](#postgres-checkup_F003)  
[F004 Autovacuum: Heap bloat](#postgres-checkup_F004)  
[F005 Autovacuum: Index bloat](#postgres-checkup_F005)  
[F008 Autovacuum: Resource usage](#postgres-checkup_F008)  
[G001 Memory-related settings](#postgres-checkup_G001)  
[G002 Connections and current activity](#postgres-checkup_G002)  
[G003 Timeouts, locks, deadlocks](#postgres-checkup_G003)  
[H001 Invalid indexes](#postgres-checkup_H001)  
[H002 Unused and redundant indexes](#postgres-checkup_H002)  
[H003 Non indexed foreign keys (or with bad indexes)](#postgres-checkup_H003)  
[K001 Globally aggregated query metrics](#postgres-checkup_K001)  
[K002 Workload type ("first word" analysis)](#postgres-checkup_K002)  
[K003 Top-50 queries by total_time](#postgres-checkup_K003)  
[L001 Table sizes](#postgres-checkup_L001)  
[L003 Integer (int2, int4) out-of-range risks in PKs](#postgres-checkup_L003)  

---
<a name="postgres-checkup_A001"></a>
[Table of contents](#postgres-checkup_top)
# A001 System information #

## Observations ##
Data collected: 2019-03-14 05:46:03 +0000 UTC  






### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

**System**

```
Linux runner-ed2dce3a-project-9951336-concurrent-0 4.19.23-coreos-r1 #1 SMP Mon Feb 25 23:40:01 -00 2019 x86_64 x86_64 x86_64 GNU/Linux
```


**CPU**

```
Architecture:          x86_64
CPU op-mode(s):        32-bit, 64-bit
Byte Order:            Little Endian
CPU(s):                1
On-line CPU(s) list:   0
Thread(s) per core:    1
Core(s) per socket:    1
Socket(s):             1
NUMA node(s):          1
Vendor ID:             GenuineIntel
CPU family:            6
Model:                 63
Model name:            Intel(R) Xeon(R) CPU @ 2.30GHz
Stepping:              0
CPU MHz:               2300.000
BogoMIPS:              4600.00
Hypervisor vendor:     KVM
Virtualization type:   full
L1d cache:             32K
L1i cache:             32K
L2 cache:              256K
L3 cache:              46080K
NUMA node0 CPU(s):     0
Flags:                 fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology nonstop_tsc cpuid tsc_known_freq pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm invpcid_single pti ssbd ibrs ibpb stibp fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid xsaveopt arat arch_capabilities
```


**Memory**

```
MemTotal:        3783504 kB
MemFree:          194744 kB
MemAvailable:    2677044 kB
Buffers:           77440 kB
Cached:          2905324 kB
SwapCached:          164 kB
Active:          1317456 kB
Inactive:        2077548 kB
Active(anon):     452136 kB
Inactive(anon):   307852 kB
Active(file):     865320 kB
Inactive(file):  1769696 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2094320 kB
Dirty:             13620 kB
Writeback:             0 kB
AnonPages:        412164 kB
Mapped:           264248 kB
Shmem:            347748 kB
Slab:             130404 kB
SReclaimable:     100908 kB
SUnreclaim:        29496 kB
KernelStack:        2848 kB
PageTables:         7832 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988900 kB
Committed_AS:    1500700 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              452 kB
HardwareCorrupted:     0 kB
AnonHugePages:    118784 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:       96244 kB
DirectMap2M:     3835904 kB
DirectMap1G:           0 kB
```








## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A002"></a>
[Table of contents](#postgres-checkup_top)
# A002 Version information #

## Observations ##
Data collected: 2019-03-14 05:46:03 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

```
PostgreSQL 11.2 (Ubuntu 11.2-1.pgdg16.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609, 64-bit
```






## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A003"></a>
[Table of contents](#postgres-checkup_top)
# A003 Postgres settings #

## Observations ##
Data collected: 2019-03-14 05:46:03 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###  
&#9660;&nbsp;Category | Setting | Value | Unit | Pretty value
---------|---------|-------|------|--------------
Autovacuum|[autovacuum](https://postgresqlco.nf/en/doc/param/autovacuum) | on |  | 
Autovacuum|[autovacuum_analyze_scale_factor](https://postgresqlco.nf/en/doc/param/autovacuum_analyze_scale_factor) | 0.1 |  | 
Autovacuum|[autovacuum_analyze_threshold](https://postgresqlco.nf/en/doc/param/autovacuum_analyze_threshold) | 50 |  | 
Autovacuum|[autovacuum_freeze_max_age](https://postgresqlco.nf/en/doc/param/autovacuum_freeze_max_age) | 200000000 |  | 
Autovacuum|[autovacuum_max_workers](https://postgresqlco.nf/en/doc/param/autovacuum_max_workers) | 3 |  | 
Autovacuum|[autovacuum_multixact_freeze_max_age](https://postgresqlco.nf/en/doc/param/autovacuum_multixact_freeze_max_age) | 400000000 |  | 
Autovacuum|[autovacuum_naptime](https://postgresqlco.nf/en/doc/param/autovacuum_naptime) | 60 | s  | 
Autovacuum|[autovacuum_vacuum_cost_delay](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_delay) | 20 | ms  | 
Autovacuum|[autovacuum_vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_limit) | -1 |  | 
Autovacuum|[autovacuum_vacuum_scale_factor](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_scale_factor) | 0.2 |  | 
Autovacuum|[autovacuum_vacuum_threshold](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_threshold) | 50 |  | 
Client Connection Defaults / Locale and Formatting|[DateStyle](https://postgresqlco.nf/en/doc/param/DateStyle) | ISO,  MDY |  | 
Client Connection Defaults / Locale and Formatting|[IntervalStyle](https://postgresqlco.nf/en/doc/param/IntervalStyle) | postgres |  | 
Client Connection Defaults / Locale and Formatting|[TimeZone](https://postgresqlco.nf/en/doc/param/TimeZone) | UTC |  | 
Client Connection Defaults / Locale and Formatting|[client_encoding](https://postgresqlco.nf/en/doc/param/client_encoding) | UTF8 |  | 
Client Connection Defaults / Locale and Formatting|[default_text_search_config](https://postgresqlco.nf/en/doc/param/default_text_search_config) | pg_catalog.english |  | 
Client Connection Defaults / Locale and Formatting|[extra_float_digits](https://postgresqlco.nf/en/doc/param/extra_float_digits) | 0 |  | 
Client Connection Defaults / Locale and Formatting|[lc_collate](https://postgresqlco.nf/en/doc/param/lc_collate) | C.UTF-8 |  | 
Client Connection Defaults / Locale and Formatting|[lc_ctype](https://postgresqlco.nf/en/doc/param/lc_ctype) | C.UTF-8 |  | 
Client Connection Defaults / Locale and Formatting|[lc_messages](https://postgresqlco.nf/en/doc/param/lc_messages) | C.UTF-8 |  | 
Client Connection Defaults / Locale and Formatting|[lc_monetary](https://postgresqlco.nf/en/doc/param/lc_monetary) | C.UTF-8 |  | 
Client Connection Defaults / Locale and Formatting|[lc_numeric](https://postgresqlco.nf/en/doc/param/lc_numeric) | C.UTF-8 |  | 
Client Connection Defaults / Locale and Formatting|[lc_time](https://postgresqlco.nf/en/doc/param/lc_time) | C.UTF-8 |  | 
Client Connection Defaults / Locale and Formatting|[server_encoding](https://postgresqlco.nf/en/doc/param/server_encoding) | UTF8 |  | 
Client Connection Defaults / Locale and Formatting|[timezone_abbreviations](https://postgresqlco.nf/en/doc/param/timezone_abbreviations) | Default |  | 
Client Connection Defaults / Other Defaults|[dynamic_library_path](https://postgresqlco.nf/en/doc/param/dynamic_library_path) | $libdir |  | 
Client Connection Defaults / Other Defaults|[gin_fuzzy_search_limit](https://postgresqlco.nf/en/doc/param/gin_fuzzy_search_limit) | 0 |  | 
Client Connection Defaults / Other Defaults|[tcp_keepalives_count](https://postgresqlco.nf/en/doc/param/tcp_keepalives_count) | 0 |  | 
Client Connection Defaults / Other Defaults|[tcp_keepalives_idle](https://postgresqlco.nf/en/doc/param/tcp_keepalives_idle) | 0 | s  | 
Client Connection Defaults / Other Defaults|[tcp_keepalives_interval](https://postgresqlco.nf/en/doc/param/tcp_keepalives_interval) | 0 | s  | 
Client Connection Defaults / Shared Library Preloading|[jit_provider](https://postgresqlco.nf/en/doc/param/jit_provider) | llvmjit |  | 
Client Connection Defaults / Shared Library Preloading|[local_preload_libraries](https://postgresqlco.nf/en/doc/param/local_preload_libraries) |  |  | 
Client Connection Defaults / Shared Library Preloading|[session_preload_libraries](https://postgresqlco.nf/en/doc/param/session_preload_libraries) |  |  | 
Client Connection Defaults / Shared Library Preloading|[shared_preload_libraries](https://postgresqlco.nf/en/doc/param/shared_preload_libraries) | pg_stat_statements, auto_explain, pg_stat_kcache |  | 
Client Connection Defaults / Statement Behavior|[bytea_output](https://postgresqlco.nf/en/doc/param/bytea_output) | hex |  | 
Client Connection Defaults / Statement Behavior|[check_function_bodies](https://postgresqlco.nf/en/doc/param/check_function_bodies) | on |  | 
Client Connection Defaults / Statement Behavior|[client_min_messages](https://postgresqlco.nf/en/doc/param/client_min_messages) | notice |  | 
Client Connection Defaults / Statement Behavior|[default_tablespace](https://postgresqlco.nf/en/doc/param/default_tablespace) |  |  | 
Client Connection Defaults / Statement Behavior|[default_transaction_deferrable](https://postgresqlco.nf/en/doc/param/default_transaction_deferrable) | off |  | 
Client Connection Defaults / Statement Behavior|[default_transaction_isolation](https://postgresqlco.nf/en/doc/param/default_transaction_isolation) | read committed |  | 
Client Connection Defaults / Statement Behavior|[default_transaction_read_only](https://postgresqlco.nf/en/doc/param/default_transaction_read_only) | off |  | 
Client Connection Defaults / Statement Behavior|[gin_pending_list_limit](https://postgresqlco.nf/en/doc/param/gin_pending_list_limit) | 4096 | kB  | 4.00 MiB
Client Connection Defaults / Statement Behavior|[idle_in_transaction_session_timeout](https://postgresqlco.nf/en/doc/param/idle_in_transaction_session_timeout) | 0 | ms  | 
Client Connection Defaults / Statement Behavior|[lock_timeout](https://postgresqlco.nf/en/doc/param/lock_timeout) | 0 | ms  | 
Client Connection Defaults / Statement Behavior|[row_security](https://postgresqlco.nf/en/doc/param/row_security) | on |  | 
Client Connection Defaults / Statement Behavior|[search_path](https://postgresqlco.nf/en/doc/param/search_path) | "$user",  public |  | 
Client Connection Defaults / Statement Behavior|[session_replication_role](https://postgresqlco.nf/en/doc/param/session_replication_role) | origin |  | 
Client Connection Defaults / Statement Behavior|[statement_timeout](https://postgresqlco.nf/en/doc/param/statement_timeout) | 15000 | ms  | 
Client Connection Defaults / Statement Behavior|[temp_tablespaces](https://postgresqlco.nf/en/doc/param/temp_tablespaces) |  |  | 
Client Connection Defaults / Statement Behavior|[transaction_deferrable](https://postgresqlco.nf/en/doc/param/transaction_deferrable) | off |  | 
Client Connection Defaults / Statement Behavior|[transaction_isolation](https://postgresqlco.nf/en/doc/param/transaction_isolation) | read committed |  | 
Client Connection Defaults / Statement Behavior|[transaction_read_only](https://postgresqlco.nf/en/doc/param/transaction_read_only) | off |  | 
Client Connection Defaults / Statement Behavior|[vacuum_cleanup_index_scale_factor](https://postgresqlco.nf/en/doc/param/vacuum_cleanup_index_scale_factor) | 0.1 |  | 
Client Connection Defaults / Statement Behavior|[vacuum_freeze_min_age](https://postgresqlco.nf/en/doc/param/vacuum_freeze_min_age) | 50000000 |  | 
Client Connection Defaults / Statement Behavior|[vacuum_freeze_table_age](https://postgresqlco.nf/en/doc/param/vacuum_freeze_table_age) | 150000000 |  | 
Client Connection Defaults / Statement Behavior|[vacuum_multixact_freeze_min_age](https://postgresqlco.nf/en/doc/param/vacuum_multixact_freeze_min_age) | 5000000 |  | 
Client Connection Defaults / Statement Behavior|[vacuum_multixact_freeze_table_age](https://postgresqlco.nf/en/doc/param/vacuum_multixact_freeze_table_age) | 150000000 |  | 
Client Connection Defaults / Statement Behavior|[xmlbinary](https://postgresqlco.nf/en/doc/param/xmlbinary) | base64 |  | 
Client Connection Defaults / Statement Behavior|[xmloption](https://postgresqlco.nf/en/doc/param/xmloption) | content |  | 
Connections and Authentication / Authentication|[authentication_timeout](https://postgresqlco.nf/en/doc/param/authentication_timeout) | 60 | s  | 
Connections and Authentication / Authentication|[db_user_namespace](https://postgresqlco.nf/en/doc/param/db_user_namespace) | off |  | 
Connections and Authentication / Authentication|[krb_caseins_users](https://postgresqlco.nf/en/doc/param/krb_caseins_users) | off |  | 
Connections and Authentication / Authentication|[krb_server_keyfile](https://postgresqlco.nf/en/doc/param/krb_server_keyfile) | FILE:/etc/postgresql-common/krb5.keytab |  | 
Connections and Authentication / Authentication|[password_encryption](https://postgresqlco.nf/en/doc/param/password_encryption) | md5 |  | 
Connections and Authentication / Connection Settings|[bonjour](https://postgresqlco.nf/en/doc/param/bonjour) | off |  | 
Connections and Authentication / Connection Settings|[bonjour_name](https://postgresqlco.nf/en/doc/param/bonjour_name) |  |  | 
Connections and Authentication / Connection Settings|[listen_addresses](https://postgresqlco.nf/en/doc/param/listen_addresses) | * |  | 
Connections and Authentication / Connection Settings|[max_connections](https://postgresqlco.nf/en/doc/param/max_connections) | 100 |  | 
Connections and Authentication / Connection Settings|[port](https://postgresqlco.nf/en/doc/param/port) | 5432 |  | 
Connections and Authentication / Connection Settings|[superuser_reserved_connections](https://postgresqlco.nf/en/doc/param/superuser_reserved_connections) | 3 |  | 
Connections and Authentication / Connection Settings|[unix_socket_directories](https://postgresqlco.nf/en/doc/param/unix_socket_directories) | /var/run/postgresql |  | 
Connections and Authentication / Connection Settings|[unix_socket_group](https://postgresqlco.nf/en/doc/param/unix_socket_group) |  |  | 
Connections and Authentication / Connection Settings|[unix_socket_permissions](https://postgresqlco.nf/en/doc/param/unix_socket_permissions) | 0777 |  | 
Connections and Authentication / SSL|[ssl](https://postgresqlco.nf/en/doc/param/ssl) | on |  | 
Connections and Authentication / SSL|[ssl_ca_file](https://postgresqlco.nf/en/doc/param/ssl_ca_file) |  |  | 
Connections and Authentication / SSL|[ssl_cert_file](https://postgresqlco.nf/en/doc/param/ssl_cert_file) | /etc/ssl/certs/ssl-cert-snakeoil.pem |  | 
Connections and Authentication / SSL|[ssl_ciphers](https://postgresqlco.nf/en/doc/param/ssl_ciphers) | HIGH:MEDIUM:+3DES:!aNULL |  | 
Connections and Authentication / SSL|[ssl_crl_file](https://postgresqlco.nf/en/doc/param/ssl_crl_file) |  |  | 
Connections and Authentication / SSL|[ssl_dh_params_file](https://postgresqlco.nf/en/doc/param/ssl_dh_params_file) |  |  | 
Connections and Authentication / SSL|[ssl_ecdh_curve](https://postgresqlco.nf/en/doc/param/ssl_ecdh_curve) | prime256v1 |  | 
Connections and Authentication / SSL|[ssl_key_file](https://postgresqlco.nf/en/doc/param/ssl_key_file) | /etc/ssl/private/ssl-cert-snakeoil.key |  | 
Connections and Authentication / SSL|[ssl_passphrase_command](https://postgresqlco.nf/en/doc/param/ssl_passphrase_command) |  |  | 
Connections and Authentication / SSL|[ssl_passphrase_command_supports_reload](https://postgresqlco.nf/en/doc/param/ssl_passphrase_command_supports_reload) | off |  | 
Connections and Authentication / SSL|[ssl_prefer_server_ciphers](https://postgresqlco.nf/en/doc/param/ssl_prefer_server_ciphers) | on |  | 
Customized Options|[auto_explain.log_analyze](https://postgresqlco.nf/en/doc/param/auto_explain.log_analyze) | off |  | 
Customized Options|[auto_explain.log_buffers](https://postgresqlco.nf/en/doc/param/auto_explain.log_buffers) | off |  | 
Customized Options|[auto_explain.log_format](https://postgresqlco.nf/en/doc/param/auto_explain.log_format) | text |  | 
Customized Options|[auto_explain.log_min_duration](https://postgresqlco.nf/en/doc/param/auto_explain.log_min_duration) | -1 | ms  | 
Customized Options|[auto_explain.log_nested_statements](https://postgresqlco.nf/en/doc/param/auto_explain.log_nested_statements) | off |  | 
Customized Options|[auto_explain.log_timing](https://postgresqlco.nf/en/doc/param/auto_explain.log_timing) | on |  | 
Customized Options|[auto_explain.log_triggers](https://postgresqlco.nf/en/doc/param/auto_explain.log_triggers) | off |  | 
Customized Options|[auto_explain.log_verbose](https://postgresqlco.nf/en/doc/param/auto_explain.log_verbose) | off |  | 
Customized Options|[auto_explain.sample_rate](https://postgresqlco.nf/en/doc/param/auto_explain.sample_rate) | 1 |  | 
Customized Options|[pg_stat_kcache.linux_hz](https://postgresqlco.nf/en/doc/param/pg_stat_kcache.linux_hz) | 1000000 |  | 
Customized Options|[pg_stat_statements.max](https://postgresqlco.nf/en/doc/param/pg_stat_statements.max) | 5000 |  | 
Customized Options|[pg_stat_statements.save](https://postgresqlco.nf/en/doc/param/pg_stat_statements.save) | on |  | 
Customized Options|[pg_stat_statements.track](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track) | top |  | 
Customized Options|[pg_stat_statements.track_utility](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track_utility) | on |  | 
Developer Options|[allow_system_table_mods](https://postgresqlco.nf/en/doc/param/allow_system_table_mods) | off |  | 
Developer Options|[ignore_checksum_failure](https://postgresqlco.nf/en/doc/param/ignore_checksum_failure) | off |  | 
Developer Options|[ignore_system_indexes](https://postgresqlco.nf/en/doc/param/ignore_system_indexes) | off |  | 
Developer Options|[jit_debugging_support](https://postgresqlco.nf/en/doc/param/jit_debugging_support) | off |  | 
Developer Options|[jit_dump_bitcode](https://postgresqlco.nf/en/doc/param/jit_dump_bitcode) | off |  | 
Developer Options|[jit_expressions](https://postgresqlco.nf/en/doc/param/jit_expressions) | on |  | 
Developer Options|[jit_profiling_support](https://postgresqlco.nf/en/doc/param/jit_profiling_support) | off |  | 
Developer Options|[jit_tuple_deforming](https://postgresqlco.nf/en/doc/param/jit_tuple_deforming) | on |  | 
Developer Options|[post_auth_delay](https://postgresqlco.nf/en/doc/param/post_auth_delay) | 0 | s  | 
Developer Options|[pre_auth_delay](https://postgresqlco.nf/en/doc/param/pre_auth_delay) | 0 | s  | 
Developer Options|[trace_notify](https://postgresqlco.nf/en/doc/param/trace_notify) | off |  | 
Developer Options|[trace_recovery_messages](https://postgresqlco.nf/en/doc/param/trace_recovery_messages) | log |  | 
Developer Options|[trace_sort](https://postgresqlco.nf/en/doc/param/trace_sort) | off |  | 
Developer Options|[wal_consistency_checking](https://postgresqlco.nf/en/doc/param/wal_consistency_checking) |  |  | 
Developer Options|[zero_damaged_pages](https://postgresqlco.nf/en/doc/param/zero_damaged_pages) | off |  | 
Error Handling|[data_sync_retry](https://postgresqlco.nf/en/doc/param/data_sync_retry) | off |  | 
Error Handling|[exit_on_error](https://postgresqlco.nf/en/doc/param/exit_on_error) | off |  | 
Error Handling|[restart_after_crash](https://postgresqlco.nf/en/doc/param/restart_after_crash) | on |  | 
File Locations|[config_file](https://postgresqlco.nf/en/doc/param/config_file) | /etc/postgresql/11/main/postgresql.conf |  | 
File Locations|[data_directory](https://postgresqlco.nf/en/doc/param/data_directory) | /var/lib/postgresql/11/main |  | 
File Locations|[external_pid_file](https://postgresqlco.nf/en/doc/param/external_pid_file) | /var/run/postgresql/11-main.pid |  | 
File Locations|[hba_file](https://postgresqlco.nf/en/doc/param/hba_file) | /etc/postgresql/11/main/pg_hba.conf |  | 
File Locations|[ident_file](https://postgresqlco.nf/en/doc/param/ident_file) | /etc/postgresql/11/main/pg_ident.conf |  | 
Lock Management|[deadlock_timeout](https://postgresqlco.nf/en/doc/param/deadlock_timeout) | 1000 | ms  | 
Lock Management|[max_locks_per_transaction](https://postgresqlco.nf/en/doc/param/max_locks_per_transaction) | 64 |  | 
Lock Management|[max_pred_locks_per_page](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_page) | 2 |  | 
Lock Management|[max_pred_locks_per_relation](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_relation) | -2 |  | 
Lock Management|[max_pred_locks_per_transaction](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_transaction) | 64 |  | 
Preset Options|[block_size](https://postgresqlco.nf/en/doc/param/block_size) | 8192 |  | 
Preset Options|[data_checksums](https://postgresqlco.nf/en/doc/param/data_checksums) | off |  | 
Preset Options|[data_directory_mode](https://postgresqlco.nf/en/doc/param/data_directory_mode) | 0700 |  | 
Preset Options|[debug_assertions](https://postgresqlco.nf/en/doc/param/debug_assertions) | off |  | 
Preset Options|[integer_datetimes](https://postgresqlco.nf/en/doc/param/integer_datetimes) | on |  | 
Preset Options|[max_function_args](https://postgresqlco.nf/en/doc/param/max_function_args) | 100 |  | 
Preset Options|[max_identifier_length](https://postgresqlco.nf/en/doc/param/max_identifier_length) | 63 |  | 
Preset Options|[max_index_keys](https://postgresqlco.nf/en/doc/param/max_index_keys) | 32 |  | 
Preset Options|[segment_size](https://postgresqlco.nf/en/doc/param/segment_size) | 131072 | 8kB  | 1.00 GiB
Preset Options|[server_version](https://postgresqlco.nf/en/doc/param/server_version) | 11.2 (Ubuntu 11.2-1.pgdg16.04+1) |  | 
Preset Options|[server_version_num](https://postgresqlco.nf/en/doc/param/server_version_num) | 110002 |  | 
Preset Options|[wal_block_size](https://postgresqlco.nf/en/doc/param/wal_block_size) | 8192 |  | 
Preset Options|[wal_segment_size](https://postgresqlco.nf/en/doc/param/wal_segment_size) | 16777216 | B  | 
Process Title|[cluster_name](https://postgresqlco.nf/en/doc/param/cluster_name) | 11/main |  | 
Process Title|[update_process_title](https://postgresqlco.nf/en/doc/param/update_process_title) | on |  | 
Query Tuning / Genetic Query Optimizer|[geqo](https://postgresqlco.nf/en/doc/param/geqo) | on |  | 
Query Tuning / Genetic Query Optimizer|[geqo_effort](https://postgresqlco.nf/en/doc/param/geqo_effort) | 5 |  | 
Query Tuning / Genetic Query Optimizer|[geqo_generations](https://postgresqlco.nf/en/doc/param/geqo_generations) | 0 |  | 
Query Tuning / Genetic Query Optimizer|[geqo_pool_size](https://postgresqlco.nf/en/doc/param/geqo_pool_size) | 0 |  | 
Query Tuning / Genetic Query Optimizer|[geqo_seed](https://postgresqlco.nf/en/doc/param/geqo_seed) | 0 |  | 
Query Tuning / Genetic Query Optimizer|[geqo_selection_bias](https://postgresqlco.nf/en/doc/param/geqo_selection_bias) | 2 |  | 
Query Tuning / Genetic Query Optimizer|[geqo_threshold](https://postgresqlco.nf/en/doc/param/geqo_threshold) | 12 |  | 
Query Tuning / Other Planner Options|[constraint_exclusion](https://postgresqlco.nf/en/doc/param/constraint_exclusion) | partition |  | 
Query Tuning / Other Planner Options|[cursor_tuple_fraction](https://postgresqlco.nf/en/doc/param/cursor_tuple_fraction) | 0.1 |  | 
Query Tuning / Other Planner Options|[default_statistics_target](https://postgresqlco.nf/en/doc/param/default_statistics_target) | 100 |  | 
Query Tuning / Other Planner Options|[force_parallel_mode](https://postgresqlco.nf/en/doc/param/force_parallel_mode) | off |  | 
Query Tuning / Other Planner Options|[from_collapse_limit](https://postgresqlco.nf/en/doc/param/from_collapse_limit) | 8 |  | 
Query Tuning / Other Planner Options|[jit](https://postgresqlco.nf/en/doc/param/jit) | off |  | 
Query Tuning / Other Planner Options|[join_collapse_limit](https://postgresqlco.nf/en/doc/param/join_collapse_limit) | 8 |  | 
Query Tuning / Planner Cost Constants|[cpu_index_tuple_cost](https://postgresqlco.nf/en/doc/param/cpu_index_tuple_cost) | 0.005 |  | 
Query Tuning / Planner Cost Constants|[cpu_operator_cost](https://postgresqlco.nf/en/doc/param/cpu_operator_cost) | 0.0025 |  | 
Query Tuning / Planner Cost Constants|[cpu_tuple_cost](https://postgresqlco.nf/en/doc/param/cpu_tuple_cost) | 0.01 |  | 
Query Tuning / Planner Cost Constants|[effective_cache_size](https://postgresqlco.nf/en/doc/param/effective_cache_size) | 524288 | 8kB  | 4.00 GiB
Query Tuning / Planner Cost Constants|[jit_above_cost](https://postgresqlco.nf/en/doc/param/jit_above_cost) | 100000 |  | 
Query Tuning / Planner Cost Constants|[jit_inline_above_cost](https://postgresqlco.nf/en/doc/param/jit_inline_above_cost) | 500000 |  | 
Query Tuning / Planner Cost Constants|[jit_optimize_above_cost](https://postgresqlco.nf/en/doc/param/jit_optimize_above_cost) | 500000 |  | 
Query Tuning / Planner Cost Constants|[min_parallel_index_scan_size](https://postgresqlco.nf/en/doc/param/min_parallel_index_scan_size) | 64 | 8kB  | 512.00 KiB
Query Tuning / Planner Cost Constants|[min_parallel_table_scan_size](https://postgresqlco.nf/en/doc/param/min_parallel_table_scan_size) | 1024 | 8kB  | 8.00 MiB
Query Tuning / Planner Cost Constants|[parallel_setup_cost](https://postgresqlco.nf/en/doc/param/parallel_setup_cost) | 1000 |  | 
Query Tuning / Planner Cost Constants|[parallel_tuple_cost](https://postgresqlco.nf/en/doc/param/parallel_tuple_cost) | 0.1 |  | 
Query Tuning / Planner Cost Constants|[random_page_cost](https://postgresqlco.nf/en/doc/param/random_page_cost) | 2.22 |  | 
Query Tuning / Planner Cost Constants|[seq_page_cost](https://postgresqlco.nf/en/doc/param/seq_page_cost) | 1 |  | 
Query Tuning / Planner Method Configuration|[enable_bitmapscan](https://postgresqlco.nf/en/doc/param/enable_bitmapscan) | on |  | 
Query Tuning / Planner Method Configuration|[enable_gathermerge](https://postgresqlco.nf/en/doc/param/enable_gathermerge) | on |  | 
Query Tuning / Planner Method Configuration|[enable_hashagg](https://postgresqlco.nf/en/doc/param/enable_hashagg) | on |  | 
Query Tuning / Planner Method Configuration|[enable_hashjoin](https://postgresqlco.nf/en/doc/param/enable_hashjoin) | on |  | 
Query Tuning / Planner Method Configuration|[enable_indexonlyscan](https://postgresqlco.nf/en/doc/param/enable_indexonlyscan) | on |  | 
Query Tuning / Planner Method Configuration|[enable_indexscan](https://postgresqlco.nf/en/doc/param/enable_indexscan) | on |  | 
Query Tuning / Planner Method Configuration|[enable_material](https://postgresqlco.nf/en/doc/param/enable_material) | on |  | 
Query Tuning / Planner Method Configuration|[enable_mergejoin](https://postgresqlco.nf/en/doc/param/enable_mergejoin) | on |  | 
Query Tuning / Planner Method Configuration|[enable_nestloop](https://postgresqlco.nf/en/doc/param/enable_nestloop) | on |  | 
Query Tuning / Planner Method Configuration|[enable_parallel_append](https://postgresqlco.nf/en/doc/param/enable_parallel_append) | on |  | 
Query Tuning / Planner Method Configuration|[enable_parallel_hash](https://postgresqlco.nf/en/doc/param/enable_parallel_hash) | on |  | 
Query Tuning / Planner Method Configuration|[enable_partition_pruning](https://postgresqlco.nf/en/doc/param/enable_partition_pruning) | on |  | 
Query Tuning / Planner Method Configuration|[enable_partitionwise_aggregate](https://postgresqlco.nf/en/doc/param/enable_partitionwise_aggregate) | off |  | 
Query Tuning / Planner Method Configuration|[enable_partitionwise_join](https://postgresqlco.nf/en/doc/param/enable_partitionwise_join) | off |  | 
Query Tuning / Planner Method Configuration|[enable_seqscan](https://postgresqlco.nf/en/doc/param/enable_seqscan) | on |  | 
Query Tuning / Planner Method Configuration|[enable_sort](https://postgresqlco.nf/en/doc/param/enable_sort) | on |  | 
Query Tuning / Planner Method Configuration|[enable_tidscan](https://postgresqlco.nf/en/doc/param/enable_tidscan) | on |  | 
Replication|[track_commit_timestamp](https://postgresqlco.nf/en/doc/param/track_commit_timestamp) | off |  | 
Replication / Master Server|[synchronous_standby_names](https://postgresqlco.nf/en/doc/param/synchronous_standby_names) |  |  | 
Replication / Master Server|[vacuum_defer_cleanup_age](https://postgresqlco.nf/en/doc/param/vacuum_defer_cleanup_age) | 0 |  | 
Replication / Sending Servers|[max_replication_slots](https://postgresqlco.nf/en/doc/param/max_replication_slots) | 10 |  | 
Replication / Sending Servers|[max_wal_senders](https://postgresqlco.nf/en/doc/param/max_wal_senders) | 10 |  | 
Replication / Sending Servers|[wal_keep_segments](https://postgresqlco.nf/en/doc/param/wal_keep_segments) | 0 |  | 
Replication / Sending Servers|[wal_sender_timeout](https://postgresqlco.nf/en/doc/param/wal_sender_timeout) | 60000 | ms  | 
Replication / Standby Servers|[hot_standby](https://postgresqlco.nf/en/doc/param/hot_standby) | on |  | 
Replication / Standby Servers|[hot_standby_feedback](https://postgresqlco.nf/en/doc/param/hot_standby_feedback) | off |  | 
Replication / Standby Servers|[max_standby_archive_delay](https://postgresqlco.nf/en/doc/param/max_standby_archive_delay) | 30000 | ms  | 
Replication / Standby Servers|[max_standby_streaming_delay](https://postgresqlco.nf/en/doc/param/max_standby_streaming_delay) | 30000 | ms  | 
Replication / Standby Servers|[wal_receiver_status_interval](https://postgresqlco.nf/en/doc/param/wal_receiver_status_interval) | 10 | s  | 
Replication / Standby Servers|[wal_receiver_timeout](https://postgresqlco.nf/en/doc/param/wal_receiver_timeout) | 60000 | ms  | 
Replication / Standby Servers|[wal_retrieve_retry_interval](https://postgresqlco.nf/en/doc/param/wal_retrieve_retry_interval) | 5000 | ms  | 
Replication / Subscribers|[max_logical_replication_workers](https://postgresqlco.nf/en/doc/param/max_logical_replication_workers) | 4 |  | 
Replication / Subscribers|[max_sync_workers_per_subscription](https://postgresqlco.nf/en/doc/param/max_sync_workers_per_subscription) | 2 |  | 
Reporting and Logging / What to Log|[application_name](https://postgresqlco.nf/en/doc/param/application_name) | psql |  | 
Reporting and Logging / What to Log|[debug_pretty_print](https://postgresqlco.nf/en/doc/param/debug_pretty_print) | on |  | 
Reporting and Logging / What to Log|[debug_print_parse](https://postgresqlco.nf/en/doc/param/debug_print_parse) | off |  | 
Reporting and Logging / What to Log|[debug_print_plan](https://postgresqlco.nf/en/doc/param/debug_print_plan) | off |  | 
Reporting and Logging / What to Log|[debug_print_rewritten](https://postgresqlco.nf/en/doc/param/debug_print_rewritten) | off |  | 
Reporting and Logging / What to Log|[log_autovacuum_min_duration](https://postgresqlco.nf/en/doc/param/log_autovacuum_min_duration) | -1 | ms  | 
Reporting and Logging / What to Log|[log_checkpoints](https://postgresqlco.nf/en/doc/param/log_checkpoints) | off |  | 
Reporting and Logging / What to Log|[log_connections](https://postgresqlco.nf/en/doc/param/log_connections) | off |  | 
Reporting and Logging / What to Log|[log_disconnections](https://postgresqlco.nf/en/doc/param/log_disconnections) | off |  | 
Reporting and Logging / What to Log|[log_duration](https://postgresqlco.nf/en/doc/param/log_duration) | off |  | 
Reporting and Logging / What to Log|[log_error_verbosity](https://postgresqlco.nf/en/doc/param/log_error_verbosity) | default |  | 
Reporting and Logging / What to Log|[log_hostname](https://postgresqlco.nf/en/doc/param/log_hostname) | off |  | 
Reporting and Logging / What to Log|[log_line_prefix](https://postgresqlco.nf/en/doc/param/log_line_prefix) | %m [%p] %q%u@%d  |  | 
Reporting and Logging / What to Log|[log_lock_waits](https://postgresqlco.nf/en/doc/param/log_lock_waits) | off |  | 
Reporting and Logging / What to Log|[log_replication_commands](https://postgresqlco.nf/en/doc/param/log_replication_commands) | off |  | 
Reporting and Logging / What to Log|[log_statement](https://postgresqlco.nf/en/doc/param/log_statement) | none |  | 
Reporting and Logging / What to Log|[log_temp_files](https://postgresqlco.nf/en/doc/param/log_temp_files) | -1 | kB  | 
Reporting and Logging / What to Log|[log_timezone](https://postgresqlco.nf/en/doc/param/log_timezone) | UTC |  | 
Reporting and Logging / When to Log|[log_min_duration_statement](https://postgresqlco.nf/en/doc/param/log_min_duration_statement) | -1 | ms  | 
Reporting and Logging / When to Log|[log_min_error_statement](https://postgresqlco.nf/en/doc/param/log_min_error_statement) | error |  | 
Reporting and Logging / When to Log|[log_min_messages](https://postgresqlco.nf/en/doc/param/log_min_messages) | warning |  | 
Reporting and Logging / Where to Log|[event_source](https://postgresqlco.nf/en/doc/param/event_source) | PostgreSQL |  | 
Reporting and Logging / Where to Log|[log_destination](https://postgresqlco.nf/en/doc/param/log_destination) | stderr |  | 
Reporting and Logging / Where to Log|[log_directory](https://postgresqlco.nf/en/doc/param/log_directory) | log |  | 
Reporting and Logging / Where to Log|[log_file_mode](https://postgresqlco.nf/en/doc/param/log_file_mode) | 0600 |  | 
Reporting and Logging / Where to Log|[log_filename](https://postgresqlco.nf/en/doc/param/log_filename) | postgresql-11-main.log |  | 
Reporting and Logging / Where to Log|[log_rotation_age](https://postgresqlco.nf/en/doc/param/log_rotation_age) | 1440 | min  | 
Reporting and Logging / Where to Log|[log_rotation_size](https://postgresqlco.nf/en/doc/param/log_rotation_size) | 10240 | kB  | 10.00 MiB
Reporting and Logging / Where to Log|[log_truncate_on_rotation](https://postgresqlco.nf/en/doc/param/log_truncate_on_rotation) | off |  | 
Reporting and Logging / Where to Log|[logging_collector](https://postgresqlco.nf/en/doc/param/logging_collector) | off |  | 
Reporting and Logging / Where to Log|[syslog_facility](https://postgresqlco.nf/en/doc/param/syslog_facility) | local0 |  | 
Reporting and Logging / Where to Log|[syslog_ident](https://postgresqlco.nf/en/doc/param/syslog_ident) | postgres |  | 
Reporting and Logging / Where to Log|[syslog_sequence_numbers](https://postgresqlco.nf/en/doc/param/syslog_sequence_numbers) | on |  | 
Reporting and Logging / Where to Log|[syslog_split_messages](https://postgresqlco.nf/en/doc/param/syslog_split_messages) | on |  | 
Resource Usage / Asynchronous Behavior|[backend_flush_after](https://postgresqlco.nf/en/doc/param/backend_flush_after) | 0 | 8kB  | 0.00 bytes
Resource Usage / Asynchronous Behavior|[effective_io_concurrency](https://postgresqlco.nf/en/doc/param/effective_io_concurrency) | 1 |  | 
Resource Usage / Asynchronous Behavior|[max_parallel_maintenance_workers](https://postgresqlco.nf/en/doc/param/max_parallel_maintenance_workers) | 2 |  | 
Resource Usage / Asynchronous Behavior|[max_parallel_workers](https://postgresqlco.nf/en/doc/param/max_parallel_workers) | 8 |  | 
Resource Usage / Asynchronous Behavior|[max_parallel_workers_per_gather](https://postgresqlco.nf/en/doc/param/max_parallel_workers_per_gather) | 2 |  | 
Resource Usage / Asynchronous Behavior|[max_worker_processes](https://postgresqlco.nf/en/doc/param/max_worker_processes) | 8 |  | 
Resource Usage / Asynchronous Behavior|[old_snapshot_threshold](https://postgresqlco.nf/en/doc/param/old_snapshot_threshold) | -1 | min  | 
Resource Usage / Asynchronous Behavior|[parallel_leader_participation](https://postgresqlco.nf/en/doc/param/parallel_leader_participation) | on |  | 
Resource Usage / Background Writer|[bgwriter_delay](https://postgresqlco.nf/en/doc/param/bgwriter_delay) | 200 | ms  | 
Resource Usage / Background Writer|[bgwriter_flush_after](https://postgresqlco.nf/en/doc/param/bgwriter_flush_after) | 64 | 8kB  | 512.00 KiB
Resource Usage / Background Writer|[bgwriter_lru_maxpages](https://postgresqlco.nf/en/doc/param/bgwriter_lru_maxpages) | 100 |  | 
Resource Usage / Background Writer|[bgwriter_lru_multiplier](https://postgresqlco.nf/en/doc/param/bgwriter_lru_multiplier) | 2 |  | 
Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_delay](https://postgresqlco.nf/en/doc/param/vacuum_cost_delay) | 0 | ms  | 
Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/vacuum_cost_limit) | 200 |  | 
Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_page_dirty](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_dirty) | 20 |  | 
Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_page_hit](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_hit) | 1 |  | 
Resource Usage / Cost-Based Vacuum Delay|[vacuum_cost_page_miss](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_miss) | 10 |  | 
Resource Usage / Disk|[temp_file_limit](https://postgresqlco.nf/en/doc/param/temp_file_limit) | -1 | kB  | 
Resource Usage / Kernel Resources|[max_files_per_process](https://postgresqlco.nf/en/doc/param/max_files_per_process) | 1000 |  | 
Resource Usage / Memory|[autovacuum_work_mem](https://postgresqlco.nf/en/doc/param/autovacuum_work_mem) | -1 | kB  | 
Resource Usage / Memory|[dynamic_shared_memory_type](https://postgresqlco.nf/en/doc/param/dynamic_shared_memory_type) | posix |  | 
Resource Usage / Memory|[huge_pages](https://postgresqlco.nf/en/doc/param/huge_pages) | try |  | 
Resource Usage / Memory|[maintenance_work_mem](https://postgresqlco.nf/en/doc/param/maintenance_work_mem) | 65536 | kB  | 64.00 MiB
Resource Usage / Memory|[max_prepared_transactions](https://postgresqlco.nf/en/doc/param/max_prepared_transactions) | 0 |  | 
Resource Usage / Memory|[max_stack_depth](https://postgresqlco.nf/en/doc/param/max_stack_depth) | 2048 | kB  | 2.00 MiB
Resource Usage / Memory|[shared_buffers](https://postgresqlco.nf/en/doc/param/shared_buffers) | 16384 | 8kB  | 128.00 MiB
Resource Usage / Memory|[temp_buffers](https://postgresqlco.nf/en/doc/param/temp_buffers) | 1024 | 8kB  | 8.00 MiB
Resource Usage / Memory|[track_activity_query_size](https://postgresqlco.nf/en/doc/param/track_activity_query_size) | 1024 | B  | 
Resource Usage / Memory|[work_mem](https://postgresqlco.nf/en/doc/param/work_mem) | 4096 | kB  | 4.00 MiB
Statistics / Monitoring|[log_executor_stats](https://postgresqlco.nf/en/doc/param/log_executor_stats) | off |  | 
Statistics / Monitoring|[log_parser_stats](https://postgresqlco.nf/en/doc/param/log_parser_stats) | off |  | 
Statistics / Monitoring|[log_planner_stats](https://postgresqlco.nf/en/doc/param/log_planner_stats) | off |  | 
Statistics / Monitoring|[log_statement_stats](https://postgresqlco.nf/en/doc/param/log_statement_stats) | off |  | 
Statistics / Query and Index Statistics Collector|[stats_temp_directory](https://postgresqlco.nf/en/doc/param/stats_temp_directory) | /var/run/postgresql/11-main.pg_stat_tmp |  | 
Statistics / Query and Index Statistics Collector|[track_activities](https://postgresqlco.nf/en/doc/param/track_activities) | on |  | 
Statistics / Query and Index Statistics Collector|[track_counts](https://postgresqlco.nf/en/doc/param/track_counts) | on |  | 
Statistics / Query and Index Statistics Collector|[track_functions](https://postgresqlco.nf/en/doc/param/track_functions) | none |  | 
Statistics / Query and Index Statistics Collector|[track_io_timing](https://postgresqlco.nf/en/doc/param/track_io_timing) | off |  | 
Version and Platform Compatibility / Other Platforms and Clients|[transform_null_equals](https://postgresqlco.nf/en/doc/param/transform_null_equals) | off |  | 
Version and Platform Compatibility / Previous PostgreSQL Versions|[array_nulls](https://postgresqlco.nf/en/doc/param/array_nulls) | on |  | 
Version and Platform Compatibility / Previous PostgreSQL Versions|[backslash_quote](https://postgresqlco.nf/en/doc/param/backslash_quote) | safe_encoding |  | 
Version and Platform Compatibility / Previous PostgreSQL Versions|[default_with_oids](https://postgresqlco.nf/en/doc/param/default_with_oids) | off |  | 
Version and Platform Compatibility / Previous PostgreSQL Versions|[escape_string_warning](https://postgresqlco.nf/en/doc/param/escape_string_warning) | on |  | 
Version and Platform Compatibility / Previous PostgreSQL Versions|[lo_compat_privileges](https://postgresqlco.nf/en/doc/param/lo_compat_privileges) | off |  | 
Version and Platform Compatibility / Previous PostgreSQL Versions|[operator_precedence_warning](https://postgresqlco.nf/en/doc/param/operator_precedence_warning) | off |  | 
Version and Platform Compatibility / Previous PostgreSQL Versions|[quote_all_identifiers](https://postgresqlco.nf/en/doc/param/quote_all_identifiers) | off |  | 
Version and Platform Compatibility / Previous PostgreSQL Versions|[standard_conforming_strings](https://postgresqlco.nf/en/doc/param/standard_conforming_strings) | on |  | 
Version and Platform Compatibility / Previous PostgreSQL Versions|[synchronize_seqscans](https://postgresqlco.nf/en/doc/param/synchronize_seqscans) | on |  | 
Write-Ahead Log / Archiving|[archive_command](https://postgresqlco.nf/en/doc/param/archive_command) | (disabled) |  | 
Write-Ahead Log / Archiving|[archive_mode](https://postgresqlco.nf/en/doc/param/archive_mode) | off |  | 
Write-Ahead Log / Archiving|[archive_timeout](https://postgresqlco.nf/en/doc/param/archive_timeout) | 0 | s  | 
Write-Ahead Log / Checkpoints|[checkpoint_completion_target](https://postgresqlco.nf/en/doc/param/checkpoint_completion_target) | 0.5 |  | 
Write-Ahead Log / Checkpoints|[checkpoint_flush_after](https://postgresqlco.nf/en/doc/param/checkpoint_flush_after) | 32 | 8kB  | 256.00 KiB
Write-Ahead Log / Checkpoints|[checkpoint_timeout](https://postgresqlco.nf/en/doc/param/checkpoint_timeout) | 300 | s  | 
Write-Ahead Log / Checkpoints|[checkpoint_warning](https://postgresqlco.nf/en/doc/param/checkpoint_warning) | 30 | s  | 
Write-Ahead Log / Checkpoints|[max_wal_size](https://postgresqlco.nf/en/doc/param/max_wal_size) | 1024 | MB  | 1.00 GiB
Write-Ahead Log / Checkpoints|[min_wal_size](https://postgresqlco.nf/en/doc/param/min_wal_size) | 80 | MB  | 80.00 MiB
Write-Ahead Log / Settings|[commit_delay](https://postgresqlco.nf/en/doc/param/commit_delay) | 0 |  | 
Write-Ahead Log / Settings|[commit_siblings](https://postgresqlco.nf/en/doc/param/commit_siblings) | 5 |  | 
Write-Ahead Log / Settings|[fsync](https://postgresqlco.nf/en/doc/param/fsync) | on |  | 
Write-Ahead Log / Settings|[full_page_writes](https://postgresqlco.nf/en/doc/param/full_page_writes) | on |  | 
Write-Ahead Log / Settings|[synchronous_commit](https://postgresqlco.nf/en/doc/param/synchronous_commit) | on |  | 
Write-Ahead Log / Settings|[wal_buffers](https://postgresqlco.nf/en/doc/param/wal_buffers) | 512 | 8kB  | 4.00 MiB
Write-Ahead Log / Settings|[wal_compression](https://postgresqlco.nf/en/doc/param/wal_compression) | off |  | 
Write-Ahead Log / Settings|[wal_level](https://postgresqlco.nf/en/doc/param/wal_level) | replica |  | 
Write-Ahead Log / Settings|[wal_log_hints](https://postgresqlco.nf/en/doc/param/wal_log_hints) | off |  | 
Write-Ahead Log / Settings|[wal_sync_method](https://postgresqlco.nf/en/doc/param/wal_sync_method) | fdatasync |  | 
Write-Ahead Log / Settings|[wal_writer_delay](https://postgresqlco.nf/en/doc/param/wal_writer_delay) | 200 | ms  | 
Write-Ahead Log / Settings|[wal_writer_flush_after](https://postgresqlco.nf/en/doc/param/wal_writer_flush_after) | 128 | 8kB  | 1.00 MiB

  
---
<a name="postgres-checkup_A004"></a>
[Table of contents](#postgres-checkup_top)
# A004 Cluster information #

## Observations ##
Data collected: 2019-03-14 05:46:07 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

 Indicator | Value
-----------|-------
Postgres Version | PostgreSQL&nbsp;11.2&nbsp;(Ubuntu&nbsp;11.2-1.pgdg16.04+1)&nbsp;on&nbsp;x86_64-pc-linux-gnu,&nbsp;compiled&nbsp;by&nbsp;gcc&nbsp;(Ubuntu&nbsp;5.4.0-6ubuntu1~16.04.11)&nbsp;5.4.0&nbsp;20160609,&nbsp;64-bit
Config file | /etc/postgresql/11/main/postgresql.conf
Role | Master
Replicas | 
Started At | 2019-03-14&nbsp;05:42:43+00
Uptime | 00:03:24
Checkpoints | 6
Forced Checkpoints | 100.0%
Checkpoint MB/sec | 0.490190
Database Name | dbname
Database Size | 1019&nbsp;MB
Stats Since | 2019-03-14&nbsp;05:42:48+00
Stats Age | 00:03:19
Installed Extensions | pg_stat_kcache&nbsp;2.1.1,&nbsp;pg_stat_statements&nbsp;1.6,&nbsp;plpgsql&nbsp;1.0
Cache Effectiveness | 94.03%
Successful Commits | 99.81%
Conflicts | 0
Temp Files: total size | 440&nbsp;MB
Temp Files: total number of files | 34
Temp Files: total number of files per day | 34
Temp Files: avg file size | 13&nbsp;MB
Deadlocks | 0
Deadlocks per day | 0

#### Databases sizes ####
Database | &#9660;&nbsp;Size
---------|------
dbname | 1.00&nbsp;GiB
postgres | 7.48&nbsp;MiB
checkup_test_db | 7.48&nbsp;MiB
template1 | 7.35&nbsp;MiB
template0 | 7.35&nbsp;MiB


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A005"></a>
[Table of contents](#postgres-checkup_top)
# A005 Extensions #

## Observations ##
Data collected: 2019-03-14 05:46:07 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
&#9660;&nbsp;Database | Extension name | Installed version | Default version | Is old
---------|----------------|-------------------|-----------------|--------
checkup_test_db | plpgsql | 1.0 | 1.0 | <no value>
dbname | pg_stat_kcache | 2.1.1 | 2.1.1 | <no value>
dbname | pg_stat_statements | 1.6 | 1.6 | <no value>
dbname | plpgsql | 1.0 | 1.0 | <no value>




## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A006"></a>
[Table of contents](#postgres-checkup_top)
# A006 Postgres setting deviations #

## Observations ##
Data collected: 2019-03-14 05:46:07 +0000 UTC  

### Settings (pg_settings) that differ ###

No differences in `pg_settings` are found.


No differences in `pg_config` are found.



## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A007"></a>
[Table of contents](#postgres-checkup_top)
# A007 Altered settings #

## Observations ##
Data collected: 2019-03-14 05:46:11 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Source | Settings count | Changed settings
-------|----------------|-----------------
/etc/postgresql/11/main/postgresql.conf | 25 |  DateStyle TimeZone cluster_name default_text_search_config dynamic_shared_memory_type external_pid_file lc_messages lc_monetary lc_numeric lc_time listen_addresses log_filename log_line_prefix log_timezone max_connections max_wal_size min_wal_size port shared_buffers shared_preload_libraries ssl ssl_cert_file ssl_key_file stats_temp_directory unix_socket_directories  
/var/lib/postgresql/11/main/postgresql.auto.conf | 1 |  random_page_cost  
default | 278 | 






## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A008"></a>
[Table of contents](#postgres-checkup_top)
# A008 Disk usage and file system type
Output of `df -TPh` (follows symlinks)

## Observations ##
Data collected: 2019-03-14 05:46:11 +0000 UTC  

    
        
### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

#### System directories ####
Device | FS Type | Size | Available | Usage | Used | Mount Point 
-------|---------|------|-----------|-----|------|-------------
overlay|overlay|22G|14G|37%|7.8G|/
tmpfs|tmpfs|64M|64M|0%|0|/dev
tmpfs|tmpfs|1.9G|1.9G|0%|0|/sys/fs/cgroup
/dev/sda9|ext4|22G|14G|37%|7.8G|/builds/postgres-ai-team
shm|tmpfs|64M|64M|1%|8.0K|/dev/shm


#### Database directories ####
Name | FS Type | Size | Available | Usage | Used | Mount Point | Path | Device
-----|---------|------|-----------|-----|------|-------------|------|-------
PGDATA|overlay|22G|14G|37%|7.8G|/|/var/lib/postgresql/11/main|overlay
WAL directory|overlay|22G|14G|37%|7.8G|/|/var/lib/postgresql/11/main/pg_wal|overlay
stats_temp_directory|overlay|22G|14G|37%|7.8G|/|/var/run/postgresql/11-main.pg_stat_tmp|overlay


        
    




## Conclusions ##

## Recommendations ##
---
<a name="postgres-checkup_D002"></a>
[Table of contents](#postgres-checkup_top)
# D002 Useful Linux tools
## Observations ##
Data collected: 2019-03-14 05:46:12 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
### cpu
Utility | Availability
--------|--------------
ps | yes
htop | 
top | yes
mpstat | yes
lscpu | yes
### free_space
Utility | Availability
--------|--------------
df | yes
du | yes
### io
Utility | Availability
--------|--------------
pidstat | yes
iostat | yes
iotop | 
ftrace | 
blktrace | 
### memory
Utility | Availability
--------|--------------
free | yes
vmstat | yes
### network
Utility | Availability
--------|--------------
tcpdump | 
netstat | 
ss | yes
iptraf | 
ethtool | 
### misc
Utility | Availability
--------|--------------
dstat | 
strace | 
ltrace | 
perf | 
numastat | 






## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_D004"></a>
[Table of contents](#postgres-checkup_top)
# D004 pg_stat_statements and kcache settings #

## Observations ##
Data collected: 2019-03-14 05:46:12 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

#### `pg_stat_statements` extension settings ####
Setting | Value | Unit | Type | Min value | Max value
--------|-------|------|------|-----------|-----------
[pg_stat_statements.max](https://postgresqlco.nf/en/doc/param/pg_stat_statements.max)|5000||integer|100 |2147483647 
[pg_stat_statements.save](https://postgresqlco.nf/en/doc/param/pg_stat_statements.save)|on||bool||
[pg_stat_statements.track](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track)|top||enum||
[pg_stat_statements.track_utility](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track_utility)|on||bool||

#### `kcache` extension settings ####
Setting | Value | Unit | Type | Min value | Max value
--------|-------|------|------|-----------|-----------
[pg_stat_kcache.linux_hz](https://postgresqlco.nf/en/doc/param/pg_stat_kcache.linux_hz)|1000000||integer|-1 |2147483647 


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F001"></a>
[Table of contents](#postgres-checkup_top)
# F001 Autovacuum: Current settings #

## Observations ##
Data collected: 2019-03-14 05:46:12 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
&#9660;&nbsp;Setting name | Value | Unit | Pretty value
-------------|-------|------|--------------
[autovacuum](https://postgresqlco.nf/en/doc/param/autovacuum)|on|<no value> | 
[autovacuum_analyze_scale_factor](https://postgresqlco.nf/en/doc/param/autovacuum_analyze_scale_factor)|0.1|<no value> | 
[autovacuum_analyze_threshold](https://postgresqlco.nf/en/doc/param/autovacuum_analyze_threshold)|50|<no value> | 
[autovacuum_freeze_max_age](https://postgresqlco.nf/en/doc/param/autovacuum_freeze_max_age)|200000000|<no value> | 
[autovacuum_max_workers](https://postgresqlco.nf/en/doc/param/autovacuum_max_workers)|3|<no value> | 
[autovacuum_multixact_freeze_max_age](https://postgresqlco.nf/en/doc/param/autovacuum_multixact_freeze_max_age)|400000000|<no value> | 
[autovacuum_naptime](https://postgresqlco.nf/en/doc/param/autovacuum_naptime)|60|s | 
[autovacuum_vacuum_cost_delay](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_delay)|20|ms | 
[autovacuum_vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_cost_limit)|-1|<no value> | 
[autovacuum_vacuum_scale_factor](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_scale_factor)|0.2|<no value> | 
[autovacuum_vacuum_threshold](https://postgresqlco.nf/en/doc/param/autovacuum_vacuum_threshold)|50|<no value> | 
[autovacuum_work_mem](https://postgresqlco.nf/en/doc/param/autovacuum_work_mem)|-1|kB | 
[maintenance_work_mem](https://postgresqlco.nf/en/doc/param/maintenance_work_mem)|65536|kB | 64.00 MiB
[vacuum_cleanup_index_scale_factor](https://postgresqlco.nf/en/doc/param/vacuum_cleanup_index_scale_factor)|0.1|<no value> | 
[vacuum_cost_delay](https://postgresqlco.nf/en/doc/param/vacuum_cost_delay)|0|ms | 
[vacuum_cost_limit](https://postgresqlco.nf/en/doc/param/vacuum_cost_limit)|200|<no value> | 
[vacuum_cost_page_dirty](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_dirty)|20|<no value> | 
[vacuum_cost_page_hit](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_hit)|1|<no value> | 
[vacuum_cost_page_miss](https://postgresqlco.nf/en/doc/param/vacuum_cost_page_miss)|10|<no value> | 
[vacuum_defer_cleanup_age](https://postgresqlco.nf/en/doc/param/vacuum_defer_cleanup_age)|0|<no value> | 
[vacuum_freeze_min_age](https://postgresqlco.nf/en/doc/param/vacuum_freeze_min_age)|50000000|<no value> | 
[vacuum_freeze_table_age](https://postgresqlco.nf/en/doc/param/vacuum_freeze_table_age)|150000000|<no value> | 
[vacuum_multixact_freeze_min_age](https://postgresqlco.nf/en/doc/param/vacuum_multixact_freeze_min_age)|5000000|<no value> | 
[vacuum_multixact_freeze_table_age](https://postgresqlco.nf/en/doc/param/vacuum_multixact_freeze_table_age)|150000000|<no value> | 


#### Tuned tables ####

&#9660;&nbsp;Namespace | Relation | Options
----------|----------|------
public |t_with_bloat | autovacuum_vacuum_scale_factor=0.01<br/>






## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F002"></a>
[Table of contents](#postgres-checkup_top)
# F002 Autovacuum: Transaction wraparound check #

## Observations ##
Data collected: 2019-03-14 05:46:12 +0000 UTC  
Current database: dbname  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

#### Databases ####
  

\# | Database | &#9660;&nbsp;Age | Capacity used, % | Warning | datfrozenxid
--|--------|-----|------------------|---------|--------------
1 |postgres |495 |0 |  |561
2 |dbname |495 |0 |  |561
3 |template1 |495 |0 |  |561
4 |template0 |495 |0 |  |561
5 |checkup_test_db |495 |0 |  |561



#### Tables in the observed database ####
The list is limited to 100 items.  

\# | Relation | Age | &#9660;&nbsp;Capacity used, % | Warning |rel_relfrozenxid | toast_relfrozenxid 
---|-------|-----|------------------|---------|-----------------|--------------------
1 |test_schema.order |387 |0 |  |669 |0 |
2 |t_8 |371 |0 |  |685 |0 |
3 |t_13 |361 |0 |  |695 |0 |
4 |t_18 |351 |0 |  |705 |0 |
5 |t_20 |347 |0 |  |709 |0 |
6 |t_22 |343 |0 |  |713 |0 |
7 |t_24 |339 |0 |  |717 |0 |
8 |t_26 |335 |0 |  |721 |0 |
9 |t_28 |331 |0 |  |725 |0 |
10 |t_30 |327 |0 |  |729 |0 |
11 |t_32 |323 |0 |  |733 |0 |
12 |t_35 |317 |0 |  |739 |0 |
13 |t_38 |311 |0 |  |745 |0 |
14 |t_41 |305 |0 |  |751 |0 |
15 |t_44 |299 |0 |  |757 |0 |
16 |t_47 |293 |0 |  |763 |0 |
17 |t_53 |281 |0 |  |775 |0 |
18 |t_54 |279 |0 |  |777 |0 |
19 |t_55 |277 |0 |  |779 |0 |
20 |t_56 |275 |0 |  |781 |0 |
21 |t_57 |273 |0 |  |783 |0 |
22 |t_58 |271 |0 |  |785 |0 |
23 |t_1 |385 |0 |  |671 |0 |
24 |t_5 |377 |0 |  |679 |0 |
25 |t_11 |365 |0 |  |691 |0 |
26 |t_16 |355 |0 |  |701 |0 |
27 |t_rar_q |479 |0 |  |577 |0 |
28 |t_fillfactor |477 |0 |  |579 |0 |
29 |t_with_unused_index |476 |0 |  |580 |0 |
30 |t_with_redundant_index |474 |0 |  |582 |0 |
31 |test_schema.t_with_invalid_index |470 |0 |  |586 |0 |
32 |t_fk_1 |468 |0 |  |588 |0 |
33 |t_fk_2 |466 |0 |  |590 |0 |
34 |bloated |464 |0 |  |592 |0 |
35 |t_red_fk_1 |460 |0 |  |596 |0 |
36 |t_red_fk_2 |456 |0 |  |600 |0 |
37 |t_slw_q |453 |0 |  |603 |0 |
38 |t_with_bloat<sup>*</sup> |461 |0 |  |595 |0 |
39 |t_2 |383 |0 |  |673 |0 |
40 |t_6 |375 |0 |  |681 |0 |
41 |t_9 |369 |0 |  |687 |0 |
42 |t_14 |359 |0 |  |697 |0 |
43 |t_19 |349 |0 |  |707 |0 |
44 |t_21 |345 |0 |  |711 |0 |
45 |t_23 |341 |0 |  |715 |0 |
46 |t_25 |337 |0 |  |719 |0 |
47 |t_27 |333 |0 |  |723 |0 |
48 |t_29 |329 |0 |  |727 |0 |
49 |t_31 |325 |0 |  |731 |0 |
50 |t_34 |319 |0 |  |737 |0 |
51 |t_37 |313 |0 |  |743 |0 |
52 |t_40 |307 |0 |  |749 |0 |
53 |t_43 |301 |0 |  |755 |0 |
54 |t_46 |295 |0 |  |761 |0 |
55 |t_49 |289 |0 |  |767 |0 |
56 |t_50 |287 |0 |  |769 |0 |
57 |t_51 |285 |0 |  |771 |0 |
58 |t_52 |283 |0 |  |773 |0 |
59 |t_12 |363 |0 |  |693 |0 |
60 |pg_catalog.pg_class |495 |0 |  |561 |0 |
61 |t_17 |353 |0 |  |703 |0 |
62 |t_3 |381 |0 |  |675 |0 |
63 |t_7 |373 |0 |  |683 |0 |
64 |t_4 |379 |0 |  |677 |0 |
65 |t_10 |367 |0 |  |689 |0 |
66 |t_15 |357 |0 |  |699 |0 |
67 |t_33 |321 |0 |  |735 |0 |
68 |t_36 |315 |0 |  |741 |0 |
69 |t_39 |309 |0 |  |747 |0 |
70 |t_42 |303 |0 |  |753 |0 |
71 |t_45 |297 |0 |  |759 |0 |
72 |t_48 |291 |0 |  |765 |0 |
73 |t_59 |269 |0 |  |787 |0 |
74 |t_60 |267 |0 |  |789 |0 |
75 |t_61 |265 |0 |  |791 |0 |
76 |t_62 |263 |0 |  |793 |0 |
77 |t_63 |261 |0 |  |795 |0 |
78 |t_64 |259 |0 |  |797 |0 |
79 |t_65 |257 |0 |  |799 |0 |
80 |t_66 |255 |0 |  |801 |0 |
81 |t_67 |253 |0 |  |803 |0 |
82 |t_68 |251 |0 |  |805 |0 |
83 |t_69 |249 |0 |  |807 |0 |
84 |t_70 |247 |0 |  |809 |0 |
85 |t_71 |245 |0 |  |811 |0 |
86 |t_72 |243 |0 |  |813 |0 |
87 |t_73 |241 |0 |  |815 |0 |
88 |t_74 |239 |0 |  |817 |0 |
89 |t_75 |237 |0 |  |819 |0 |
90 |t_76 |235 |0 |  |821 |0 |
91 |t_77 |233 |0 |  |823 |0 |
92 |t_78 |231 |0 |  |825 |0 |
93 |t_79 |229 |0 |  |827 |0 |
94 |t_80 |227 |0 |  |829 |0 |
95 |t_81 |225 |0 |  |831 |0 |
96 |t_82 |223 |0 |  |833 |0 |
97 |t_83 |221 |0 |  |835 |0 |
98 |t_84 |219 |0 |  |837 |0 |
99 |t_85 |217 |0 |  |839 |0 |
100 |t_86 |215 |0 |  |841 |0 |


<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F003"></a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead tuples #

## Observations ##
Data collected: 2019-03-14 05:46:13 +0000 UTC  
Current database: dbname  
Stats reset: 00:04:00 ago (2019-03-14 05:42:48 +0000 UTC)  
### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
  
  
\#|  Relation | reltype | Since last autovacuum | Since last vacuum | Autovacuum Count | Vacuum Count | n_tup_ins | n_tup_upd | n_tup_del | pg_class.reltuples | n_live_tup | n_dead_tup | &#9660;Dead Tuples Ratio, %
---|-------|------|-----------------------|-------------------|----------|---------|-----------|-----------|-----------|--------------------|------------|------------|-----------
1 |test_schema.order |r |<no value> |00:01:25.983897 |0 |1 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
2 |bloated |r |<no value> |00:01:24.683333 |0 |2 |100000 |0 |50000 |50000 |50000 |0 | 0 
3 |t_fk_1 |r |<no value> |00:01:24.804956 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
4 |t_with_bloat<sup>*</sup> |r |<no value> |00:01:23.930885 |0 |2 |1000000 |1000000 |0 |1000000 |1000000 |0 | 0 
5 |test_schema.t_with_invalid_index |r |<no value> |00:01:24.862065 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
6 |t_red_fk_1 |r |<no value> |00:01:24.669783 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
7 |t_rar_q |r |<no value> |00:01:25.048218 |0 |2 |1000000 |744690 |0 |1000000 |1000000 |0 | 0 
8 |t_slw_q |r |<no value> |00:01:24.552199 |0 |2 |10000001 |0 |0 |10000048 |10000048 |0 | 0 
9 |t_red_fk_2 |r |<no value> |00:01:24.615991 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
10 |t_with_redundant_index |r |<no value> |00:01:24.916019 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
11 |t_with_unused_index |r |<no value> |00:01:24.97027 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
12 |t_fk_2 |r |<no value> |00:01:24.749671 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 

<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F004"></a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-03-14 05:46:13 +0000 UTC  
Current database: dbname  


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###


The list is limited to 100 items.  

\# | Table | Size | Extra | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat ratio, % | Live | Last vacuum | Fillfactor
---|----|------|-------|------------------------------|------------------|--------------------|------|-------------|------------
&nbsp;|===== TOTAL ===== |764.33&nbsp;MiB ||46.69&nbsp;MiB |48,955,392 |6.11|||
1 |t_with_bloat<sup>*</sup> |69.15&nbsp;MiB |~34.71&nbsp;MiB (50.19%)|34.71&nbsp;MiB |36,388,864 | **50.19** |~34.44&nbsp;MiB | 2019-03-14 05:44:49  |100
2 |t_rar_q |49.90&nbsp;MiB |~7.81&nbsp;MiB (15.64%)|7.81&nbsp;MiB |8,183,808 |15.64 |~42.09&nbsp;MiB | 2019-03-14 05:44:48  |100
3 |bloated |3.47&nbsp;MiB |~1.74&nbsp;MiB (50.11%)|1.74&nbsp;MiB |1,818,624 | **50.11** |~1.73&nbsp;MiB | 2019-03-14 05:44:49  |100
4 |t_slw_q |345.69&nbsp;MiB |~1.36&nbsp;MiB (0.39%)|1.36&nbsp;MiB |1,417,216 |0.39 |~344.34&nbsp;MiB | 2019-03-14 05:44:49  |100
5 |t_fk_2 |42.24&nbsp;MiB |~152.00&nbsp;KiB (0.35%)|152.00&nbsp;KiB |155,648 |0.35 |~42.09&nbsp;MiB | 2019-03-14 05:44:49  |100
6 |t_red_fk_2 |42.24&nbsp;MiB |~152.00&nbsp;KiB (0.35%)|152.00&nbsp;KiB |155,648 |0.35 |~42.09&nbsp;MiB | 2019-03-14 05:44:49  |100
7 |t_red_fk_1 |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-14 05:44:49  |100
8 |test_schema.t_with_invalid_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-14 05:44:49  |100
9 |t_with_unused_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-14 05:44:48  |100
10 |t_fk_1 |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-14 05:44:49  |100
11 |test_schema.order |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-14 05:44:47  |100
12 |t_with_redundant_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-14 05:44:48  |100
13 |t_3 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
14 |t_46 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
15 |t_17 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
16 |t_99 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
17 |t_59 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
18 |t_32 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
19 |t_27 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
20 |t_94 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
21 |t_36 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
22 |t_30 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
23 |t_18 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
24 |t_22 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
25 |t_10 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
26 |t_39 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
27 |t_68 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
28 |t_50 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
29 |t_101 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
30 |t_61 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
31 |t_74 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
32 |t_37 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
33 |t_33 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
34 |t_35 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
35 |t_53 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
36 |t_97 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
37 |t_87 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
38 |t_7 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
39 |t_104 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
40 |t_92 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
41 |t_8 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
42 |t_5 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
43 |t_107 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
44 |t_103 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
45 |t_29 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
46 |t_84 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
47 |t_4 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
48 |t_2 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
49 |t_85 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
50 |t_31 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
51 |t_51 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
52 |t_72 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
53 |t_11 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
54 |t_88 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
55 |t_48 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
56 |t_13 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
57 |t_34 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
58 |t_102 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
59 |t_49 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
60 |t_90 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
61 |t_81 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
62 |t_55 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
63 |t_89 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
64 |t_77 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
65 |t_64 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
66 |t_42 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
67 |t_71 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
68 |t_75 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
69 |t_16 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
70 |t_95 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
71 |t_6 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
72 |t_52 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
73 |t_41 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
74 |t_15 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
75 |t_44 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
76 |t_96 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
77 |t_91 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
78 |t_58 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
79 |t_78 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
80 |t_93 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
81 |t_100 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
82 |t_20 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
83 |t_28 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
84 |t_12 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
85 |t_69 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
86 |t_1 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
87 |t_9 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
88 |t_79 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
89 |t_14 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
90 |t_43 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
91 |t_80 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
92 |t_57 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
93 |t_106 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
94 |t_82 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
95 |t_70 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
96 |t_56 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:48  |100
97 |t_21 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:50  |100
98 |t_105 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
99 |t_65 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
100 |t_62 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-14 05:44:51  |100
 
<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F005"></a>
[Table of contents](#postgres-checkup_top)
# F005 Autovacuum: Index bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-03-14 05:46:13 +0000 UTC  
Current database: dbname  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
The list is limited to 100 items.  

\# | Index (Table) | &#9660;&nbsp;Size | Extra | Estimated bloat | Est. bloat, bytes | Est. bloat ratio, % | Live | Fill factor
---|------------|-------------------|-------|-------|-------------|-------------|------|-------------
&nbsp;|===== TOTAL ===== |244.58&nbsp;MiB ||24.50&nbsp;MiB |25,681,920|10.01||
1 |t_rar_q_idx (t_rar_q) |42.86&nbsp;MiB |~23.65&nbsp;MiB (0.00%) |21.50&nbsp;MiB |22,544,384 | **50.16** |~21.36&nbsp;MiB |90
2 |i_redundant_2 (t_with_redundant_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
3 |i_redundant_1 (t_with_redundant_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
4 |r_red_fk_1_x_idx (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
5 |r_red_fk_1_id_idx (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
6 |t_fk_1_pkey (t_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
7 |t_red_fk_1_pkey (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
8 |r_red_fk_2_fk_idx (t_red_fk_2) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
9 |ordiadjust_pk (test_schema.order) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
10 |i_unused (t_with_unused_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
11 |i_bloated (bloated) |2.16&nbsp;MiB |~1.19&nbsp;MiB (0.00%) |1.08&nbsp;MiB |1,130,496 | **50.00** |~1.08&nbsp;MiB |90
12 |pg_depend_reference_index (pg_catalog.pg_depend) |376.00&nbsp;KiB |~160.00&nbsp;KiB (0.00%) |136.00&nbsp;KiB |139,264 |36.17 |~240.00&nbsp;KiB |90
13 |pg_depend_depender_index (pg_catalog.pg_depend) |304.00&nbsp;KiB |~88.00&nbsp;KiB (0.00%) |64.00&nbsp;KiB |65,536 |21.05 |~240.00&nbsp;KiB |90
14 |pg_proc_proname_args_nsp_index (pg_catalog.pg_proc) |264.00&nbsp;KiB | | | |0.00 |~392.00&nbsp;KiB |90
15 |pg_description_o_c_o_index (pg_catalog.pg_description) |184.00&nbsp;KiB |~40.00&nbsp;KiB (0.00%) |32.00&nbsp;KiB |32,768 |17.39 |~152.00&nbsp;KiB |90
16 |pg_attribute_relid_attnam_index (pg_catalog.pg_attribute) |136.00&nbsp;KiB | | | |0.00 |~344.00&nbsp;KiB |90
17 |pg_attribute_relid_attnum_index (pg_catalog.pg_attribute) |96.00&nbsp;KiB |~16.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |8.33 |~88.00&nbsp;KiB |90
18 |pg_class_relname_nsp_index (pg_catalog.pg_class) |56.00&nbsp;KiB | | | |0.00 |~64.00&nbsp;KiB |90
19 |pg_class_tblspc_relfilenode_index (pg_catalog.pg_class) |48.00&nbsp;KiB |~24.00&nbsp;KiB (0.00%) |24.00&nbsp;KiB |24,576 | **50.00** |~24.00&nbsp;KiB |90
20 |pg_type_typname_nsp_index (pg_catalog.pg_type) |48.00&nbsp;KiB | | | |0.00 |~72.00&nbsp;KiB |90
21 |pg_collation_name_enc_nsp_index (pg_catalog.pg_collation) |48.00&nbsp;KiB | | | |0.00 |~72.00&nbsp;KiB |90
22 |pg_operator_oprname_l_r_n_index (pg_catalog.pg_operator) |48.00&nbsp;KiB | | | |0.00 |~88.00&nbsp;KiB |90
23 |i_109 (t_109) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
24 |pg_amop_fam_strat_index (pg_catalog.pg_amop) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
25 |pg_amop_opr_fam_index (pg_catalog.pg_amop) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
26 |i_70 (t_70) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
27 |i_71 (t_71) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
28 |i_72 (t_72) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
29 |i_73 (t_73) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
30 |i_74 (t_74) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
31 |i_75 (t_75) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
32 |i_76 (t_76) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
33 |i_77 (t_77) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
34 |i_78 (t_78) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
35 |i_79 (t_79) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
36 |i_80 (t_80) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
37 |i_81 (t_81) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
38 |i_82 (t_82) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
39 |i_83 (t_83) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
40 |i_84 (t_84) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
41 |i_85 (t_85) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
42 |i_86 (t_86) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
43 |i_87 (t_87) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
44 |i_88 (t_88) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
45 |i_89 (t_89) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
46 |i_90 (t_90) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
47 |i_91 (t_91) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
48 |i_92 (t_92) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
49 |i_93 (t_93) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
50 |i_94 (t_94) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
51 |i_95 (t_95) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
52 |i_96 (t_96) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
53 |i_97 (t_97) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
54 |i_98 (t_98) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
55 |i_99 (t_99) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
56 |i_100 (t_100) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
57 |i_101 (t_101) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
58 |i_102 (t_102) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
59 |i_103 (t_103) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
60 |i_104 (t_104) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
61 |i_105 (t_105) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
62 |i_106 (t_106) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
63 |i_107 (t_107) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
64 |i_108 (t_108) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
65 |i_1 (t_1) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
66 |i_2 (t_2) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
67 |i_3 (t_3) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
68 |i_4 (t_4) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
69 |i_5 (t_5) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
70 |i_6 (t_6) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
71 |i_7 (t_7) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
72 |i_8 (t_8) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
73 |i_9 (t_9) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
74 |i_10 (t_10) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
75 |i_11 (t_11) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
76 |i_12 (t_12) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
77 |i_13 (t_13) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
78 |i_14 (t_14) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
79 |i_15 (t_15) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
80 |i_16 (t_16) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
81 |i_17 (t_17) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
82 |i_18 (t_18) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
83 |i_19 (t_19) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
84 |i_20 (t_20) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
85 |i_21 (t_21) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
86 |i_22 (t_22) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
87 |i_23 (t_23) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
88 |i_24 (t_24) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
89 |i_25 (t_25) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
90 |i_26 (t_26) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
91 |i_27 (t_27) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
92 |i_28 (t_28) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
93 |i_29 (t_29) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
94 |i_30 (t_30) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
95 |i_31 (t_31) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
96 |i_32 (t_32) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
97 |i_33 (t_33) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
98 |i_34 (t_34) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
99 |i_35 (t_35) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
100 |i_36 (t_36) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F008"></a>
[Table of contents](#postgres-checkup_top)
# F008 Autovacuum: Resource usage #

## Observations ##
Data collected: 2019-03-14 05:46:14 +0000 UTC  
### Settings ###




Setting name | Value | Unit | Pretty value
-------------|-------|------|--------------
[autovacuum_max_workers](https://postgresqlco.nf/en/doc/param/autovacuum_max_workers)|3|<no value> | 
[autovacuum_work_mem](https://postgresqlco.nf/en/doc/param/autovacuum_work_mem)|-1|kB | 
[log_autovacuum_min_duration](https://postgresqlco.nf/en/doc/param/log_autovacuum_min_duration)|-1|ms | 
[maintenance_work_mem](https://postgresqlco.nf/en/doc/param/maintenance_work_mem)|65536|kB | 64.00 MiB
[max_connections](https://postgresqlco.nf/en/doc/param/max_connections)|100|<no value> | 
[shared_buffers](https://postgresqlco.nf/en/doc/param/shared_buffers)|16384|8kB | 128.00 MiB
[work_mem](https://postgresqlco.nf/en/doc/param/work_mem)|4096|kB | 4.00 MiB


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
<a name="postgres-checkup_G001"></a>
[Table of contents](#postgres-checkup_top)
# G001 Memory-related settings #

## Observations ##
Data collected: 2019-03-14 05:46:14 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

Setting name | Value | Unit | Pretty value
-------------|-------|------|--------------
[autovacuum_work_mem](https://postgresqlco.nf/en/doc/param/autovacuum_work_mem) | -1| kB | 
[effective_cache_size](https://postgresqlco.nf/en/doc/param/effective_cache_size) | 524288| 8kB | 4.00 GiB
[maintenance_work_mem](https://postgresqlco.nf/en/doc/param/maintenance_work_mem) | 65536| kB | 64.00 MiB
[max_connections](https://postgresqlco.nf/en/doc/param/max_connections) | 100| <no value> | 
[shared_buffers](https://postgresqlco.nf/en/doc/param/shared_buffers) | 16384| 8kB | 128.00 MiB
[temp_buffers](https://postgresqlco.nf/en/doc/param/temp_buffers) | 1024| 8kB | 8.00 MiB
[work_mem](https://postgresqlco.nf/en/doc/param/work_mem) | 4096| kB | 4.00 MiB






## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_G002"></a>
[Table of contents](#postgres-checkup_top)
# G002 Connections and current activity #

## Observations ##
Data collected: 2019-03-14 05:46:15 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
  

\# | User | DB | Current state | Count | State changed >1m ago | State changed >1h ago
----|------|----|---------------|-------|-----------------------|-----------------------
1 | ALL users | ALL databases | ALL states | 6 | 0 | 0
2 | ALL users | ALL databases | ALL states | 4 | 0 | 0
3 | ALL users | ALL databases | ALL states | 4 | 0 | 0
4 | postgres | ALL databases | ALL states | 1 | 0 | 0
5 | postgres | ALL databases | ALL states | 1 | 0 | 0
6 | username | ALL databases | active | 1 | 0 | 0
7 | username | dbname | active | 1 | 0 | 0





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_G003"></a>
[Table of contents](#postgres-checkup_top)
# G003 Timeouts, locks, deadlocks #

## Observations ##
Data collected: 2019-03-14 05:46:15 +0000 UTC  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
#### Timeouts ####
Setting name | Value | Unit | Pretty value
-------------|-------|------|--------------
[authentication_timeout](https://postgresqlco.nf/en/doc/param/authentication_timeout)|60|s|
[idle_in_transaction_session_timeout](https://postgresqlco.nf/en/doc/param/idle_in_transaction_session_timeout)|0|ms|
[statement_timeout](https://postgresqlco.nf/en/doc/param/statement_timeout)|15000|ms|

#### Locks ####
Setting name | Value | Unit | Pretty value
-------------|-------|------|--------------
[deadlock_timeout](https://postgresqlco.nf/en/doc/param/deadlock_timeout)|1000|ms|
[lock_timeout](https://postgresqlco.nf/en/doc/param/lock_timeout)|0|ms|
[max_locks_per_transaction](https://postgresqlco.nf/en/doc/param/max_locks_per_transaction)|64|<no value>|
[max_pred_locks_per_page](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_page)|2|<no value>|
[max_pred_locks_per_relation](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_relation)|-2|<no value>|
[max_pred_locks_per_transaction](https://postgresqlco.nf/en/doc/param/max_pred_locks_per_transaction)|64|<no value>|


#### Database specified settings ####
Database | Setting
---------|---------
checkup_test_db | [lock_timeout=4s]

#### User specified settings ####
User | Setting
---------|---------
checkup_test_user | [lock_timeout=3s]

#### Databases data ####
  

\# | Database | Conflicts | &#9660;&nbsp;Deadlocks | Stats reset at | Stat reset
--|-----------|-------|-----------|----------------|------------
1|postgres|0|0|2019-03-14T05:42:43.963544+00:00|00:03:31
2|dbname|0|0|2019-03-14T05:42:48.20569+00:00|00:03:27
3|checkup_test_db|0|0|2019-03-14T05:45:30.602036+00:00|00:00:45


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_H001"></a>
[Table of contents](#postgres-checkup_top)
# H001 Invalid indexes #

## Observations ##
Data collected: 2019-03-14 05:46:15 +0000 UTC  
Current database: dbname  


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###


  

\# | Table | Index name | Index size | Supports FK
---|-------|------------|------------|----------
&nbsp;|=====TOTAL=====||0.00&nbsp;bytes |
1 |test_schema.t_with_invalid_index |i_invalid |0.00&nbsp;bytes |



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
<a name="postgres-checkup_H002"></a>
[Table of contents](#postgres-checkup_top)
# H002 Unused and redundant indexes #
100
## Observations ##
Data collected: 2019-03-14 05:46:15 +0000 UTC  
Current database: dbname  
Stats reset: 00:04:00 ago (2019-03-14 05:42:48 +0000 UTC)  
:warning: Statistics age is less than 30 days. Make decisions on index cleanup with caution!
### Never Used Indexes ###
The list is limited to 100 items.  

\#| Table | Index | runner-ed2dce3a-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Supports FK
--|-------|-------|----|-----|-----|-----
&nbsp;|=====TOTAL=====|||135.09&nbsp;MiB|222.81&nbsp;MiB|
1|t_with_redundant_index|i_redundant_2|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
2|t_red_fk_1|r_red_fk_1_id_idx|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
3|t_with_unused_index|i_unused|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
4|t_red_fk_1|r_red_fk_1_x_idx|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
5|t_with_redundant_index|i_redundant_1|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
6|t_red_fk_2|r_red_fk_2_fk_idx|0|21.45&nbsp;MiB|42.24&nbsp;MiB|
7|bloated|i_bloated|0|2.16&nbsp;MiB|3.47&nbsp;MiB|
8|t_76|i_76|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
9|t_26|i_26|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
10|t_25|i_25|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
11|t_86|i_86|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
12|t_40|i_40|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
13|t_3|i_3|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
14|t_46|i_46|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
15|t_17|i_17|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
16|t_99|i_99|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
17|t_59|i_59|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
18|t_32|i_32|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
19|t_27|i_27|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
20|t_94|i_94|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
21|t_36|i_36|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
22|t_30|i_30|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
23|t_18|i_18|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
24|t_22|i_22|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
25|t_10|i_10|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
26|t_39|i_39|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
27|t_68|i_68|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
28|t_50|i_50|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
29|t_101|i_101|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
30|t_61|i_61|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
31|t_74|i_74|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
32|t_37|i_37|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
33|t_33|i_33|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
34|t_35|i_35|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
35|t_53|i_53|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
36|t_97|i_97|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
37|t_87|i_87|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
38|t_7|i_7|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
39|t_104|i_104|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
40|t_92|i_92|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
41|t_8|i_8|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
42|t_5|i_5|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
43|t_107|i_107|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
44|t_103|i_103|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
45|t_29|i_29|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
46|t_84|i_84|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
47|t_4|i_4|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
48|t_2|i_2|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
49|t_85|i_85|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
50|t_31|i_31|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
51|t_51|i_51|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
52|t_72|i_72|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
53|t_11|i_11|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
54|t_88|i_88|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
55|t_48|i_48|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
56|t_13|i_13|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
57|t_34|i_34|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
58|t_102|i_102|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
59|t_49|i_49|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
60|t_90|i_90|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
61|t_81|i_81|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
62|t_55|i_55|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
63|t_89|i_89|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
64|t_77|i_77|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
65|t_64|i_64|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
66|t_42|i_42|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
67|t_71|i_71|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
68|t_75|i_75|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
69|t_16|i_16|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
70|t_95|i_95|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
71|t_6|i_6|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
72|t_52|i_52|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
73|t_41|i_41|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
74|t_15|i_15|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
75|t_44|i_44|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
76|t_96|i_96|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
77|t_91|i_91|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
78|t_58|i_58|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
79|t_78|i_78|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
80|t_93|i_93|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
81|t_100|i_100|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
82|t_20|i_20|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
83|t_28|i_28|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
84|t_12|i_12|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
85|t_69|i_69|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
86|t_1|i_1|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
87|t_9|i_9|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
88|t_79|i_79|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
89|t_14|i_14|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
90|t_43|i_43|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
91|t_80|i_80|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
92|t_57|i_57|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
93|t_106|i_106|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
94|t_82|i_82|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
95|t_70|i_70|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
96|t_56|i_56|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
97|t_21|i_21|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
98|t_105|i_105|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
99|t_65|i_65|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
100|t_62|i_62|0|40.00&nbsp;KiB|40.00&nbsp;KiB|

### Rarely Used Indexes ###
  

\#| Table | Index | runner-ed2dce3a-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Comment | Supports FK
--|-------|-------|-----|-----|-----|----|-----
&nbsp;|=====TOTAL=====|||42.86&nbsp;MiB|49.90&nbsp;MiB||
1|t_rar_q|t_rar_q_idx|scans: 1\/hour, writes: 1,744,690\/hour|42.86&nbsp;MiB|49.90&nbsp;MiB|Low Scans, High Writes|

### Redundant indexes ###
  

\#| Table | Index | Redundant to |runner-ed2dce3a-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Supports FK
--|-------|-------|--------------|--|-----|-----|-----
&nbsp;|=====TOTAL=====||||107.23&nbsp;MiB|172.86&nbsp;MiB|
1|t_with_redundant_index|i_redundant_1|i_redundant_2<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
2|t_with_redundant_index|i_redundant_2|i_redundant_1<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
3|t_red_fk_1|t_red_fk_1_pkey|r_red_fk_1_x_idx<br/>r_red_fk_1_id_idx<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
4|t_red_fk_1|r_red_fk_1_id_idx|r_red_fk_1_x_idx<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
5|t_red_fk_1|r_red_fk_1_x_idx|r_red_fk_1_id_idx<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes



## Conclusions ##


## Recommendations ##

#### "DO" database migration code ####
```
DROP INDEX CONCURRENTLY i_bloated; -- 2208 kB, Never Used Indexes, table bloated
DROP INDEX CONCURRENTLY i_1; -- 40 kB, Never Used Indexes, table t_1
DROP INDEX CONCURRENTLY i_10; -- 40 kB, Never Used Indexes, table t_10
DROP INDEX CONCURRENTLY i_100; -- 40 kB, Never Used Indexes, table t_100
DROP INDEX CONCURRENTLY i_101; -- 40 kB, Never Used Indexes, table t_101
DROP INDEX CONCURRENTLY i_102; -- 40 kB, Never Used Indexes, table t_102
DROP INDEX CONCURRENTLY i_103; -- 40 kB, Never Used Indexes, table t_103
DROP INDEX CONCURRENTLY i_104; -- 40 kB, Never Used Indexes, table t_104
DROP INDEX CONCURRENTLY i_105; -- 40 kB, Never Used Indexes, table t_105
DROP INDEX CONCURRENTLY i_106; -- 40 kB, Never Used Indexes, table t_106
DROP INDEX CONCURRENTLY i_107; -- 40 kB, Never Used Indexes, table t_107
DROP INDEX CONCURRENTLY i_108; -- 40 kB, Never Used Indexes, table t_108
DROP INDEX CONCURRENTLY i_109; -- 40 kB, Never Used Indexes, table t_109
DROP INDEX CONCURRENTLY i_11; -- 40 kB, Never Used Indexes, table t_11
DROP INDEX CONCURRENTLY i_12; -- 40 kB, Never Used Indexes, table t_12
DROP INDEX CONCURRENTLY i_13; -- 40 kB, Never Used Indexes, table t_13
DROP INDEX CONCURRENTLY i_14; -- 40 kB, Never Used Indexes, table t_14
DROP INDEX CONCURRENTLY i_15; -- 40 kB, Never Used Indexes, table t_15
DROP INDEX CONCURRENTLY i_16; -- 40 kB, Never Used Indexes, table t_16
DROP INDEX CONCURRENTLY i_17; -- 40 kB, Never Used Indexes, table t_17
DROP INDEX CONCURRENTLY i_18; -- 40 kB, Never Used Indexes, table t_18
DROP INDEX CONCURRENTLY i_19; -- 40 kB, Never Used Indexes, table t_19
DROP INDEX CONCURRENTLY i_2; -- 40 kB, Never Used Indexes, table t_2
DROP INDEX CONCURRENTLY i_20; -- 40 kB, Never Used Indexes, table t_20
DROP INDEX CONCURRENTLY i_21; -- 40 kB, Never Used Indexes, table t_21
DROP INDEX CONCURRENTLY i_22; -- 40 kB, Never Used Indexes, table t_22
DROP INDEX CONCURRENTLY i_23; -- 40 kB, Never Used Indexes, table t_23
DROP INDEX CONCURRENTLY i_24; -- 40 kB, Never Used Indexes, table t_24
DROP INDEX CONCURRENTLY i_25; -- 40 kB, Never Used Indexes, table t_25
DROP INDEX CONCURRENTLY i_26; -- 40 kB, Never Used Indexes, table t_26
DROP INDEX CONCURRENTLY i_27; -- 40 kB, Never Used Indexes, table t_27
DROP INDEX CONCURRENTLY i_28; -- 40 kB, Never Used Indexes, table t_28
DROP INDEX CONCURRENTLY i_29; -- 40 kB, Never Used Indexes, table t_29
DROP INDEX CONCURRENTLY i_3; -- 40 kB, Never Used Indexes, table t_3
DROP INDEX CONCURRENTLY i_30; -- 40 kB, Never Used Indexes, table t_30
DROP INDEX CONCURRENTLY i_31; -- 40 kB, Never Used Indexes, table t_31
DROP INDEX CONCURRENTLY i_32; -- 40 kB, Never Used Indexes, table t_32
DROP INDEX CONCURRENTLY i_33; -- 40 kB, Never Used Indexes, table t_33
DROP INDEX CONCURRENTLY i_34; -- 40 kB, Never Used Indexes, table t_34
DROP INDEX CONCURRENTLY i_35; -- 40 kB, Never Used Indexes, table t_35
DROP INDEX CONCURRENTLY i_36; -- 40 kB, Never Used Indexes, table t_36
DROP INDEX CONCURRENTLY i_37; -- 40 kB, Never Used Indexes, table t_37
DROP INDEX CONCURRENTLY i_38; -- 40 kB, Never Used Indexes, table t_38
DROP INDEX CONCURRENTLY i_39; -- 40 kB, Never Used Indexes, table t_39
DROP INDEX CONCURRENTLY i_4; -- 40 kB, Never Used Indexes, table t_4
DROP INDEX CONCURRENTLY i_40; -- 40 kB, Never Used Indexes, table t_40
DROP INDEX CONCURRENTLY i_41; -- 40 kB, Never Used Indexes, table t_41
DROP INDEX CONCURRENTLY i_42; -- 40 kB, Never Used Indexes, table t_42
DROP INDEX CONCURRENTLY i_43; -- 40 kB, Never Used Indexes, table t_43
DROP INDEX CONCURRENTLY i_44; -- 40 kB, Never Used Indexes, table t_44
DROP INDEX CONCURRENTLY i_45; -- 40 kB, Never Used Indexes, table t_45
DROP INDEX CONCURRENTLY i_46; -- 40 kB, Never Used Indexes, table t_46
DROP INDEX CONCURRENTLY i_47; -- 40 kB, Never Used Indexes, table t_47
DROP INDEX CONCURRENTLY i_48; -- 40 kB, Never Used Indexes, table t_48
DROP INDEX CONCURRENTLY i_49; -- 40 kB, Never Used Indexes, table t_49
DROP INDEX CONCURRENTLY i_5; -- 40 kB, Never Used Indexes, table t_5
DROP INDEX CONCURRENTLY i_50; -- 40 kB, Never Used Indexes, table t_50
DROP INDEX CONCURRENTLY i_51; -- 40 kB, Never Used Indexes, table t_51
DROP INDEX CONCURRENTLY i_52; -- 40 kB, Never Used Indexes, table t_52
DROP INDEX CONCURRENTLY i_53; -- 40 kB, Never Used Indexes, table t_53
DROP INDEX CONCURRENTLY i_54; -- 40 kB, Never Used Indexes, table t_54
DROP INDEX CONCURRENTLY i_55; -- 40 kB, Never Used Indexes, table t_55
DROP INDEX CONCURRENTLY i_56; -- 40 kB, Never Used Indexes, table t_56
DROP INDEX CONCURRENTLY i_57; -- 40 kB, Never Used Indexes, table t_57
DROP INDEX CONCURRENTLY i_58; -- 40 kB, Never Used Indexes, table t_58
DROP INDEX CONCURRENTLY i_59; -- 40 kB, Never Used Indexes, table t_59
DROP INDEX CONCURRENTLY i_6; -- 40 kB, Never Used Indexes, table t_6
DROP INDEX CONCURRENTLY i_60; -- 40 kB, Never Used Indexes, table t_60
DROP INDEX CONCURRENTLY i_61; -- 40 kB, Never Used Indexes, table t_61
DROP INDEX CONCURRENTLY i_62; -- 40 kB, Never Used Indexes, table t_62
DROP INDEX CONCURRENTLY i_63; -- 40 kB, Never Used Indexes, table t_63
DROP INDEX CONCURRENTLY i_64; -- 40 kB, Never Used Indexes, table t_64
DROP INDEX CONCURRENTLY i_65; -- 40 kB, Never Used Indexes, table t_65
DROP INDEX CONCURRENTLY i_66; -- 40 kB, Never Used Indexes, table t_66
DROP INDEX CONCURRENTLY i_67; -- 40 kB, Never Used Indexes, table t_67
DROP INDEX CONCURRENTLY i_68; -- 40 kB, Never Used Indexes, table t_68
DROP INDEX CONCURRENTLY i_69; -- 40 kB, Never Used Indexes, table t_69
DROP INDEX CONCURRENTLY i_7; -- 40 kB, Never Used Indexes, table t_7
DROP INDEX CONCURRENTLY i_70; -- 40 kB, Never Used Indexes, table t_70
DROP INDEX CONCURRENTLY i_71; -- 40 kB, Never Used Indexes, table t_71
DROP INDEX CONCURRENTLY i_72; -- 40 kB, Never Used Indexes, table t_72
DROP INDEX CONCURRENTLY i_73; -- 40 kB, Never Used Indexes, table t_73
DROP INDEX CONCURRENTLY i_74; -- 40 kB, Never Used Indexes, table t_74
DROP INDEX CONCURRENTLY i_75; -- 40 kB, Never Used Indexes, table t_75
DROP INDEX CONCURRENTLY i_76; -- 40 kB, Never Used Indexes, table t_76
DROP INDEX CONCURRENTLY i_77; -- 40 kB, Never Used Indexes, table t_77
DROP INDEX CONCURRENTLY i_78; -- 40 kB, Never Used Indexes, table t_78
DROP INDEX CONCURRENTLY i_79; -- 40 kB, Never Used Indexes, table t_79
DROP INDEX CONCURRENTLY i_8; -- 40 kB, Never Used Indexes, table t_8
DROP INDEX CONCURRENTLY i_80; -- 40 kB, Never Used Indexes, table t_80
DROP INDEX CONCURRENTLY i_81; -- 40 kB, Never Used Indexes, table t_81
DROP INDEX CONCURRENTLY i_82; -- 40 kB, Never Used Indexes, table t_82
DROP INDEX CONCURRENTLY i_83; -- 40 kB, Never Used Indexes, table t_83
DROP INDEX CONCURRENTLY i_84; -- 40 kB, Never Used Indexes, table t_84
DROP INDEX CONCURRENTLY i_85; -- 40 kB, Never Used Indexes, table t_85
DROP INDEX CONCURRENTLY i_86; -- 40 kB, Never Used Indexes, table t_86
DROP INDEX CONCURRENTLY i_87; -- 40 kB, Never Used Indexes, table t_87
DROP INDEX CONCURRENTLY i_88; -- 40 kB, Never Used Indexes, table t_88
DROP INDEX CONCURRENTLY i_89; -- 40 kB, Never Used Indexes, table t_89
DROP INDEX CONCURRENTLY i_9; -- 40 kB, Never Used Indexes, table t_9
DROP INDEX CONCURRENTLY i_90; -- 40 kB, Never Used Indexes, table t_90
DROP INDEX CONCURRENTLY i_91; -- 40 kB, Never Used Indexes, table t_91
DROP INDEX CONCURRENTLY i_92; -- 40 kB, Never Used Indexes, table t_92
DROP INDEX CONCURRENTLY i_93; -- 40 kB, Never Used Indexes, table t_93
DROP INDEX CONCURRENTLY i_94; -- 40 kB, Never Used Indexes, table t_94
DROP INDEX CONCURRENTLY i_95; -- 40 kB, Never Used Indexes, table t_95
DROP INDEX CONCURRENTLY i_96; -- 40 kB, Never Used Indexes, table t_96
DROP INDEX CONCURRENTLY i_97; -- 40 kB, Never Used Indexes, table t_97
DROP INDEX CONCURRENTLY i_98; -- 40 kB, Never Used Indexes, table t_98
DROP INDEX CONCURRENTLY i_99; -- 40 kB, Never Used Indexes, table t_99
DROP INDEX CONCURRENTLY r_red_fk_1_id_idx; -- 21 MB, Never Used Indexes, r_red_fk_1_x_idx, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_1_x_idx; -- 21 MB, Never Used Indexes, r_red_fk_1_id_idx, table t_red_fk_1
DROP INDEX CONCURRENTLY t_red_fk_1_pkey; -- 21 MB, r_red_fk_1_id_idx, r_red_fk_1_x_idx, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_2_fk_idx; -- 21 MB, Never Used Indexes, table t_red_fk_2
DROP INDEX CONCURRENTLY i_redundant_1; -- 21 MB, i_redundant_2, Never Used Indexes, table t_with_redundant_index
DROP INDEX CONCURRENTLY i_redundant_2; -- 21 MB, Never Used Indexes, i_redundant_1, table t_with_redundant_index
DROP INDEX CONCURRENTLY i_unused; -- 21 MB, Never Used Indexes, table t_with_unused_index

```

#### "UNDO" database migration code ####
```
CREATE INDEX CONCURRENTLY i_bloated ON public.bloated USING btree (i); -- table bloated
CREATE INDEX CONCURRENTLY i_1 ON public.t_1 USING btree (i); -- table t_1
CREATE INDEX CONCURRENTLY i_10 ON public.t_10 USING btree (i); -- table t_10
CREATE INDEX CONCURRENTLY i_100 ON public.t_100 USING btree (i); -- table t_100
CREATE INDEX CONCURRENTLY i_101 ON public.t_101 USING btree (i); -- table t_101
CREATE INDEX CONCURRENTLY i_102 ON public.t_102 USING btree (i); -- table t_102
CREATE INDEX CONCURRENTLY i_103 ON public.t_103 USING btree (i); -- table t_103
CREATE INDEX CONCURRENTLY i_104 ON public.t_104 USING btree (i); -- table t_104
CREATE INDEX CONCURRENTLY i_105 ON public.t_105 USING btree (i); -- table t_105
CREATE INDEX CONCURRENTLY i_106 ON public.t_106 USING btree (i); -- table t_106
CREATE INDEX CONCURRENTLY i_107 ON public.t_107 USING btree (i); -- table t_107
CREATE INDEX CONCURRENTLY i_108 ON public.t_108 USING btree (i); -- table t_108
CREATE INDEX CONCURRENTLY i_109 ON public.t_109 USING btree (i); -- table t_109
CREATE INDEX CONCURRENTLY i_11 ON public.t_11 USING btree (i); -- table t_11
CREATE INDEX CONCURRENTLY i_12 ON public.t_12 USING btree (i); -- table t_12
CREATE INDEX CONCURRENTLY i_13 ON public.t_13 USING btree (i); -- table t_13
CREATE INDEX CONCURRENTLY i_14 ON public.t_14 USING btree (i); -- table t_14
CREATE INDEX CONCURRENTLY i_15 ON public.t_15 USING btree (i); -- table t_15
CREATE INDEX CONCURRENTLY i_16 ON public.t_16 USING btree (i); -- table t_16
CREATE INDEX CONCURRENTLY i_17 ON public.t_17 USING btree (i); -- table t_17
CREATE INDEX CONCURRENTLY i_18 ON public.t_18 USING btree (i); -- table t_18
CREATE INDEX CONCURRENTLY i_19 ON public.t_19 USING btree (i); -- table t_19
CREATE INDEX CONCURRENTLY i_2 ON public.t_2 USING btree (i); -- table t_2
CREATE INDEX CONCURRENTLY i_20 ON public.t_20 USING btree (i); -- table t_20
CREATE INDEX CONCURRENTLY i_21 ON public.t_21 USING btree (i); -- table t_21
CREATE INDEX CONCURRENTLY i_22 ON public.t_22 USING btree (i); -- table t_22
CREATE INDEX CONCURRENTLY i_23 ON public.t_23 USING btree (i); -- table t_23
CREATE INDEX CONCURRENTLY i_24 ON public.t_24 USING btree (i); -- table t_24
CREATE INDEX CONCURRENTLY i_25 ON public.t_25 USING btree (i); -- table t_25
CREATE INDEX CONCURRENTLY i_26 ON public.t_26 USING btree (i); -- table t_26
CREATE INDEX CONCURRENTLY i_27 ON public.t_27 USING btree (i); -- table t_27
CREATE INDEX CONCURRENTLY i_28 ON public.t_28 USING btree (i); -- table t_28
CREATE INDEX CONCURRENTLY i_29 ON public.t_29 USING btree (i); -- table t_29
CREATE INDEX CONCURRENTLY i_3 ON public.t_3 USING btree (i); -- table t_3
CREATE INDEX CONCURRENTLY i_30 ON public.t_30 USING btree (i); -- table t_30
CREATE INDEX CONCURRENTLY i_31 ON public.t_31 USING btree (i); -- table t_31
CREATE INDEX CONCURRENTLY i_32 ON public.t_32 USING btree (i); -- table t_32
CREATE INDEX CONCURRENTLY i_33 ON public.t_33 USING btree (i); -- table t_33
CREATE INDEX CONCURRENTLY i_34 ON public.t_34 USING btree (i); -- table t_34
CREATE INDEX CONCURRENTLY i_35 ON public.t_35 USING btree (i); -- table t_35
CREATE INDEX CONCURRENTLY i_36 ON public.t_36 USING btree (i); -- table t_36
CREATE INDEX CONCURRENTLY i_37 ON public.t_37 USING btree (i); -- table t_37
CREATE INDEX CONCURRENTLY i_38 ON public.t_38 USING btree (i); -- table t_38
CREATE INDEX CONCURRENTLY i_39 ON public.t_39 USING btree (i); -- table t_39
CREATE INDEX CONCURRENTLY i_4 ON public.t_4 USING btree (i); -- table t_4
CREATE INDEX CONCURRENTLY i_40 ON public.t_40 USING btree (i); -- table t_40
CREATE INDEX CONCURRENTLY i_41 ON public.t_41 USING btree (i); -- table t_41
CREATE INDEX CONCURRENTLY i_42 ON public.t_42 USING btree (i); -- table t_42
CREATE INDEX CONCURRENTLY i_43 ON public.t_43 USING btree (i); -- table t_43
CREATE INDEX CONCURRENTLY i_44 ON public.t_44 USING btree (i); -- table t_44
CREATE INDEX CONCURRENTLY i_45 ON public.t_45 USING btree (i); -- table t_45
CREATE INDEX CONCURRENTLY i_46 ON public.t_46 USING btree (i); -- table t_46
CREATE INDEX CONCURRENTLY i_47 ON public.t_47 USING btree (i); -- table t_47
CREATE INDEX CONCURRENTLY i_48 ON public.t_48 USING btree (i); -- table t_48
CREATE INDEX CONCURRENTLY i_49 ON public.t_49 USING btree (i); -- table t_49
CREATE INDEX CONCURRENTLY i_5 ON public.t_5 USING btree (i); -- table t_5
CREATE INDEX CONCURRENTLY i_50 ON public.t_50 USING btree (i); -- table t_50
CREATE INDEX CONCURRENTLY i_51 ON public.t_51 USING btree (i); -- table t_51
CREATE INDEX CONCURRENTLY i_52 ON public.t_52 USING btree (i); -- table t_52
CREATE INDEX CONCURRENTLY i_53 ON public.t_53 USING btree (i); -- table t_53
CREATE INDEX CONCURRENTLY i_54 ON public.t_54 USING btree (i); -- table t_54
CREATE INDEX CONCURRENTLY i_55 ON public.t_55 USING btree (i); -- table t_55
CREATE INDEX CONCURRENTLY i_56 ON public.t_56 USING btree (i); -- table t_56
CREATE INDEX CONCURRENTLY i_57 ON public.t_57 USING btree (i); -- table t_57
CREATE INDEX CONCURRENTLY i_58 ON public.t_58 USING btree (i); -- table t_58
CREATE INDEX CONCURRENTLY i_59 ON public.t_59 USING btree (i); -- table t_59
CREATE INDEX CONCURRENTLY i_6 ON public.t_6 USING btree (i); -- table t_6
CREATE INDEX CONCURRENTLY i_60 ON public.t_60 USING btree (i); -- table t_60
CREATE INDEX CONCURRENTLY i_61 ON public.t_61 USING btree (i); -- table t_61
CREATE INDEX CONCURRENTLY i_62 ON public.t_62 USING btree (i); -- table t_62
CREATE INDEX CONCURRENTLY i_63 ON public.t_63 USING btree (i); -- table t_63
CREATE INDEX CONCURRENTLY i_64 ON public.t_64 USING btree (i); -- table t_64
CREATE INDEX CONCURRENTLY i_65 ON public.t_65 USING btree (i); -- table t_65
CREATE INDEX CONCURRENTLY i_66 ON public.t_66 USING btree (i); -- table t_66
CREATE INDEX CONCURRENTLY i_67 ON public.t_67 USING btree (i); -- table t_67
CREATE INDEX CONCURRENTLY i_68 ON public.t_68 USING btree (i); -- table t_68
CREATE INDEX CONCURRENTLY i_69 ON public.t_69 USING btree (i); -- table t_69
CREATE INDEX CONCURRENTLY i_7 ON public.t_7 USING btree (i); -- table t_7
CREATE INDEX CONCURRENTLY i_70 ON public.t_70 USING btree (i); -- table t_70
CREATE INDEX CONCURRENTLY i_71 ON public.t_71 USING btree (i); -- table t_71
CREATE INDEX CONCURRENTLY i_72 ON public.t_72 USING btree (i); -- table t_72
CREATE INDEX CONCURRENTLY i_73 ON public.t_73 USING btree (i); -- table t_73
CREATE INDEX CONCURRENTLY i_74 ON public.t_74 USING btree (i); -- table t_74
CREATE INDEX CONCURRENTLY i_75 ON public.t_75 USING btree (i); -- table t_75
CREATE INDEX CONCURRENTLY i_76 ON public.t_76 USING btree (i); -- table t_76
CREATE INDEX CONCURRENTLY i_77 ON public.t_77 USING btree (i); -- table t_77
CREATE INDEX CONCURRENTLY i_78 ON public.t_78 USING btree (i); -- table t_78
CREATE INDEX CONCURRENTLY i_79 ON public.t_79 USING btree (i); -- table t_79
CREATE INDEX CONCURRENTLY i_8 ON public.t_8 USING btree (i); -- table t_8
CREATE INDEX CONCURRENTLY i_80 ON public.t_80 USING btree (i); -- table t_80
CREATE INDEX CONCURRENTLY i_81 ON public.t_81 USING btree (i); -- table t_81
CREATE INDEX CONCURRENTLY i_82 ON public.t_82 USING btree (i); -- table t_82
CREATE INDEX CONCURRENTLY i_83 ON public.t_83 USING btree (i); -- table t_83
CREATE INDEX CONCURRENTLY i_84 ON public.t_84 USING btree (i); -- table t_84
CREATE INDEX CONCURRENTLY i_85 ON public.t_85 USING btree (i); -- table t_85
CREATE INDEX CONCURRENTLY i_86 ON public.t_86 USING btree (i); -- table t_86
CREATE INDEX CONCURRENTLY i_87 ON public.t_87 USING btree (i); -- table t_87
CREATE INDEX CONCURRENTLY i_88 ON public.t_88 USING btree (i); -- table t_88
CREATE INDEX CONCURRENTLY i_89 ON public.t_89 USING btree (i); -- table t_89
CREATE INDEX CONCURRENTLY i_9 ON public.t_9 USING btree (i); -- table t_9
CREATE INDEX CONCURRENTLY i_90 ON public.t_90 USING btree (i); -- table t_90
CREATE INDEX CONCURRENTLY i_91 ON public.t_91 USING btree (i); -- table t_91
CREATE INDEX CONCURRENTLY i_92 ON public.t_92 USING btree (i); -- table t_92
CREATE INDEX CONCURRENTLY i_93 ON public.t_93 USING btree (i); -- table t_93
CREATE INDEX CONCURRENTLY i_94 ON public.t_94 USING btree (i); -- table t_94
CREATE INDEX CONCURRENTLY i_95 ON public.t_95 USING btree (i); -- table t_95
CREATE INDEX CONCURRENTLY i_96 ON public.t_96 USING btree (i); -- table t_96
CREATE INDEX CONCURRENTLY i_97 ON public.t_97 USING btree (i); -- table t_97
CREATE INDEX CONCURRENTLY i_98 ON public.t_98 USING btree (i); -- table t_98
CREATE INDEX CONCURRENTLY i_99 ON public.t_99 USING btree (i); -- table t_99
CREATE INDEX CONCURRENTLY r_red_fk_1_id_idx ON public.t_red_fk_1 USING btree (id); -- table t_red_fk_1
CREATE INDEX CONCURRENTLY r_red_fk_1_x_idx ON public.t_red_fk_1 USING btree (id); -- table t_red_fk_1
CREATE UNIQUE INDEX t_red_fk_1_pkey ON public.t_red_fk_1 USING btree (id); -- table t_red_fk_1
CREATE INDEX CONCURRENTLY r_red_fk_2_fk_idx ON public.t_red_fk_2 USING btree (r_t1_id); -- table t_red_fk_2
CREATE INDEX CONCURRENTLY i_redundant_1 ON public.t_with_redundant_index USING btree (i); -- table t_with_redundant_index
CREATE INDEX CONCURRENTLY i_redundant_2 ON public.t_with_redundant_index USING btree (i); -- table t_with_redundant_index
CREATE INDEX CONCURRENTLY i_unused ON public.t_with_unused_index USING btree (i); -- table t_with_unused_index

```
---
<a name="postgres-checkup_H003"></a>
[Table of contents](#postgres-checkup_top)
# H003 Non indexed foreign keys (or with bad indexes) #

## Observations ##
Data collected: 2019-03-14 05:46:16 +0000 UTC  
Current database: dbname  

### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###


  

Num | Schema name | Table name | FK name | Issue | Table mb | writes | Table scans | Parent name | Parent mb | Parent writes | Cols list | Indexdef
----|-------------|------------|---------|-------|----------|--------|-------------|-------------|-----------|---------------|-----------|----------
1 |public |t_fk_2 |fk_t2_t1 |no index |42 |1000000 |1 |t_fk_1 |35 |1000001 |[t1_id] |<no value>




## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K001"></a>
[Table of contents](#postgres-checkup_top)
# K001 Globally aggregated query metrics

## Observations ##
Data collected: 2019-03-14 05:46:16 +0000 UTC  
Current database: dbname  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Start: 2019-03-14T05:45:40.6772+00:00  
End: 2019-03-14T05:46:16.812222+00:00  
Period seconds: 36.13502  
Period age: 00:00:36.135022  

Error (calls): 2.00 (25.00%)  
Error (total time): 41.78 (17.48%)

Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------
8<br/>0.22/sec<br/>1.00/call<br/>100.00% |238.97&nbsp;ms<br/>6ms/sec<br/>29ms/call<br/>100.00% |8<br/>0.22/sec<br/>1.00/call<br/>100.00% |211,771&nbsp;blks<br/>5.87K&nbsp;blks/sec<br/>26.48K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K002"></a>
[Table of contents](#postgres-checkup_top)
# K002 Workload type ("first word" analysis)

## Observations ##
Data collected: 2019-03-14 05:46:16 +0000 UTC  
Current database: dbname  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Start: 2019-03-14T05:45:40.6772+00:00  
End: 2019-03-14T05:46:16.812222+00:00  
Period seconds: 36.13502  
Period age: 00:00:36.135022  

Error (calls): 2.00 (25.00%)  
Error (total time): 41.78 (17.48%)

\# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|------- 
1 |with |8<br/>0.22/sec<br/>1.00/call<br/>100.00% |238.97&nbsp;ms<br/>6ms/sec<br/>29ms/call<br/>100.00% |8<br/>0.22/sec<br/>1.00/call<br/>100.00% |211,771&nbsp;blks<br/>5.87K&nbsp;blks/sec<br/>26.48K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
2 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
3 |update |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
4 |vacuum |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
5 |delete |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
6 |alter |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
7 |select |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
8 |insert |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K003"></a>
[Table of contents](#postgres-checkup_top)
# K003 Top-50 queries by total_time

## Observations ##
Data collected: 2019-03-14 05:46:16 +0000 UTC  
Current database: dbname  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Start: 2019-03-14T05:45:40.6772+00:00  
End: 2019-03-14T05:46:16.812222+00:00  
Period seconds: 36.13502  
Period age: 00:00:36.135022  

Error (calls): 2.00 (25.00%)  
Error (total time): 41.78 (17.48%)

  

\# | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |Query
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------
1 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |128.98&nbsp;ms<br/>3ms/sec<br/>128ms/call<br/>53.97% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |189,417&nbsp;blks<br/>5.25K&nbsp;blks/sec<br/>189.42K&nbsp;blks/call<br/>89.44% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;overrided_tables&nbsp;as&nbsp;(&nbsp;select&nbsp;pc.oid&nbsp;as&nbsp;table_id,&nbsp;pn.nspname&nbsp;as&nbsp;scheme_name,&nbsp;pc.relname&nbsp;as&nbsp;table_name,&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;from&nbsp;pg_class&nbsp;pc&nbsp;join&nbsp;pg_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;),&nbsp;step1&nbsp;as&nbsp;(&nbsp;select&nbsp;i.tblid,&nbsp;i.nspname&nbsp;as&nbsp;schema_name,&nbsp;i.tblname&nbsp;as&nbsp;table_name,&nbsp;i.idxname&nbsp;as&nbsp;index_name,&nbsp;i.reltuples,&nbsp;i.relpages,&nbsp;i.relam,&nbsp;a.attrelid&nbsp;AS&nbsp;table_oid,&nbsp;current_setting($2)::numeric&nbsp;AS&nbsp;bs,&nbsp;fillfactor,&nbsp;&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$3&nbsp;then&nbsp;$4&nbsp;else&nbsp;$5&nbsp;end&nbsp;as&nbsp;maxalign,&nbsp;/*&nbsp;per&nbsp;page&nbsp;header,&nbsp;fixed&nbsp;size:&nbsp;20&nbsp;for&nbsp;7.X,&nbsp;24&nbsp;for&nbsp;others&nbsp;*/&nbsp;$6&nbsp;AS&nbsp;pagehdr,&nbsp;/*&nbsp;per&nbsp;page&nbsp;btree&nbsp;opaque&nbsp;data&nbsp;*/&nbsp;$7&nbsp;AS&nbsp;pageopqdata,&nbsp;/*&nbsp;per&nbsp;tuple&nbsp;header:&nbsp;add&nbsp;IndexAttributeBitMapData&nbsp;if&nbsp;some&nbsp;cols&nbsp;are&nbsp;null-able&nbsp;*/&nbsp;case&nbsp;when&nbsp;max(coalesce(s.null_frac,$8))&nbsp;=&nbsp;$9&nbsp;then&nbsp;$10&nbsp;&nbsp;else&nbsp;$11&nbsp;+&nbsp;((&nbsp;$12&nbsp;+&nbsp;$13&nbsp;-&nbsp;$14&nbsp;)&nbsp;/&nbsp;$15)&nbsp;&nbsp;end&nbsp;as&nbsp;index_tuple_hdr_bm,&nbsp;/*&nbsp;data&nbsp;len:&nbsp;we&nbsp;remove&nbsp;null&nbsp;values&nbsp;save&nbsp;space&nbsp;using&nbsp;it&nbsp;fractionnal&nbsp;part&nbsp;from&nbsp;stats&nbsp;*/&nbsp;sum(($16&nbsp;-&nbsp;coalesce(s.null_frac,&nbsp;$17))&nbsp;*&nbsp;coalesce(s.avg_width,&nbsp;$18))&nbsp;as&nbsp;nulldatawidth,&nbsp;max(case&nbsp;when&nbsp;a.atttypid&nbsp;=&nbsp;$19::regtype&nbsp;then&nbsp;$20&nbsp;else&nbsp;$21&nbsp;end)&nbsp;>&nbsp;$22&nbsp;as&nbsp;is_na&nbsp;from&nbsp;pg_attribute&nbsp;as&nbsp;a&nbsp;join&nbsp;(&nbsp;select&nbsp;tbl.oid&nbsp;tblid,&nbsp;nspname,&nbsp;tbl.relname&nbsp;AS&nbsp;tblname,&nbsp;idx.relname&nbsp;AS&nbsp;idxname,&nbsp;idx.reltuples,&nbsp;idx.relpages,&nbsp;idx.relam,&nbsp;indrelid,&nbsp;indexrelid,&nbsp;indkey::smallint[]&nbsp;AS&nbsp;attnum,&nbsp;coalesce(substring(array_to_string(idx.reloptions,&nbsp;$23)&nbsp;from&nbsp;$24)::smallint,&nbsp;$25)&nbsp;as&nbsp;fillfactor&nbsp;from&nbsp;pg_index&nbsp;join&nbsp;pg_class&nbsp;idx&nbsp;on&nbsp;idx.oid&nbsp;=&nbsp;pg_index.indexrelid&nbsp;join&nbsp;pg_class&nbsp;tbl&nbsp;on&nbsp;tbl.oid&nbsp;=&nbsp;pg_index.indrelid&nbsp;join&nbsp;pg_namespace&nbsp;on&nbsp;pg_namespace.oid&nbsp;=&nbsp;idx.relnamespace&nbsp;where&nbsp;pg_index.indisvalid&nbsp;AND&nbsp;tbl.relkind&nbsp;=&nbsp;$26&nbsp;AND&nbsp;idx.relpages&nbsp;>&nbsp;$27&nbsp;)&nbsp;as&nbsp;i&nbsp;on&nbsp;a.attrelid&nbsp;=&nbsp;i.indexrelid&nbsp;join&nbsp;pg_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;s.schemaname&nbsp;=&nbsp;i.nspname&nbsp;and&nbsp;(&nbsp;(s.tablename&nbsp;=&nbsp;i.tblname&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;pg_catalog.pg_get_indexdef(a.attrelid,&nbsp;a.attnum,&nbsp;$28))&nbsp;&nbsp;OR&nbsp;(s.tablename&nbsp;=&nbsp;i.idxname&nbsp;AND&nbsp;s.attname&nbsp;=&nbsp;a.attname)&nbsp;&nbsp;)&nbsp;join&nbsp;pg_type&nbsp;as&nbsp;t&nbsp;on&nbsp;a.atttypid&nbsp;=&nbsp;t.oid&nbsp;where&nbsp;a.attnum&nbsp;>&nbsp;$29&nbsp;group...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/1.sql)
2 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |30.45&nbsp;ms<br/>0s/sec<br/>30ms/call<br/>12.74% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |24&nbsp;blks<br/>0.66&nbsp;blks/sec<br/>24.00&nbsp;blks/call<br/>0.01% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;s.*&nbsp;from&nbsp;pg_stat_database&nbsp;s&nbsp;where&nbsp;s.datname&nbsp;=&nbsp;current_database()&nbsp;)&nbsp;select&nbsp;$1&nbsp;as&nbsp;metric,&nbsp;version()&nbsp;as&nbsp;value&nbsp;union&nbsp;all&nbsp;select&nbsp;$2&nbsp;as&nbsp;metric,&nbsp;(select&nbsp;setting&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;=&nbsp;$3)&nbsp;as&nbsp;value&nbsp;union&nbsp;all&nbsp;select&nbsp;$4&nbsp;as&nbsp;metric,&nbsp;case&nbsp;when&nbsp;pg_is_in_recovery()&nbsp;then&nbsp;$5&nbsp;||&nbsp;$6&nbsp;||&nbsp;((((case&nbsp;when&nbsp;pg_last_wal_receive_lsn()&nbsp;=&nbsp;pg_last_wal_replay_lsn()&nbsp;then&nbsp;$7&nbsp;else&nbsp;extract&nbsp;($8&nbsp;from&nbsp;now()&nbsp;-&nbsp;pg_last_xact_replay_timestamp())&nbsp;end)::int)::text&nbsp;||&nbsp;$9)::interval)::text&nbsp;||&nbsp;$10&nbsp;||&nbsp;pg_is_wal_replay_paused()::text&nbsp;||&nbsp;$11&nbsp;else&nbsp;$12&nbsp;end&nbsp;as&nbsp;value&nbsp;union&nbsp;all&nbsp;(&nbsp;with&nbsp;repl_groups&nbsp;as&nbsp;(&nbsp;select&nbsp;sync_state,&nbsp;state,&nbsp;string_agg(host(client_addr),&nbsp;$13)&nbsp;as&nbsp;hosts&nbsp;from&nbsp;pg_stat_replication&nbsp;group&nbsp;by&nbsp;1,&nbsp;2&nbsp;)&nbsp;select&nbsp;$14,&nbsp;string_agg(sync_state&nbsp;||&nbsp;$15&nbsp;||&nbsp;state&nbsp;||&nbsp;$16&nbsp;||&nbsp;hosts,&nbsp;$17)&nbsp;from&nbsp;repl_groups&nbsp;)&nbsp;union&nbsp;all&nbsp;select&nbsp;$18,&nbsp;pg_postmaster_start_time()::timestamptz(0)::text&nbsp;union&nbsp;all&nbsp;select&nbsp;$19,&nbsp;(now()&nbsp;-&nbsp;pg_postmaster_start_time())::interval(0)::text&nbsp;union&nbsp;all&nbsp;select&nbsp;$20,&nbsp;(select&nbsp;(checkpoints_timed&nbsp;+&nbsp;checkpoints_req)::text&nbsp;from&nbsp;pg_stat_bgwriter)&nbsp;union&nbsp;all&nbsp;select&nbsp;$21,&nbsp;(&nbsp;select&nbsp;round($22&nbsp;*&nbsp;checkpoints_req::numeric&nbsp;/&nbsp;(nullif(checkpoints_timed&nbsp;+&nbsp;checkpoints_req,&nbsp;$23)),&nbsp;$24)::text&nbsp;||&nbsp;$25&nbsp;from&nbsp;pg_stat_bgwriter&nbsp;)&nbsp;union&nbsp;all&nbsp;select&nbsp;$26,&nbsp;(&nbsp;select&nbsp;round((nullif(buffers_checkpoint::numeric,&nbsp;$27)&nbsp;/&nbsp;(($28&nbsp;*&nbsp;$29&nbsp;/&nbsp;(current_setting($30)::numeric))&nbsp;*&nbsp;extract($31&nbsp;from&nbsp;now()&nbsp;-&nbsp;stats_reset)&nbsp;))::numeric,&nbsp;$32)::text&nbsp;from&nbsp;pg_stat_bgwriter&nbsp;)&nbsp;union&nbsp;all&nbsp;select&nbsp;repeat($33,&nbsp;$34),&nbsp;repeat($35,&nbsp;$36)&nbsp;union&nbsp;all&nbsp;select&nbsp;$37&nbsp;as&nbsp;metric,&nbsp;datname&nbsp;as&nbsp;value&nbsp;from&nbsp;data&nbsp;union&nbsp;all&nbsp;select&nbsp;$38,&nbsp;pg_size_pretty(pg_database_size(current_database()))&nbsp;union&nbsp;all&nbsp;select&nbsp;$39,&nbsp;stats_reset::timestamptz(0)::text&nbsp;from&nbsp;data&nbsp;union&nbsp;all&nbsp;select&nbsp;$40,&nbsp;(now()&nbsp;-&nbsp;stats_reset)::interval(0)::text&nbsp;from&nbsp;data&nbsp;union&nbsp;all&nbsp;select&nbsp;$41,&nbsp;(&nbsp;with&nbsp;exts&nbsp;as&nbsp;(&nbsp;select&nbsp;extname&nbsp;||&nbsp;$42&nbsp;||&nbsp;extversion&nbsp;e,&nbsp;($43&nbsp;+&nbsp;row_number()&nbsp;over&nbsp;(order&nbsp;by&nbsp;extname))&nbsp;/&nbsp;$44&nbsp;i&nbsp;from&nbsp;pg_extension&nbsp;),&nbsp;lines(l)&nbsp;as&nbsp;(&nbsp;select...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/2.sql)
3 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |21.75&nbsp;ms<br/>0s/sec<br/>21ms/call<br/>9.10% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |8,884&nbsp;blks<br/>245.86&nbsp;blks/sec<br/>8.89K&nbsp;blks/call<br/>4.20% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;fk_actions&nbsp;(&nbsp;code,&nbsp;action&nbsp;)&nbsp;as&nbsp;(&nbsp;values&nbsp;($1,&nbsp;$2),&nbsp;($3,&nbsp;$4),&nbsp;($5,&nbsp;$6),&nbsp;($7,&nbsp;$8),&nbsp;($9,&nbsp;$10)&nbsp;),&nbsp;fk_list&nbsp;as&nbsp;(&nbsp;select&nbsp;pg_constraint.oid&nbsp;as&nbsp;fkoid,&nbsp;conrelid,&nbsp;confrelid&nbsp;as&nbsp;parentid,&nbsp;conname,&nbsp;relname,&nbsp;nspname,&nbsp;fk_actions_update.action&nbsp;as&nbsp;update_action,&nbsp;fk_actions_delete.action&nbsp;as&nbsp;delete_action,&nbsp;conkey&nbsp;as&nbsp;key_cols&nbsp;from&nbsp;pg_constraint&nbsp;join&nbsp;pg_class&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;pg_class.oid&nbsp;join&nbsp;pg_namespace&nbsp;on&nbsp;pg_class.relnamespace&nbsp;=&nbsp;pg_namespace.oid&nbsp;join&nbsp;fk_actions&nbsp;as&nbsp;fk_actions_update&nbsp;on&nbsp;confupdtype&nbsp;=&nbsp;fk_actions_update.code&nbsp;join&nbsp;fk_actions&nbsp;as&nbsp;fk_actions_delete&nbsp;on&nbsp;confdeltype&nbsp;=&nbsp;fk_actions_delete.code&nbsp;where&nbsp;contype&nbsp;=&nbsp;$11&nbsp;),&nbsp;fk_attributes&nbsp;as&nbsp;(&nbsp;select&nbsp;fkoid,&nbsp;conrelid,&nbsp;attname,&nbsp;attnum&nbsp;from&nbsp;fk_list&nbsp;join&nbsp;pg_attribute&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;attrelid&nbsp;and&nbsp;attnum&nbsp;=&nbsp;any(key_cols)&nbsp;order&nbsp;by&nbsp;fkoid,&nbsp;attnum&nbsp;),&nbsp;fk_cols_list&nbsp;as&nbsp;(&nbsp;select&nbsp;fkoid,&nbsp;array_agg(attname)&nbsp;as&nbsp;cols_list&nbsp;from&nbsp;fk_attributes&nbsp;group&nbsp;by&nbsp;fkoid&nbsp;),&nbsp;index_list&nbsp;as&nbsp;(&nbsp;select&nbsp;indexrelid&nbsp;as&nbsp;indexid,&nbsp;pg_class.relname&nbsp;as&nbsp;indexname,&nbsp;indrelid,&nbsp;indkey,&nbsp;indpred&nbsp;is&nbsp;not&nbsp;null&nbsp;as&nbsp;has_predicate,&nbsp;pg_get_indexdef(indexrelid)&nbsp;as&nbsp;indexdef&nbsp;from&nbsp;pg_index&nbsp;join&nbsp;pg_class&nbsp;on&nbsp;indexrelid&nbsp;=&nbsp;pg_class.oid&nbsp;where&nbsp;indisvalid&nbsp;),&nbsp;fk_index_match&nbsp;as&nbsp;(&nbsp;select&nbsp;fk_list.*,&nbsp;indexid,&nbsp;indexname,&nbsp;indkey::int[]&nbsp;as&nbsp;indexatts,&nbsp;has_predicate,&nbsp;indexdef,&nbsp;array_length(key_cols,&nbsp;$12)&nbsp;as&nbsp;fk_colcount,&nbsp;array_length(indkey,$13)&nbsp;as&nbsp;index_colcount,&nbsp;round(pg_relation_size(conrelid)/($14^$15)::numeric)&nbsp;as&nbsp;table_mb,&nbsp;cols_list&nbsp;from&nbsp;fk_list&nbsp;join&nbsp;fk_cols_list&nbsp;using&nbsp;(fkoid)&nbsp;left&nbsp;join&nbsp;index_list&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;indrelid&nbsp;and&nbsp;(indkey::int2[])[$16:(array_length(key_cols,$17)&nbsp;-$18)]&nbsp;operator(pg_catalog.@>)&nbsp;key_cols&nbsp;),&nbsp;fk_perfect_match&nbsp;as&nbsp;(&nbsp;select&nbsp;fkoid&nbsp;from&nbsp;fk_index_match&nbsp;where&nbsp;(index_colcount&nbsp;-&nbsp;$19)&nbsp;<=&nbsp;fk_colcount&nbsp;and&nbsp;not&nbsp;has_predicate&nbsp;and&nbsp;indexdef&nbsp;like&nbsp;$20&nbsp;),&nbsp;fk_index_check&nbsp;as&nbsp;(&nbsp;select&nbsp;$21&nbsp;as&nbsp;issue,&nbsp;*,&nbsp;$22&nbsp;as&nbsp;issue_sort&nbsp;from&nbsp;fk_index_match&nbsp;where&nbsp;indexid&nbsp;is&nbsp;null&nbsp;union&nbsp;all&nbsp;select&nbsp;$23&nbsp;as&nbsp;issue,&nbsp;*,&nbsp;$24&nbsp;from&nbsp;fk_index_match&nbsp;where&nbsp;indexid&nbsp;i...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/3.sql)
4 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |18.50&nbsp;ms<br/>0s/sec<br/>18ms/call<br/>7.74% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |8,327&nbsp;blks<br/>230.44&nbsp;blks/sec<br/>8.33K&nbsp;blks/call<br/>3.93% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;fk_indexes&nbsp;as&nbsp;(&nbsp;select&nbsp;schemaname&nbsp;as&nbsp;schema_name,&nbsp;(indexrelid::regclass)::text&nbsp;as&nbsp;index_name,&nbsp;(relid::regclass)::text&nbsp;as&nbsp;table_name,&nbsp;(confrelid::regclass)::text&nbsp;as&nbsp;fk_table_ref,&nbsp;array_to_string(indclass,&nbsp;$1)&nbsp;as&nbsp;opclasses&nbsp;from&nbsp;pg_stat_user_indexes&nbsp;join&nbsp;pg_index&nbsp;using&nbsp;(indexrelid)&nbsp;left&nbsp;join&nbsp;pg_constraint&nbsp;on&nbsp;array_to_string(indkey,&nbsp;$2)&nbsp;=&nbsp;array_to_string(conkey,&nbsp;$3)&nbsp;and&nbsp;schemaname&nbsp;=&nbsp;(connamespace::regnamespace)::text&nbsp;and&nbsp;conrelid&nbsp;=&nbsp;relid&nbsp;and&nbsp;contype&nbsp;=&nbsp;$4&nbsp;where&nbsp;idx_scan&nbsp;=&nbsp;$5&nbsp;and&nbsp;indisunique&nbsp;is&nbsp;false&nbsp;and&nbsp;conkey&nbsp;is&nbsp;not&nbsp;null&nbsp;),&nbsp;table_scans&nbsp;as&nbsp;(&nbsp;select&nbsp;relid,&nbsp;tables.idx_scan&nbsp;+&nbsp;tables.seq_scan&nbsp;as&nbsp;all_scans,&nbsp;(&nbsp;tables.n_tup_ins&nbsp;+&nbsp;tables.n_tup_upd&nbsp;+&nbsp;tables.n_tup_del&nbsp;)&nbsp;as&nbsp;writes,&nbsp;pg_relation_size(relid)&nbsp;as&nbsp;table_size&nbsp;from&nbsp;pg_stat_user_tables&nbsp;as&nbsp;tables),&nbsp;all_writes&nbsp;as&nbsp;(&nbsp;select&nbsp;sum(writes)&nbsp;as&nbsp;total_writes&nbsp;from&nbsp;table_scans),&nbsp;indexes&nbsp;as&nbsp;(&nbsp;select&nbsp;idx_stat.relid,&nbsp;idx_stat.indexrelid,&nbsp;idx_stat.schemaname&nbsp;as&nbsp;schema_name,&nbsp;idx_stat.relname&nbsp;as&nbsp;table_name,&nbsp;idx_stat.indexrelname&nbsp;as&nbsp;index_name,&nbsp;quote_ident(idx_stat.schemaname)&nbsp;as&nbsp;formated_schema_name,&nbsp;quote_ident(idx_stat.indexrelname)&nbsp;as&nbsp;formated_index_name,&nbsp;quote_ident(idx_stat.relname)&nbsp;as&nbsp;formated_table_name,&nbsp;coalesce(nullif(quote_ident(idx_stat.schemaname),&nbsp;$6)&nbsp;||&nbsp;$7,&nbsp;$8)&nbsp;||&nbsp;quote_ident(idx_stat.relname)&nbsp;as&nbsp;formated_relation_name,&nbsp;idx_stat.idx_scan,&nbsp;pg_relation_size(idx_stat.indexrelid)&nbsp;as&nbsp;index_bytes,&nbsp;indexdef&nbsp;~*&nbsp;$9&nbsp;as&nbsp;idx_is_btree,&nbsp;pg_get_indexdef(pg_index.indexrelid)&nbsp;as&nbsp;index_def,&nbsp;array_to_string(pg_index.indclass,&nbsp;$10)&nbsp;as&nbsp;opclasses&nbsp;from&nbsp;pg_stat_user_indexes&nbsp;as&nbsp;idx_stat&nbsp;join&nbsp;pg_index&nbsp;using&nbsp;(indexrelid)&nbsp;join&nbsp;pg_indexes&nbsp;as&nbsp;indexes&nbsp;on&nbsp;idx_stat.schemaname&nbsp;=&nbsp;indexes.schemaname&nbsp;and&nbsp;idx_stat.relname&nbsp;=&nbsp;indexes.tablename&nbsp;and&nbsp;idx_stat.indexrelname&nbsp;=&nbsp;indexes.indexname&nbsp;where&nbsp;pg_index.indisunique&nbsp;=&nbsp;$11&nbsp;and&nbsp;pg_index.indisvalid&nbsp;=&nbsp;$12),&nbsp;index_ratios&nbsp;as&nbsp;(&nbsp;select&nbsp;i.indexrelid&nbsp;as&nbsp;index_id,&nbsp;i.schema_name,&nbsp;i.table_name,&nbsp;i.index_name,&nbsp;idx_scan,&nbsp;all_scans,&nbsp;round((&nbsp;case&nbsp;when&nbsp;all_scans&nbsp;=&nbsp;$13&nbsp;the...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/4.sql)
5 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |12.79&nbsp;ms<br/>0s/sec<br/>12ms/call<br/>5.35% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |16&nbsp;blks<br/>0.44&nbsp;blks/sec<br/>16.00&nbsp;blks/call<br/>0.01% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;timeouts&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(s.name,s&nbsp;)&nbsp;from&nbsp;pg_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;in&nbsp;($1,&nbsp;$2,&nbsp;$3)),&nbsp;locks&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(s.name,s&nbsp;)&nbsp;from&nbsp;pg_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;in&nbsp;($4,&nbsp;$5,&nbsp;$6,&nbsp;$7,&nbsp;$8,&nbsp;$9)),&nbsp;databases_stat&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;((now()&nbsp;-&nbsp;sd.stats_reset)::interval(0)::text)&nbsp;as&nbsp;stats_reset_age&nbsp;from&nbsp;pg_stat_database&nbsp;sd&nbsp;where&nbsp;datname&nbsp;in&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg_database&nbsp;WHERE&nbsp;datistemplate&nbsp;=&nbsp;$10)&nbsp;order&nbsp;by&nbsp;deadlocks&nbsp;desc&nbsp;limit&nbsp;$11),&nbsp;num_dbs_data&nbsp;as&nbsp;(&nbsp;select&nbsp;row_number()&nbsp;over&nbsp;()&nbsp;num,&nbsp;ds.*&nbsp;from&nbsp;databases_stat&nbsp;ds),&nbsp;dbs_data&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(sd.datname,&nbsp;sd)&nbsp;from&nbsp;num_dbs_data&nbsp;sd),&nbsp;db_specified_settings&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(dbs.database,&nbsp;dbs)&nbsp;from&nbsp;(select&nbsp;(select&nbsp;datname&nbsp;from&nbsp;pg_database&nbsp;where&nbsp;oid&nbsp;=&nbsp;pd.setdatabase)&nbsp;as&nbsp;database,&nbsp;*&nbsp;from&nbsp;pg_db_role_setting&nbsp;pd&nbsp;where&nbsp;setconfig::text&nbsp;~&nbsp;$12&nbsp;and&nbsp;setdatabase&nbsp;is&nbsp;not&nbsp;null&nbsp;and&nbsp;setdatabase&nbsp;<>&nbsp;$13&nbsp;)&nbsp;dbs),&nbsp;user_specified_settings&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(pr.rolname,&nbsp;pr)&nbsp;from&nbsp;pg_roles&nbsp;pr&nbsp;where&nbsp;rolconfig::text&nbsp;~&nbsp;$14)select&nbsp;json_build_object(&nbsp;$15,&nbsp;(select&nbsp;*&nbsp;from&nbsp;timeouts),&nbsp;$16,&nbsp;(select&nbsp;*&nbsp;from&nbsp;locks),&nbsp;$17,&nbsp;(select&nbsp;*&nbsp;from&nbsp;dbs_data),&nbsp;$18,&nbsp;(select&nbsp;*&nbsp;from&nbsp;db_specified_settings),&nbsp;$19,&nbsp;(select&nbsp;*&nbsp;from&nbsp;user_specified_settings)&nbsp;)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/5.sql)
6 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |12.38&nbsp;ms<br/>0s/sec<br/>12ms/call<br/>5.18% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |53&nbsp;blks<br/>1.47&nbsp;blks/sec<br/>53.00&nbsp;blks/call<br/>0.03% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;overrided_tables&nbsp;as&nbsp;(&nbsp;select&nbsp;pc.oid&nbsp;as&nbsp;table_id,&nbsp;pn.nspname&nbsp;as&nbsp;scheme_name,&nbsp;pc.relname&nbsp;as&nbsp;table_name,&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;from&nbsp;pg_class&nbsp;pc&nbsp;join&nbsp;pg_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1),&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;coalesce(nullif(schemaname&nbsp;||&nbsp;$2,&nbsp;$3),&nbsp;$4)&nbsp;||&nbsp;c.relname&nbsp;as&nbsp;"relation",&nbsp;c.relkind,&nbsp;now()&nbsp;-&nbsp;last_autovacuum&nbsp;as&nbsp;since_last_autovacuum,&nbsp;now()&nbsp;-&nbsp;last_vacuum&nbsp;as&nbsp;since_last_vacuum,&nbsp;autovacuum_count&nbsp;as&nbsp;av_count,&nbsp;vacuum_count&nbsp;as&nbsp;v_count,&nbsp;n_tup_ins,&nbsp;&nbsp;n_tup_upd,&nbsp;&nbsp;n_tup_del,&nbsp;reltuples::int8&nbsp;as&nbsp;pg_class_reltuples,&nbsp;n_live_tup,&nbsp;n_dead_tup,&nbsp;round((n_dead_tup::numeric&nbsp;*&nbsp;$5&nbsp;/&nbsp;nullif(n_dead_tup&nbsp;+&nbsp;n_live_tup,&nbsp;$6))::numeric,&nbsp;$7)&nbsp;as&nbsp;dead_ratio,&nbsp;case&nbsp;when&nbsp;ot.table_id&nbsp;is&nbsp;not&nbsp;null&nbsp;then&nbsp;$8&nbsp;else&nbsp;$9&nbsp;end&nbsp;as&nbsp;overrided_settings&nbsp;from&nbsp;pg_stat_all_tables&nbsp;join&nbsp;pg_class&nbsp;c&nbsp;on&nbsp;c.oid&nbsp;=&nbsp;relid&nbsp;left&nbsp;join&nbsp;overrided_tables&nbsp;ot&nbsp;on&nbsp;ot.table_id&nbsp;=&nbsp;c.oid&nbsp;where&nbsp;reltuples&nbsp;>&nbsp;$10&nbsp;order&nbsp;by&nbsp;13&nbsp;desc&nbsp;limit&nbsp;$11),&nbsp;num_dead_tuples&nbsp;as&nbsp;(&nbsp;select&nbsp;row_number()&nbsp;over&nbsp;()&nbsp;num,&nbsp;data.*&nbsp;from&nbsp;data),&nbsp;dead_tuples&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(num_dead_tuples."relation",&nbsp;num_dead_tuples)&nbsp;as&nbsp;json&nbsp;from&nbsp;num_dead_tuples),&nbsp;database_stat&nbsp;as&nbsp;(&nbsp;select&nbsp;row_to_json(dbstat)&nbsp;from&nbsp;(&nbsp;select&nbsp;sd.stats_reset::timestamptz(0),&nbsp;age(&nbsp;date_trunc($12,now()),&nbsp;date_trunc($13,sd.stats_reset)&nbsp;)&nbsp;as&nbsp;stats_age&nbsp;from&nbsp;pg_stat_database&nbsp;sd&nbsp;where&nbsp;datname&nbsp;=&nbsp;current_database()&nbsp;)&nbsp;dbstat)select&nbsp;json_build_object(&nbsp;$14,&nbsp;(select&nbsp;*&nbsp;from&nbsp;dead_tuples),&nbsp;$15,&nbsp;(select&nbsp;*&nbsp;from&nbsp;database_stat),&nbsp;$16,&nbsp;(select&nbsp;count($17)&nbsp;from&nbsp;data&nbsp;where&nbsp;overrided_settings&nbsp;=&nbsp;$18)&nbsp;)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/6.sql)
7 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |11.86&nbsp;ms<br/>0s/sec<br/>11ms/call<br/>4.96% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |5,044&nbsp;blks<br/>139.59&nbsp;blks/sec<br/>5.05K&nbsp;blks/call<br/>2.38% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;overrided_tables&nbsp;as&nbsp;(&nbsp;select&nbsp;pc.oid&nbsp;as&nbsp;table_id,&nbsp;pn.nspname&nbsp;as&nbsp;scheme_name,&nbsp;pc.relname&nbsp;as&nbsp;table_name,&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;from&nbsp;pg_class&nbsp;pc&nbsp;join&nbsp;pg_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;),&nbsp;step1&nbsp;as&nbsp;(&nbsp;select&nbsp;tbl.oid&nbsp;tblid,&nbsp;ns.nspname&nbsp;as&nbsp;schema_name,&nbsp;tbl.relname&nbsp;as&nbsp;table_name,&nbsp;tbl.reltuples,&nbsp;tbl.relpages&nbsp;as&nbsp;heappages,&nbsp;coalesce(toast.relpages,&nbsp;$2)&nbsp;as&nbsp;toastpages,&nbsp;coalesce(toast.reltuples,&nbsp;$3)&nbsp;as&nbsp;toasttuples,&nbsp;coalesce(substring(array_to_string(tbl.reloptions,&nbsp;$4)&nbsp;from&nbsp;$5&nbsp;for&nbsp;$6)::int2,&nbsp;$7)&nbsp;as&nbsp;fillfactor,&nbsp;current_setting($8)::numeric&nbsp;as&nbsp;bs,&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$9&nbsp;then&nbsp;$10&nbsp;else&nbsp;$11&nbsp;end&nbsp;as&nbsp;ma,&nbsp;&nbsp;$12&nbsp;as&nbsp;page_hdr,&nbsp;$13&nbsp;+&nbsp;case&nbsp;when&nbsp;max(coalesce(null_frac,&nbsp;$14))&nbsp;>&nbsp;$15&nbsp;then&nbsp;($16&nbsp;+&nbsp;count(*))&nbsp;/&nbsp;$17&nbsp;else&nbsp;$18::int&nbsp;end&nbsp;+&nbsp;case&nbsp;when&nbsp;tbl.relhasoids&nbsp;then&nbsp;$19&nbsp;else&nbsp;$20&nbsp;end&nbsp;as&nbsp;tpl_hdr_size,&nbsp;sum(($21&nbsp;-&nbsp;coalesce(s.null_frac,&nbsp;$22))&nbsp;*&nbsp;coalesce(s.avg_width,&nbsp;$23))&nbsp;as&nbsp;tpl_data_size,&nbsp;bool_or(att.atttypid&nbsp;=&nbsp;$24::regtype)&nbsp;or&nbsp;count(att.attname)&nbsp;<>&nbsp;count(s.attname)&nbsp;as&nbsp;is_na&nbsp;from&nbsp;pg_attribute&nbsp;as&nbsp;att&nbsp;join&nbsp;pg_class&nbsp;as&nbsp;tbl&nbsp;on&nbsp;att.attrelid&nbsp;=&nbsp;tbl.oid&nbsp;and&nbsp;tbl.relkind&nbsp;=&nbsp;$25&nbsp;join&nbsp;pg_namespace&nbsp;as&nbsp;ns&nbsp;on&nbsp;ns.oid&nbsp;=&nbsp;tbl.relnamespace&nbsp;join&nbsp;pg_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;s.schemaname&nbsp;=&nbsp;ns.nspname&nbsp;and&nbsp;s.tablename&nbsp;=&nbsp;tbl.relname&nbsp;and&nbsp;not&nbsp;s.inherited&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;att.attname&nbsp;left&nbsp;join&nbsp;pg_class&nbsp;as&nbsp;toast&nbsp;on&nbsp;tbl.reltoastrelid&nbsp;=&nbsp;toast.oid&nbsp;where&nbsp;att.attnum&nbsp;>&nbsp;$26&nbsp;and&nbsp;not&nbsp;att.attisdropped&nbsp;and&nbsp;s.schemaname&nbsp;not&nbsp;in&nbsp;($27,&nbsp;$28)&nbsp;group&nbsp;by&nbsp;1,&nbsp;2,&nbsp;3,&nbsp;4,&nbsp;5,&nbsp;6,&nbsp;7,&nbsp;8,&nbsp;9,&nbsp;10,&nbsp;tbl.relhasoids&nbsp;order&nbsp;by&nbsp;2,&nbsp;3&nbsp;),&nbsp;step2&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;(&nbsp;$29&nbsp;+&nbsp;tpl_hdr_size&nbsp;+&nbsp;tpl_data_size&nbsp;+&nbsp;($30&nbsp;*&nbsp;ma)&nbsp;-&nbsp;case&nbsp;when&nbsp;tpl_hdr_size&nbsp;%&nbsp;ma&nbsp;=&nbsp;$31&nbsp;then&nbsp;ma&nbsp;else&nbsp;tpl_hdr_size&nbsp;%&nbsp;ma&nbsp;end&nbsp;-&nbsp;case&nbsp;when&nbsp;ceil(tpl_data_size)::int&nbsp;%&nbsp;ma&nbsp;=&nbsp;$32&nbsp;then&nbsp;ma&nbsp;else&nbsp;ceil(tpl_data_size)::int&nbsp;%&nbsp;ma&nbsp;end&nbsp;)&nbsp;as&nbsp;tpl_size,&nbsp;bs&nbsp;-&nbsp;page_hdr&nbsp;as&nbsp;size_per_block,&nbsp;(heappages&nbsp;+&nbsp;toastpages)&nbsp;as&nbsp;tblpages&nbsp;from&nbsp;step1&nbsp;),&nbsp;step3&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;ceil(reltuples&nbsp;/&nbsp;((bs&nbsp;-&nbsp;page_hdr)&nbsp;/&nbsp;tpl_size))&nbsp;+&nbsp;ceil(toasttuples&nbsp;/&nbsp;$33)&nbsp;as&nbsp;est_tblpages,&nbsp;ceil(r...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/7.sql)
8 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |2.25&nbsp;ms<br/>0s/sec<br/>2ms/call<br/>0.94% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |6&nbsp;blks<br/>0.17&nbsp;blks/sec<br/>6.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;ae.name,&nbsp;installed_version,&nbsp;default_version,&nbsp;case&nbsp;when&nbsp;installed_version&nbsp;<>&nbsp;default_version&nbsp;then&nbsp;$1&nbsp;end&nbsp;as&nbsp;is_old&nbsp;from&nbsp;pg_extension&nbsp;e&nbsp;join&nbsp;pg_available_extensions&nbsp;ae&nbsp;on&nbsp;extname&nbsp;=&nbsp;ae.name&nbsp;order&nbsp;by&nbsp;ae.name&nbsp;),&nbsp;withsettins&nbsp;as&nbsp;(&nbsp;select&nbsp;data.*,&nbsp;(select&nbsp;json_object_agg(name,&nbsp;setting)&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;~&nbsp;data.name)&nbsp;as&nbsp;settings&nbsp;from&nbsp;data&nbsp;order&nbsp;by&nbsp;name&nbsp;)&nbsp;select&nbsp;json_object_agg(withsettins.name,&nbsp;withsettins)&nbsp;as&nbsp;json&nbsp;from&nbsp;withsettins<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/8.sql)
9 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_48&nbsp;on&nbsp;t_48(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/9.sql)
10 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_59&nbsp;on&nbsp;t_59(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/10.sql)
11 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_red_fk_1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate_series(0,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/11.sql)
12 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |VACUUM&nbsp;(ANALYZE)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/12.sql)
13 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_50&nbsp;on&nbsp;t_50(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/13.sql)
14 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_89&nbsp;on&nbsp;t_89(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/14.sql)
15 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_17&nbsp;on&nbsp;t_17(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/15.sql)
16 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |CREATE&nbsp;TABLE&nbsp;test_schema.order(&nbsp;id&nbsp;serial,	cnt&nbsp;integer,&nbsp;CONSTRAINT&nbsp;ordiadjust_pk&nbsp;PRIMARY&nbsp;KEY&nbsp;(id))<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/16.sql)
17 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_72&nbsp;on&nbsp;t_72(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/17.sql)
18 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_78&nbsp;on&nbsp;t_78(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/18.sql)
19 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;dbname<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/19.sql)
20 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_51&nbsp;on&nbsp;t_51(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/20.sql)
21 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_107&nbsp;on&nbsp;t_107(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/21.sql)
22 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_25&nbsp;on&nbsp;t_25(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/22.sql)
23 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |INSERT&nbsp;INTO&nbsp;test_schema.order(cnt)&nbsp;select&nbsp;id&nbsp;from&nbsp;generate_series($1,&nbsp;$2)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/23.sql)
24 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;checkup_test_db<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/24.sql)
25 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_red_fk_2&nbsp;add&nbsp;constraint&nbsp;fk_red_fk2_t1&nbsp;foreign&nbsp;key&nbsp;(r_t1_id)&nbsp;references&nbsp;t_red_fk_1(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/25.sql)
26 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_60&nbsp;on&nbsp;t_60(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/26.sql)
27 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_red_fk_1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/27.sql)
28 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_31&nbsp;on&nbsp;t_31(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/28.sql)
29 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |update&nbsp;t_with_bloat&nbsp;set&nbsp;i&nbsp;=&nbsp;i<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/29.sql)
30 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_101&nbsp;on&nbsp;t_101(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/30.sql)
31 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_fk_1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/31.sql)
32 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_61&nbsp;on&nbsp;t_61(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/32.sql)
33 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_1&nbsp;on&nbsp;t_1(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/33.sql)
34 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_redundant_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/34.sql)
35 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_57&nbsp;on&nbsp;t_57(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/35.sql)
36 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_19&nbsp;on&nbsp;t_19(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/36.sql)
37 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_56&nbsp;on&nbsp;t_56(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/37.sql)
38 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_bloat&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/38.sql)
39 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_58&nbsp;on&nbsp;t_58(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/39.sql)
40 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_slw_q&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate_series(0,&nbsp;10000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/40.sql)
41 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_fk_1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate_series(0,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/41.sql)
42 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_33&nbsp;on&nbsp;t_33(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/42.sql)
43 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_28&nbsp;on&nbsp;t_28(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/43.sql)
44 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_5&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/44.sql)
45 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_red_fk_2&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;*&nbsp;1000000)::int8&nbsp;as&nbsp;r_t1_id&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/45.sql)
46 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_21&nbsp;on&nbsp;t_21(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/46.sql)
47 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_23&nbsp;on&nbsp;t_23(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/47.sql)
48 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |update&nbsp;t_rar_q&nbsp;set&nbsp;t_dat=$1&nbsp;where&nbsp;t_dat&nbsp;between&nbsp;$2&nbsp;and&nbsp;$3<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/48.sql)
49 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_73&nbsp;on&nbsp;t_73(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/49.sql)
50 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_64&nbsp;on&nbsp;t_64(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/50.sql)
51 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;bloated&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;100000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/51.sql)
52 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;t_rar_q_idx&nbsp;on&nbsp;t_rar_q(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/52.sql)
53 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_82&nbsp;on&nbsp;t_82(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/53.sql)
54 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_68&nbsp;on&nbsp;t_68(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/54.sql)
55 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |delete&nbsp;from&nbsp;bloated&nbsp;where&nbsp;i&nbsp;%&nbsp;$1&nbsp;=&nbsp;$2<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/55.sql)
56 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_64&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/56.sql)
57 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_90&nbsp;on&nbsp;t_90(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/57.sql)
58 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;count(*)&nbsp;from&nbsp;t_slw_q<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/58.sql)
59 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_fk_2&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;*&nbsp;1000000)::int8&nbsp;as&nbsp;t1_id&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/59.sql)
60 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r_red_fk_1_X_idx&nbsp;on&nbsp;t_red_fk_1(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/60.sql)
61 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_31&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/61.sql)
62 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_79&nbsp;on&nbsp;t_79(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/62.sql)
63 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_76&nbsp;on&nbsp;t_76(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/63.sql)
64 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_81&nbsp;on&nbsp;t_81(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/64.sql)
65 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_unused_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/65.sql)
66 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_fk_2&nbsp;add&nbsp;constraint&nbsp;fk_t2_t1&nbsp;foreign&nbsp;key&nbsp;(t1_id)&nbsp;references&nbsp;t_fk_1(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/66.sql)
67 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_1&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/67.sql)
68 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_rar_q&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;*&nbsp;1000000)::int8&nbsp;as&nbsp;t_dat&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/68.sql)
69 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_71&nbsp;on&nbsp;t_71(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/69.sql)
70 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;test_schema.t_with_invalid_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/70.sql)
71 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_87&nbsp;on&nbsp;t_87(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/71.sql)
72 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_75&nbsp;on&nbsp;t_75(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/72.sql)
73 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_53&nbsp;on&nbsp;t_53(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/73.sql)
74 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_54&nbsp;on&nbsp;t_54(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/74.sql)
75 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_49&nbsp;on&nbsp;t_49(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/75.sql)
76 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_10&nbsp;on&nbsp;t_10(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/76.sql)
77 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;i_bloated&nbsp;on&nbsp;bloated(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/77.sql)
78 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |VACUUM&nbsp;ANALYZE<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/78.sql)
79 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_45&nbsp;on&nbsp;t_45(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/79.sql)
80 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_redundant_1&nbsp;on&nbsp;t_with_redundant_index(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/80.sql)
81 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_18&nbsp;on&nbsp;t_18(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/81.sql)
82 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_30&nbsp;on&nbsp;t_30(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/82.sql)
83 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_unused&nbsp;on&nbsp;t_with_unused_index(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/83.sql)
84 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_55&nbsp;on&nbsp;t_55(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/84.sql)
85 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r_red_fk_2_fk_idx&nbsp;on&nbsp;t_red_fk_2(r_t1_id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/85.sql)
86 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_80&nbsp;on&nbsp;t_80(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/86.sql)
87 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_42&nbsp;on&nbsp;t_42(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/87.sql)
88 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_77&nbsp;on&nbsp;t_77(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/88.sql)
89 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r_red_fk_1_id_idx&nbsp;on&nbsp;t_red_fk_1(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/89.sql)
90 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_24&nbsp;on&nbsp;t_24(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/90.sql)
91 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_91&nbsp;on&nbsp;t_91(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/91.sql)
92 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_70&nbsp;on&nbsp;t_70(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/92.sql)
93 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_26&nbsp;on&nbsp;t_26(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/93.sql)
94 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_27&nbsp;on&nbsp;t_27(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/94.sql)
95 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_redundant_2&nbsp;on&nbsp;t_with_redundant_index(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/95.sql)
96 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_67&nbsp;on&nbsp;t_67(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/96.sql)
97 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_57&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/97.sql)
98 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_32&nbsp;on&nbsp;t_32(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_14T05_45_24_+0000/K_query_groups/98.sql)





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L001"></a>
[Table of contents](#postgres-checkup_top)
# L001 Table sizes #

## Observations ##
Data collected: 2019-03-14 05:46:28 +0000 UTC  
Current database: dbname  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
The list is limited to 100 items.  

\# | Table | Rows | &#9660;&nbsp;Total size | Table size | Index(es) Size | TOAST Size
---|---|------|------------|------------|----------------|------------
<no value> | =====TOTAL===== | ~20M | 1011 MB (100.00%) | 769 MB (100.00%) | 242 MB (100.00%) | 56 kB (100.00%)
1 | t_slw_q | ~10M | 346 MB (34.22%) | 346 MB (45.01%) | 0 bytes (0.00%) | <no value>
2 | t_red_fk_1 | ~1M | 99 MB (9.79%) | 35 MB (4.50%) | 64 MB (26.55%) | <no value>
3 | t_rar_q | ~1000k | 93 MB (9.18%) | 50 MB (6.50%) | 43 MB (17.69%) | <no value>
4 | t_with_redundant_index | ~1000k | 78 MB (7.67%) | 35 MB (4.50%) | 43 MB (17.70%) | <no value>
5 | t_with_bloat | ~1000k | 69 MB (6.85%) | 69 MB (9.01%) | 0 bytes (0.00%) | <no value>
6 | t_red_fk_2 | ~1000k | 64 MB (6.31%) | 42 MB (5.50%) | 21 MB (8.85%) | <no value>
7 | t_fk_1 | ~1M | 56 MB (5.55%) | 35 MB (4.50%) | 21 MB (8.85%) | <no value>
8 | t_with_unused_index | ~1000k | 56 MB (5.55%) | 35 MB (4.50%) | 21 MB (8.85%) | <no value>
9 | test_schema.order | ~1M | 56 MB (5.55%) | 35 MB (4.50%) | 21 MB (8.85%) | <no value>
10 | t_fk_2 | ~1000k | 42 MB (4.18%) | 42 MB (5.50%) | 0 bytes (0.00%) | <no value>
11 | test_schema.t_with_invalid_index | ~1000k | 35 MB (3.42%) | 35 MB (4.50%) | 0 bytes (0.00%) | <no value>
12 | bloated | ~50k | 5784 kB (0.56%) | 3576 kB (0.45%) | 2208 kB (0.89%) | <no value>
13 | t_41 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
14 | t_44 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
15 | t_47 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
16 | t_53 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
17 | t_54 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
18 | t_55 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
19 | t_56 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
20 | t_57 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
21 | t_58 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
22 | t_1 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
23 | t_5 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
24 | t_11 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
25 | t_16 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
26 | t_2 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
27 | t_6 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
28 | t_9 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
29 | t_14 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
30 | t_19 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
31 | t_21 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
32 | t_23 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
33 | t_25 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
34 | t_27 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
35 | t_29 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
36 | t_31 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
37 | t_34 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
38 | t_37 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
39 | t_40 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
40 | t_43 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
41 | t_46 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
42 | t_49 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
43 | t_50 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
44 | t_51 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
45 | t_52 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
46 | t_12 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
47 | t_17 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
48 | t_3 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
49 | t_7 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
50 | t_4 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
51 | t_10 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
52 | t_15 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
53 | t_33 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
54 | t_36 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
55 | t_39 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
56 | t_42 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
57 | t_45 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
58 | t_48 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
59 | t_59 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
60 | t_60 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
61 | t_61 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
62 | t_62 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
63 | t_63 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
64 | t_64 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
65 | t_65 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
66 | t_66 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
67 | t_67 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
68 | t_68 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
69 | t_69 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
70 | t_70 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
71 | t_71 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
72 | t_72 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
73 | t_73 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
74 | t_74 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
75 | t_75 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
76 | t_76 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
77 | t_77 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
78 | t_78 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
79 | t_79 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
80 | t_80 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
81 | t_81 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
82 | t_82 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
83 | t_83 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
84 | t_84 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
85 | t_85 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
86 | t_86 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
87 | t_87 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
88 | t_88 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
89 | t_89 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
90 | t_90 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
91 | t_91 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
92 | t_92 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
93 | t_93 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
94 | t_109 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
95 | t_95 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
96 | t_96 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
97 | t_97 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
98 | t_98 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
99 | t_99 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
100 | t_100 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L003"></a>
[Table of contents](#postgres-checkup_top)
# L003 Integer (int2, int4) out-of-range risks in PKs #

## Observations ##
Data collected: 2019-03-14 05:46:28 +0000 UTC  
Current database: dbname  



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Table | PK | Type | Current max value | &#9660;&nbsp;Capacity used, %
------|----|------|-------------------|-------------------------------
test_schema."order" | id | int4 |1,000,001 | 0.05


## Conclusions ##


## Recommendations ##
