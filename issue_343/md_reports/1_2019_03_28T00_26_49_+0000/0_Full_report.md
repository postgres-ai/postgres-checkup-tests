# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-03-28 00:27:52 +0000


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
Data collected: 2019-03-28 00:27:27 +0000 UTC  






### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

**System**

```
Linux runner-fa6cab46-project-9951336-concurrent-0 4.19.23-coreos-r1 #1 SMP Mon Feb 25 23:40:01 -00 2019 x86_64 x86_64 x86_64 GNU/Linux
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
MemFree:          186508 kB
MemAvailable:    2679004 kB
Buffers:           82524 kB
Cached:          2908892 kB
SwapCached:          112 kB
Active:          1327536 kB
Inactive:        2069480 kB
Active(anon):     456252 kB
Inactive(anon):   297044 kB
Active(file):     871284 kB
Inactive(file):  1772436 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2095344 kB
Dirty:             13020 kB
Writeback:             0 kB
AnonPages:        405464 kB
Mapped:           279212 kB
Shmem:            347748 kB
Slab:             132628 kB
SReclaimable:     103896 kB
SUnreclaim:        28732 kB
KernelStack:        2832 kB
PageTables:         7768 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988900 kB
Committed_AS:    1471468 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              440 kB
HardwareCorrupted:     0 kB
AnonHugePages:    112640 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:       90100 kB
DirectMap2M:     2793472 kB
DirectMap1G:     1048576 kB
```








## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A002"></a>
[Table of contents](#postgres-checkup_top)
# A002 Version information #

## Observations ##
Data collected: 2019-03-28 00:27:27 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

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
Data collected: 2019-03-28 00:27:28 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###  
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
Client Connection Defaults / Statement Behavior|[statement_timeout](https://postgresqlco.nf/en/doc/param/statement_timeout) | 30000 | ms  | 
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
Data collected: 2019-03-28 00:27:31 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

 Indicator | Value
-----------|-------
Postgres Version | PostgreSQL&nbsp;11.2&nbsp;(Ubuntu&nbsp;11.2-1.pgdg16.04+1)&nbsp;on&nbsp;x86_64-pc-linux-gnu,&nbsp;compiled&nbsp;by&nbsp;gcc&nbsp;(Ubuntu&nbsp;5.4.0-6ubuntu1~16.04.11)&nbsp;5.4.0&nbsp;20160609,&nbsp;64-bit
Config file | /etc/postgresql/11/main/postgresql.conf
Role | Master
Replicas | 
Started At | 2019-03-28&nbsp;00:24:19+00
Uptime | 00:03:12
Checkpoints | 6
Forced Checkpoints | 100.0%
Checkpoint MB/sec | 0.519535
Database Name | dbname
Database Size | 963&nbsp;MB
Stats Since | 2019-03-28&nbsp;00:24:22+00
Stats Age | 00:03:09
Installed Extensions | pg_stat_kcache&nbsp;2.1.1,&nbsp;pg_stat_statements&nbsp;1.6,&nbsp;plpgsql&nbsp;1.0
Cache Effectiveness | 89.81%
Successful Commits | 99.81%
Conflicts | 0
Temp Files: total size | 427&nbsp;MB
Temp Files: total number of files | 33
Temp Files: total number of files per day | 33
Temp Files: avg file size | 13&nbsp;MB
Deadlocks | 0
Deadlocks per day | 0

#### Databases sizes ####
Database | &#9660;&nbsp;Size
---------|------
dbname | 0.95&nbsp;GiB
postgres | 7.51&nbsp;MiB
checkup_test_db | 7.51&nbsp;MiB
template1 | 7.37&nbsp;MiB
template0 | 7.37&nbsp;MiB


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A005"></a>
[Table of contents](#postgres-checkup_top)
# A005 Extensions #

## Observations ##
Data collected: 2019-03-28 00:27:31 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
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
Data collected: 2019-03-28 00:27:32 +0000 UTC  

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
Data collected: 2019-03-28 00:27:35 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
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
Data collected: 2019-03-28 00:27:36 +0000 UTC  

    
        
### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

#### System directories ####
Device | FS Type | Size | Available | Usage | Used | Mount Point 
-------|---------|------|-----------|-----|------|-------------
overlay|overlay|22G|14G|37%|7.7G|/
tmpfs|tmpfs|64M|64M|0%|0|/dev
tmpfs|tmpfs|1.9G|1.9G|0%|0|/sys/fs/cgroup
/dev/sda9|ext4|22G|14G|37%|7.7G|/builds/postgres-ai-team
shm|tmpfs|64M|64M|1%|8.0K|/dev/shm


#### Database directories ####
Name | FS Type | Size | Available | Usage | Used | Mount Point | Path | Device
-----|---------|------|-----------|-----|------|-------------|------|-------
PGDATA|overlay|22G|14G|37%|7.7G|/|/var/lib/postgresql/11/main|overlay
WAL directory|overlay|22G|14G|37%|7.7G|/|/var/lib/postgresql/11/main/pg_wal|overlay
stats_temp_directory|overlay|22G|14G|37%|7.7G|/|/var/run/postgresql/11-main.pg_stat_tmp|overlay


        
    




## Conclusions ##

## Recommendations ##
---
<a name="postgres-checkup_D002"></a>
[Table of contents](#postgres-checkup_top)
# D002 Useful Linux tools
## Observations ##
Data collected: 2019-03-28 00:27:36 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
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
Data collected: 2019-03-28 00:27:37 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

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
Data collected: 2019-03-28 00:27:37 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
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
Data collected: 2019-03-28 00:27:37 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

#### Databases ####
  

\# | Database | &#9660;&nbsp;Age | Capacity used, % | Warning | datfrozenxid
--|--------|-----|------------------|---------|--------------
1 |postgres |501 |0 |  |561
2 |dbname |501 |0 |  |561
3 |template1 |501 |0 |  |561
4 |template0 |501 |0 |  |561
5 |checkup_test_db |501 |0 |  |561



#### Tables in the observed database ####
The list is limited to 100 items.  

\# | Relation | Age | &#9660;&nbsp;Capacity used, % | Warning |rel_relfrozenxid | toast_relfrozenxid 
---|-------|-----|------------------|---------|-----------------|--------------------
1 |test_schema.orders |393 |0 |  |669 |0 |
2 |test_schema.orders_A |390 |0 |  |672 |0 |
3 |t_8 |373 |0 |  |689 |0 |
4 |t_13 |363 |0 |  |699 |0 |
5 |t_18 |353 |0 |  |709 |0 |
6 |t_20 |349 |0 |  |713 |0 |
7 |t_22 |345 |0 |  |717 |0 |
8 |t_24 |341 |0 |  |721 |0 |
9 |t_26 |337 |0 |  |725 |0 |
10 |t_28 |333 |0 |  |729 |0 |
11 |t_30 |329 |0 |  |733 |0 |
12 |t_32 |325 |0 |  |737 |0 |
13 |t_35 |319 |0 |  |743 |0 |
14 |t_38 |313 |0 |  |749 |0 |
15 |t_41 |307 |0 |  |755 |0 |
16 |t_44 |301 |0 |  |761 |0 |
17 |t_47 |295 |0 |  |767 |0 |
18 |t_53 |283 |0 |  |779 |0 |
19 |t_54 |281 |0 |  |781 |0 |
20 |t_55 |279 |0 |  |783 |0 |
21 |t_56 |277 |0 |  |785 |0 |
22 |t_1 |387 |0 |  |675 |0 |
23 |t_5 |379 |0 |  |683 |0 |
24 |t_11 |367 |0 |  |695 |0 |
25 |t_16 |357 |0 |  |705 |0 |
26 |t_rar_q |485 |0 |  |577 |0 |
27 |t_fillfactor |483 |0 |  |579 |0 |
28 |t_with_unused_index |482 |0 |  |580 |0 |
29 |t_with_redundant_index |480 |0 |  |582 |0 |
30 |test_schema.t_with_invalid_index |476 |0 |  |586 |0 |
31 |t_fk_1 |474 |0 |  |588 |0 |
32 |t_fk_2 |472 |0 |  |590 |0 |
33 |bloated |470 |0 |  |592 |0 |
34 |t_red_fk_1 |466 |0 |  |596 |0 |
35 |t_red_fk_2 |462 |0 |  |600 |0 |
36 |t_slw_q |459 |0 |  |603 |0 |
37 |t_with_bloat<sup>*</sup> |467 |0 |  |595 |0 |
38 |t_2 |385 |0 |  |677 |0 |
39 |t_6 |377 |0 |  |685 |0 |
40 |t_9 |371 |0 |  |691 |0 |
41 |t_14 |361 |0 |  |701 |0 |
42 |t_19 |351 |0 |  |711 |0 |
43 |t_21 |347 |0 |  |715 |0 |
44 |t_23 |343 |0 |  |719 |0 |
45 |t_25 |339 |0 |  |723 |0 |
46 |t_27 |335 |0 |  |727 |0 |
47 |t_29 |331 |0 |  |731 |0 |
48 |t_31 |327 |0 |  |735 |0 |
49 |t_34 |321 |0 |  |741 |0 |
50 |t_37 |315 |0 |  |747 |0 |
51 |t_40 |309 |0 |  |753 |0 |
52 |t_43 |303 |0 |  |759 |0 |
53 |t_46 |297 |0 |  |765 |0 |
54 |t_49 |291 |0 |  |771 |0 |
55 |t_50 |289 |0 |  |773 |0 |
56 |t_51 |287 |0 |  |775 |0 |
57 |t_52 |285 |0 |  |777 |0 |
58 |t_12 |365 |0 |  |697 |0 |
59 |pg_catalog.pg_class |501 |0 |  |561 |0 |
60 |t_17 |355 |0 |  |707 |0 |
61 |t_3 |383 |0 |  |679 |0 |
62 |t_7 |375 |0 |  |687 |0 |
63 |t_4 |381 |0 |  |681 |0 |
64 |t_10 |369 |0 |  |693 |0 |
65 |t_15 |359 |0 |  |703 |0 |
66 |t_33 |323 |0 |  |739 |0 |
67 |t_36 |317 |0 |  |745 |0 |
68 |t_39 |311 |0 |  |751 |0 |
69 |t_42 |305 |0 |  |757 |0 |
70 |t_45 |299 |0 |  |763 |0 |
71 |t_48 |293 |0 |  |769 |0 |
72 |t_57 |275 |0 |  |787 |0 |
73 |t_58 |273 |0 |  |789 |0 |
74 |t_59 |271 |0 |  |791 |0 |
75 |t_60 |269 |0 |  |793 |0 |
76 |t_61 |267 |0 |  |795 |0 |
77 |t_62 |265 |0 |  |797 |0 |
78 |t_63 |263 |0 |  |799 |0 |
79 |t_64 |261 |0 |  |801 |0 |
80 |t_65 |259 |0 |  |803 |0 |
81 |t_66 |257 |0 |  |805 |0 |
82 |t_67 |255 |0 |  |807 |0 |
83 |t_68 |253 |0 |  |809 |0 |
84 |t_69 |251 |0 |  |811 |0 |
85 |t_70 |249 |0 |  |813 |0 |
86 |t_71 |247 |0 |  |815 |0 |
87 |t_72 |245 |0 |  |817 |0 |
88 |t_73 |243 |0 |  |819 |0 |
89 |t_74 |241 |0 |  |821 |0 |
90 |t_75 |239 |0 |  |823 |0 |
91 |t_76 |237 |0 |  |825 |0 |
92 |t_77 |235 |0 |  |827 |0 |
93 |t_78 |233 |0 |  |829 |0 |
94 |t_79 |230 |0 |  |832 |0 |
95 |t_80 |228 |0 |  |834 |0 |
96 |t_81 |226 |0 |  |836 |0 |
97 |t_82 |224 |0 |  |838 |0 |
98 |t_83 |222 |0 |  |840 |0 |
99 |t_84 |220 |0 |  |842 |0 |
100 |t_85 |218 |0 |  |844 |0 |


<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F003"></a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead tuples #

## Observations ##
Data collected: 2019-03-28 00:27:37 +0000 UTC  
Current database: dbname  
Stats reset: 00:03:00 ago (2019-03-28 00:24:22 +0000 UTC)  
### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
  
  
\#|  Relation | reltype | Since last autovacuum | Since last vacuum | Autovacuum Count | Vacuum Count | n_tup_ins | n_tup_upd | n_tup_del | pg_class.reltuples | n_live_tup | n_dead_tup | &#9660;Dead Tuples Ratio, %
---|-------|------|-----------------------|-------------------|----------|---------|-----------|-----------|-----------|--------------------|------------|------------|-----------
1 |bloated |r |<no value> |00:01:23.228708 |0 |2 |100000 |0 |50000 |50000 |50000 |0 | 0 
2 |t_fk_1 |r |<no value> |00:01:23.363745 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
3 |t_with_bloat<sup>*</sup> |r |<no value> |00:01:22.546498 |0 |2 |1000000 |1000000 |0 |1000000 |1000000 |0 | 0 
4 |test_schema.t_with_invalid_index |r |<no value> |00:01:23.427037 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
5 |t_red_fk_1 |r |<no value> |00:01:23.21404 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
6 |t_rar_q |r |<no value> |00:01:23.633517 |0 |2 |1000000 |745349 |0 |1000000 |1000000 |0 | 0 
7 |t_slw_q |r |<no value> |00:01:23.075419 |0 |2 |10000001 |0 |0 |9999979 |9999979 |0 | 0 
8 |t_red_fk_2 |r |<no value> |00:01:23.154775 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
9 |t_with_redundant_index |r |<no value> |00:01:23.48746 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
10 |t_with_unused_index |r |<no value> |00:01:23.545417 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
11 |t_fk_2 |r |<no value> |00:01:23.300805 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 

<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F004"></a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-03-28 00:27:38 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###


  

\# | Table | Size | Extra | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat ratio, % | Live | Last vacuum | Fillfactor
---|----|------|-------|------------------------------|------------------|--------------------|------|-------------|------------
&nbsp;|===== TOTAL ===== |725.51&nbsp;MiB ||46.57&nbsp;MiB |48,824,320 |6.42|||
1 |t_with_bloat<sup>*</sup> |69.15&nbsp;MiB |~34.71&nbsp;MiB (50.19%)|34.71&nbsp;MiB |36,388,864 | **50.19** |~34.44&nbsp;MiB | 2019-03-28 00:26:16  |100
2 |t_rar_q |49.90&nbsp;MiB |~7.82&nbsp;MiB (15.66%)|7.82&nbsp;MiB |8,192,000 |15.66 |~42.09&nbsp;MiB | 2019-03-28 00:26:15  |100
3 |bloated |3.47&nbsp;MiB |~1.74&nbsp;MiB (50.11%)|1.74&nbsp;MiB |1,818,624 | **50.11** |~1.73&nbsp;MiB | 2019-03-28 00:26:15  |100
4 |t_slw_q |345.69&nbsp;MiB |~1.36&nbsp;MiB (0.39%)|1.36&nbsp;MiB |1,417,216 |0.39 |~344.34&nbsp;MiB | 2019-03-28 00:26:15  |100
5 |t_fk_2 |42.24&nbsp;MiB |~152.00&nbsp;KiB (0.35%)|152.00&nbsp;KiB |155,648 |0.35 |~42.09&nbsp;MiB | 2019-03-28 00:26:15  |100
6 |t_red_fk_2 |42.24&nbsp;MiB |~152.00&nbsp;KiB (0.35%)|152.00&nbsp;KiB |155,648 |0.35 |~42.09&nbsp;MiB | 2019-03-28 00:26:15  |100
7 |t_red_fk_1 |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-28 00:26:15  |100
8 |test_schema.t_with_invalid_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-28 00:26:15  |100
9 |t_with_redundant_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-28 00:26:15  |100
10 |t_with_unused_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-28 00:26:15  |100
11 |t_fk_1 |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-28 00:26:15  |100
 
<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F005"></a>
[Table of contents](#postgres-checkup_top)
# F005 Autovacuum: Index bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-03-28 00:27:38 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
  

\# | Index (Table) | &#9660;&nbsp;Size | Extra | Estimated bloat | Est. bloat, bytes | Est. bloat ratio, % | Live | Fill factor
---|------------|-------------------|-------|-------|-------------|-------------|------|-------------
&nbsp;|===== TOTAL ===== |195.14&nbsp;MiB ||23.18&nbsp;MiB |24,305,664|11.88||
1 |t_rar_q_idx (t_rar_q) |42.86&nbsp;MiB |~23.65&nbsp;MiB (0.00%) |21.50&nbsp;MiB |22,544,384 | **50.16** |~21.36&nbsp;MiB |90
2 |i_unused (t_with_unused_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
3 |i_redundant_1 (t_with_redundant_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
4 |i_redundant_2 (t_with_redundant_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
5 |t_fk_1_pkey (t_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
6 |r_red_fk_1_id_idx (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
7 |r_red_fk_1_x_idx (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
8 |t_red_fk_1_pkey (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
9 |i_bloated (bloated) |2.16&nbsp;MiB |~1.19&nbsp;MiB (0.00%) |1.08&nbsp;MiB |1,130,496 | **50.00** |~1.08&nbsp;MiB |90


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F008"></a>
[Table of contents](#postgres-checkup_top)
# F008 Autovacuum: Resource usage #

## Observations ##
Data collected: 2019-03-28 00:27:38 +0000 UTC  
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
Data collected: 2019-03-28 00:27:38 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

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
Data collected: 2019-03-28 00:27:39 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
  

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
Data collected: 2019-03-28 00:27:39 +0000 UTC  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
#### Timeouts ####
Setting name | Value | Unit | Pretty value
-------------|-------|------|--------------
[authentication_timeout](https://postgresqlco.nf/en/doc/param/authentication_timeout)|60|s|
[idle_in_transaction_session_timeout](https://postgresqlco.nf/en/doc/param/idle_in_transaction_session_timeout)|0|ms|
[statement_timeout](https://postgresqlco.nf/en/doc/param/statement_timeout)|30000|ms|

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
1|postgres|0|0|2019-03-28T00:24:20.473678+00:00|00:03:19
2|dbname|0|0|2019-03-28T00:24:22.355274+00:00|00:03:17
3|checkup_test_db|0|0|2019-03-28T00:26:54.831988+00:00|00:00:45


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_H001"></a>
[Table of contents](#postgres-checkup_top)
# H001 Invalid indexes #

## Observations ##
Data collected: 2019-03-28 00:27:39 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###


  

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
## Observations ##
Data collected: 2019-03-28 00:27:39 +0000 UTC  
Current database: dbname  
Stats reset: 00:03:00 ago (2019-03-28 00:24:22 +0000 UTC)  
:warning: Statistics age is less than 30 days. Make decisions on index cleanup with caution!
### Never Used Indexes ###
  

\#| Table | Index | runner-fa6cab46-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Supports FK
--|-------|-------|----|-----|-----|-----
&nbsp;|=====TOTAL=====|||130.83&nbsp;MiB|218.55&nbsp;MiB|
1|t_red_fk_2|r_red_fk_2_fk_idx|0|21.45&nbsp;MiB|42.24&nbsp;MiB|
2|t_red_fk_1|r_red_fk_1_x_idx|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
3|t_red_fk_1|r_red_fk_1_id_idx|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
4|t_with_unused_index|i_unused|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
5|t_with_redundant_index|i_redundant_2|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
6|t_with_redundant_index|i_redundant_1|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
7|bloated|i_bloated|0|2.16&nbsp;MiB|3.47&nbsp;MiB|

### Rarely Used Indexes ###
  

\#| Table | Index | runner-fa6cab46-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Comment | Supports FK
--|-------|-------|-----|-----|-----|----|-----
&nbsp;|=====TOTAL=====|||42.86&nbsp;MiB|49.90&nbsp;MiB||
1|t_rar_q|t_rar_q_idx|scans: 1\/hour, writes: 1,745,349\/hour|42.86&nbsp;MiB|49.90&nbsp;MiB|Low Scans, High Writes|

### Redundant indexes ###
  

\#| Table | Index | Redundant to |runner-fa6cab46-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Supports FK
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
DROP INDEX CONCURRENTLY r_red_fk_1_id_idx; -- 21 MB, r_red_fk_1_x_idx, Never Used Indexes, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_1_x_idx; -- 21 MB, r_red_fk_1_id_idx, Never Used Indexes, table t_red_fk_1
DROP INDEX CONCURRENTLY t_red_fk_1_pkey; -- 21 MB, r_red_fk_1_x_idx, r_red_fk_1_id_idx, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_2_fk_idx; -- 21 MB, Never Used Indexes, table t_red_fk_2
DROP INDEX CONCURRENTLY i_redundant_1; -- 21 MB, i_redundant_2, Never Used Indexes, table t_with_redundant_index
DROP INDEX CONCURRENTLY i_redundant_2; -- 21 MB, i_redundant_1, Never Used Indexes, table t_with_redundant_index
DROP INDEX CONCURRENTLY i_unused; -- 21 MB, Never Used Indexes, table t_with_unused_index

```


#### "UNDO" database migration code ####
```
CREATE INDEX CONCURRENTLY i_bloated ON public.bloated USING btree (i); -- table bloated
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
Data collected: 2019-03-28 00:27:40 +0000 UTC  
Current database: dbname  

### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###


  

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
Data collected: 2019-03-28 00:27:40 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
Start: 2019-03-28T00:27:04.274022+00:00  
End: 2019-03-28T00:27:40.549695+00:00  
Period seconds: 36.27568  
Period age: 00:00:36.275673  

Error (calls): 8.00 (100.00%)  
Error (total time): 58.70 (68.95%)

Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------
8<br/>0.22/sec<br/>1.00/call<br/>100.00% |85.13&nbsp;ms<br/>2ms/sec<br/>10ms/call<br/>100.00% |8<br/>0.22/sec<br/>1.00/call<br/>100.00% |11,325&nbsp;blks<br/>312.19&nbsp;blks/sec<br/>1.42K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K002"></a>
[Table of contents](#postgres-checkup_top)
# K002 Workload type ("first word" analysis)

## Observations ##
Data collected: 2019-03-28 00:27:40 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
Start: 2019-03-28T00:27:04.274022+00:00  
End: 2019-03-28T00:27:40.549695+00:00  
Period seconds: 36.27568  
Period age: 00:00:36.275673  

Error (calls): 8.00 (100.00%)  
Error (total time): 58.70 (68.95%)

\# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|------- 
1 |with |7<br/>0.19/sec<br/>1.00/call<br/>87.50% |85.00&nbsp;ms<br/>2ms/sec<br/>12ms/call<br/>99.85% |7<br/>0.19/sec<br/>1.00/call<br/>87.50% |11,325&nbsp;blks<br/>312.19&nbsp;blks/sec<br/>1.62K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
2 |select |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |0.13&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.15% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
3 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
4 |update |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
5 |vacuum |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
6 |delete |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
7 |alter |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K003"></a>
[Table of contents](#postgres-checkup_top)
# K003 Top-50 queries by total_time

## Observations ##
Data collected: 2019-03-28 00:27:40 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
Start: 2019-03-28T00:27:04.274022+00:00  
End: 2019-03-28T00:27:40.549695+00:00  
Period seconds: 36.27568  
Period age: 00:00:36.275673  

Error (calls): 8.00 (100.00%)  
Error (total time): 58.70 (68.95%)

  

\# | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |Query
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------
1 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |26.16&nbsp;ms<br/>0s/sec<br/>26ms/call<br/>30.73% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |24&nbsp;blks<br/>0.66&nbsp;blks/sec<br/>24.00&nbsp;blks/call<br/>0.21% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;s.\*&nbsp;&nbsp;from&nbsp;pg\_stat\_database&nbsp;s&nbsp;&nbsp;where&nbsp;s.datname&nbsp;=&nbsp;current\_database()&nbsp;&nbsp;)&nbsp;&nbsp;select&nbsp;$1&nbsp;as&nbsp;metric,&nbsp;version()&nbsp;as&nbsp;value&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$2&nbsp;as&nbsp;metric,&nbsp;&nbsp;(select&nbsp;setting&nbsp;from&nbsp;pg\_settings&nbsp;where&nbsp;name&nbsp;=&nbsp;$3)&nbsp;as&nbsp;value&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$4&nbsp;as&nbsp;metric,&nbsp;&nbsp;case&nbsp;&nbsp;when&nbsp;pg\_is\_in\_recovery()&nbsp;then&nbsp;$5&nbsp;\|\|&nbsp;$6&nbsp;&nbsp;\|\|&nbsp;((((case&nbsp;&nbsp;when&nbsp;pg\_last\_wal\_receive\_lsn()&nbsp;=&nbsp;pg\_last\_wal\_replay\_lsn()&nbsp;then&nbsp;$7&nbsp;&nbsp;else&nbsp;extract&nbsp;($8&nbsp;from&nbsp;now()&nbsp;\-&nbsp;pg\_last\_xact\_replay\_timestamp())&nbsp;&nbsp;end)::int)::text&nbsp;\|\|&nbsp;$9)::interval)::text&nbsp;&nbsp;\|\|&nbsp;$10&nbsp;\|\|&nbsp;pg\_is\_wal\_replay\_paused()::text&nbsp;\|\|&nbsp;$11&nbsp;&nbsp;else&nbsp;&nbsp;$12&nbsp;&nbsp;end&nbsp;as&nbsp;value&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;(&nbsp;&nbsp;with&nbsp;repl\_groups&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;sync\_state,&nbsp;state,&nbsp;string\_agg(host(client\_addr),&nbsp;$13)&nbsp;as&nbsp;hosts&nbsp;&nbsp;from&nbsp;pg\_stat\_replication&nbsp;&nbsp;group&nbsp;by&nbsp;1,&nbsp;2&nbsp;&nbsp;)&nbsp;&nbsp;select&nbsp;&nbsp;$14,&nbsp;&nbsp;string\_agg(sync\_state&nbsp;\|\|&nbsp;$15&nbsp;\|\|&nbsp;state&nbsp;\|\|&nbsp;$16&nbsp;\|\|&nbsp;hosts,&nbsp;$17)&nbsp;&nbsp;from&nbsp;repl\_groups&nbsp;&nbsp;)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$18,&nbsp;pg\_postmaster\_start\_time()::timestamptz(0)::text&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$19,&nbsp;(now()&nbsp;\-&nbsp;pg\_postmaster\_start\_time())::interval(0)::text&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$20,&nbsp;&nbsp;(select&nbsp;(checkpoints\_timed&nbsp;+&nbsp;checkpoints\_req)::text&nbsp;from&nbsp;pg\_stat\_bgwriter)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$21,&nbsp;&nbsp;(&nbsp;&nbsp;select&nbsp;round($22&nbsp;\*&nbsp;checkpoints\_req::numeric&nbsp;/&nbsp;&nbsp;(nullif(checkpoints\_timed&nbsp;+&nbsp;checkpoints\_req,&nbsp;$23)),&nbsp;$24)::text&nbsp;\|\|&nbsp;$25&nbsp;&nbsp;from&nbsp;pg\_stat\_bgwriter&nbsp;&nbsp;)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$26,&nbsp;&nbsp;(&nbsp;&nbsp;select&nbsp;round((nullif(buffers\_checkpoint::numeric,&nbsp;$27)&nbsp;/&nbsp;&nbsp;(($28&nbsp;\*&nbsp;$29&nbsp;/&nbsp;&nbsp;(current\_setting($30)::numeric))&nbsp;&nbsp;\*&nbsp;extract($31&nbsp;from&nbsp;now()&nbsp;\-&nbsp;stats\_reset)&nbsp;&nbsp;))::numeric,&nbsp;$32)::text&nbsp;&nbsp;from&nbsp;pg\_stat\_bgwriter&nbsp;&nbsp;)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;repeat($33,&nbsp;$34),&nbsp;repeat($35,&nbsp;$36)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$37&nbsp;as&nbsp;metric,&nbsp;datname&nbsp;as&nbsp;value&nbsp;from&nbsp;data&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$38,&nbsp;pg\_size\_pretty(pg\_database\_size(current\_database()))&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$39,&nbsp;stats\_reset::timestamptz(0)::text&nbsp;from&nbsp;data&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$40,&nbsp;(now()&nbsp;\-&nbsp;stats\_reset)::interval(0)::text&nbsp;from&nbsp;data&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$41,&nbsp;(&nbsp;&nbsp;with&nbsp;exts&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;extname&nbsp;\|\|&nbsp;$42&nbsp;\|\|&nbsp;extversion&nbsp;e,&nbsp;($43&nbsp;+&nbsp;row\_number()&nbsp;over&nbsp;(order&nbsp;by&nbsp;extname))&nbsp;/&nbsp;$44&nbsp;i&nbsp;from&nbsp;pg\_extension&nbsp;&nbsp;),&nbsp;lines(l)&nbsp;as&nbsp;(&nbsp;&nbsp;select...<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/1_1.sql)
2 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |16.12&nbsp;ms<br/>0s/sec<br/>16ms/call<br/>18.93% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |119&nbsp;blks<br/>3.28&nbsp;blks/sec<br/>119.00&nbsp;blks/call<br/>1.05% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;with&nbsp;fk\_actions&nbsp;(&nbsp;code,&nbsp;action&nbsp;)&nbsp;as&nbsp;(&nbsp;&nbsp;values&nbsp;($1,&nbsp;$2),&nbsp;&nbsp;($3,&nbsp;$4),&nbsp;&nbsp;($5,&nbsp;$6),&nbsp;&nbsp;($7,&nbsp;$8),&nbsp;&nbsp;($9,&nbsp;$10)&nbsp;&nbsp;),&nbsp;fk\_list&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;pg\_constraint.oid&nbsp;as&nbsp;fkoid,&nbsp;conrelid,&nbsp;confrelid&nbsp;as&nbsp;parentid,&nbsp;&nbsp;conname,&nbsp;&nbsp;relname,&nbsp;&nbsp;nspname,&nbsp;&nbsp;fk\_actions\_update.action&nbsp;as&nbsp;update\_action,&nbsp;&nbsp;fk\_actions\_delete.action&nbsp;as&nbsp;delete\_action,&nbsp;&nbsp;conkey&nbsp;as&nbsp;key\_cols,&nbsp;&nbsp;pg\_class.relpages&nbsp;&nbsp;from&nbsp;pg\_constraint&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;pg\_class.oid&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;on&nbsp;pg\_class.relnamespace&nbsp;=&nbsp;pg\_namespace.oid&nbsp;&nbsp;join&nbsp;fk\_actions&nbsp;as&nbsp;fk\_actions\_update&nbsp;on&nbsp;confupdtype&nbsp;=&nbsp;fk\_actions\_update.code&nbsp;&nbsp;join&nbsp;fk\_actions&nbsp;as&nbsp;fk\_actions\_delete&nbsp;on&nbsp;confdeltype&nbsp;=&nbsp;fk\_actions\_delete.code&nbsp;&nbsp;where&nbsp;contype&nbsp;=&nbsp;$11&nbsp;and&nbsp;pg\_class.relpages&nbsp;>&nbsp;$12&nbsp;&nbsp;),&nbsp;fk\_attributes&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;fkoid,&nbsp;conrelid,&nbsp;attname,&nbsp;attnum&nbsp;&nbsp;from&nbsp;fk\_list&nbsp;&nbsp;join&nbsp;pg\_attribute&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;attrelid&nbsp;and&nbsp;attnum&nbsp;=&nbsp;any(key\_cols)&nbsp;&nbsp;order&nbsp;by&nbsp;fkoid,&nbsp;attnum&nbsp;&nbsp;),&nbsp;fk\_cols\_list&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;fkoid,&nbsp;array\_agg(attname)&nbsp;as&nbsp;cols\_list&nbsp;&nbsp;from&nbsp;fk\_attributes&nbsp;&nbsp;group&nbsp;by&nbsp;fkoid&nbsp;&nbsp;),&nbsp;index\_list&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;indexrelid&nbsp;as&nbsp;indexid,&nbsp;&nbsp;pg\_class.relname&nbsp;as&nbsp;indexname,&nbsp;&nbsp;indrelid,&nbsp;&nbsp;indkey,&nbsp;&nbsp;indpred&nbsp;is&nbsp;not&nbsp;null&nbsp;as&nbsp;has\_predicate&nbsp;&nbsp;from&nbsp;pg\_index&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;on&nbsp;indexrelid&nbsp;=&nbsp;pg\_class.oid&nbsp;&nbsp;where&nbsp;indisvalid&nbsp;and&nbsp;pg\_class.relkind&nbsp;=&nbsp;$13&nbsp;and&nbsp;pg\_class.relpages&nbsp;>&nbsp;$14&nbsp;&nbsp;),&nbsp;fk\_index\_match&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;fk\_list.\*,&nbsp;&nbsp;indexid,&nbsp;&nbsp;indexname,&nbsp;&nbsp;indkey::int[]&nbsp;as&nbsp;indexatts,&nbsp;&nbsp;has\_predicate,&nbsp;&nbsp;array\_length(key\_cols,&nbsp;$15)&nbsp;as&nbsp;fk\_colcount,&nbsp;&nbsp;array\_length(indkey,$16)&nbsp;as&nbsp;index\_colcount,&nbsp;&nbsp;relpages,&nbsp;&nbsp;cols\_list&nbsp;&nbsp;from&nbsp;fk\_list&nbsp;&nbsp;join&nbsp;fk\_cols\_list&nbsp;using&nbsp;(fkoid)&nbsp;&nbsp;left&nbsp;join&nbsp;index\_list&nbsp;on&nbsp;&nbsp;conrelid&nbsp;=&nbsp;indrelid&nbsp;&nbsp;and&nbsp;(indkey::int2[])[$17:(array\_length(key\_cols,$18)&nbsp;\-$19)]&nbsp;operator(pg\_catalog.@>)&nbsp;key\_cols&nbsp;&nbsp;),&nbsp;fk\_perfect\_match&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;fkoid&nbsp;&nbsp;from&nbsp;fk\_index\_match&nbsp;&nbsp;where&nbsp;&nbsp;(index\_colcount&nbsp;\-&nbsp;$20)&nbsp;<=&nbsp;fk\_colcount&nbsp;&nbsp;and&nbsp;not&nbsp;has\_predicate&nbsp;&nbsp;),&nbsp;fk\_index\_check&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;$21&nbsp;as&nbsp;issue,&nbsp;\*,&nbsp;$22&nbsp;as&nbsp;issue\_sort&nbsp;&nbsp;from&nbsp;fk\_index\_match&nbsp;&nbsp;where&nbsp;indexid&nbsp;is&nbsp;null&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$23&nbsp;as&nbsp;issue,&nbsp;\*,&nbsp;$24&nbsp;&nbsp;from&nbsp;fk\_index\_match&nbsp;&nbsp;where&nbsp;&nbsp;indexid&nbsp;is&nbsp;not&nbsp;null&nbsp;&nbsp;and&nbsp;fkoid&nbsp;not&nbsp;in&nbsp;...<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/2_1.sql)
3 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |13.07&nbsp;ms<br/>0s/sec<br/>13ms/call<br/>15.36% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |16&nbsp;blks<br/>0.44&nbsp;blks/sec<br/>16.00&nbsp;blks/call<br/>0.14% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;timeouts&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(s.name,s&nbsp;)&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;in&nbsp;($1,&nbsp;$2,&nbsp;$3)&nbsp;),&nbsp;locks&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(s.name,s&nbsp;)&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;in&nbsp;($4,&nbsp;$5,&nbsp;$6,&nbsp;$7,&nbsp;$8,&nbsp;$9)&nbsp;),&nbsp;databases\_stat&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;\*,&nbsp;&nbsp;((now()&nbsp;\-&nbsp;sd.stats\_reset)::interval(0)::text)&nbsp;as&nbsp;stats\_reset\_age&nbsp;&nbsp;from&nbsp;pg\_stat\_database&nbsp;sd&nbsp;&nbsp;where&nbsp;datname&nbsp;in&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;WHERE&nbsp;datistemplate&nbsp;=&nbsp;$10)&nbsp;&nbsp;order&nbsp;by&nbsp;deadlocks&nbsp;desc&nbsp;&nbsp;limit&nbsp;$11&nbsp;),&nbsp;num\_dbs\_data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;row\_number()&nbsp;over&nbsp;()&nbsp;num,&nbsp;&nbsp;ds.\*&nbsp;&nbsp;from&nbsp;databases\_stat&nbsp;ds&nbsp;),&nbsp;dbs\_data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(sd.datname,&nbsp;sd)&nbsp;from&nbsp;num\_dbs\_data&nbsp;sd&nbsp;),&nbsp;db\_specified\_settings&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(dbs.database,&nbsp;dbs)&nbsp;from&nbsp;&nbsp;(select&nbsp;&nbsp;(select&nbsp;datname&nbsp;from&nbsp;pg\_database&nbsp;where&nbsp;oid&nbsp;=&nbsp;pd.setdatabase)&nbsp;as&nbsp;database,&nbsp;&nbsp;\*&nbsp;&nbsp;from&nbsp;pg\_db\_role\_setting&nbsp;pd&nbsp;&nbsp;where&nbsp;&nbsp;setconfig::text&nbsp;~&nbsp;$12&nbsp;&nbsp;and&nbsp;setdatabase&nbsp;is&nbsp;not&nbsp;null&nbsp;and&nbsp;setdatabase&nbsp;<>&nbsp;$13&nbsp;&nbsp;)&nbsp;dbs&nbsp;),&nbsp;user\_specified\_settings&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(pr.rolname,&nbsp;pr)&nbsp;from&nbsp;pg\_roles&nbsp;pr&nbsp;where&nbsp;rolconfig::text&nbsp;~&nbsp;$14&nbsp;)&nbsp;select&nbsp;&nbsp;json\_build\_object(&nbsp;&nbsp;$15,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;timeouts),&nbsp;$16,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;locks),&nbsp;&nbsp;$17,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;dbs\_data),&nbsp;&nbsp;$18,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;db\_specified\_settings),&nbsp;&nbsp;$19,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;user\_specified\_settings)&nbsp;&nbsp;)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/3_1.sql)
4 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |12.69&nbsp;ms<br/>0s/sec<br/>12ms/call<br/>14.91% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |53&nbsp;blks<br/>1.46&nbsp;blks/sec<br/>53.00&nbsp;blks/call<br/>0.47% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;overrided\_tables&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;pc.oid&nbsp;as&nbsp;table\_id,&nbsp;&nbsp;pn.nspname&nbsp;as&nbsp;scheme\_name,&nbsp;&nbsp;pc.relname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;&nbsp;from&nbsp;pg\_class&nbsp;pc&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;),&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;coalesce(nullif(schemaname&nbsp;\|\|&nbsp;$2,&nbsp;$3),&nbsp;$4)&nbsp;\|\|&nbsp;c.relname&nbsp;as&nbsp;"relation",&nbsp;&nbsp;c.relkind,&nbsp;&nbsp;now()&nbsp;\-&nbsp;last\_autovacuum&nbsp;as&nbsp;since\_last\_autovacuum,&nbsp;&nbsp;now()&nbsp;\-&nbsp;last\_vacuum&nbsp;as&nbsp;since\_last\_vacuum,&nbsp;&nbsp;autovacuum\_count&nbsp;as&nbsp;av\_count,&nbsp;&nbsp;vacuum\_count&nbsp;as&nbsp;v\_count,&nbsp;&nbsp;n\_tup\_ins,&nbsp;&nbsp;&nbsp;n\_tup\_upd,&nbsp;&nbsp;&nbsp;n\_tup\_del,&nbsp;&nbsp;reltuples::int8&nbsp;as&nbsp;pg\_class\_reltuples,&nbsp;&nbsp;n\_live\_tup,&nbsp;&nbsp;n\_dead\_tup,&nbsp;&nbsp;round((n\_dead\_tup::numeric&nbsp;\*&nbsp;$5&nbsp;/&nbsp;nullif(n\_dead\_tup&nbsp;+&nbsp;n\_live\_tup,&nbsp;$6))::numeric,&nbsp;$7)&nbsp;as&nbsp;dead\_ratio,&nbsp;&nbsp;case&nbsp;when&nbsp;ot.table\_id&nbsp;is&nbsp;not&nbsp;null&nbsp;then&nbsp;$8&nbsp;else&nbsp;$9&nbsp;end&nbsp;as&nbsp;overrided\_settings&nbsp;&nbsp;from&nbsp;pg\_stat\_all\_tables&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;c&nbsp;on&nbsp;c.oid&nbsp;=&nbsp;relid&nbsp;&nbsp;left&nbsp;join&nbsp;overrided\_tables&nbsp;ot&nbsp;on&nbsp;ot.table\_id&nbsp;=&nbsp;c.oid&nbsp;&nbsp;where&nbsp;reltuples&nbsp;>&nbsp;$10&nbsp;&nbsp;order&nbsp;by&nbsp;13&nbsp;desc&nbsp;&nbsp;limit&nbsp;$11&nbsp;),&nbsp;num\_dead\_tuples&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;row\_number()&nbsp;over&nbsp;()&nbsp;num,&nbsp;&nbsp;data.\*&nbsp;&nbsp;from&nbsp;data&nbsp;),&nbsp;dead\_tuples&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(num\_dead\_tuples."relation",&nbsp;num\_dead\_tuples)&nbsp;as&nbsp;json&nbsp;from&nbsp;num\_dead\_tuples&nbsp;),&nbsp;database\_stat&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;row\_to\_json(dbstat)&nbsp;&nbsp;from&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;sd.stats\_reset::timestamptz(0),&nbsp;&nbsp;age(&nbsp;&nbsp;date\_trunc($12,now()),&nbsp;&nbsp;date\_trunc($13,sd.stats\_reset)&nbsp;&nbsp;)&nbsp;as&nbsp;stats\_age&nbsp;&nbsp;from&nbsp;pg\_stat\_database&nbsp;sd&nbsp;&nbsp;where&nbsp;datname&nbsp;=&nbsp;current\_database()&nbsp;&nbsp;)&nbsp;dbstat&nbsp;)&nbsp;select&nbsp;&nbsp;json\_build\_object(&nbsp;&nbsp;$14,&nbsp;&nbsp;(select&nbsp;\*&nbsp;from&nbsp;dead\_tuples),&nbsp;&nbsp;$15,&nbsp;&nbsp;(select&nbsp;\*&nbsp;from&nbsp;database\_stat),&nbsp;&nbsp;$16,&nbsp;&nbsp;(select&nbsp;count($17)&nbsp;from&nbsp;data&nbsp;where&nbsp;overrided\_settings&nbsp;=&nbsp;$18)&nbsp;&nbsp;)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/4_1.sql)
5 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |7.77&nbsp;ms<br/>0s/sec<br/>7ms/call<br/>9.13% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |7,153&nbsp;blks<br/>197.18&nbsp;blks/sec<br/>7.16K&nbsp;blks/call<br/>63.16% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;with&nbsp;overrided\_tables&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;pc.oid&nbsp;as&nbsp;table\_id,&nbsp;&nbsp;pn.nspname&nbsp;as&nbsp;scheme\_name,&nbsp;&nbsp;pc.relname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;&nbsp;from&nbsp;pg\_class&nbsp;pc&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;&nbsp;),&nbsp;step0&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;tbl.oid&nbsp;tblid,&nbsp;nspname,&nbsp;tbl.relname&nbsp;AS&nbsp;tblname,&nbsp;idx.relname&nbsp;AS&nbsp;idxname,&nbsp;idx.reltuples,&nbsp;idx.relpages,&nbsp;idx.relam,&nbsp;&nbsp;indrelid,&nbsp;indexrelid,&nbsp;regexp\_split\_to\_table(indkey::text,&nbsp;$2)::smallint&nbsp;AS&nbsp;attnum,&nbsp;&nbsp;&nbsp;coalesce(substring(array\_to\_string(idx.reloptions,&nbsp;$3)&nbsp;from&nbsp;$4)::smallint,&nbsp;$5)&nbsp;as&nbsp;fillfactor&nbsp;&nbsp;from&nbsp;pg\_index&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;idx&nbsp;on&nbsp;idx.oid&nbsp;=&nbsp;pg\_index.indexrelid&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;tbl&nbsp;on&nbsp;tbl.oid&nbsp;=&nbsp;pg\_index.indrelid&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;on&nbsp;pg\_namespace.oid&nbsp;=&nbsp;idx.relnamespace&nbsp;&nbsp;join&nbsp;pg\_am&nbsp;a&nbsp;ON&nbsp;idx.relam&nbsp;=&nbsp;a.oid&nbsp;&nbsp;where&nbsp;a.amname&nbsp;=&nbsp;$6&nbsp;&nbsp;AND&nbsp;pg\_index.indisvalid&nbsp;&nbsp;AND&nbsp;tbl.relkind&nbsp;=&nbsp;$7&nbsp;&nbsp;AND&nbsp;idx.relpages&nbsp;>&nbsp;$8&nbsp;&nbsp;AND&nbsp;pg\_namespace.nspname&nbsp;NOT&nbsp;IN&nbsp;($9,&nbsp;$10)&nbsp;&nbsp;),&nbsp;step1&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;i.tblid,&nbsp;&nbsp;i.nspname&nbsp;as&nbsp;schema\_name,&nbsp;&nbsp;i.tblname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;i.idxname&nbsp;as&nbsp;index\_name,&nbsp;&nbsp;i.reltuples,&nbsp;&nbsp;i.relpages,&nbsp;&nbsp;i.relam,&nbsp;&nbsp;a.attrelid&nbsp;AS&nbsp;table\_oid,&nbsp;&nbsp;current\_setting($11)::numeric&nbsp;AS&nbsp;bs,&nbsp;&nbsp;fillfactor,&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$12&nbsp;then&nbsp;$13&nbsp;else&nbsp;$14&nbsp;end&nbsp;as&nbsp;maxalign,&nbsp;&nbsp;/\*&nbsp;per&nbsp;page&nbsp;header,&nbsp;fixed&nbsp;size:&nbsp;20&nbsp;for&nbsp;7.X,&nbsp;24&nbsp;for&nbsp;others&nbsp;\*/&nbsp;&nbsp;$15&nbsp;AS&nbsp;pagehdr,&nbsp;&nbsp;/\*&nbsp;per&nbsp;page&nbsp;btree&nbsp;opaque&nbsp;data&nbsp;\*/&nbsp;&nbsp;$16&nbsp;AS&nbsp;pageopqdata,&nbsp;&nbsp;/\*&nbsp;per&nbsp;tuple&nbsp;header:&nbsp;add&nbsp;IndexAttributeBitMapData&nbsp;if&nbsp;some&nbsp;cols&nbsp;are&nbsp;null\-able&nbsp;\*/&nbsp;&nbsp;case&nbsp;&nbsp;when&nbsp;max(coalesce(s.null\_frac,$17))&nbsp;=&nbsp;$18&nbsp;then&nbsp;$19&nbsp;&nbsp;&nbsp;else&nbsp;$20&nbsp;+&nbsp;((&nbsp;$21&nbsp;+&nbsp;$22&nbsp;\-&nbsp;$23&nbsp;)&nbsp;/&nbsp;$24)&nbsp;&nbsp;&nbsp;end&nbsp;as&nbsp;index\_tuple\_hdr\_bm,&nbsp;&nbsp;/\*&nbsp;data&nbsp;len:&nbsp;we&nbsp;remove&nbsp;null&nbsp;values&nbsp;save&nbsp;space&nbsp;using&nbsp;it&nbsp;fractionnal&nbsp;part&nbsp;from&nbsp;stats&nbsp;\*/&nbsp;&nbsp;sum(($25&nbsp;\-&nbsp;coalesce(s.null\_frac,&nbsp;$26))&nbsp;\*&nbsp;coalesce(s.avg\_width,&nbsp;$27))&nbsp;as&nbsp;nulldatawidth,&nbsp;&nbsp;max(case&nbsp;when&nbsp;a.atttypid&nbsp;=&nbsp;$28::regtype&nbsp;then&nbsp;$29&nbsp;else&nbsp;$30&nbsp;end)&nbsp;>&nbsp;$31&nbsp;as&nbsp;is\_na&nbsp;&nbsp;from&nbsp;pg\_attribute&nbsp;as&nbsp;a&nbsp;&nbsp;join&nbsp;step0&nbsp;as&nbsp;i&nbsp;on&nbsp;a.attrelid&nbsp;=&nbsp;i.indexrelid&nbsp;AND&nbsp;a.attnum&nbsp;=&nbsp;i.attnum&nbsp;&nbsp;join&nbsp;pg\_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;&nbsp;s.schemaname&nbsp;=&nbsp;i.nspname&nbsp;&nbsp;and&nbsp;(&nbsp;&nbsp;(s.tablename&nbsp;=&nbsp;i.tblname&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;pg\_catalog....<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/5_1.sql)
6 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |7.18&nbsp;ms<br/>0s/sec<br/>7ms/call<br/>8.43% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |3,954&nbsp;blks<br/>109.00&nbsp;blks/sec<br/>3.96K&nbsp;blks/call<br/>34.91% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;with&nbsp;overrided\_tables&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;pc.oid&nbsp;as&nbsp;table\_id,&nbsp;&nbsp;pn.nspname&nbsp;as&nbsp;scheme\_name,&nbsp;&nbsp;pc.relname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;&nbsp;from&nbsp;pg\_class&nbsp;pc&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;&nbsp;),&nbsp;step1&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;tbl.oid&nbsp;tblid,&nbsp;&nbsp;ns.nspname&nbsp;as&nbsp;schema\_name,&nbsp;&nbsp;tbl.relname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;tbl.reltuples,&nbsp;&nbsp;tbl.relpages&nbsp;as&nbsp;heappages,&nbsp;&nbsp;coalesce(toast.relpages,&nbsp;$2)&nbsp;as&nbsp;toastpages,&nbsp;&nbsp;coalesce(toast.reltuples,&nbsp;$3)&nbsp;as&nbsp;toasttuples,&nbsp;&nbsp;coalesce(substring(array\_to\_string(tbl.reloptions,&nbsp;$4)&nbsp;from&nbsp;$5&nbsp;for&nbsp;$6)::int2,&nbsp;$7)&nbsp;as&nbsp;fillfactor,&nbsp;&nbsp;current\_setting($8)::numeric&nbsp;as&nbsp;bs,&nbsp;&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$9&nbsp;then&nbsp;$10&nbsp;else&nbsp;$11&nbsp;end&nbsp;as&nbsp;ma,&nbsp;&nbsp;&nbsp;$12&nbsp;as&nbsp;page\_hdr,&nbsp;&nbsp;$13&nbsp;+&nbsp;case&nbsp;when&nbsp;max(coalesce(null\_frac,&nbsp;$14))&nbsp;>&nbsp;$15&nbsp;then&nbsp;($16&nbsp;+&nbsp;count(\*))&nbsp;/&nbsp;$17&nbsp;else&nbsp;$18::int&nbsp;end&nbsp;&nbsp;+&nbsp;case&nbsp;when&nbsp;tbl.relhasoids&nbsp;then&nbsp;$19&nbsp;else&nbsp;$20&nbsp;end&nbsp;as&nbsp;tpl\_hdr\_size,&nbsp;&nbsp;sum(($21&nbsp;\-&nbsp;coalesce(s.null\_frac,&nbsp;$22))&nbsp;\*&nbsp;coalesce(s.avg\_width,&nbsp;$23))&nbsp;as&nbsp;tpl\_data\_size,&nbsp;&nbsp;bool\_or(att.atttypid&nbsp;=&nbsp;$24::regtype)&nbsp;or&nbsp;count(att.attname)&nbsp;<>&nbsp;count(s.attname)&nbsp;as&nbsp;is\_na&nbsp;&nbsp;from&nbsp;pg\_attribute&nbsp;as&nbsp;att&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;as&nbsp;tbl&nbsp;on&nbsp;att.attrelid&nbsp;=&nbsp;tbl.oid&nbsp;and&nbsp;tbl.relkind&nbsp;=&nbsp;$25&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;as&nbsp;ns&nbsp;on&nbsp;ns.oid&nbsp;=&nbsp;tbl.relnamespace&nbsp;&nbsp;join&nbsp;pg\_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;s.schemaname&nbsp;=&nbsp;ns.nspname&nbsp;and&nbsp;s.tablename&nbsp;=&nbsp;tbl.relname&nbsp;and&nbsp;not&nbsp;s.inherited&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;att.attname&nbsp;&nbsp;left&nbsp;join&nbsp;pg\_class&nbsp;as&nbsp;toast&nbsp;on&nbsp;tbl.reltoastrelid&nbsp;=&nbsp;toast.oid&nbsp;&nbsp;where&nbsp;att.attnum&nbsp;>&nbsp;$26&nbsp;and&nbsp;not&nbsp;att.attisdropped&nbsp;and&nbsp;s.schemaname&nbsp;not&nbsp;in&nbsp;($27,&nbsp;$28)&nbsp;and&nbsp;tbl.relpages&nbsp;>&nbsp;$29&nbsp;&nbsp;group&nbsp;by&nbsp;1,&nbsp;2,&nbsp;3,&nbsp;4,&nbsp;5,&nbsp;6,&nbsp;7,&nbsp;8,&nbsp;9,&nbsp;10,&nbsp;tbl.relhasoids&nbsp;&nbsp;order&nbsp;by&nbsp;2,&nbsp;3&nbsp;&nbsp;),&nbsp;step2&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;\*,&nbsp;&nbsp;(&nbsp;&nbsp;$30&nbsp;+&nbsp;tpl\_hdr\_size&nbsp;+&nbsp;tpl\_data\_size&nbsp;+&nbsp;($31&nbsp;\*&nbsp;ma)&nbsp;&nbsp;\-&nbsp;case&nbsp;when&nbsp;tpl\_hdr\_size&nbsp;%&nbsp;ma&nbsp;=&nbsp;$32&nbsp;then&nbsp;ma&nbsp;else&nbsp;tpl\_hdr\_size&nbsp;%&nbsp;ma&nbsp;end&nbsp;&nbsp;\-&nbsp;case&nbsp;when&nbsp;ceil(tpl\_data\_size)::int&nbsp;%&nbsp;ma&nbsp;=&nbsp;$33&nbsp;then&nbsp;ma&nbsp;else&nbsp;ceil(tpl\_data\_size)::int&nbsp;%&nbsp;ma&nbsp;end&nbsp;&nbsp;)&nbsp;as&nbsp;tpl\_size,&nbsp;&nbsp;bs&nbsp;\-&nbsp;page\_hdr&nbsp;as&nbsp;size\_per\_block,&nbsp;&nbsp;(heappages&nbsp;+&nbsp;toastpages)&nbsp;as&nbsp;tblpages&nbsp;&nbsp;from&nbsp;step1&nbsp;&nbsp;),&nbsp;step3&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;\*,&nbsp;&nbsp;ceil(reltuples&nbsp;/&nbsp;((bs&nbsp;\-&nbsp;page\_hdr)&nbsp;/&nbsp;tpl\_size))&nbsp;+&nbsp;ceil(toasttuples&nbsp;/&nbsp;$34)&nbsp;a...<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/6_1.sql)
7 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |2.00&nbsp;ms<br/>0s/sec<br/>2ms/call<br/>2.35% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |6&nbsp;blks<br/>0.17&nbsp;blks/sec<br/>6.00&nbsp;blks/call<br/>0.05% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;ae.name,&nbsp;&nbsp;installed\_version,&nbsp;&nbsp;default\_version,&nbsp;&nbsp;case&nbsp;when&nbsp;installed\_version&nbsp;<>&nbsp;default\_version&nbsp;then&nbsp;$1&nbsp;end&nbsp;as&nbsp;is\_old&nbsp;&nbsp;from&nbsp;pg\_extension&nbsp;e&nbsp;&nbsp;join&nbsp;pg\_available\_extensions&nbsp;ae&nbsp;on&nbsp;extname&nbsp;=&nbsp;ae.name&nbsp;&nbsp;order&nbsp;by&nbsp;ae.name&nbsp;&nbsp;),&nbsp;withsettins&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;data.\*,&nbsp;&nbsp;(select&nbsp;json\_object\_agg(name,&nbsp;setting)&nbsp;&nbsp;from&nbsp;pg\_settings&nbsp;&nbsp;where&nbsp;name&nbsp;~&nbsp;data.name)&nbsp;as&nbsp;settings&nbsp;from&nbsp;data&nbsp;&nbsp;order&nbsp;by&nbsp;name&nbsp;&nbsp;)&nbsp;&nbsp;select&nbsp;json\_object\_agg(withsettins.name,&nbsp;withsettins)&nbsp;as&nbsp;json&nbsp;from&nbsp;withsettins<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/7_1.sql)
8 |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |0.13&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.15% |1<br/>0.03/sec<br/>1.00/call<br/>12.50% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;&nbsp;json\_build\_object($1,&nbsp;version(),&nbsp;&nbsp;$2,&nbsp;current\_setting($3),&nbsp;&nbsp;$4,&nbsp;(select&nbsp;regexp\_replace(current\_setting($5),&nbsp;$6,&nbsp;$7)),&nbsp;&nbsp;$8,&nbsp;(select&nbsp;regexp\_replace(current\_setting($9),&nbsp;$10,&nbsp;$11)))<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/8_1.sql)
9 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_102&nbsp;on&nbsp;t\_102(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/9_1.sql)
10 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate\_series(0,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/10_1.sql)
11 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |VACUUM&nbsp;(ANALYZE)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/11_1.sql)
12 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_89&nbsp;on&nbsp;t\_89(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/12_1.sql)
13 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_17&nbsp;on&nbsp;t\_17(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/13_1.sql)
14 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_78&nbsp;on&nbsp;t\_78(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/14_1.sql)
15 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;dbname<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/15_1.sql)
16 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_98&nbsp;on&nbsp;t\_98(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/16_1.sql)
17 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_69&nbsp;on&nbsp;t\_69(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/17_1.sql)
18 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_29&nbsp;on&nbsp;t\_29(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/18_1.sql)
19 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;checkup\_test\_db<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/19_1.sql)
20 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t\_red\_fk\_2&nbsp;add&nbsp;constraint&nbsp;fk\_red\_fk2\_t1&nbsp;foreign&nbsp;key&nbsp;(r\_t1\_id)&nbsp;references&nbsp;t\_red\_fk\_1(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/20_1.sql)
21 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;pg\_reload\_conf()<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/21_1.sql)
22 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_11&nbsp;on&nbsp;t\_11(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/22_1.sql)
23 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_kcache<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/23_1.sql)
24 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_66&nbsp;on&nbsp;t\_66(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/24_1.sql)
25 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/25_1.sql)
26 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_31&nbsp;on&nbsp;t\_31(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/26_1.sql)
27 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |CREATE&nbsp;TABLE&nbsp;test\_schema."orders\_A"&nbsp;(&nbsp;&nbsp;id&nbsp;serial,&nbsp;&nbsp;cnt&nbsp;integer,&nbsp;&nbsp;CONSTRAINT&nbsp;"orders\_A\_pk"&nbsp;PRIMARY&nbsp;KEY&nbsp;(id)&nbsp;)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/27_1.sql)
28 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_9&nbsp;on&nbsp;t\_9(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/28_1.sql)
29 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |update&nbsp;t\_with\_bloat&nbsp;set&nbsp;i&nbsp;=&nbsp;i<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/29_1.sql)
30 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_101&nbsp;on&nbsp;t\_101(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/30_1.sql)
31 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t\_fk\_1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/31_1.sql)
32 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_1&nbsp;on&nbsp;t\_1(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/32_1.sql)
33 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |CREATE&nbsp;TABLE&nbsp;test\_schema.orders&nbsp;(&nbsp;&nbsp;id&nbsp;serial,&nbsp;&nbsp;cnt&nbsp;integer,&nbsp;&nbsp;CONSTRAINT&nbsp;orders\_pk&nbsp;PRIMARY&nbsp;KEY&nbsp;(id)&nbsp;)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/33_1.sql)
34 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_with\_redundant\_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/34_1.sql)
35 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_40&nbsp;on&nbsp;t\_40(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/35_1.sql)
36 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_with\_bloat&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/36_1.sql)
37 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_58&nbsp;on&nbsp;t\_58(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/37_1.sql)
38 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_slw\_q&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate\_series(0,&nbsp;10000000)&nbsp;\_(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/38_1.sql)
39 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_fk\_1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate\_series(0,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/39_1.sql)
40 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_33&nbsp;on&nbsp;t\_33(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/40_1.sql)
41 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_red\_fk\_2&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;\*&nbsp;1000000)::int8&nbsp;as&nbsp;r\_t1\_id&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/41_1.sql)
42 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_21&nbsp;on&nbsp;t\_21(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/42_1.sql)
43 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_47&nbsp;on&nbsp;t\_47(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/43_1.sql)
44 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_4&nbsp;on&nbsp;t\_4(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/44_1.sql)
45 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |update&nbsp;t\_rar\_q&nbsp;set&nbsp;t\_dat=$1&nbsp;where&nbsp;t\_dat&nbsp;between&nbsp;$2&nbsp;and&nbsp;$3<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/45_1.sql)
46 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_73&nbsp;on&nbsp;t\_73(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/46_1.sql)
47 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_34&nbsp;on&nbsp;t\_34(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/47_1.sql)
48 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_64&nbsp;on&nbsp;t\_64(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/48_1.sql)
49 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;bloated&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;100000)&nbsp;\_(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/49_1.sql)
50 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;t\_rar\_q\_idx&nbsp;on&nbsp;t\_rar\_q(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/50_1.sql)
51 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_68&nbsp;on&nbsp;t\_68(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/51_1.sql)
52 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_12&nbsp;on&nbsp;t\_12(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/52_1.sql)
53 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |delete&nbsp;from&nbsp;bloated&nbsp;where&nbsp;i&nbsp;%&nbsp;$1&nbsp;=&nbsp;$2<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/53_1.sql)
54 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_90&nbsp;on&nbsp;t\_90(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/54_1.sql)
55 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;count(\*)&nbsp;from&nbsp;t\_slw\_q<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/55_1.sql)
56 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_39&nbsp;on&nbsp;t\_39(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/56_1.sql)
57 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_fk\_2&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;\*&nbsp;1000000)::int8&nbsp;as&nbsp;t1\_id&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/57_1.sql)
58 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r\_red\_fk\_1\_X\_idx&nbsp;on&nbsp;t\_red\_fk\_1(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/58_1.sql)
59 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_79&nbsp;on&nbsp;t\_79(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/59_1.sql)
60 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_38&nbsp;on&nbsp;t\_38(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/60_1.sql)
61 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_81&nbsp;on&nbsp;t\_81(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/61_1.sql)
62 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_with\_unused\_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/62_1.sql)
63 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_13&nbsp;on&nbsp;t\_13(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/63_1.sql)
64 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t\_fk\_2&nbsp;add&nbsp;constraint&nbsp;fk\_t2\_t1&nbsp;foreign&nbsp;key&nbsp;(t1\_id)&nbsp;references&nbsp;t\_fk\_1(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/64_1.sql)
65 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_43&nbsp;on&nbsp;t\_43(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/65_1.sql)
66 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_1&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000)&nbsp;\_(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/66_1.sql)
67 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_rar\_q&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;\*&nbsp;1000000)::int8&nbsp;as&nbsp;t\_dat&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/67_1.sql)
68 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_103&nbsp;on&nbsp;t\_103(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/68_1.sql)
69 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_71&nbsp;on&nbsp;t\_71(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/69_1.sql)
70 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;test\_schema.t\_with\_invalid\_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/70_1.sql)
71 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_75&nbsp;on&nbsp;t\_75(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/71_1.sql)
72 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_10&nbsp;on&nbsp;t\_10(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/72_1.sql)
73 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;i\_bloated&nbsp;on&nbsp;bloated(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/73_1.sql)
74 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |VACUUM&nbsp;ANALYZE<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/74_1.sql)
75 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_redundant\_1&nbsp;on&nbsp;t\_with\_redundant\_index(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/75_1.sql)
76 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_unused&nbsp;on&nbsp;t\_with\_unused\_index(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/76_1.sql)
77 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r\_red\_fk\_2\_fk\_idx&nbsp;on&nbsp;t\_red\_fk\_2(r\_t1\_id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/77_1.sql)
78 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_74&nbsp;on&nbsp;t\_74(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/78_1.sql)
79 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_80&nbsp;on&nbsp;t\_80(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/79_1.sql)
80 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;system&nbsp;set&nbsp;random\_page\_cost&nbsp;=&nbsp;2.22<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/80_1.sql)
81 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_108&nbsp;on&nbsp;t\_108(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/81_1.sql)
82 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_42&nbsp;on&nbsp;t\_42(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/82_1.sql)
83 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_109&nbsp;on&nbsp;t\_109(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/83_1.sql)
84 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_77&nbsp;on&nbsp;t\_77(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/84_1.sql)
85 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r\_red\_fk\_1\_id\_idx&nbsp;on&nbsp;t\_red\_fk\_1(id)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/85_1.sql)
86 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_24&nbsp;on&nbsp;t\_24(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/86_1.sql)
87 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_55&nbsp;on&nbsp;t\_55(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/87_1.sql)
88 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_70&nbsp;on&nbsp;t\_70(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/88_1.sql)
89 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_3&nbsp;on&nbsp;t\_3(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/89_1.sql)
90 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_96&nbsp;on&nbsp;t\_96(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/90_1.sql)
91 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_redundant\_2&nbsp;on&nbsp;t\_with\_redundant\_index(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/91_1.sql)
92 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_67&nbsp;on&nbsp;t\_67(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/92_1.sql)
93 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_62&nbsp;on&nbsp;t\_62(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/93_1.sql)
94 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_48&nbsp;on&nbsp;t\_48(i)<br/><br/>[Full query](../../json_reports/1_2019_03_28T00_26_49_+0000/K_query_groups/94_1.sql)





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L001"></a>
[Table of contents](#postgres-checkup_top)
# L001 Table sizes #

## Observations ##
Data collected: 2019-03-28 00:27:51 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
The list is limited to 100 items.  

\# | Table | Rows | &#9660;&nbsp;Total size | Table size | Index(es) Size | TOAST Size
---|---|------|------------|------------|----------------|------------
<no value> | =====TOTAL===== | ~19M | 952 MB (100.00%) | 732 MB (100.00%) | 220 MB (100.00%) | 8192 bytes (100.00%)
1 | t_slw_q | ~10M | 346 MB (36.32%) | 346 MB (47.23%) | 0 bytes (0.00%) | <no value>
2 | t_red_fk_1 | ~1M | 99 MB (10.39%) | 35 MB (4.73%) | 64 MB (29.24%) | <no value>
3 | t_rar_q | ~1000k | 93 MB (9.75%) | 50 MB (6.82%) | 43 MB (19.48%) | <no value>
4 | t_with_redundant_index | ~1000k | 78 MB (8.14%) | 35 MB (4.73%) | 43 MB (19.49%) | <no value>
5 | t_with_bloat | ~1000k | 69 MB (7.27%) | 69 MB (9.45%) | 0 bytes (0.00%) | <no value>
6 | t_red_fk_2 | ~1000k | 64 MB (6.69%) | 42 MB (5.77%) | 21 MB (9.75%) | <no value>
7 | t_fk_1 | ~1M | 56 MB (5.89%) | 35 MB (4.73%) | 21 MB (9.75%) | <no value>
8 | t_with_unused_index | ~1000k | 56 MB (5.89%) | 35 MB (4.73%) | 21 MB (9.75%) | <no value>
9 | t_fk_2 | ~1000k | 42 MB (4.44%) | 42 MB (5.77%) | 0 bytes (0.00%) | <no value>
10 | test_schema.t_with_invalid_index | ~1000k | 35 MB (3.63%) | 35 MB (4.73%) | 0 bytes (0.00%) | <no value>
11 | bloated | ~50k | 5784 kB (0.59%) | 3576 kB (0.48%) | 2208 kB (0.98%) | <no value>
12 | t_16 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
13 | t_109 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
14 | t_8 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
15 | t_13 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
16 | t_18 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
17 | t_20 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
18 | t_22 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
19 | t_24 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
20 | t_26 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
21 | t_28 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
22 | t_30 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
23 | t_32 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
24 | t_35 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
25 | t_100 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
26 | t_101 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
27 | t_102 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
28 | t_103 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
29 | t_104 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
30 | t_105 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
31 | t_106 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
32 | t_107 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
33 | t_108 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
34 | t_2 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
35 | t_6 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
36 | t_9 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
37 | t_14 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
38 | t_19 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
39 | t_21 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
40 | t_23 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
41 | t_25 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
42 | t_27 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
43 | t_29 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
44 | t_31 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
45 | t_34 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
46 | t_37 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
47 | t_40 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
48 | t_43 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
49 | t_46 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
50 | t_49 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
51 | t_50 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
52 | t_51 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
53 | t_52 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
54 | t_12 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
55 | t_17 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
56 | t_3 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
57 | t_7 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
58 | t_4 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
59 | t_10 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
60 | t_15 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
61 | t_33 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
62 | t_36 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
63 | t_39 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
64 | t_42 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
65 | t_45 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
66 | t_48 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
67 | t_57 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
68 | t_58 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
69 | t_59 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
70 | t_60 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
71 | t_61 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
72 | t_62 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
73 | t_63 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
74 | t_64 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
75 | t_65 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
76 | t_78 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
77 | t_67 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
78 | t_68 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
79 | t_69 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
80 | t_70 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
81 | t_71 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
82 | t_72 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
83 | t_73 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
84 | t_74 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
85 | t_75 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
86 | t_76 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
87 | t_77 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
88 | t_66 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
89 | t_38 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
90 | t_41 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
91 | t_44 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
92 | t_47 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
93 | t_53 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
94 | t_54 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
95 | t_55 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
96 | t_56 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
97 | t_1 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
98 | t_5 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>
99 | t_11 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.02%) | <no value>


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L003"></a>
[Table of contents](#postgres-checkup_top)
# L003 Integer (int2, int4) out-of-range risks in PKs #

## Observations ##
Data collected: 2019-03-28 00:27:52 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
Table | PK | Type | Current max value | &#9660;&nbsp;Capacity used, %
------|----|------|-------------------|-------------------------------
test_schema.orders | id | int4 |800,000,000 | 37.25
test_schema."orders_A" | id | int4 |300,000,000 | 13.97


## Conclusions ##


## Recommendations ##
