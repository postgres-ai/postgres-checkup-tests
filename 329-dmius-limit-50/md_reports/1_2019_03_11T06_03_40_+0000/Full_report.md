# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-03-11 06:04:52 +0000


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
Data collected: 2019-03-11 06:04:23 +0000 UTC  





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
MemFree:          209512 kB
MemAvailable:    2684964 kB
Buffers:           87520 kB
Cached:          2880784 kB
SwapCached:          104 kB
Active:          1344260 kB
Inactive:        2020144 kB
Active(anon):     419316 kB
Inactive(anon):   324396 kB
Active(file):     924944 kB
Inactive(file):  1695748 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2095100 kB
Dirty:             13528 kB
Writeback:             0 kB
AnonPages:        396016 kB
Mapped:           282296 kB
Shmem:            347616 kB
Slab:             145388 kB
SReclaimable:     115860 kB
SUnreclaim:        29528 kB
KernelStack:        2864 kB
PageTables:         7792 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988900 kB
Committed_AS:    1481000 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              440 kB
HardwareCorrupted:     0 kB
AnonHugePages:    176128 kB
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
Data collected: 2019-03-11 06:04:23 +0000 UTC  


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
Data collected: 2019-03-11 06:04:24 +0000 UTC  


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
Data collected: 2019-03-11 06:04:27 +0000 UTC  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

 Indicator | Value
-----------|-------
Postgres Version | PostgreSQL&nbsp;11.2&nbsp;(Ubuntu&nbsp;11.2-1.pgdg16.04+1)&nbsp;on&nbsp;x86_64-pc-linux-gnu,&nbsp;compiled&nbsp;by&nbsp;gcc&nbsp;(Ubuntu&nbsp;5.4.0-6ubuntu1~16.04.11)&nbsp;5.4.0&nbsp;20160609,&nbsp;64-bit
Config file | /etc/postgresql/11/main/postgresql.conf
Role | Master
Replicas | 
Started At | 2019-03-11&nbsp;05:58:39+00
Uptime | 00:05:49
Checkpoints | 6
Forced Checkpoints | 100.0%
Checkpoint MB/sec | 0.287082
Database Name | dbname
Database Size | 1120&nbsp;MB
Stats Since | 2019-03-11&nbsp;05:58:44+00
Stats Age | 00:05:43
Installed Extensions | pg_stat_kcache&nbsp;2.1.1,&nbsp;pg_stat_statements&nbsp;1.6,&nbsp;plpgsql&nbsp;1.0
Cache Effectiveness | 95.64%
Successful Commits | 99.97%
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
dbname | 1.10&nbsp;GiB
postgres | 7.50&nbsp;MiB
checkup_test_db | 7.49&nbsp;MiB
template1 | 7.36&nbsp;MiB
template0 | 7.36&nbsp;MiB


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A005"></a>
[Table of contents](#postgres-checkup_top)
# A005 Extensions #

## Observations ##
Data collected: 2019-03-11 06:04:27 +0000 UTC  


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
Data collected: 2019-03-11 06:04:28 +0000 UTC  

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
Data collected: 2019-03-11 06:04:31 +0000 UTC  


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
Data collected: 2019-03-11 06:04:32 +0000 UTC  

    
### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

#### System directories ####
Device | FS Type | Size | Available | Usage | Used | Mount Point 
-------|---------|------|-----------|-----|------|-------------
overlay|overlay|22G|14G|38%|7.9G|/
tmpfs|tmpfs|64M|64M|0%|0|/dev
tmpfs|tmpfs|1.9G|1.9G|0%|0|/sys/fs/cgroup
/dev/sda9|ext4|22G|14G|38%|7.9G|/builds/postgres-ai-team
shm|tmpfs|64M|64M|1%|8.0K|/dev/shm


#### Database directories ####
Name | FS Type | Size | Available | Usage | Used | Mount Point | Path | Device
-----|---------|------|-----------|-----|------|-------------|------|-------
PGDATA|overlay|22G|14G|38%|7.9G|/|/var/lib/postgresql/11/main|overlay
WAL directory|overlay|22G|14G|38%|7.9G|/|/var/lib/postgresql/11/main/pg_wal|overlay
stats_temp_directory|overlay|22G|14G|38%|7.9G|/|/var/run/postgresql/11-main.pg_stat_tmp|overlay


    




## Conclusions ##

## Recommendations ##
---
<a name="postgres-checkup_D002"></a>
[Table of contents](#postgres-checkup_top)
# D002 Useful Linux tools
## Observations ##
Data collected: 2019-03-11 06:04:32 +0000 UTC  


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
Data collected: 2019-03-11 06:04:33 +0000 UTC  


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
Data collected: 2019-03-11 06:04:33 +0000 UTC  


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
Data collected: 2019-03-11 06:04:33 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

#### Databases ####
  

\# | Database | &#9660;&nbsp;Age | Capacity used, % | Warning | datfrozenxid
--|--------|-----|------------------|---------|--------------
1 |postgres |3983 |0 |  |561
2 |dbname |3983 |0 |  |561
3 |template1 |3983 |0 |  |561
4 |template0 |3983 |0 |  |561
5 |checkup_test_db |3983 |0 |  |561



#### Tables in the observed database ####
The list is limited to 100 items.  

\# | Relation | Age | &#9660;&nbsp;Capacity used, % | Warning |rel_relfrozenxid | toast_relfrozenxid 
---|-------|-----|------------------|---------|-----------------|--------------------
1 |t_8 |3859 |0 |  |685 |0 |
2 |t_13 |3849 |0 |  |695 |0 |
3 |t_18 |3839 |0 |  |705 |0 |
4 |t_20 |3835 |0 |  |709 |0 |
5 |t_22 |3831 |0 |  |713 |0 |
6 |t_24 |3827 |0 |  |717 |0 |
7 |t_26 |3823 |0 |  |721 |0 |
8 |t_28 |3819 |0 |  |725 |0 |
9 |t_30 |3815 |0 |  |729 |0 |
10 |t_32 |3811 |0 |  |733 |0 |
11 |t_35 |3805 |0 |  |739 |0 |
12 |t_38 |3799 |0 |  |745 |0 |
13 |t_41 |3793 |0 |  |751 |0 |
14 |t_44 |3787 |0 |  |757 |0 |
15 |t_47 |3781 |0 |  |763 |0 |
16 |t_53 |3769 |0 |  |775 |0 |
17 |t_54 |3767 |0 |  |777 |0 |
18 |t_55 |3765 |0 |  |779 |0 |
19 |t_56 |3763 |0 |  |781 |0 |
20 |t_57 |3761 |0 |  |783 |0 |
21 |t_58 |3759 |0 |  |785 |0 |
22 |t_1 |3873 |0 |  |671 |0 |
23 |t_5 |3865 |0 |  |679 |0 |
24 |t_11 |3853 |0 |  |691 |0 |
25 |t_16 |3843 |0 |  |701 |0 |
26 |t_rar_q |3967 |0 |  |577 |0 |
27 |t_fillfactor |3965 |0 |  |579 |0 |
28 |t_with_unused_index |3964 |0 |  |580 |0 |
29 |t_with_redundant_index |3962 |0 |  |582 |0 |
30 |test_schema.t_with_invalid_index |3958 |0 |  |586 |0 |
31 |t_fk_1 |3956 |0 |  |588 |0 |
32 |t_fk_2 |3954 |0 |  |590 |0 |
33 |bloated |3952 |0 |  |592 |0 |
34 |t_red_fk_1 |3948 |0 |  |596 |0 |
35 |t_red_fk_2 |3944 |0 |  |600 |0 |
36 |t_slw_q |3941 |0 |  |603 |0 |
37 |t_with_bloat<sup>*</sup> |3949 |0 |  |595 |0 |
38 |t_2 |3871 |0 |  |673 |0 |
39 |t_6 |3863 |0 |  |681 |0 |
40 |t_9 |3857 |0 |  |687 |0 |
41 |t_14 |3847 |0 |  |697 |0 |
42 |t_19 |3837 |0 |  |707 |0 |
43 |t_21 |3833 |0 |  |711 |0 |
44 |t_23 |3829 |0 |  |715 |0 |
45 |t_25 |3825 |0 |  |719 |0 |
46 |t_27 |3821 |0 |  |723 |0 |
47 |t_29 |3817 |0 |  |727 |0 |
48 |t_31 |3813 |0 |  |731 |0 |
49 |t_34 |3807 |0 |  |737 |0 |
50 |t_37 |3801 |0 |  |743 |0 |
51 |t_40 |3795 |0 |  |749 |0 |
52 |t_43 |3789 |0 |  |755 |0 |
53 |t_46 |3783 |0 |  |761 |0 |
54 |t_49 |3777 |0 |  |767 |0 |
55 |t_50 |3775 |0 |  |769 |0 |
56 |t_51 |3773 |0 |  |771 |0 |
57 |t_52 |3771 |0 |  |773 |0 |
58 |t_12 |3851 |0 |  |693 |0 |
59 |pg_catalog.pg_class |3983 |0 |  |561 |0 |
60 |t_17 |3841 |0 |  |703 |0 |
61 |t_3 |3869 |0 |  |675 |0 |
62 |t_7 |3861 |0 |  |683 |0 |
63 |t_4 |3867 |0 |  |677 |0 |
64 |t_10 |3855 |0 |  |689 |0 |
65 |t_15 |3845 |0 |  |699 |0 |
66 |t_33 |3809 |0 |  |735 |0 |
67 |t_36 |3803 |0 |  |741 |0 |
68 |t_39 |3797 |0 |  |747 |0 |
69 |t_42 |3791 |0 |  |753 |0 |
70 |t_45 |3785 |0 |  |759 |0 |
71 |t_48 |3779 |0 |  |765 |0 |
72 |t_59 |3757 |0 |  |787 |0 |
73 |t_60 |3755 |0 |  |789 |0 |
74 |t_61 |3753 |0 |  |791 |0 |
75 |t_62 |3751 |0 |  |793 |0 |
76 |t_63 |3749 |0 |  |795 |0 |
77 |t_64 |3747 |0 |  |797 |0 |
78 |t_65 |3745 |0 |  |799 |0 |
79 |t_66 |3743 |0 |  |801 |0 |
80 |t_67 |3741 |0 |  |803 |0 |
81 |t_68 |3739 |0 |  |805 |0 |
82 |t_69 |3737 |0 |  |807 |0 |
83 |t_70 |3735 |0 |  |809 |0 |
84 |t_71 |3733 |0 |  |811 |0 |
85 |t_72 |3731 |0 |  |813 |0 |
86 |t_73 |3729 |0 |  |815 |0 |
87 |t_74 |3727 |0 |  |817 |0 |
88 |t_75 |3725 |0 |  |819 |0 |
89 |t_76 |3723 |0 |  |821 |0 |
90 |t_77 |3721 |0 |  |823 |0 |
91 |t_78 |3719 |0 |  |825 |0 |
92 |t_79 |3717 |0 |  |827 |0 |
93 |t_80 |3715 |0 |  |829 |0 |
94 |t_81 |3713 |0 |  |831 |0 |
95 |t_82 |3711 |0 |  |833 |0 |
96 |t_83 |3709 |0 |  |835 |0 |
97 |t_84 |3707 |0 |  |837 |0 |
98 |t_85 |3705 |0 |  |839 |0 |
99 |t_86 |3703 |0 |  |841 |0 |
100 |test_schema.order |3875 |0 |  |669 |0 |


<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F003"></a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead tuples #

## Observations ##
Data collected: 2019-03-11 06:04:33 +0000 UTC  
Current database: dbname  
Stats reset: 00:06:00 ago (2019-03-11 05:58:44 +0000 UTC)  
### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
  
  
\#|  Relation | reltype | Since last autovacuum | Since last vacuum | Autovacuum Count | Vacuum Count | n_tup_ins | n_tup_upd | n_tup_del | pg_class.reltuples | n_live_tup | n_dead_tup | &#9660;Dead Tuples Ratio, %
---|-------|------|-----------------------|-------------------|----------|---------|-----------|-----------|-----------|--------------------|------------|------------|-----------
1 |test_schema.order |r |<no value> |00:01:31.795367 |0 |1 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
2 |bloated |r |<no value> |00:01:31.193388 |0 |2 |100000 |0 |50000 |50000 |50000 |0 | 0 
3 |t_with_bloat<sup>*</sup> |r |00:01:58.822757 |00:01:30.748494 |1 |2 |1000000 |1000000 |0 |1000000 |1000000 |0 | 0 
4 |t_rar_q |r |00:02:34.508613 |00:01:31.664235 |1 |2 |1000000 |744190 |0 |1000000 |1000000 |0 | 0 
5 |pg_catalog.pg_attribute |r |<no value> |00:01:30.578984 |0 |2 |8163 |3 |0 |10755 |10755 |0 | 0 
6 |t_red_fk_1 |r |<no value> |00:01:31.174532 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
7 |t_red_fk_2 |r |<no value> |00:01:31.099803 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
8 |t_with_unused_index |r |<no value> |00:01:31.560236 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
9 |t_fk_1 |r |<no value> |00:01:31.352365 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
10 |test_schema.t_with_invalid_index |r |<no value> |00:01:31.425195 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
11 |pg_catalog.pg_depend |r |<no value> |00:01:30.205692 |0 |2 |4121 |0 |0 |11592 |11592 |0 | 0 
12 |t_with_redundant_index |r |<no value> |00:01:31.492035 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
13 |t_fk_2 |r |<no value> |00:01:31.28085 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
14 |t_slw_q |r |<no value> |00:01:31.010079 |0 |2 |10000001 |0 |0 |9999979 |9999979 |0 | 0 

<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F004"></a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-03-11 06:04:34 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###


The list is limited to 100 items.  

\# | Table | Size | Extra | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat ratio, % | Live | Last vacuum | Fillfactor
---|----|------|-------|------------------------------|------------------|--------------------|------|-------------|------------
&nbsp;|===== TOTAL ===== |799.08&nbsp;MiB ||46.67&nbsp;MiB |48,930,816 |5.84|||
1 |t_with_bloat<sup>*</sup> |69.15&nbsp;MiB |~34.71&nbsp;MiB (50.19%)|34.71&nbsp;MiB |36,388,864 | **50.19** |~34.44&nbsp;MiB | 2019-03-11 06:03:03  |100
2 |t_rar_q |49.87&nbsp;MiB |~7.79&nbsp;MiB (15.60%)|7.79&nbsp;MiB |8,159,232 |15.60 |~42.09&nbsp;MiB | 2019-03-11 06:03:02  |100
3 |bloated |3.47&nbsp;MiB |~1.74&nbsp;MiB (50.11%)|1.74&nbsp;MiB |1,818,624 | **50.11** |~1.73&nbsp;MiB | 2019-03-11 06:03:03  |100
4 |t_slw_q |345.69&nbsp;MiB |~1.36&nbsp;MiB (0.39%)|1.36&nbsp;MiB |1,417,216 |0.39 |~344.34&nbsp;MiB | 2019-03-11 06:03:03  |100
5 |t_fk_2 |42.24&nbsp;MiB |~152.00&nbsp;KiB (0.35%)|152.00&nbsp;KiB |155,648 |0.35 |~42.09&nbsp;MiB | 2019-03-11 06:03:03  |100
6 |t_red_fk_2 |42.24&nbsp;MiB |~152.00&nbsp;KiB (0.35%)|152.00&nbsp;KiB |155,648 |0.35 |~42.09&nbsp;MiB | 2019-03-11 06:03:03  |100
7 |t_fk_1 |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-11 06:03:03  |100
8 |t_with_redundant_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-11 06:03:03  |100
9 |test_schema.order |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-11 06:03:02  |100
10 |t_with_unused_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-11 06:03:03  |100
11 |test_schema.t_with_invalid_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-11 06:03:03  |100
12 |t_red_fk_1 |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-11 06:03:03  |100
13 |t_822 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
14 |t_262 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
15 |t_46 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:03  |100
16 |t_353 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
17 |t_236 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
18 |t_229 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
19 |t_564 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
20 |t_340 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
21 |t_409 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
22 |t_983 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
23 |t_114 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
24 |t_789 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
25 |t_50 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:03  |100
26 |t_949 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
27 |t_660 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
28 |t_239 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
29 |t_557 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
30 |t_190 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
31 |t_53 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:02  |100
32 |t_794 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
33 |t_163 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
34 |t_757 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
35 |t_282 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
36 |t_202 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
37 |t_438 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
38 |t_516 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
39 |t_243 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
40 |t_200 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
41 |t_838 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
42 |t_550 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
43 |t_503 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
44 |t_29 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:03  |100
45 |t_902 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
46 |t_231 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
47 |t_149 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
48 |t_167 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
49 |t_710 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
50 |t_111 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
51 |t_84 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
52 |t_386 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
53 |t_4 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
54 |t_415 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
55 |t_630 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
56 |t_369 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
57 |t_2 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:03  |100
58 |t_942 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
59 |t_400 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
60 |t_559 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
61 |t_703 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
62 |t_459 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
63 |t_214 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
64 |t_160 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
65 |t_528 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
66 |t_628 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
67 |t_389 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
68 |t_864 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
69 |t_127 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
70 |t_554 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
71 |t_574 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
72 |t_235 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
73 |t_799 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
74 |t_170 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
75 |t_49 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:03  |100
76 |t_933 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
77 |t_667 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
78 |t_55 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:02  |100
79 |t_576 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
80 |t_445 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
81 |t_71 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
82 |t_75 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
83 |t_545 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
84 |t_16 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:02  |100
85 |t_868 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
86 |t_257 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
87 |t_251 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
88 |t_596 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
89 |t_932 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
90 |t_583 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
91 |t_383 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
92 |t_743 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
93 |t_78 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
94 |t_543 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:06  |100
95 |t_234 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:05  |100
96 |t_920 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
97 |t_927 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
98 |t_69 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
99 |t_828 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:07  |100
100 |t_115 |40.00&nbsp;KiB |~0.00&nbsp;bytes (0.00%)| | |0.00 |~40.00&nbsp;KiB | 2019-03-11 06:03:04  |100
 
<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F005"></a>
[Table of contents](#postgres-checkup_top)
# F005 Autovacuum: Index bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-03-11 06:04:34 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
The list is limited to 100 items.  

\# | Index (Table) | &#9660;&nbsp;Size | Extra | Estimated bloat | Est. bloat, bytes | Est. bloat ratio, % | Live | Fill factor
---|------------|-------------------|-------|-------|-------------|-------------|------|-------------
&nbsp;|===== TOTAL ===== |280.55&nbsp;MiB ||31.73&nbsp;MiB |33,267,712|11.31||
1 |t_rar_q_idx (t_rar_q) |42.86&nbsp;MiB |~23.65&nbsp;MiB (0.00%) |21.50&nbsp;MiB |22,544,384 | **50.16** |~21.36&nbsp;MiB |90
2 |ordiadjust_pk (test_schema.order) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
3 |r_red_fk_2_fk_idx (t_red_fk_2) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
4 |t_red_fk_1_pkey (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
5 |r_red_fk_1_x_idx (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
6 |r_red_fk_1_id_idx (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
7 |t_fk_1_pkey (t_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
8 |i_redundant_2 (t_with_redundant_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
9 |i_redundant_1 (t_with_redundant_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
10 |i_unused (t_with_unused_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
11 |i_bloated (bloated) |2.16&nbsp;MiB |~1.19&nbsp;MiB (0.00%) |1.08&nbsp;MiB |1,130,496 | **50.00** |~1.08&nbsp;MiB |90
12 |pg_depend_reference_index (pg_catalog.pg_depend) |600.00&nbsp;KiB |~272.00&nbsp;KiB (0.00%) |232.00&nbsp;KiB |237,568 |38.67 |~368.00&nbsp;KiB |90
13 |pg_depend_depender_index (pg_catalog.pg_depend) |560.00&nbsp;KiB |~232.00&nbsp;KiB (0.00%) |192.00&nbsp;KiB |196,608 |34.29 |~368.00&nbsp;KiB |90
14 |pg_attribute_relid_attnam_index (pg_catalog.pg_attribute) |344.00&nbsp;KiB | | | |0.00 |~0.98&nbsp;MiB |90
15 |pg_proc_proname_args_nsp_index (pg_catalog.pg_proc) |264.00&nbsp;KiB | | | |0.00 |~392.00&nbsp;KiB |90
16 |pg_attribute_relid_attnum_index (pg_catalog.pg_attribute) |256.00&nbsp;KiB |~32.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |3.12 |~248.00&nbsp;KiB |90
17 |pg_description_o_c_o_index (pg_catalog.pg_description) |184.00&nbsp;KiB |~40.00&nbsp;KiB (0.00%) |32.00&nbsp;KiB |32,768 |17.39 |~152.00&nbsp;KiB |90
18 |pg_class_relname_nsp_index (pg_catalog.pg_class) |160.00&nbsp;KiB | | | |0.00 |~232.00&nbsp;KiB |90
19 |pg_type_typname_nsp_index (pg_catalog.pg_type) |144.00&nbsp;KiB | | | |0.00 |~232.00&nbsp;KiB |90
20 |pg_class_tblspc_relfilenode_index (pg_catalog.pg_class) |120.00&nbsp;KiB |~64.00&nbsp;KiB (0.00%) |56.00&nbsp;KiB |57,344 | **46.67** |~64.00&nbsp;KiB |90
21 |pg_index_indrelid_index (pg_catalog.pg_index) |48.00&nbsp;KiB |~16.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |16.67 |~40.00&nbsp;KiB |90
22 |pg_shdepend_depender_index (pg_catalog.pg_shdepend) |48.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |16.67 |~40.00&nbsp;KiB |90
23 |pg_collation_name_enc_nsp_index (pg_catalog.pg_collation) |48.00&nbsp;KiB | | | |0.00 |~72.00&nbsp;KiB |90
24 |pg_operator_oprname_l_r_n_index (pg_catalog.pg_operator) |48.00&nbsp;KiB | | | |0.00 |~88.00&nbsp;KiB |90
25 |pg_index_indexrelid_index (pg_catalog.pg_index) |48.00&nbsp;KiB |~16.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |16.67 |~40.00&nbsp;KiB |90
26 |i_999 (t_999) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
27 |pg_shdepend_reference_index (pg_catalog.pg_shdepend) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
28 |pg_amop_fam_strat_index (pg_catalog.pg_amop) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
29 |pg_amop_opr_fam_index (pg_catalog.pg_amop) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
30 |i_964 (t_964) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
31 |i_965 (t_965) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
32 |i_966 (t_966) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
33 |i_967 (t_967) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
34 |i_968 (t_968) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
35 |i_969 (t_969) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
36 |i_970 (t_970) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
37 |i_971 (t_971) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
38 |i_972 (t_972) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
39 |i_973 (t_973) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
40 |i_974 (t_974) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
41 |i_975 (t_975) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
42 |i_976 (t_976) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
43 |i_977 (t_977) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
44 |i_978 (t_978) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
45 |i_979 (t_979) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
46 |i_980 (t_980) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
47 |i_981 (t_981) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
48 |i_982 (t_982) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
49 |i_983 (t_983) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
50 |i_984 (t_984) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
51 |i_985 (t_985) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
52 |i_986 (t_986) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
53 |i_987 (t_987) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
54 |i_988 (t_988) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
55 |i_989 (t_989) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
56 |i_990 (t_990) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
57 |i_991 (t_991) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
58 |i_992 (t_992) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
59 |i_993 (t_993) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
60 |i_994 (t_994) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
61 |i_995 (t_995) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
62 |i_996 (t_996) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
63 |i_997 (t_997) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
64 |i_998 (t_998) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
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
Data collected: 2019-03-11 06:04:37 +0000 UTC  
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
Data collected: 2019-03-11 06:04:37 +0000 UTC  


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
Data collected: 2019-03-11 06:04:37 +0000 UTC  


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
Data collected: 2019-03-11 06:04:37 +0000 UTC  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
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
1|postgres|0|0|2019-03-11T05:58:39.899901+00:00|00:05:58
2|dbname|0|0|2019-03-11T05:58:44.258509+00:00|00:05:54
3|checkup_test_db|0|0|2019-03-11T06:03:45.957774+00:00|00:00:52


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_H001"></a>
[Table of contents](#postgres-checkup_top)
# H001 Invalid indexes #

## Observations ##
Data collected: 2019-03-11 06:04:38 +0000 UTC  
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
100
## Observations ##
Data collected: 2019-03-11 06:04:38 +0000 UTC  
Current database: dbname  
Stats reset: 00:06:00 ago (2019-03-11 05:58:44 +0000 UTC)  
:warning: Statistics age is less than 30 days. Make decisions on index cleanup with caution!
### Never Used Indexes ###
The list is limited to 100 items.  

\#| Table | Index | runner-fa6cab46-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Supports FK
--|-------|-------|----|-----|-----|-----
&nbsp;|=====TOTAL=====|||169.86&nbsp;MiB|257.58&nbsp;MiB|
1|t_red_fk_1|r_red_fk_1_x_idx|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
2|t_with_redundant_index|i_redundant_2|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
3|t_red_fk_2|r_red_fk_2_fk_idx|0|21.45&nbsp;MiB|42.24&nbsp;MiB|
4|t_with_redundant_index|i_redundant_1|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
5|t_red_fk_1|r_red_fk_1_id_idx|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
6|t_with_unused_index|i_unused|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
7|bloated|i_bloated|0|2.16&nbsp;MiB|3.47&nbsp;MiB|
8|t_591|i_591|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
9|t_248|i_248|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
10|t_980|i_980|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
11|t_491|i_491|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
12|t_994|i_994|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
13|t_822|i_822|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
14|t_262|i_262|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
15|t_46|i_46|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
16|t_353|i_353|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
17|t_236|i_236|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
18|t_229|i_229|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
19|t_564|i_564|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
20|t_340|i_340|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
21|t_409|i_409|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
22|t_983|i_983|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
23|t_114|i_114|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
24|t_789|i_789|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
25|t_50|i_50|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
26|t_949|i_949|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
27|t_660|i_660|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
28|t_239|i_239|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
29|t_557|i_557|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
30|t_190|i_190|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
31|t_53|i_53|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
32|t_794|i_794|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
33|t_163|i_163|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
34|t_757|i_757|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
35|t_282|i_282|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
36|t_202|i_202|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
37|t_438|i_438|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
38|t_516|i_516|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
39|t_243|i_243|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
40|t_200|i_200|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
41|t_838|i_838|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
42|t_550|i_550|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
43|t_503|i_503|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
44|t_29|i_29|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
45|t_902|i_902|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
46|t_231|i_231|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
47|t_149|i_149|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
48|t_167|i_167|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
49|t_710|i_710|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
50|t_111|i_111|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
51|t_84|i_84|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
52|t_386|i_386|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
53|t_4|i_4|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
54|t_415|i_415|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
55|t_630|i_630|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
56|t_369|i_369|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
57|t_2|i_2|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
58|t_942|i_942|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
59|t_400|i_400|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
60|t_559|i_559|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
61|t_703|i_703|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
62|t_459|i_459|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
63|t_214|i_214|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
64|t_160|i_160|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
65|t_528|i_528|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
66|t_628|i_628|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
67|t_389|i_389|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
68|t_864|i_864|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
69|t_127|i_127|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
70|t_554|i_554|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
71|t_574|i_574|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
72|t_235|i_235|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
73|t_799|i_799|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
74|t_170|i_170|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
75|t_49|i_49|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
76|t_933|i_933|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
77|t_667|i_667|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
78|t_55|i_55|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
79|t_576|i_576|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
80|t_445|i_445|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
81|t_71|i_71|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
82|t_75|i_75|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
83|t_545|i_545|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
84|t_16|i_16|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
85|t_868|i_868|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
86|t_257|i_257|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
87|t_251|i_251|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
88|t_596|i_596|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
89|t_932|i_932|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
90|t_583|i_583|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
91|t_383|i_383|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
92|t_743|i_743|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
93|t_78|i_78|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
94|t_543|i_543|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
95|t_234|i_234|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
96|t_920|i_920|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
97|t_927|i_927|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
98|t_69|i_69|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
99|t_828|i_828|0|40.00&nbsp;KiB|40.00&nbsp;KiB|
100|t_115|i_115|0|40.00&nbsp;KiB|40.00&nbsp;KiB|

### Rarely Used Indexes ###
  

\#| Table | Index | runner-fa6cab46-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Comment | Supports FK
--|-------|-------|-----|-----|-----|----|-----
&nbsp;|=====TOTAL=====|||42.86&nbsp;MiB|49.87&nbsp;MiB||
1|t_rar_q|t_rar_q_idx|scans: 1\/hour, writes: 1,744,190\/hour|42.86&nbsp;MiB|49.87&nbsp;MiB|Low Scans, High Writes|

### Redundant indexes ###
  

\#| Table | Index | Redundant to |runner-fa6cab46-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Supports FK
--|-------|-------|--------------|--|-----|-----|-----
&nbsp;|=====TOTAL=====||||107.23&nbsp;MiB|172.86&nbsp;MiB|
1|t_with_redundant_index|i_redundant_1|i_redundant_2<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
2|t_with_redundant_index|i_redundant_2|i_redundant_1<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
3|t_red_fk_1|t_red_fk_1_pkey|r_red_fk_1_id_idx<br/>r_red_fk_1_x_idx<br/>|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
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
DROP INDEX CONCURRENTLY i_110; -- 40 kB, Never Used Indexes, table t_110
DROP INDEX CONCURRENTLY i_111; -- 40 kB, Never Used Indexes, table t_111
DROP INDEX CONCURRENTLY i_112; -- 40 kB, Never Used Indexes, table t_112
DROP INDEX CONCURRENTLY i_113; -- 40 kB, Never Used Indexes, table t_113
DROP INDEX CONCURRENTLY i_114; -- 40 kB, Never Used Indexes, table t_114
DROP INDEX CONCURRENTLY i_115; -- 40 kB, Never Used Indexes, table t_115
DROP INDEX CONCURRENTLY i_116; -- 40 kB, Never Used Indexes, table t_116
DROP INDEX CONCURRENTLY i_117; -- 40 kB, Never Used Indexes, table t_117
DROP INDEX CONCURRENTLY i_118; -- 40 kB, Never Used Indexes, table t_118
DROP INDEX CONCURRENTLY i_119; -- 40 kB, Never Used Indexes, table t_119
DROP INDEX CONCURRENTLY i_12; -- 40 kB, Never Used Indexes, table t_12
DROP INDEX CONCURRENTLY i_120; -- 40 kB, Never Used Indexes, table t_120
DROP INDEX CONCURRENTLY i_121; -- 40 kB, Never Used Indexes, table t_121
DROP INDEX CONCURRENTLY i_122; -- 40 kB, Never Used Indexes, table t_122
DROP INDEX CONCURRENTLY i_123; -- 40 kB, Never Used Indexes, table t_123
DROP INDEX CONCURRENTLY i_124; -- 40 kB, Never Used Indexes, table t_124
DROP INDEX CONCURRENTLY i_125; -- 40 kB, Never Used Indexes, table t_125
DROP INDEX CONCURRENTLY i_126; -- 40 kB, Never Used Indexes, table t_126
DROP INDEX CONCURRENTLY i_127; -- 40 kB, Never Used Indexes, table t_127
DROP INDEX CONCURRENTLY i_128; -- 40 kB, Never Used Indexes, table t_128
DROP INDEX CONCURRENTLY i_129; -- 40 kB, Never Used Indexes, table t_129
DROP INDEX CONCURRENTLY i_13; -- 40 kB, Never Used Indexes, table t_13
DROP INDEX CONCURRENTLY i_130; -- 40 kB, Never Used Indexes, table t_130
DROP INDEX CONCURRENTLY i_131; -- 40 kB, Never Used Indexes, table t_131
DROP INDEX CONCURRENTLY i_132; -- 40 kB, Never Used Indexes, table t_132
DROP INDEX CONCURRENTLY i_133; -- 40 kB, Never Used Indexes, table t_133
DROP INDEX CONCURRENTLY i_134; -- 40 kB, Never Used Indexes, table t_134
DROP INDEX CONCURRENTLY i_135; -- 40 kB, Never Used Indexes, table t_135
DROP INDEX CONCURRENTLY i_136; -- 40 kB, Never Used Indexes, table t_136
DROP INDEX CONCURRENTLY i_137; -- 40 kB, Never Used Indexes, table t_137
DROP INDEX CONCURRENTLY i_138; -- 40 kB, Never Used Indexes, table t_138
DROP INDEX CONCURRENTLY i_139; -- 40 kB, Never Used Indexes, table t_139
DROP INDEX CONCURRENTLY i_14; -- 40 kB, Never Used Indexes, table t_14
DROP INDEX CONCURRENTLY i_140; -- 40 kB, Never Used Indexes, table t_140
DROP INDEX CONCURRENTLY i_141; -- 40 kB, Never Used Indexes, table t_141
DROP INDEX CONCURRENTLY i_142; -- 40 kB, Never Used Indexes, table t_142
DROP INDEX CONCURRENTLY i_143; -- 40 kB, Never Used Indexes, table t_143
DROP INDEX CONCURRENTLY i_144; -- 40 kB, Never Used Indexes, table t_144
DROP INDEX CONCURRENTLY i_145; -- 40 kB, Never Used Indexes, table t_145
DROP INDEX CONCURRENTLY i_146; -- 40 kB, Never Used Indexes, table t_146
DROP INDEX CONCURRENTLY i_147; -- 40 kB, Never Used Indexes, table t_147
DROP INDEX CONCURRENTLY i_148; -- 40 kB, Never Used Indexes, table t_148
DROP INDEX CONCURRENTLY i_149; -- 40 kB, Never Used Indexes, table t_149
DROP INDEX CONCURRENTLY i_15; -- 40 kB, Never Used Indexes, table t_15
DROP INDEX CONCURRENTLY i_150; -- 40 kB, Never Used Indexes, table t_150
DROP INDEX CONCURRENTLY i_151; -- 40 kB, Never Used Indexes, table t_151
DROP INDEX CONCURRENTLY i_152; -- 40 kB, Never Used Indexes, table t_152
DROP INDEX CONCURRENTLY i_153; -- 40 kB, Never Used Indexes, table t_153
DROP INDEX CONCURRENTLY i_154; -- 40 kB, Never Used Indexes, table t_154
DROP INDEX CONCURRENTLY i_155; -- 40 kB, Never Used Indexes, table t_155
DROP INDEX CONCURRENTLY i_156; -- 40 kB, Never Used Indexes, table t_156
DROP INDEX CONCURRENTLY i_157; -- 40 kB, Never Used Indexes, table t_157
DROP INDEX CONCURRENTLY i_158; -- 40 kB, Never Used Indexes, table t_158
DROP INDEX CONCURRENTLY i_159; -- 40 kB, Never Used Indexes, table t_159
DROP INDEX CONCURRENTLY i_16; -- 40 kB, Never Used Indexes, table t_16
DROP INDEX CONCURRENTLY i_160; -- 40 kB, Never Used Indexes, table t_160
DROP INDEX CONCURRENTLY i_161; -- 40 kB, Never Used Indexes, table t_161
DROP INDEX CONCURRENTLY i_162; -- 40 kB, Never Used Indexes, table t_162
DROP INDEX CONCURRENTLY i_163; -- 40 kB, Never Used Indexes, table t_163
DROP INDEX CONCURRENTLY i_164; -- 40 kB, Never Used Indexes, table t_164
DROP INDEX CONCURRENTLY i_165; -- 40 kB, Never Used Indexes, table t_165
DROP INDEX CONCURRENTLY i_166; -- 40 kB, Never Used Indexes, table t_166
DROP INDEX CONCURRENTLY i_167; -- 40 kB, Never Used Indexes, table t_167
DROP INDEX CONCURRENTLY i_168; -- 40 kB, Never Used Indexes, table t_168
DROP INDEX CONCURRENTLY i_169; -- 40 kB, Never Used Indexes, table t_169
DROP INDEX CONCURRENTLY i_17; -- 40 kB, Never Used Indexes, table t_17
DROP INDEX CONCURRENTLY i_170; -- 40 kB, Never Used Indexes, table t_170
DROP INDEX CONCURRENTLY i_171; -- 40 kB, Never Used Indexes, table t_171
DROP INDEX CONCURRENTLY i_172; -- 40 kB, Never Used Indexes, table t_172
DROP INDEX CONCURRENTLY i_173; -- 40 kB, Never Used Indexes, table t_173
DROP INDEX CONCURRENTLY i_174; -- 40 kB, Never Used Indexes, table t_174
DROP INDEX CONCURRENTLY i_175; -- 40 kB, Never Used Indexes, table t_175
DROP INDEX CONCURRENTLY i_176; -- 40 kB, Never Used Indexes, table t_176
DROP INDEX CONCURRENTLY i_177; -- 40 kB, Never Used Indexes, table t_177
DROP INDEX CONCURRENTLY i_178; -- 40 kB, Never Used Indexes, table t_178
DROP INDEX CONCURRENTLY i_179; -- 40 kB, Never Used Indexes, table t_179
DROP INDEX CONCURRENTLY i_18; -- 40 kB, Never Used Indexes, table t_18
DROP INDEX CONCURRENTLY i_180; -- 40 kB, Never Used Indexes, table t_180
DROP INDEX CONCURRENTLY i_181; -- 40 kB, Never Used Indexes, table t_181
DROP INDEX CONCURRENTLY i_182; -- 40 kB, Never Used Indexes, table t_182
DROP INDEX CONCURRENTLY i_183; -- 40 kB, Never Used Indexes, table t_183
DROP INDEX CONCURRENTLY i_184; -- 40 kB, Never Used Indexes, table t_184
DROP INDEX CONCURRENTLY i_185; -- 40 kB, Never Used Indexes, table t_185
DROP INDEX CONCURRENTLY i_186; -- 40 kB, Never Used Indexes, table t_186
DROP INDEX CONCURRENTLY i_187; -- 40 kB, Never Used Indexes, table t_187
DROP INDEX CONCURRENTLY i_188; -- 40 kB, Never Used Indexes, table t_188
DROP INDEX CONCURRENTLY i_189; -- 40 kB, Never Used Indexes, table t_189
DROP INDEX CONCURRENTLY i_19; -- 40 kB, Never Used Indexes, table t_19
DROP INDEX CONCURRENTLY i_190; -- 40 kB, Never Used Indexes, table t_190
DROP INDEX CONCURRENTLY i_191; -- 40 kB, Never Used Indexes, table t_191
DROP INDEX CONCURRENTLY i_192; -- 40 kB, Never Used Indexes, table t_192
DROP INDEX CONCURRENTLY i_193; -- 40 kB, Never Used Indexes, table t_193
DROP INDEX CONCURRENTLY i_194; -- 40 kB, Never Used Indexes, table t_194
DROP INDEX CONCURRENTLY i_195; -- 40 kB, Never Used Indexes, table t_195
DROP INDEX CONCURRENTLY i_196; -- 40 kB, Never Used Indexes, table t_196
DROP INDEX CONCURRENTLY i_197; -- 40 kB, Never Used Indexes, table t_197
DROP INDEX CONCURRENTLY i_198; -- 40 kB, Never Used Indexes, table t_198
DROP INDEX CONCURRENTLY i_199; -- 40 kB, Never Used Indexes, table t_199
DROP INDEX CONCURRENTLY i_2; -- 40 kB, Never Used Indexes, table t_2
DROP INDEX CONCURRENTLY i_20; -- 40 kB, Never Used Indexes, table t_20
DROP INDEX CONCURRENTLY i_200; -- 40 kB, Never Used Indexes, table t_200
DROP INDEX CONCURRENTLY i_201; -- 40 kB, Never Used Indexes, table t_201
DROP INDEX CONCURRENTLY i_202; -- 40 kB, Never Used Indexes, table t_202
DROP INDEX CONCURRENTLY i_203; -- 40 kB, Never Used Indexes, table t_203
DROP INDEX CONCURRENTLY i_204; -- 40 kB, Never Used Indexes, table t_204
DROP INDEX CONCURRENTLY i_205; -- 40 kB, Never Used Indexes, table t_205
DROP INDEX CONCURRENTLY i_206; -- 40 kB, Never Used Indexes, table t_206
DROP INDEX CONCURRENTLY i_207; -- 40 kB, Never Used Indexes, table t_207
DROP INDEX CONCURRENTLY i_208; -- 40 kB, Never Used Indexes, table t_208
DROP INDEX CONCURRENTLY i_209; -- 40 kB, Never Used Indexes, table t_209
DROP INDEX CONCURRENTLY i_21; -- 40 kB, Never Used Indexes, table t_21
DROP INDEX CONCURRENTLY i_210; -- 40 kB, Never Used Indexes, table t_210
DROP INDEX CONCURRENTLY i_211; -- 40 kB, Never Used Indexes, table t_211
DROP INDEX CONCURRENTLY i_212; -- 40 kB, Never Used Indexes, table t_212
DROP INDEX CONCURRENTLY i_213; -- 40 kB, Never Used Indexes, table t_213
DROP INDEX CONCURRENTLY i_214; -- 40 kB, Never Used Indexes, table t_214
DROP INDEX CONCURRENTLY i_215; -- 40 kB, Never Used Indexes, table t_215
DROP INDEX CONCURRENTLY i_216; -- 40 kB, Never Used Indexes, table t_216
DROP INDEX CONCURRENTLY i_217; -- 40 kB, Never Used Indexes, table t_217
DROP INDEX CONCURRENTLY i_218; -- 40 kB, Never Used Indexes, table t_218
DROP INDEX CONCURRENTLY i_219; -- 40 kB, Never Used Indexes, table t_219
DROP INDEX CONCURRENTLY i_22; -- 40 kB, Never Used Indexes, table t_22
DROP INDEX CONCURRENTLY i_220; -- 40 kB, Never Used Indexes, table t_220
DROP INDEX CONCURRENTLY i_221; -- 40 kB, Never Used Indexes, table t_221
DROP INDEX CONCURRENTLY i_222; -- 40 kB, Never Used Indexes, table t_222
DROP INDEX CONCURRENTLY i_223; -- 40 kB, Never Used Indexes, table t_223
DROP INDEX CONCURRENTLY i_224; -- 40 kB, Never Used Indexes, table t_224
DROP INDEX CONCURRENTLY i_225; -- 40 kB, Never Used Indexes, table t_225
DROP INDEX CONCURRENTLY i_226; -- 40 kB, Never Used Indexes, table t_226
DROP INDEX CONCURRENTLY i_227; -- 40 kB, Never Used Indexes, table t_227
DROP INDEX CONCURRENTLY i_228; -- 40 kB, Never Used Indexes, table t_228
DROP INDEX CONCURRENTLY i_229; -- 40 kB, Never Used Indexes, table t_229
DROP INDEX CONCURRENTLY i_23; -- 40 kB, Never Used Indexes, table t_23
DROP INDEX CONCURRENTLY i_230; -- 40 kB, Never Used Indexes, table t_230
DROP INDEX CONCURRENTLY i_231; -- 40 kB, Never Used Indexes, table t_231
DROP INDEX CONCURRENTLY i_232; -- 40 kB, Never Used Indexes, table t_232
DROP INDEX CONCURRENTLY i_233; -- 40 kB, Never Used Indexes, table t_233
DROP INDEX CONCURRENTLY i_234; -- 40 kB, Never Used Indexes, table t_234
DROP INDEX CONCURRENTLY i_235; -- 40 kB, Never Used Indexes, table t_235
DROP INDEX CONCURRENTLY i_236; -- 40 kB, Never Used Indexes, table t_236
DROP INDEX CONCURRENTLY i_237; -- 40 kB, Never Used Indexes, table t_237
DROP INDEX CONCURRENTLY i_238; -- 40 kB, Never Used Indexes, table t_238
DROP INDEX CONCURRENTLY i_239; -- 40 kB, Never Used Indexes, table t_239
DROP INDEX CONCURRENTLY i_24; -- 40 kB, Never Used Indexes, table t_24
DROP INDEX CONCURRENTLY i_240; -- 40 kB, Never Used Indexes, table t_240
DROP INDEX CONCURRENTLY i_241; -- 40 kB, Never Used Indexes, table t_241
DROP INDEX CONCURRENTLY i_242; -- 40 kB, Never Used Indexes, table t_242
DROP INDEX CONCURRENTLY i_243; -- 40 kB, Never Used Indexes, table t_243
DROP INDEX CONCURRENTLY i_244; -- 40 kB, Never Used Indexes, table t_244
DROP INDEX CONCURRENTLY i_245; -- 40 kB, Never Used Indexes, table t_245
DROP INDEX CONCURRENTLY i_246; -- 40 kB, Never Used Indexes, table t_246
DROP INDEX CONCURRENTLY i_247; -- 40 kB, Never Used Indexes, table t_247
DROP INDEX CONCURRENTLY i_248; -- 40 kB, Never Used Indexes, table t_248
DROP INDEX CONCURRENTLY i_249; -- 40 kB, Never Used Indexes, table t_249
DROP INDEX CONCURRENTLY i_25; -- 40 kB, Never Used Indexes, table t_25
DROP INDEX CONCURRENTLY i_250; -- 40 kB, Never Used Indexes, table t_250
DROP INDEX CONCURRENTLY i_251; -- 40 kB, Never Used Indexes, table t_251
DROP INDEX CONCURRENTLY i_252; -- 40 kB, Never Used Indexes, table t_252
DROP INDEX CONCURRENTLY i_253; -- 40 kB, Never Used Indexes, table t_253
DROP INDEX CONCURRENTLY i_254; -- 40 kB, Never Used Indexes, table t_254
DROP INDEX CONCURRENTLY i_255; -- 40 kB, Never Used Indexes, table t_255
DROP INDEX CONCURRENTLY i_256; -- 40 kB, Never Used Indexes, table t_256
DROP INDEX CONCURRENTLY i_257; -- 40 kB, Never Used Indexes, table t_257
DROP INDEX CONCURRENTLY i_258; -- 40 kB, Never Used Indexes, table t_258
DROP INDEX CONCURRENTLY i_259; -- 40 kB, Never Used Indexes, table t_259
DROP INDEX CONCURRENTLY i_26; -- 40 kB, Never Used Indexes, table t_26
DROP INDEX CONCURRENTLY i_260; -- 40 kB, Never Used Indexes, table t_260
DROP INDEX CONCURRENTLY i_261; -- 40 kB, Never Used Indexes, table t_261
DROP INDEX CONCURRENTLY i_262; -- 40 kB, Never Used Indexes, table t_262
DROP INDEX CONCURRENTLY i_263; -- 40 kB, Never Used Indexes, table t_263
DROP INDEX CONCURRENTLY i_264; -- 40 kB, Never Used Indexes, table t_264
DROP INDEX CONCURRENTLY i_265; -- 40 kB, Never Used Indexes, table t_265
DROP INDEX CONCURRENTLY i_266; -- 40 kB, Never Used Indexes, table t_266
DROP INDEX CONCURRENTLY i_267; -- 40 kB, Never Used Indexes, table t_267
DROP INDEX CONCURRENTLY i_268; -- 40 kB, Never Used Indexes, table t_268
DROP INDEX CONCURRENTLY i_269; -- 40 kB, Never Used Indexes, table t_269
DROP INDEX CONCURRENTLY i_27; -- 40 kB, Never Used Indexes, table t_27
DROP INDEX CONCURRENTLY i_270; -- 40 kB, Never Used Indexes, table t_270
DROP INDEX CONCURRENTLY i_271; -- 40 kB, Never Used Indexes, table t_271
DROP INDEX CONCURRENTLY i_272; -- 40 kB, Never Used Indexes, table t_272
DROP INDEX CONCURRENTLY i_273; -- 40 kB, Never Used Indexes, table t_273
DROP INDEX CONCURRENTLY i_274; -- 40 kB, Never Used Indexes, table t_274
DROP INDEX CONCURRENTLY i_275; -- 40 kB, Never Used Indexes, table t_275
DROP INDEX CONCURRENTLY i_276; -- 40 kB, Never Used Indexes, table t_276
DROP INDEX CONCURRENTLY i_277; -- 40 kB, Never Used Indexes, table t_277
DROP INDEX CONCURRENTLY i_278; -- 40 kB, Never Used Indexes, table t_278
DROP INDEX CONCURRENTLY i_279; -- 40 kB, Never Used Indexes, table t_279
DROP INDEX CONCURRENTLY i_28; -- 40 kB, Never Used Indexes, table t_28
DROP INDEX CONCURRENTLY i_280; -- 40 kB, Never Used Indexes, table t_280
DROP INDEX CONCURRENTLY i_281; -- 40 kB, Never Used Indexes, table t_281
DROP INDEX CONCURRENTLY i_282; -- 40 kB, Never Used Indexes, table t_282
DROP INDEX CONCURRENTLY i_283; -- 40 kB, Never Used Indexes, table t_283
DROP INDEX CONCURRENTLY i_284; -- 40 kB, Never Used Indexes, table t_284
DROP INDEX CONCURRENTLY i_285; -- 40 kB, Never Used Indexes, table t_285
DROP INDEX CONCURRENTLY i_286; -- 40 kB, Never Used Indexes, table t_286
DROP INDEX CONCURRENTLY i_287; -- 40 kB, Never Used Indexes, table t_287
DROP INDEX CONCURRENTLY i_288; -- 40 kB, Never Used Indexes, table t_288
DROP INDEX CONCURRENTLY i_289; -- 40 kB, Never Used Indexes, table t_289
DROP INDEX CONCURRENTLY i_29; -- 40 kB, Never Used Indexes, table t_29
DROP INDEX CONCURRENTLY i_290; -- 40 kB, Never Used Indexes, table t_290
DROP INDEX CONCURRENTLY i_291; -- 40 kB, Never Used Indexes, table t_291
DROP INDEX CONCURRENTLY i_292; -- 40 kB, Never Used Indexes, table t_292
DROP INDEX CONCURRENTLY i_293; -- 40 kB, Never Used Indexes, table t_293
DROP INDEX CONCURRENTLY i_294; -- 40 kB, Never Used Indexes, table t_294
DROP INDEX CONCURRENTLY i_295; -- 40 kB, Never Used Indexes, table t_295
DROP INDEX CONCURRENTLY i_296; -- 40 kB, Never Used Indexes, table t_296
DROP INDEX CONCURRENTLY i_297; -- 40 kB, Never Used Indexes, table t_297
DROP INDEX CONCURRENTLY i_298; -- 40 kB, Never Used Indexes, table t_298
DROP INDEX CONCURRENTLY i_299; -- 40 kB, Never Used Indexes, table t_299
DROP INDEX CONCURRENTLY i_3; -- 40 kB, Never Used Indexes, table t_3
DROP INDEX CONCURRENTLY i_30; -- 40 kB, Never Used Indexes, table t_30
DROP INDEX CONCURRENTLY i_300; -- 40 kB, Never Used Indexes, table t_300
DROP INDEX CONCURRENTLY i_301; -- 40 kB, Never Used Indexes, table t_301
DROP INDEX CONCURRENTLY i_302; -- 40 kB, Never Used Indexes, table t_302
DROP INDEX CONCURRENTLY i_303; -- 40 kB, Never Used Indexes, table t_303
DROP INDEX CONCURRENTLY i_304; -- 40 kB, Never Used Indexes, table t_304
DROP INDEX CONCURRENTLY i_305; -- 40 kB, Never Used Indexes, table t_305
DROP INDEX CONCURRENTLY i_306; -- 40 kB, Never Used Indexes, table t_306
DROP INDEX CONCURRENTLY i_307; -- 40 kB, Never Used Indexes, table t_307
DROP INDEX CONCURRENTLY i_308; -- 40 kB, Never Used Indexes, table t_308
DROP INDEX CONCURRENTLY i_309; -- 40 kB, Never Used Indexes, table t_309
DROP INDEX CONCURRENTLY i_31; -- 40 kB, Never Used Indexes, table t_31
DROP INDEX CONCURRENTLY i_310; -- 40 kB, Never Used Indexes, table t_310
DROP INDEX CONCURRENTLY i_311; -- 40 kB, Never Used Indexes, table t_311
DROP INDEX CONCURRENTLY i_312; -- 40 kB, Never Used Indexes, table t_312
DROP INDEX CONCURRENTLY i_313; -- 40 kB, Never Used Indexes, table t_313
DROP INDEX CONCURRENTLY i_314; -- 40 kB, Never Used Indexes, table t_314
DROP INDEX CONCURRENTLY i_315; -- 40 kB, Never Used Indexes, table t_315
DROP INDEX CONCURRENTLY i_316; -- 40 kB, Never Used Indexes, table t_316
DROP INDEX CONCURRENTLY i_317; -- 40 kB, Never Used Indexes, table t_317
DROP INDEX CONCURRENTLY i_318; -- 40 kB, Never Used Indexes, table t_318
DROP INDEX CONCURRENTLY i_319; -- 40 kB, Never Used Indexes, table t_319
DROP INDEX CONCURRENTLY i_32; -- 40 kB, Never Used Indexes, table t_32
DROP INDEX CONCURRENTLY i_320; -- 40 kB, Never Used Indexes, table t_320
DROP INDEX CONCURRENTLY i_321; -- 40 kB, Never Used Indexes, table t_321
DROP INDEX CONCURRENTLY i_322; -- 40 kB, Never Used Indexes, table t_322
DROP INDEX CONCURRENTLY i_323; -- 40 kB, Never Used Indexes, table t_323
DROP INDEX CONCURRENTLY i_324; -- 40 kB, Never Used Indexes, table t_324
DROP INDEX CONCURRENTLY i_325; -- 40 kB, Never Used Indexes, table t_325
DROP INDEX CONCURRENTLY i_326; -- 40 kB, Never Used Indexes, table t_326
DROP INDEX CONCURRENTLY i_327; -- 40 kB, Never Used Indexes, table t_327
DROP INDEX CONCURRENTLY i_328; -- 40 kB, Never Used Indexes, table t_328
DROP INDEX CONCURRENTLY i_329; -- 40 kB, Never Used Indexes, table t_329
DROP INDEX CONCURRENTLY i_33; -- 40 kB, Never Used Indexes, table t_33
DROP INDEX CONCURRENTLY i_330; -- 40 kB, Never Used Indexes, table t_330
DROP INDEX CONCURRENTLY i_331; -- 40 kB, Never Used Indexes, table t_331
DROP INDEX CONCURRENTLY i_332; -- 40 kB, Never Used Indexes, table t_332
DROP INDEX CONCURRENTLY i_333; -- 40 kB, Never Used Indexes, table t_333
DROP INDEX CONCURRENTLY i_334; -- 40 kB, Never Used Indexes, table t_334
DROP INDEX CONCURRENTLY i_335; -- 40 kB, Never Used Indexes, table t_335
DROP INDEX CONCURRENTLY i_336; -- 40 kB, Never Used Indexes, table t_336
DROP INDEX CONCURRENTLY i_337; -- 40 kB, Never Used Indexes, table t_337
DROP INDEX CONCURRENTLY i_338; -- 40 kB, Never Used Indexes, table t_338
DROP INDEX CONCURRENTLY i_339; -- 40 kB, Never Used Indexes, table t_339
DROP INDEX CONCURRENTLY i_34; -- 40 kB, Never Used Indexes, table t_34
DROP INDEX CONCURRENTLY i_340; -- 40 kB, Never Used Indexes, table t_340
DROP INDEX CONCURRENTLY i_341; -- 40 kB, Never Used Indexes, table t_341
DROP INDEX CONCURRENTLY i_342; -- 40 kB, Never Used Indexes, table t_342
DROP INDEX CONCURRENTLY i_343; -- 40 kB, Never Used Indexes, table t_343
DROP INDEX CONCURRENTLY i_344; -- 40 kB, Never Used Indexes, table t_344
DROP INDEX CONCURRENTLY i_345; -- 40 kB, Never Used Indexes, table t_345
DROP INDEX CONCURRENTLY i_346; -- 40 kB, Never Used Indexes, table t_346
DROP INDEX CONCURRENTLY i_347; -- 40 kB, Never Used Indexes, table t_347
DROP INDEX CONCURRENTLY i_348; -- 40 kB, Never Used Indexes, table t_348
DROP INDEX CONCURRENTLY i_349; -- 40 kB, Never Used Indexes, table t_349
DROP INDEX CONCURRENTLY i_35; -- 40 kB, Never Used Indexes, table t_35
DROP INDEX CONCURRENTLY i_350; -- 40 kB, Never Used Indexes, table t_350
DROP INDEX CONCURRENTLY i_351; -- 40 kB, Never Used Indexes, table t_351
DROP INDEX CONCURRENTLY i_352; -- 40 kB, Never Used Indexes, table t_352
DROP INDEX CONCURRENTLY i_353; -- 40 kB, Never Used Indexes, table t_353
DROP INDEX CONCURRENTLY i_354; -- 40 kB, Never Used Indexes, table t_354
DROP INDEX CONCURRENTLY i_355; -- 40 kB, Never Used Indexes, table t_355
DROP INDEX CONCURRENTLY i_356; -- 40 kB, Never Used Indexes, table t_356
DROP INDEX CONCURRENTLY i_357; -- 40 kB, Never Used Indexes, table t_357
DROP INDEX CONCURRENTLY i_358; -- 40 kB, Never Used Indexes, table t_358
DROP INDEX CONCURRENTLY i_359; -- 40 kB, Never Used Indexes, table t_359
DROP INDEX CONCURRENTLY i_36; -- 40 kB, Never Used Indexes, table t_36
DROP INDEX CONCURRENTLY i_360; -- 40 kB, Never Used Indexes, table t_360
DROP INDEX CONCURRENTLY i_361; -- 40 kB, Never Used Indexes, table t_361
DROP INDEX CONCURRENTLY i_362; -- 40 kB, Never Used Indexes, table t_362
DROP INDEX CONCURRENTLY i_363; -- 40 kB, Never Used Indexes, table t_363
DROP INDEX CONCURRENTLY i_364; -- 40 kB, Never Used Indexes, table t_364
DROP INDEX CONCURRENTLY i_365; -- 40 kB, Never Used Indexes, table t_365
DROP INDEX CONCURRENTLY i_366; -- 40 kB, Never Used Indexes, table t_366
DROP INDEX CONCURRENTLY i_367; -- 40 kB, Never Used Indexes, table t_367
DROP INDEX CONCURRENTLY i_368; -- 40 kB, Never Used Indexes, table t_368
DROP INDEX CONCURRENTLY i_369; -- 40 kB, Never Used Indexes, table t_369
DROP INDEX CONCURRENTLY i_37; -- 40 kB, Never Used Indexes, table t_37
DROP INDEX CONCURRENTLY i_370; -- 40 kB, Never Used Indexes, table t_370
DROP INDEX CONCURRENTLY i_371; -- 40 kB, Never Used Indexes, table t_371
DROP INDEX CONCURRENTLY i_372; -- 40 kB, Never Used Indexes, table t_372
DROP INDEX CONCURRENTLY i_373; -- 40 kB, Never Used Indexes, table t_373
DROP INDEX CONCURRENTLY i_374; -- 40 kB, Never Used Indexes, table t_374
DROP INDEX CONCURRENTLY i_375; -- 40 kB, Never Used Indexes, table t_375
DROP INDEX CONCURRENTLY i_376; -- 40 kB, Never Used Indexes, table t_376
DROP INDEX CONCURRENTLY i_377; -- 40 kB, Never Used Indexes, table t_377
DROP INDEX CONCURRENTLY i_378; -- 40 kB, Never Used Indexes, table t_378
DROP INDEX CONCURRENTLY i_379; -- 40 kB, Never Used Indexes, table t_379
DROP INDEX CONCURRENTLY i_38; -- 40 kB, Never Used Indexes, table t_38
DROP INDEX CONCURRENTLY i_380; -- 40 kB, Never Used Indexes, table t_380
DROP INDEX CONCURRENTLY i_381; -- 40 kB, Never Used Indexes, table t_381
DROP INDEX CONCURRENTLY i_382; -- 40 kB, Never Used Indexes, table t_382
DROP INDEX CONCURRENTLY i_383; -- 40 kB, Never Used Indexes, table t_383
DROP INDEX CONCURRENTLY i_384; -- 40 kB, Never Used Indexes, table t_384
DROP INDEX CONCURRENTLY i_385; -- 40 kB, Never Used Indexes, table t_385
DROP INDEX CONCURRENTLY i_386; -- 40 kB, Never Used Indexes, table t_386
DROP INDEX CONCURRENTLY i_387; -- 40 kB, Never Used Indexes, table t_387
DROP INDEX CONCURRENTLY i_388; -- 40 kB, Never Used Indexes, table t_388
DROP INDEX CONCURRENTLY i_389; -- 40 kB, Never Used Indexes, table t_389
DROP INDEX CONCURRENTLY i_39; -- 40 kB, Never Used Indexes, table t_39
DROP INDEX CONCURRENTLY i_390; -- 40 kB, Never Used Indexes, table t_390
DROP INDEX CONCURRENTLY i_391; -- 40 kB, Never Used Indexes, table t_391
DROP INDEX CONCURRENTLY i_392; -- 40 kB, Never Used Indexes, table t_392
DROP INDEX CONCURRENTLY i_393; -- 40 kB, Never Used Indexes, table t_393
DROP INDEX CONCURRENTLY i_394; -- 40 kB, Never Used Indexes, table t_394
DROP INDEX CONCURRENTLY i_395; -- 40 kB, Never Used Indexes, table t_395
DROP INDEX CONCURRENTLY i_396; -- 40 kB, Never Used Indexes, table t_396
DROP INDEX CONCURRENTLY i_397; -- 40 kB, Never Used Indexes, table t_397
DROP INDEX CONCURRENTLY i_398; -- 40 kB, Never Used Indexes, table t_398
DROP INDEX CONCURRENTLY i_399; -- 40 kB, Never Used Indexes, table t_399
DROP INDEX CONCURRENTLY i_4; -- 40 kB, Never Used Indexes, table t_4
DROP INDEX CONCURRENTLY i_40; -- 40 kB, Never Used Indexes, table t_40
DROP INDEX CONCURRENTLY i_400; -- 40 kB, Never Used Indexes, table t_400
DROP INDEX CONCURRENTLY i_401; -- 40 kB, Never Used Indexes, table t_401
DROP INDEX CONCURRENTLY i_402; -- 40 kB, Never Used Indexes, table t_402
DROP INDEX CONCURRENTLY i_403; -- 40 kB, Never Used Indexes, table t_403
DROP INDEX CONCURRENTLY i_404; -- 40 kB, Never Used Indexes, table t_404
DROP INDEX CONCURRENTLY i_405; -- 40 kB, Never Used Indexes, table t_405
DROP INDEX CONCURRENTLY i_406; -- 40 kB, Never Used Indexes, table t_406
DROP INDEX CONCURRENTLY i_407; -- 40 kB, Never Used Indexes, table t_407
DROP INDEX CONCURRENTLY i_408; -- 40 kB, Never Used Indexes, table t_408
DROP INDEX CONCURRENTLY i_409; -- 40 kB, Never Used Indexes, table t_409
DROP INDEX CONCURRENTLY i_41; -- 40 kB, Never Used Indexes, table t_41
DROP INDEX CONCURRENTLY i_410; -- 40 kB, Never Used Indexes, table t_410
DROP INDEX CONCURRENTLY i_411; -- 40 kB, Never Used Indexes, table t_411
DROP INDEX CONCURRENTLY i_412; -- 40 kB, Never Used Indexes, table t_412
DROP INDEX CONCURRENTLY i_413; -- 40 kB, Never Used Indexes, table t_413
DROP INDEX CONCURRENTLY i_414; -- 40 kB, Never Used Indexes, table t_414
DROP INDEX CONCURRENTLY i_415; -- 40 kB, Never Used Indexes, table t_415
DROP INDEX CONCURRENTLY i_416; -- 40 kB, Never Used Indexes, table t_416
DROP INDEX CONCURRENTLY i_417; -- 40 kB, Never Used Indexes, table t_417
DROP INDEX CONCURRENTLY i_418; -- 40 kB, Never Used Indexes, table t_418
DROP INDEX CONCURRENTLY i_419; -- 40 kB, Never Used Indexes, table t_419
DROP INDEX CONCURRENTLY i_42; -- 40 kB, Never Used Indexes, table t_42
DROP INDEX CONCURRENTLY i_420; -- 40 kB, Never Used Indexes, table t_420
DROP INDEX CONCURRENTLY i_421; -- 40 kB, Never Used Indexes, table t_421
DROP INDEX CONCURRENTLY i_422; -- 40 kB, Never Used Indexes, table t_422
DROP INDEX CONCURRENTLY i_423; -- 40 kB, Never Used Indexes, table t_423
DROP INDEX CONCURRENTLY i_424; -- 40 kB, Never Used Indexes, table t_424
DROP INDEX CONCURRENTLY i_425; -- 40 kB, Never Used Indexes, table t_425
DROP INDEX CONCURRENTLY i_426; -- 40 kB, Never Used Indexes, table t_426
DROP INDEX CONCURRENTLY i_427; -- 40 kB, Never Used Indexes, table t_427
DROP INDEX CONCURRENTLY i_428; -- 40 kB, Never Used Indexes, table t_428
DROP INDEX CONCURRENTLY i_429; -- 40 kB, Never Used Indexes, table t_429
DROP INDEX CONCURRENTLY i_43; -- 40 kB, Never Used Indexes, table t_43
DROP INDEX CONCURRENTLY i_430; -- 40 kB, Never Used Indexes, table t_430
DROP INDEX CONCURRENTLY i_431; -- 40 kB, Never Used Indexes, table t_431
DROP INDEX CONCURRENTLY i_432; -- 40 kB, Never Used Indexes, table t_432
DROP INDEX CONCURRENTLY i_433; -- 40 kB, Never Used Indexes, table t_433
DROP INDEX CONCURRENTLY i_434; -- 40 kB, Never Used Indexes, table t_434
DROP INDEX CONCURRENTLY i_435; -- 40 kB, Never Used Indexes, table t_435
DROP INDEX CONCURRENTLY i_436; -- 40 kB, Never Used Indexes, table t_436
DROP INDEX CONCURRENTLY i_437; -- 40 kB, Never Used Indexes, table t_437
DROP INDEX CONCURRENTLY i_438; -- 40 kB, Never Used Indexes, table t_438
DROP INDEX CONCURRENTLY i_439; -- 40 kB, Never Used Indexes, table t_439
DROP INDEX CONCURRENTLY i_44; -- 40 kB, Never Used Indexes, table t_44
DROP INDEX CONCURRENTLY i_440; -- 40 kB, Never Used Indexes, table t_440
DROP INDEX CONCURRENTLY i_441; -- 40 kB, Never Used Indexes, table t_441
DROP INDEX CONCURRENTLY i_442; -- 40 kB, Never Used Indexes, table t_442
DROP INDEX CONCURRENTLY i_443; -- 40 kB, Never Used Indexes, table t_443
DROP INDEX CONCURRENTLY i_444; -- 40 kB, Never Used Indexes, table t_444
DROP INDEX CONCURRENTLY i_445; -- 40 kB, Never Used Indexes, table t_445
DROP INDEX CONCURRENTLY i_446; -- 40 kB, Never Used Indexes, table t_446
DROP INDEX CONCURRENTLY i_447; -- 40 kB, Never Used Indexes, table t_447
DROP INDEX CONCURRENTLY i_448; -- 40 kB, Never Used Indexes, table t_448
DROP INDEX CONCURRENTLY i_449; -- 40 kB, Never Used Indexes, table t_449
DROP INDEX CONCURRENTLY i_45; -- 40 kB, Never Used Indexes, table t_45
DROP INDEX CONCURRENTLY i_450; -- 40 kB, Never Used Indexes, table t_450
DROP INDEX CONCURRENTLY i_451; -- 40 kB, Never Used Indexes, table t_451
DROP INDEX CONCURRENTLY i_452; -- 40 kB, Never Used Indexes, table t_452
DROP INDEX CONCURRENTLY i_453; -- 40 kB, Never Used Indexes, table t_453
DROP INDEX CONCURRENTLY i_454; -- 40 kB, Never Used Indexes, table t_454
DROP INDEX CONCURRENTLY i_455; -- 40 kB, Never Used Indexes, table t_455
DROP INDEX CONCURRENTLY i_456; -- 40 kB, Never Used Indexes, table t_456
DROP INDEX CONCURRENTLY i_457; -- 40 kB, Never Used Indexes, table t_457
DROP INDEX CONCURRENTLY i_458; -- 40 kB, Never Used Indexes, table t_458
DROP INDEX CONCURRENTLY i_459; -- 40 kB, Never Used Indexes, table t_459
DROP INDEX CONCURRENTLY i_46; -- 40 kB, Never Used Indexes, table t_46
DROP INDEX CONCURRENTLY i_460; -- 40 kB, Never Used Indexes, table t_460
DROP INDEX CONCURRENTLY i_461; -- 40 kB, Never Used Indexes, table t_461
DROP INDEX CONCURRENTLY i_462; -- 40 kB, Never Used Indexes, table t_462
DROP INDEX CONCURRENTLY i_463; -- 40 kB, Never Used Indexes, table t_463
DROP INDEX CONCURRENTLY i_464; -- 40 kB, Never Used Indexes, table t_464
DROP INDEX CONCURRENTLY i_465; -- 40 kB, Never Used Indexes, table t_465
DROP INDEX CONCURRENTLY i_466; -- 40 kB, Never Used Indexes, table t_466
DROP INDEX CONCURRENTLY i_467; -- 40 kB, Never Used Indexes, table t_467
DROP INDEX CONCURRENTLY i_468; -- 40 kB, Never Used Indexes, table t_468
DROP INDEX CONCURRENTLY i_469; -- 40 kB, Never Used Indexes, table t_469
DROP INDEX CONCURRENTLY i_47; -- 40 kB, Never Used Indexes, table t_47
DROP INDEX CONCURRENTLY i_470; -- 40 kB, Never Used Indexes, table t_470
DROP INDEX CONCURRENTLY i_471; -- 40 kB, Never Used Indexes, table t_471
DROP INDEX CONCURRENTLY i_472; -- 40 kB, Never Used Indexes, table t_472
DROP INDEX CONCURRENTLY i_473; -- 40 kB, Never Used Indexes, table t_473
DROP INDEX CONCURRENTLY i_474; -- 40 kB, Never Used Indexes, table t_474
DROP INDEX CONCURRENTLY i_475; -- 40 kB, Never Used Indexes, table t_475
DROP INDEX CONCURRENTLY i_476; -- 40 kB, Never Used Indexes, table t_476
DROP INDEX CONCURRENTLY i_477; -- 40 kB, Never Used Indexes, table t_477
DROP INDEX CONCURRENTLY i_478; -- 40 kB, Never Used Indexes, table t_478
DROP INDEX CONCURRENTLY i_479; -- 40 kB, Never Used Indexes, table t_479
DROP INDEX CONCURRENTLY i_48; -- 40 kB, Never Used Indexes, table t_48
DROP INDEX CONCURRENTLY i_480; -- 40 kB, Never Used Indexes, table t_480
DROP INDEX CONCURRENTLY i_481; -- 40 kB, Never Used Indexes, table t_481
DROP INDEX CONCURRENTLY i_482; -- 40 kB, Never Used Indexes, table t_482
DROP INDEX CONCURRENTLY i_483; -- 40 kB, Never Used Indexes, table t_483
DROP INDEX CONCURRENTLY i_484; -- 40 kB, Never Used Indexes, table t_484
DROP INDEX CONCURRENTLY i_485; -- 40 kB, Never Used Indexes, table t_485
DROP INDEX CONCURRENTLY i_486; -- 40 kB, Never Used Indexes, table t_486
DROP INDEX CONCURRENTLY i_487; -- 40 kB, Never Used Indexes, table t_487
DROP INDEX CONCURRENTLY i_488; -- 40 kB, Never Used Indexes, table t_488
DROP INDEX CONCURRENTLY i_489; -- 40 kB, Never Used Indexes, table t_489
DROP INDEX CONCURRENTLY i_49; -- 40 kB, Never Used Indexes, table t_49
DROP INDEX CONCURRENTLY i_490; -- 40 kB, Never Used Indexes, table t_490
DROP INDEX CONCURRENTLY i_491; -- 40 kB, Never Used Indexes, table t_491
DROP INDEX CONCURRENTLY i_492; -- 40 kB, Never Used Indexes, table t_492
DROP INDEX CONCURRENTLY i_493; -- 40 kB, Never Used Indexes, table t_493
DROP INDEX CONCURRENTLY i_494; -- 40 kB, Never Used Indexes, table t_494
DROP INDEX CONCURRENTLY i_495; -- 40 kB, Never Used Indexes, table t_495
DROP INDEX CONCURRENTLY i_496; -- 40 kB, Never Used Indexes, table t_496
DROP INDEX CONCURRENTLY i_497; -- 40 kB, Never Used Indexes, table t_497
DROP INDEX CONCURRENTLY i_498; -- 40 kB, Never Used Indexes, table t_498
DROP INDEX CONCURRENTLY i_499; -- 40 kB, Never Used Indexes, table t_499
DROP INDEX CONCURRENTLY i_5; -- 40 kB, Never Used Indexes, table t_5
DROP INDEX CONCURRENTLY i_50; -- 40 kB, Never Used Indexes, table t_50
DROP INDEX CONCURRENTLY i_500; -- 40 kB, Never Used Indexes, table t_500
DROP INDEX CONCURRENTLY i_501; -- 40 kB, Never Used Indexes, table t_501
DROP INDEX CONCURRENTLY i_502; -- 40 kB, Never Used Indexes, table t_502
DROP INDEX CONCURRENTLY i_503; -- 40 kB, Never Used Indexes, table t_503
DROP INDEX CONCURRENTLY i_504; -- 40 kB, Never Used Indexes, table t_504
DROP INDEX CONCURRENTLY i_505; -- 40 kB, Never Used Indexes, table t_505
DROP INDEX CONCURRENTLY i_506; -- 40 kB, Never Used Indexes, table t_506
DROP INDEX CONCURRENTLY i_507; -- 40 kB, Never Used Indexes, table t_507
DROP INDEX CONCURRENTLY i_508; -- 40 kB, Never Used Indexes, table t_508
DROP INDEX CONCURRENTLY i_509; -- 40 kB, Never Used Indexes, table t_509
DROP INDEX CONCURRENTLY i_51; -- 40 kB, Never Used Indexes, table t_51
DROP INDEX CONCURRENTLY i_510; -- 40 kB, Never Used Indexes, table t_510
DROP INDEX CONCURRENTLY i_511; -- 40 kB, Never Used Indexes, table t_511
DROP INDEX CONCURRENTLY i_512; -- 40 kB, Never Used Indexes, table t_512
DROP INDEX CONCURRENTLY i_513; -- 40 kB, Never Used Indexes, table t_513
DROP INDEX CONCURRENTLY i_514; -- 40 kB, Never Used Indexes, table t_514
DROP INDEX CONCURRENTLY i_515; -- 40 kB, Never Used Indexes, table t_515
DROP INDEX CONCURRENTLY i_516; -- 40 kB, Never Used Indexes, table t_516
DROP INDEX CONCURRENTLY i_517; -- 40 kB, Never Used Indexes, table t_517
DROP INDEX CONCURRENTLY i_518; -- 40 kB, Never Used Indexes, table t_518
DROP INDEX CONCURRENTLY i_519; -- 40 kB, Never Used Indexes, table t_519
DROP INDEX CONCURRENTLY i_52; -- 40 kB, Never Used Indexes, table t_52
DROP INDEX CONCURRENTLY i_520; -- 40 kB, Never Used Indexes, table t_520
DROP INDEX CONCURRENTLY i_521; -- 40 kB, Never Used Indexes, table t_521
DROP INDEX CONCURRENTLY i_522; -- 40 kB, Never Used Indexes, table t_522
DROP INDEX CONCURRENTLY i_523; -- 40 kB, Never Used Indexes, table t_523
DROP INDEX CONCURRENTLY i_524; -- 40 kB, Never Used Indexes, table t_524
DROP INDEX CONCURRENTLY i_525; -- 40 kB, Never Used Indexes, table t_525
DROP INDEX CONCURRENTLY i_526; -- 40 kB, Never Used Indexes, table t_526
DROP INDEX CONCURRENTLY i_527; -- 40 kB, Never Used Indexes, table t_527
DROP INDEX CONCURRENTLY i_528; -- 40 kB, Never Used Indexes, table t_528
DROP INDEX CONCURRENTLY i_529; -- 40 kB, Never Used Indexes, table t_529
DROP INDEX CONCURRENTLY i_53; -- 40 kB, Never Used Indexes, table t_53
DROP INDEX CONCURRENTLY i_530; -- 40 kB, Never Used Indexes, table t_530
DROP INDEX CONCURRENTLY i_531; -- 40 kB, Never Used Indexes, table t_531
DROP INDEX CONCURRENTLY i_532; -- 40 kB, Never Used Indexes, table t_532
DROP INDEX CONCURRENTLY i_533; -- 40 kB, Never Used Indexes, table t_533
DROP INDEX CONCURRENTLY i_534; -- 40 kB, Never Used Indexes, table t_534
DROP INDEX CONCURRENTLY i_535; -- 40 kB, Never Used Indexes, table t_535
DROP INDEX CONCURRENTLY i_536; -- 40 kB, Never Used Indexes, table t_536
DROP INDEX CONCURRENTLY i_537; -- 40 kB, Never Used Indexes, table t_537
DROP INDEX CONCURRENTLY i_538; -- 40 kB, Never Used Indexes, table t_538
DROP INDEX CONCURRENTLY i_539; -- 40 kB, Never Used Indexes, table t_539
DROP INDEX CONCURRENTLY i_54; -- 40 kB, Never Used Indexes, table t_54
DROP INDEX CONCURRENTLY i_540; -- 40 kB, Never Used Indexes, table t_540
DROP INDEX CONCURRENTLY i_541; -- 40 kB, Never Used Indexes, table t_541
DROP INDEX CONCURRENTLY i_542; -- 40 kB, Never Used Indexes, table t_542
DROP INDEX CONCURRENTLY i_543; -- 40 kB, Never Used Indexes, table t_543
DROP INDEX CONCURRENTLY i_544; -- 40 kB, Never Used Indexes, table t_544
DROP INDEX CONCURRENTLY i_545; -- 40 kB, Never Used Indexes, table t_545
DROP INDEX CONCURRENTLY i_546; -- 40 kB, Never Used Indexes, table t_546
DROP INDEX CONCURRENTLY i_547; -- 40 kB, Never Used Indexes, table t_547
DROP INDEX CONCURRENTLY i_548; -- 40 kB, Never Used Indexes, table t_548
DROP INDEX CONCURRENTLY i_549; -- 40 kB, Never Used Indexes, table t_549
DROP INDEX CONCURRENTLY i_55; -- 40 kB, Never Used Indexes, table t_55
DROP INDEX CONCURRENTLY i_550; -- 40 kB, Never Used Indexes, table t_550
DROP INDEX CONCURRENTLY i_551; -- 40 kB, Never Used Indexes, table t_551
DROP INDEX CONCURRENTLY i_552; -- 40 kB, Never Used Indexes, table t_552
DROP INDEX CONCURRENTLY i_553; -- 40 kB, Never Used Indexes, table t_553
DROP INDEX CONCURRENTLY i_554; -- 40 kB, Never Used Indexes, table t_554
DROP INDEX CONCURRENTLY i_555; -- 40 kB, Never Used Indexes, table t_555
DROP INDEX CONCURRENTLY i_556; -- 40 kB, Never Used Indexes, table t_556
DROP INDEX CONCURRENTLY i_557; -- 40 kB, Never Used Indexes, table t_557
DROP INDEX CONCURRENTLY i_558; -- 40 kB, Never Used Indexes, table t_558
DROP INDEX CONCURRENTLY i_559; -- 40 kB, Never Used Indexes, table t_559
DROP INDEX CONCURRENTLY i_56; -- 40 kB, Never Used Indexes, table t_56
DROP INDEX CONCURRENTLY i_560; -- 40 kB, Never Used Indexes, table t_560
DROP INDEX CONCURRENTLY i_561; -- 40 kB, Never Used Indexes, table t_561
DROP INDEX CONCURRENTLY i_562; -- 40 kB, Never Used Indexes, table t_562
DROP INDEX CONCURRENTLY i_563; -- 40 kB, Never Used Indexes, table t_563
DROP INDEX CONCURRENTLY i_564; -- 40 kB, Never Used Indexes, table t_564
DROP INDEX CONCURRENTLY i_565; -- 40 kB, Never Used Indexes, table t_565
DROP INDEX CONCURRENTLY i_566; -- 40 kB, Never Used Indexes, table t_566
DROP INDEX CONCURRENTLY i_567; -- 40 kB, Never Used Indexes, table t_567
DROP INDEX CONCURRENTLY i_568; -- 40 kB, Never Used Indexes, table t_568
DROP INDEX CONCURRENTLY i_569; -- 40 kB, Never Used Indexes, table t_569
DROP INDEX CONCURRENTLY i_57; -- 40 kB, Never Used Indexes, table t_57
DROP INDEX CONCURRENTLY i_570; -- 40 kB, Never Used Indexes, table t_570
DROP INDEX CONCURRENTLY i_571; -- 40 kB, Never Used Indexes, table t_571
DROP INDEX CONCURRENTLY i_572; -- 40 kB, Never Used Indexes, table t_572
DROP INDEX CONCURRENTLY i_573; -- 40 kB, Never Used Indexes, table t_573
DROP INDEX CONCURRENTLY i_574; -- 40 kB, Never Used Indexes, table t_574
DROP INDEX CONCURRENTLY i_575; -- 40 kB, Never Used Indexes, table t_575
DROP INDEX CONCURRENTLY i_576; -- 40 kB, Never Used Indexes, table t_576
DROP INDEX CONCURRENTLY i_577; -- 40 kB, Never Used Indexes, table t_577
DROP INDEX CONCURRENTLY i_578; -- 40 kB, Never Used Indexes, table t_578
DROP INDEX CONCURRENTLY i_579; -- 40 kB, Never Used Indexes, table t_579
DROP INDEX CONCURRENTLY i_58; -- 40 kB, Never Used Indexes, table t_58
DROP INDEX CONCURRENTLY i_580; -- 40 kB, Never Used Indexes, table t_580
DROP INDEX CONCURRENTLY i_581; -- 40 kB, Never Used Indexes, table t_581
DROP INDEX CONCURRENTLY i_582; -- 40 kB, Never Used Indexes, table t_582
DROP INDEX CONCURRENTLY i_583; -- 40 kB, Never Used Indexes, table t_583
DROP INDEX CONCURRENTLY i_584; -- 40 kB, Never Used Indexes, table t_584
DROP INDEX CONCURRENTLY i_585; -- 40 kB, Never Used Indexes, table t_585
DROP INDEX CONCURRENTLY i_586; -- 40 kB, Never Used Indexes, table t_586
DROP INDEX CONCURRENTLY i_587; -- 40 kB, Never Used Indexes, table t_587
DROP INDEX CONCURRENTLY i_588; -- 40 kB, Never Used Indexes, table t_588
DROP INDEX CONCURRENTLY i_589; -- 40 kB, Never Used Indexes, table t_589
DROP INDEX CONCURRENTLY i_59; -- 40 kB, Never Used Indexes, table t_59
DROP INDEX CONCURRENTLY i_590; -- 40 kB, Never Used Indexes, table t_590
DROP INDEX CONCURRENTLY i_591; -- 40 kB, Never Used Indexes, table t_591
DROP INDEX CONCURRENTLY i_592; -- 40 kB, Never Used Indexes, table t_592
DROP INDEX CONCURRENTLY i_593; -- 40 kB, Never Used Indexes, table t_593
DROP INDEX CONCURRENTLY i_594; -- 40 kB, Never Used Indexes, table t_594
DROP INDEX CONCURRENTLY i_595; -- 40 kB, Never Used Indexes, table t_595
DROP INDEX CONCURRENTLY i_596; -- 40 kB, Never Used Indexes, table t_596
DROP INDEX CONCURRENTLY i_597; -- 40 kB, Never Used Indexes, table t_597
DROP INDEX CONCURRENTLY i_598; -- 40 kB, Never Used Indexes, table t_598
DROP INDEX CONCURRENTLY i_599; -- 40 kB, Never Used Indexes, table t_599
DROP INDEX CONCURRENTLY i_6; -- 40 kB, Never Used Indexes, table t_6
DROP INDEX CONCURRENTLY i_60; -- 40 kB, Never Used Indexes, table t_60
DROP INDEX CONCURRENTLY i_600; -- 40 kB, Never Used Indexes, table t_600
DROP INDEX CONCURRENTLY i_601; -- 40 kB, Never Used Indexes, table t_601
DROP INDEX CONCURRENTLY i_602; -- 40 kB, Never Used Indexes, table t_602
DROP INDEX CONCURRENTLY i_603; -- 40 kB, Never Used Indexes, table t_603
DROP INDEX CONCURRENTLY i_604; -- 40 kB, Never Used Indexes, table t_604
DROP INDEX CONCURRENTLY i_605; -- 40 kB, Never Used Indexes, table t_605
DROP INDEX CONCURRENTLY i_606; -- 40 kB, Never Used Indexes, table t_606
DROP INDEX CONCURRENTLY i_607; -- 40 kB, Never Used Indexes, table t_607
DROP INDEX CONCURRENTLY i_608; -- 40 kB, Never Used Indexes, table t_608
DROP INDEX CONCURRENTLY i_609; -- 40 kB, Never Used Indexes, table t_609
DROP INDEX CONCURRENTLY i_61; -- 40 kB, Never Used Indexes, table t_61
DROP INDEX CONCURRENTLY i_610; -- 40 kB, Never Used Indexes, table t_610
DROP INDEX CONCURRENTLY i_611; -- 40 kB, Never Used Indexes, table t_611
DROP INDEX CONCURRENTLY i_612; -- 40 kB, Never Used Indexes, table t_612
DROP INDEX CONCURRENTLY i_613; -- 40 kB, Never Used Indexes, table t_613
DROP INDEX CONCURRENTLY i_614; -- 40 kB, Never Used Indexes, table t_614
DROP INDEX CONCURRENTLY i_615; -- 40 kB, Never Used Indexes, table t_615
DROP INDEX CONCURRENTLY i_616; -- 40 kB, Never Used Indexes, table t_616
DROP INDEX CONCURRENTLY i_617; -- 40 kB, Never Used Indexes, table t_617
DROP INDEX CONCURRENTLY i_618; -- 40 kB, Never Used Indexes, table t_618
DROP INDEX CONCURRENTLY i_619; -- 40 kB, Never Used Indexes, table t_619
DROP INDEX CONCURRENTLY i_62; -- 40 kB, Never Used Indexes, table t_62
DROP INDEX CONCURRENTLY i_620; -- 40 kB, Never Used Indexes, table t_620
DROP INDEX CONCURRENTLY i_621; -- 40 kB, Never Used Indexes, table t_621
DROP INDEX CONCURRENTLY i_622; -- 40 kB, Never Used Indexes, table t_622
DROP INDEX CONCURRENTLY i_623; -- 40 kB, Never Used Indexes, table t_623
DROP INDEX CONCURRENTLY i_624; -- 40 kB, Never Used Indexes, table t_624
DROP INDEX CONCURRENTLY i_625; -- 40 kB, Never Used Indexes, table t_625
DROP INDEX CONCURRENTLY i_626; -- 40 kB, Never Used Indexes, table t_626
DROP INDEX CONCURRENTLY i_627; -- 40 kB, Never Used Indexes, table t_627
DROP INDEX CONCURRENTLY i_628; -- 40 kB, Never Used Indexes, table t_628
DROP INDEX CONCURRENTLY i_629; -- 40 kB, Never Used Indexes, table t_629
DROP INDEX CONCURRENTLY i_63; -- 40 kB, Never Used Indexes, table t_63
DROP INDEX CONCURRENTLY i_630; -- 40 kB, Never Used Indexes, table t_630
DROP INDEX CONCURRENTLY i_631; -- 40 kB, Never Used Indexes, table t_631
DROP INDEX CONCURRENTLY i_632; -- 40 kB, Never Used Indexes, table t_632
DROP INDEX CONCURRENTLY i_633; -- 40 kB, Never Used Indexes, table t_633
DROP INDEX CONCURRENTLY i_634; -- 40 kB, Never Used Indexes, table t_634
DROP INDEX CONCURRENTLY i_635; -- 40 kB, Never Used Indexes, table t_635
DROP INDEX CONCURRENTLY i_636; -- 40 kB, Never Used Indexes, table t_636
DROP INDEX CONCURRENTLY i_637; -- 40 kB, Never Used Indexes, table t_637
DROP INDEX CONCURRENTLY i_638; -- 40 kB, Never Used Indexes, table t_638
DROP INDEX CONCURRENTLY i_639; -- 40 kB, Never Used Indexes, table t_639
DROP INDEX CONCURRENTLY i_64; -- 40 kB, Never Used Indexes, table t_64
DROP INDEX CONCURRENTLY i_640; -- 40 kB, Never Used Indexes, table t_640
DROP INDEX CONCURRENTLY i_641; -- 40 kB, Never Used Indexes, table t_641
DROP INDEX CONCURRENTLY i_642; -- 40 kB, Never Used Indexes, table t_642
DROP INDEX CONCURRENTLY i_643; -- 40 kB, Never Used Indexes, table t_643
DROP INDEX CONCURRENTLY i_644; -- 40 kB, Never Used Indexes, table t_644
DROP INDEX CONCURRENTLY i_645; -- 40 kB, Never Used Indexes, table t_645
DROP INDEX CONCURRENTLY i_646; -- 40 kB, Never Used Indexes, table t_646
DROP INDEX CONCURRENTLY i_647; -- 40 kB, Never Used Indexes, table t_647
DROP INDEX CONCURRENTLY i_648; -- 40 kB, Never Used Indexes, table t_648
DROP INDEX CONCURRENTLY i_649; -- 40 kB, Never Used Indexes, table t_649
DROP INDEX CONCURRENTLY i_65; -- 40 kB, Never Used Indexes, table t_65
DROP INDEX CONCURRENTLY i_650; -- 40 kB, Never Used Indexes, table t_650
DROP INDEX CONCURRENTLY i_651; -- 40 kB, Never Used Indexes, table t_651
DROP INDEX CONCURRENTLY i_652; -- 40 kB, Never Used Indexes, table t_652
DROP INDEX CONCURRENTLY i_653; -- 40 kB, Never Used Indexes, table t_653
DROP INDEX CONCURRENTLY i_654; -- 40 kB, Never Used Indexes, table t_654
DROP INDEX CONCURRENTLY i_655; -- 40 kB, Never Used Indexes, table t_655
DROP INDEX CONCURRENTLY i_656; -- 40 kB, Never Used Indexes, table t_656
DROP INDEX CONCURRENTLY i_657; -- 40 kB, Never Used Indexes, table t_657
DROP INDEX CONCURRENTLY i_658; -- 40 kB, Never Used Indexes, table t_658
DROP INDEX CONCURRENTLY i_659; -- 40 kB, Never Used Indexes, table t_659
DROP INDEX CONCURRENTLY i_66; -- 40 kB, Never Used Indexes, table t_66
DROP INDEX CONCURRENTLY i_660; -- 40 kB, Never Used Indexes, table t_660
DROP INDEX CONCURRENTLY i_661; -- 40 kB, Never Used Indexes, table t_661
DROP INDEX CONCURRENTLY i_662; -- 40 kB, Never Used Indexes, table t_662
DROP INDEX CONCURRENTLY i_663; -- 40 kB, Never Used Indexes, table t_663
DROP INDEX CONCURRENTLY i_664; -- 40 kB, Never Used Indexes, table t_664
DROP INDEX CONCURRENTLY i_665; -- 40 kB, Never Used Indexes, table t_665
DROP INDEX CONCURRENTLY i_666; -- 40 kB, Never Used Indexes, table t_666
DROP INDEX CONCURRENTLY i_667; -- 40 kB, Never Used Indexes, table t_667
DROP INDEX CONCURRENTLY i_668; -- 40 kB, Never Used Indexes, table t_668
DROP INDEX CONCURRENTLY i_669; -- 40 kB, Never Used Indexes, table t_669
DROP INDEX CONCURRENTLY i_67; -- 40 kB, Never Used Indexes, table t_67
DROP INDEX CONCURRENTLY i_670; -- 40 kB, Never Used Indexes, table t_670
DROP INDEX CONCURRENTLY i_671; -- 40 kB, Never Used Indexes, table t_671
DROP INDEX CONCURRENTLY i_672; -- 40 kB, Never Used Indexes, table t_672
DROP INDEX CONCURRENTLY i_673; -- 40 kB, Never Used Indexes, table t_673
DROP INDEX CONCURRENTLY i_674; -- 40 kB, Never Used Indexes, table t_674
DROP INDEX CONCURRENTLY i_675; -- 40 kB, Never Used Indexes, table t_675
DROP INDEX CONCURRENTLY i_676; -- 40 kB, Never Used Indexes, table t_676
DROP INDEX CONCURRENTLY i_677; -- 40 kB, Never Used Indexes, table t_677
DROP INDEX CONCURRENTLY i_678; -- 40 kB, Never Used Indexes, table t_678
DROP INDEX CONCURRENTLY i_679; -- 40 kB, Never Used Indexes, table t_679
DROP INDEX CONCURRENTLY i_68; -- 40 kB, Never Used Indexes, table t_68
DROP INDEX CONCURRENTLY i_680; -- 40 kB, Never Used Indexes, table t_680
DROP INDEX CONCURRENTLY i_681; -- 40 kB, Never Used Indexes, table t_681
DROP INDEX CONCURRENTLY i_682; -- 40 kB, Never Used Indexes, table t_682
DROP INDEX CONCURRENTLY i_683; -- 40 kB, Never Used Indexes, table t_683
DROP INDEX CONCURRENTLY i_684; -- 40 kB, Never Used Indexes, table t_684
DROP INDEX CONCURRENTLY i_685; -- 40 kB, Never Used Indexes, table t_685
DROP INDEX CONCURRENTLY i_686; -- 40 kB, Never Used Indexes, table t_686
DROP INDEX CONCURRENTLY i_687; -- 40 kB, Never Used Indexes, table t_687
DROP INDEX CONCURRENTLY i_688; -- 40 kB, Never Used Indexes, table t_688
DROP INDEX CONCURRENTLY i_689; -- 40 kB, Never Used Indexes, table t_689
DROP INDEX CONCURRENTLY i_69; -- 40 kB, Never Used Indexes, table t_69
DROP INDEX CONCURRENTLY i_690; -- 40 kB, Never Used Indexes, table t_690
DROP INDEX CONCURRENTLY i_691; -- 40 kB, Never Used Indexes, table t_691
DROP INDEX CONCURRENTLY i_692; -- 40 kB, Never Used Indexes, table t_692
DROP INDEX CONCURRENTLY i_693; -- 40 kB, Never Used Indexes, table t_693
DROP INDEX CONCURRENTLY i_694; -- 40 kB, Never Used Indexes, table t_694
DROP INDEX CONCURRENTLY i_695; -- 40 kB, Never Used Indexes, table t_695
DROP INDEX CONCURRENTLY i_696; -- 40 kB, Never Used Indexes, table t_696
DROP INDEX CONCURRENTLY i_697; -- 40 kB, Never Used Indexes, table t_697
DROP INDEX CONCURRENTLY i_698; -- 40 kB, Never Used Indexes, table t_698
DROP INDEX CONCURRENTLY i_699; -- 40 kB, Never Used Indexes, table t_699
DROP INDEX CONCURRENTLY i_7; -- 40 kB, Never Used Indexes, table t_7
DROP INDEX CONCURRENTLY i_70; -- 40 kB, Never Used Indexes, table t_70
DROP INDEX CONCURRENTLY i_700; -- 40 kB, Never Used Indexes, table t_700
DROP INDEX CONCURRENTLY i_701; -- 40 kB, Never Used Indexes, table t_701
DROP INDEX CONCURRENTLY i_702; -- 40 kB, Never Used Indexes, table t_702
DROP INDEX CONCURRENTLY i_703; -- 40 kB, Never Used Indexes, table t_703
DROP INDEX CONCURRENTLY i_704; -- 40 kB, Never Used Indexes, table t_704
DROP INDEX CONCURRENTLY i_705; -- 40 kB, Never Used Indexes, table t_705
DROP INDEX CONCURRENTLY i_706; -- 40 kB, Never Used Indexes, table t_706
DROP INDEX CONCURRENTLY i_707; -- 40 kB, Never Used Indexes, table t_707
DROP INDEX CONCURRENTLY i_708; -- 40 kB, Never Used Indexes, table t_708
DROP INDEX CONCURRENTLY i_709; -- 40 kB, Never Used Indexes, table t_709
DROP INDEX CONCURRENTLY i_71; -- 40 kB, Never Used Indexes, table t_71
DROP INDEX CONCURRENTLY i_710; -- 40 kB, Never Used Indexes, table t_710
DROP INDEX CONCURRENTLY i_711; -- 40 kB, Never Used Indexes, table t_711
DROP INDEX CONCURRENTLY i_712; -- 40 kB, Never Used Indexes, table t_712
DROP INDEX CONCURRENTLY i_713; -- 40 kB, Never Used Indexes, table t_713
DROP INDEX CONCURRENTLY i_714; -- 40 kB, Never Used Indexes, table t_714
DROP INDEX CONCURRENTLY i_715; -- 40 kB, Never Used Indexes, table t_715
DROP INDEX CONCURRENTLY i_716; -- 40 kB, Never Used Indexes, table t_716
DROP INDEX CONCURRENTLY i_717; -- 40 kB, Never Used Indexes, table t_717
DROP INDEX CONCURRENTLY i_718; -- 40 kB, Never Used Indexes, table t_718
DROP INDEX CONCURRENTLY i_719; -- 40 kB, Never Used Indexes, table t_719
DROP INDEX CONCURRENTLY i_72; -- 40 kB, Never Used Indexes, table t_72
DROP INDEX CONCURRENTLY i_720; -- 40 kB, Never Used Indexes, table t_720
DROP INDEX CONCURRENTLY i_721; -- 40 kB, Never Used Indexes, table t_721
DROP INDEX CONCURRENTLY i_722; -- 40 kB, Never Used Indexes, table t_722
DROP INDEX CONCURRENTLY i_723; -- 40 kB, Never Used Indexes, table t_723
DROP INDEX CONCURRENTLY i_724; -- 40 kB, Never Used Indexes, table t_724
DROP INDEX CONCURRENTLY i_725; -- 40 kB, Never Used Indexes, table t_725
DROP INDEX CONCURRENTLY i_726; -- 40 kB, Never Used Indexes, table t_726
DROP INDEX CONCURRENTLY i_727; -- 40 kB, Never Used Indexes, table t_727
DROP INDEX CONCURRENTLY i_728; -- 40 kB, Never Used Indexes, table t_728
DROP INDEX CONCURRENTLY i_729; -- 40 kB, Never Used Indexes, table t_729
DROP INDEX CONCURRENTLY i_73; -- 40 kB, Never Used Indexes, table t_73
DROP INDEX CONCURRENTLY i_730; -- 40 kB, Never Used Indexes, table t_730
DROP INDEX CONCURRENTLY i_731; -- 40 kB, Never Used Indexes, table t_731
DROP INDEX CONCURRENTLY i_732; -- 40 kB, Never Used Indexes, table t_732
DROP INDEX CONCURRENTLY i_733; -- 40 kB, Never Used Indexes, table t_733
DROP INDEX CONCURRENTLY i_734; -- 40 kB, Never Used Indexes, table t_734
DROP INDEX CONCURRENTLY i_735; -- 40 kB, Never Used Indexes, table t_735
DROP INDEX CONCURRENTLY i_736; -- 40 kB, Never Used Indexes, table t_736
DROP INDEX CONCURRENTLY i_737; -- 40 kB, Never Used Indexes, table t_737
DROP INDEX CONCURRENTLY i_738; -- 40 kB, Never Used Indexes, table t_738
DROP INDEX CONCURRENTLY i_739; -- 40 kB, Never Used Indexes, table t_739
DROP INDEX CONCURRENTLY i_74; -- 40 kB, Never Used Indexes, table t_74
DROP INDEX CONCURRENTLY i_740; -- 40 kB, Never Used Indexes, table t_740
DROP INDEX CONCURRENTLY i_741; -- 40 kB, Never Used Indexes, table t_741
DROP INDEX CONCURRENTLY i_742; -- 40 kB, Never Used Indexes, table t_742
DROP INDEX CONCURRENTLY i_743; -- 40 kB, Never Used Indexes, table t_743
DROP INDEX CONCURRENTLY i_744; -- 40 kB, Never Used Indexes, table t_744
DROP INDEX CONCURRENTLY i_745; -- 40 kB, Never Used Indexes, table t_745
DROP INDEX CONCURRENTLY i_746; -- 40 kB, Never Used Indexes, table t_746
DROP INDEX CONCURRENTLY i_747; -- 40 kB, Never Used Indexes, table t_747
DROP INDEX CONCURRENTLY i_748; -- 40 kB, Never Used Indexes, table t_748
DROP INDEX CONCURRENTLY i_749; -- 40 kB, Never Used Indexes, table t_749
DROP INDEX CONCURRENTLY i_75; -- 40 kB, Never Used Indexes, table t_75
DROP INDEX CONCURRENTLY i_750; -- 40 kB, Never Used Indexes, table t_750
DROP INDEX CONCURRENTLY i_751; -- 40 kB, Never Used Indexes, table t_751
DROP INDEX CONCURRENTLY i_752; -- 40 kB, Never Used Indexes, table t_752
DROP INDEX CONCURRENTLY i_753; -- 40 kB, Never Used Indexes, table t_753
DROP INDEX CONCURRENTLY i_754; -- 40 kB, Never Used Indexes, table t_754
DROP INDEX CONCURRENTLY i_755; -- 40 kB, Never Used Indexes, table t_755
DROP INDEX CONCURRENTLY i_756; -- 40 kB, Never Used Indexes, table t_756
DROP INDEX CONCURRENTLY i_757; -- 40 kB, Never Used Indexes, table t_757
DROP INDEX CONCURRENTLY i_758; -- 40 kB, Never Used Indexes, table t_758
DROP INDEX CONCURRENTLY i_759; -- 40 kB, Never Used Indexes, table t_759
DROP INDEX CONCURRENTLY i_76; -- 40 kB, Never Used Indexes, table t_76
DROP INDEX CONCURRENTLY i_760; -- 40 kB, Never Used Indexes, table t_760
DROP INDEX CONCURRENTLY i_761; -- 40 kB, Never Used Indexes, table t_761
DROP INDEX CONCURRENTLY i_762; -- 40 kB, Never Used Indexes, table t_762
DROP INDEX CONCURRENTLY i_763; -- 40 kB, Never Used Indexes, table t_763
DROP INDEX CONCURRENTLY i_764; -- 40 kB, Never Used Indexes, table t_764
DROP INDEX CONCURRENTLY i_765; -- 40 kB, Never Used Indexes, table t_765
DROP INDEX CONCURRENTLY i_766; -- 40 kB, Never Used Indexes, table t_766
DROP INDEX CONCURRENTLY i_767; -- 40 kB, Never Used Indexes, table t_767
DROP INDEX CONCURRENTLY i_768; -- 40 kB, Never Used Indexes, table t_768
DROP INDEX CONCURRENTLY i_769; -- 40 kB, Never Used Indexes, table t_769
DROP INDEX CONCURRENTLY i_77; -- 40 kB, Never Used Indexes, table t_77
DROP INDEX CONCURRENTLY i_770; -- 40 kB, Never Used Indexes, table t_770
DROP INDEX CONCURRENTLY i_771; -- 40 kB, Never Used Indexes, table t_771
DROP INDEX CONCURRENTLY i_772; -- 40 kB, Never Used Indexes, table t_772
DROP INDEX CONCURRENTLY i_773; -- 40 kB, Never Used Indexes, table t_773
DROP INDEX CONCURRENTLY i_774; -- 40 kB, Never Used Indexes, table t_774
DROP INDEX CONCURRENTLY i_775; -- 40 kB, Never Used Indexes, table t_775
DROP INDEX CONCURRENTLY i_776; -- 40 kB, Never Used Indexes, table t_776
DROP INDEX CONCURRENTLY i_777; -- 40 kB, Never Used Indexes, table t_777
DROP INDEX CONCURRENTLY i_778; -- 40 kB, Never Used Indexes, table t_778
DROP INDEX CONCURRENTLY i_779; -- 40 kB, Never Used Indexes, table t_779
DROP INDEX CONCURRENTLY i_78; -- 40 kB, Never Used Indexes, table t_78
DROP INDEX CONCURRENTLY i_780; -- 40 kB, Never Used Indexes, table t_780
DROP INDEX CONCURRENTLY i_781; -- 40 kB, Never Used Indexes, table t_781
DROP INDEX CONCURRENTLY i_782; -- 40 kB, Never Used Indexes, table t_782
DROP INDEX CONCURRENTLY i_783; -- 40 kB, Never Used Indexes, table t_783
DROP INDEX CONCURRENTLY i_784; -- 40 kB, Never Used Indexes, table t_784
DROP INDEX CONCURRENTLY i_785; -- 40 kB, Never Used Indexes, table t_785
DROP INDEX CONCURRENTLY i_786; -- 40 kB, Never Used Indexes, table t_786
DROP INDEX CONCURRENTLY i_787; -- 40 kB, Never Used Indexes, table t_787
DROP INDEX CONCURRENTLY i_788; -- 40 kB, Never Used Indexes, table t_788
DROP INDEX CONCURRENTLY i_789; -- 40 kB, Never Used Indexes, table t_789
DROP INDEX CONCURRENTLY i_79; -- 40 kB, Never Used Indexes, table t_79
DROP INDEX CONCURRENTLY i_790; -- 40 kB, Never Used Indexes, table t_790
DROP INDEX CONCURRENTLY i_791; -- 40 kB, Never Used Indexes, table t_791
DROP INDEX CONCURRENTLY i_792; -- 40 kB, Never Used Indexes, table t_792
DROP INDEX CONCURRENTLY i_793; -- 40 kB, Never Used Indexes, table t_793
DROP INDEX CONCURRENTLY i_794; -- 40 kB, Never Used Indexes, table t_794
DROP INDEX CONCURRENTLY i_795; -- 40 kB, Never Used Indexes, table t_795
DROP INDEX CONCURRENTLY i_796; -- 40 kB, Never Used Indexes, table t_796
DROP INDEX CONCURRENTLY i_797; -- 40 kB, Never Used Indexes, table t_797
DROP INDEX CONCURRENTLY i_798; -- 40 kB, Never Used Indexes, table t_798
DROP INDEX CONCURRENTLY i_799; -- 40 kB, Never Used Indexes, table t_799
DROP INDEX CONCURRENTLY i_8; -- 40 kB, Never Used Indexes, table t_8
DROP INDEX CONCURRENTLY i_80; -- 40 kB, Never Used Indexes, table t_80
DROP INDEX CONCURRENTLY i_800; -- 40 kB, Never Used Indexes, table t_800
DROP INDEX CONCURRENTLY i_801; -- 40 kB, Never Used Indexes, table t_801
DROP INDEX CONCURRENTLY i_802; -- 40 kB, Never Used Indexes, table t_802
DROP INDEX CONCURRENTLY i_803; -- 40 kB, Never Used Indexes, table t_803
DROP INDEX CONCURRENTLY i_804; -- 40 kB, Never Used Indexes, table t_804
DROP INDEX CONCURRENTLY i_805; -- 40 kB, Never Used Indexes, table t_805
DROP INDEX CONCURRENTLY i_806; -- 40 kB, Never Used Indexes, table t_806
DROP INDEX CONCURRENTLY i_807; -- 40 kB, Never Used Indexes, table t_807
DROP INDEX CONCURRENTLY i_808; -- 40 kB, Never Used Indexes, table t_808
DROP INDEX CONCURRENTLY i_809; -- 40 kB, Never Used Indexes, table t_809
DROP INDEX CONCURRENTLY i_81; -- 40 kB, Never Used Indexes, table t_81
DROP INDEX CONCURRENTLY i_810; -- 40 kB, Never Used Indexes, table t_810
DROP INDEX CONCURRENTLY i_811; -- 40 kB, Never Used Indexes, table t_811
DROP INDEX CONCURRENTLY i_812; -- 40 kB, Never Used Indexes, table t_812
DROP INDEX CONCURRENTLY i_813; -- 40 kB, Never Used Indexes, table t_813
DROP INDEX CONCURRENTLY i_814; -- 40 kB, Never Used Indexes, table t_814
DROP INDEX CONCURRENTLY i_815; -- 40 kB, Never Used Indexes, table t_815
DROP INDEX CONCURRENTLY i_816; -- 40 kB, Never Used Indexes, table t_816
DROP INDEX CONCURRENTLY i_817; -- 40 kB, Never Used Indexes, table t_817
DROP INDEX CONCURRENTLY i_818; -- 40 kB, Never Used Indexes, table t_818
DROP INDEX CONCURRENTLY i_819; -- 40 kB, Never Used Indexes, table t_819
DROP INDEX CONCURRENTLY i_82; -- 40 kB, Never Used Indexes, table t_82
DROP INDEX CONCURRENTLY i_820; -- 40 kB, Never Used Indexes, table t_820
DROP INDEX CONCURRENTLY i_821; -- 40 kB, Never Used Indexes, table t_821
DROP INDEX CONCURRENTLY i_822; -- 40 kB, Never Used Indexes, table t_822
DROP INDEX CONCURRENTLY i_823; -- 40 kB, Never Used Indexes, table t_823
DROP INDEX CONCURRENTLY i_824; -- 40 kB, Never Used Indexes, table t_824
DROP INDEX CONCURRENTLY i_825; -- 40 kB, Never Used Indexes, table t_825
DROP INDEX CONCURRENTLY i_826; -- 40 kB, Never Used Indexes, table t_826
DROP INDEX CONCURRENTLY i_827; -- 40 kB, Never Used Indexes, table t_827
DROP INDEX CONCURRENTLY i_828; -- 40 kB, Never Used Indexes, table t_828
DROP INDEX CONCURRENTLY i_829; -- 40 kB, Never Used Indexes, table t_829
DROP INDEX CONCURRENTLY i_83; -- 40 kB, Never Used Indexes, table t_83
DROP INDEX CONCURRENTLY i_830; -- 40 kB, Never Used Indexes, table t_830
DROP INDEX CONCURRENTLY i_831; -- 40 kB, Never Used Indexes, table t_831
DROP INDEX CONCURRENTLY i_832; -- 40 kB, Never Used Indexes, table t_832
DROP INDEX CONCURRENTLY i_833; -- 40 kB, Never Used Indexes, table t_833
DROP INDEX CONCURRENTLY i_834; -- 40 kB, Never Used Indexes, table t_834
DROP INDEX CONCURRENTLY i_835; -- 40 kB, Never Used Indexes, table t_835
DROP INDEX CONCURRENTLY i_836; -- 40 kB, Never Used Indexes, table t_836
DROP INDEX CONCURRENTLY i_837; -- 40 kB, Never Used Indexes, table t_837
DROP INDEX CONCURRENTLY i_838; -- 40 kB, Never Used Indexes, table t_838
DROP INDEX CONCURRENTLY i_839; -- 40 kB, Never Used Indexes, table t_839
DROP INDEX CONCURRENTLY i_84; -- 40 kB, Never Used Indexes, table t_84
DROP INDEX CONCURRENTLY i_840; -- 40 kB, Never Used Indexes, table t_840
DROP INDEX CONCURRENTLY i_841; -- 40 kB, Never Used Indexes, table t_841
DROP INDEX CONCURRENTLY i_842; -- 40 kB, Never Used Indexes, table t_842
DROP INDEX CONCURRENTLY i_843; -- 40 kB, Never Used Indexes, table t_843
DROP INDEX CONCURRENTLY i_844; -- 40 kB, Never Used Indexes, table t_844
DROP INDEX CONCURRENTLY i_845; -- 40 kB, Never Used Indexes, table t_845
DROP INDEX CONCURRENTLY i_846; -- 40 kB, Never Used Indexes, table t_846
DROP INDEX CONCURRENTLY i_847; -- 40 kB, Never Used Indexes, table t_847
DROP INDEX CONCURRENTLY i_848; -- 40 kB, Never Used Indexes, table t_848
DROP INDEX CONCURRENTLY i_849; -- 40 kB, Never Used Indexes, table t_849
DROP INDEX CONCURRENTLY i_85; -- 40 kB, Never Used Indexes, table t_85
DROP INDEX CONCURRENTLY i_850; -- 40 kB, Never Used Indexes, table t_850
DROP INDEX CONCURRENTLY i_851; -- 40 kB, Never Used Indexes, table t_851
DROP INDEX CONCURRENTLY i_852; -- 40 kB, Never Used Indexes, table t_852
DROP INDEX CONCURRENTLY i_853; -- 40 kB, Never Used Indexes, table t_853
DROP INDEX CONCURRENTLY i_854; -- 40 kB, Never Used Indexes, table t_854
DROP INDEX CONCURRENTLY i_855; -- 40 kB, Never Used Indexes, table t_855
DROP INDEX CONCURRENTLY i_856; -- 40 kB, Never Used Indexes, table t_856
DROP INDEX CONCURRENTLY i_857; -- 40 kB, Never Used Indexes, table t_857
DROP INDEX CONCURRENTLY i_858; -- 40 kB, Never Used Indexes, table t_858
DROP INDEX CONCURRENTLY i_859; -- 40 kB, Never Used Indexes, table t_859
DROP INDEX CONCURRENTLY i_86; -- 40 kB, Never Used Indexes, table t_86
DROP INDEX CONCURRENTLY i_860; -- 40 kB, Never Used Indexes, table t_860
DROP INDEX CONCURRENTLY i_861; -- 40 kB, Never Used Indexes, table t_861
DROP INDEX CONCURRENTLY i_862; -- 40 kB, Never Used Indexes, table t_862
DROP INDEX CONCURRENTLY i_863; -- 40 kB, Never Used Indexes, table t_863
DROP INDEX CONCURRENTLY i_864; -- 40 kB, Never Used Indexes, table t_864
DROP INDEX CONCURRENTLY i_865; -- 40 kB, Never Used Indexes, table t_865
DROP INDEX CONCURRENTLY i_866; -- 40 kB, Never Used Indexes, table t_866
DROP INDEX CONCURRENTLY i_867; -- 40 kB, Never Used Indexes, table t_867
DROP INDEX CONCURRENTLY i_868; -- 40 kB, Never Used Indexes, table t_868
DROP INDEX CONCURRENTLY i_869; -- 40 kB, Never Used Indexes, table t_869
DROP INDEX CONCURRENTLY i_87; -- 40 kB, Never Used Indexes, table t_87
DROP INDEX CONCURRENTLY i_870; -- 40 kB, Never Used Indexes, table t_870
DROP INDEX CONCURRENTLY i_871; -- 40 kB, Never Used Indexes, table t_871
DROP INDEX CONCURRENTLY i_872; -- 40 kB, Never Used Indexes, table t_872
DROP INDEX CONCURRENTLY i_873; -- 40 kB, Never Used Indexes, table t_873
DROP INDEX CONCURRENTLY i_874; -- 40 kB, Never Used Indexes, table t_874
DROP INDEX CONCURRENTLY i_875; -- 40 kB, Never Used Indexes, table t_875
DROP INDEX CONCURRENTLY i_876; -- 40 kB, Never Used Indexes, table t_876
DROP INDEX CONCURRENTLY i_877; -- 40 kB, Never Used Indexes, table t_877
DROP INDEX CONCURRENTLY i_878; -- 40 kB, Never Used Indexes, table t_878
DROP INDEX CONCURRENTLY i_879; -- 40 kB, Never Used Indexes, table t_879
DROP INDEX CONCURRENTLY i_88; -- 40 kB, Never Used Indexes, table t_88
DROP INDEX CONCURRENTLY i_880; -- 40 kB, Never Used Indexes, table t_880
DROP INDEX CONCURRENTLY i_881; -- 40 kB, Never Used Indexes, table t_881
DROP INDEX CONCURRENTLY i_882; -- 40 kB, Never Used Indexes, table t_882
DROP INDEX CONCURRENTLY i_883; -- 40 kB, Never Used Indexes, table t_883
DROP INDEX CONCURRENTLY i_884; -- 40 kB, Never Used Indexes, table t_884
DROP INDEX CONCURRENTLY i_885; -- 40 kB, Never Used Indexes, table t_885
DROP INDEX CONCURRENTLY i_886; -- 40 kB, Never Used Indexes, table t_886
DROP INDEX CONCURRENTLY i_887; -- 40 kB, Never Used Indexes, table t_887
DROP INDEX CONCURRENTLY i_888; -- 40 kB, Never Used Indexes, table t_888
DROP INDEX CONCURRENTLY i_889; -- 40 kB, Never Used Indexes, table t_889
DROP INDEX CONCURRENTLY i_89; -- 40 kB, Never Used Indexes, table t_89
DROP INDEX CONCURRENTLY i_890; -- 40 kB, Never Used Indexes, table t_890
DROP INDEX CONCURRENTLY i_891; -- 40 kB, Never Used Indexes, table t_891
DROP INDEX CONCURRENTLY i_892; -- 40 kB, Never Used Indexes, table t_892
DROP INDEX CONCURRENTLY i_893; -- 40 kB, Never Used Indexes, table t_893
DROP INDEX CONCURRENTLY i_894; -- 40 kB, Never Used Indexes, table t_894
DROP INDEX CONCURRENTLY i_895; -- 40 kB, Never Used Indexes, table t_895
DROP INDEX CONCURRENTLY i_896; -- 40 kB, Never Used Indexes, table t_896
DROP INDEX CONCURRENTLY i_897; -- 40 kB, Never Used Indexes, table t_897
DROP INDEX CONCURRENTLY i_898; -- 40 kB, Never Used Indexes, table t_898
DROP INDEX CONCURRENTLY i_899; -- 40 kB, Never Used Indexes, table t_899
DROP INDEX CONCURRENTLY i_9; -- 40 kB, Never Used Indexes, table t_9
DROP INDEX CONCURRENTLY i_90; -- 40 kB, Never Used Indexes, table t_90
DROP INDEX CONCURRENTLY i_900; -- 40 kB, Never Used Indexes, table t_900
DROP INDEX CONCURRENTLY i_901; -- 40 kB, Never Used Indexes, table t_901
DROP INDEX CONCURRENTLY i_902; -- 40 kB, Never Used Indexes, table t_902
DROP INDEX CONCURRENTLY i_903; -- 40 kB, Never Used Indexes, table t_903
DROP INDEX CONCURRENTLY i_904; -- 40 kB, Never Used Indexes, table t_904
DROP INDEX CONCURRENTLY i_905; -- 40 kB, Never Used Indexes, table t_905
DROP INDEX CONCURRENTLY i_906; -- 40 kB, Never Used Indexes, table t_906
DROP INDEX CONCURRENTLY i_907; -- 40 kB, Never Used Indexes, table t_907
DROP INDEX CONCURRENTLY i_908; -- 40 kB, Never Used Indexes, table t_908
DROP INDEX CONCURRENTLY i_909; -- 40 kB, Never Used Indexes, table t_909
DROP INDEX CONCURRENTLY i_91; -- 40 kB, Never Used Indexes, table t_91
DROP INDEX CONCURRENTLY i_910; -- 40 kB, Never Used Indexes, table t_910
DROP INDEX CONCURRENTLY i_911; -- 40 kB, Never Used Indexes, table t_911
DROP INDEX CONCURRENTLY i_912; -- 40 kB, Never Used Indexes, table t_912
DROP INDEX CONCURRENTLY i_913; -- 40 kB, Never Used Indexes, table t_913
DROP INDEX CONCURRENTLY i_914; -- 40 kB, Never Used Indexes, table t_914
DROP INDEX CONCURRENTLY i_915; -- 40 kB, Never Used Indexes, table t_915
DROP INDEX CONCURRENTLY i_916; -- 40 kB, Never Used Indexes, table t_916
DROP INDEX CONCURRENTLY i_917; -- 40 kB, Never Used Indexes, table t_917
DROP INDEX CONCURRENTLY i_918; -- 40 kB, Never Used Indexes, table t_918
DROP INDEX CONCURRENTLY i_919; -- 40 kB, Never Used Indexes, table t_919
DROP INDEX CONCURRENTLY i_92; -- 40 kB, Never Used Indexes, table t_92
DROP INDEX CONCURRENTLY i_920; -- 40 kB, Never Used Indexes, table t_920
DROP INDEX CONCURRENTLY i_921; -- 40 kB, Never Used Indexes, table t_921
DROP INDEX CONCURRENTLY i_922; -- 40 kB, Never Used Indexes, table t_922
DROP INDEX CONCURRENTLY i_923; -- 40 kB, Never Used Indexes, table t_923
DROP INDEX CONCURRENTLY i_924; -- 40 kB, Never Used Indexes, table t_924
DROP INDEX CONCURRENTLY i_925; -- 40 kB, Never Used Indexes, table t_925
DROP INDEX CONCURRENTLY i_926; -- 40 kB, Never Used Indexes, table t_926
DROP INDEX CONCURRENTLY i_927; -- 40 kB, Never Used Indexes, table t_927
DROP INDEX CONCURRENTLY i_928; -- 40 kB, Never Used Indexes, table t_928
DROP INDEX CONCURRENTLY i_929; -- 40 kB, Never Used Indexes, table t_929
DROP INDEX CONCURRENTLY i_93; -- 40 kB, Never Used Indexes, table t_93
DROP INDEX CONCURRENTLY i_930; -- 40 kB, Never Used Indexes, table t_930
DROP INDEX CONCURRENTLY i_931; -- 40 kB, Never Used Indexes, table t_931
DROP INDEX CONCURRENTLY i_932; -- 40 kB, Never Used Indexes, table t_932
DROP INDEX CONCURRENTLY i_933; -- 40 kB, Never Used Indexes, table t_933
DROP INDEX CONCURRENTLY i_934; -- 40 kB, Never Used Indexes, table t_934
DROP INDEX CONCURRENTLY i_935; -- 40 kB, Never Used Indexes, table t_935
DROP INDEX CONCURRENTLY i_936; -- 40 kB, Never Used Indexes, table t_936
DROP INDEX CONCURRENTLY i_937; -- 40 kB, Never Used Indexes, table t_937
DROP INDEX CONCURRENTLY i_938; -- 40 kB, Never Used Indexes, table t_938
DROP INDEX CONCURRENTLY i_939; -- 40 kB, Never Used Indexes, table t_939
DROP INDEX CONCURRENTLY i_94; -- 40 kB, Never Used Indexes, table t_94
DROP INDEX CONCURRENTLY i_940; -- 40 kB, Never Used Indexes, table t_940
DROP INDEX CONCURRENTLY i_941; -- 40 kB, Never Used Indexes, table t_941
DROP INDEX CONCURRENTLY i_942; -- 40 kB, Never Used Indexes, table t_942
DROP INDEX CONCURRENTLY i_943; -- 40 kB, Never Used Indexes, table t_943
DROP INDEX CONCURRENTLY i_944; -- 40 kB, Never Used Indexes, table t_944
DROP INDEX CONCURRENTLY i_945; -- 40 kB, Never Used Indexes, table t_945
DROP INDEX CONCURRENTLY i_946; -- 40 kB, Never Used Indexes, table t_946
DROP INDEX CONCURRENTLY i_947; -- 40 kB, Never Used Indexes, table t_947
DROP INDEX CONCURRENTLY i_948; -- 40 kB, Never Used Indexes, table t_948
DROP INDEX CONCURRENTLY i_949; -- 40 kB, Never Used Indexes, table t_949
DROP INDEX CONCURRENTLY i_95; -- 40 kB, Never Used Indexes, table t_95
DROP INDEX CONCURRENTLY i_950; -- 40 kB, Never Used Indexes, table t_950
DROP INDEX CONCURRENTLY i_951; -- 40 kB, Never Used Indexes, table t_951
DROP INDEX CONCURRENTLY i_952; -- 40 kB, Never Used Indexes, table t_952
DROP INDEX CONCURRENTLY i_953; -- 40 kB, Never Used Indexes, table t_953
DROP INDEX CONCURRENTLY i_954; -- 40 kB, Never Used Indexes, table t_954
DROP INDEX CONCURRENTLY i_955; -- 40 kB, Never Used Indexes, table t_955
DROP INDEX CONCURRENTLY i_956; -- 40 kB, Never Used Indexes, table t_956
DROP INDEX CONCURRENTLY i_957; -- 40 kB, Never Used Indexes, table t_957
DROP INDEX CONCURRENTLY i_958; -- 40 kB, Never Used Indexes, table t_958
DROP INDEX CONCURRENTLY i_959; -- 40 kB, Never Used Indexes, table t_959
DROP INDEX CONCURRENTLY i_96; -- 40 kB, Never Used Indexes, table t_96
DROP INDEX CONCURRENTLY i_960; -- 40 kB, Never Used Indexes, table t_960
DROP INDEX CONCURRENTLY i_961; -- 40 kB, Never Used Indexes, table t_961
DROP INDEX CONCURRENTLY i_962; -- 40 kB, Never Used Indexes, table t_962
DROP INDEX CONCURRENTLY i_963; -- 40 kB, Never Used Indexes, table t_963
DROP INDEX CONCURRENTLY i_964; -- 40 kB, Never Used Indexes, table t_964
DROP INDEX CONCURRENTLY i_965; -- 40 kB, Never Used Indexes, table t_965
DROP INDEX CONCURRENTLY i_966; -- 40 kB, Never Used Indexes, table t_966
DROP INDEX CONCURRENTLY i_967; -- 40 kB, Never Used Indexes, table t_967
DROP INDEX CONCURRENTLY i_968; -- 40 kB, Never Used Indexes, table t_968
DROP INDEX CONCURRENTLY i_969; -- 40 kB, Never Used Indexes, table t_969
DROP INDEX CONCURRENTLY i_97; -- 40 kB, Never Used Indexes, table t_97
DROP INDEX CONCURRENTLY i_970; -- 40 kB, Never Used Indexes, table t_970
DROP INDEX CONCURRENTLY i_971; -- 40 kB, Never Used Indexes, table t_971
DROP INDEX CONCURRENTLY i_972; -- 40 kB, Never Used Indexes, table t_972
DROP INDEX CONCURRENTLY i_973; -- 40 kB, Never Used Indexes, table t_973
DROP INDEX CONCURRENTLY i_974; -- 40 kB, Never Used Indexes, table t_974
DROP INDEX CONCURRENTLY i_975; -- 40 kB, Never Used Indexes, table t_975
DROP INDEX CONCURRENTLY i_976; -- 40 kB, Never Used Indexes, table t_976
DROP INDEX CONCURRENTLY i_977; -- 40 kB, Never Used Indexes, table t_977
DROP INDEX CONCURRENTLY i_978; -- 40 kB, Never Used Indexes, table t_978
DROP INDEX CONCURRENTLY i_979; -- 40 kB, Never Used Indexes, table t_979
DROP INDEX CONCURRENTLY i_98; -- 40 kB, Never Used Indexes, table t_98
DROP INDEX CONCURRENTLY i_980; -- 40 kB, Never Used Indexes, table t_980
DROP INDEX CONCURRENTLY i_981; -- 40 kB, Never Used Indexes, table t_981
DROP INDEX CONCURRENTLY i_982; -- 40 kB, Never Used Indexes, table t_982
DROP INDEX CONCURRENTLY i_983; -- 40 kB, Never Used Indexes, table t_983
DROP INDEX CONCURRENTLY i_984; -- 40 kB, Never Used Indexes, table t_984
DROP INDEX CONCURRENTLY i_985; -- 40 kB, Never Used Indexes, table t_985
DROP INDEX CONCURRENTLY i_986; -- 40 kB, Never Used Indexes, table t_986
DROP INDEX CONCURRENTLY i_987; -- 40 kB, Never Used Indexes, table t_987
DROP INDEX CONCURRENTLY i_988; -- 40 kB, Never Used Indexes, table t_988
DROP INDEX CONCURRENTLY i_989; -- 40 kB, Never Used Indexes, table t_989
DROP INDEX CONCURRENTLY i_99; -- 40 kB, Never Used Indexes, table t_99
DROP INDEX CONCURRENTLY i_990; -- 40 kB, Never Used Indexes, table t_990
DROP INDEX CONCURRENTLY i_991; -- 40 kB, Never Used Indexes, table t_991
DROP INDEX CONCURRENTLY i_992; -- 40 kB, Never Used Indexes, table t_992
DROP INDEX CONCURRENTLY i_993; -- 40 kB, Never Used Indexes, table t_993
DROP INDEX CONCURRENTLY i_994; -- 40 kB, Never Used Indexes, table t_994
DROP INDEX CONCURRENTLY i_995; -- 40 kB, Never Used Indexes, table t_995
DROP INDEX CONCURRENTLY i_996; -- 40 kB, Never Used Indexes, table t_996
DROP INDEX CONCURRENTLY i_997; -- 40 kB, Never Used Indexes, table t_997
DROP INDEX CONCURRENTLY i_998; -- 40 kB, Never Used Indexes, table t_998
DROP INDEX CONCURRENTLY i_999; -- 40 kB, Never Used Indexes, table t_999
DROP INDEX CONCURRENTLY r_red_fk_1_id_idx; -- 21 MB, r_red_fk_1_x_idx, Never Used Indexes, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_1_x_idx; -- 21 MB, r_red_fk_1_id_idx, Never Used Indexes, table t_red_fk_1
DROP INDEX CONCURRENTLY t_red_fk_1_pkey; -- 21 MB, r_red_fk_1_id_idx, r_red_fk_1_x_idx, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_2_fk_idx; -- 21 MB, Never Used Indexes, table t_red_fk_2
DROP INDEX CONCURRENTLY i_redundant_1; -- 21 MB, Never Used Indexes, i_redundant_2, table t_with_redundant_index
DROP INDEX CONCURRENTLY i_redundant_2; -- 21 MB, i_redundant_1, Never Used Indexes, table t_with_redundant_index
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
CREATE INDEX CONCURRENTLY i_110 ON public.t_110 USING btree (i); -- table t_110
CREATE INDEX CONCURRENTLY i_111 ON public.t_111 USING btree (i); -- table t_111
CREATE INDEX CONCURRENTLY i_112 ON public.t_112 USING btree (i); -- table t_112
CREATE INDEX CONCURRENTLY i_113 ON public.t_113 USING btree (i); -- table t_113
CREATE INDEX CONCURRENTLY i_114 ON public.t_114 USING btree (i); -- table t_114
CREATE INDEX CONCURRENTLY i_115 ON public.t_115 USING btree (i); -- table t_115
CREATE INDEX CONCURRENTLY i_116 ON public.t_116 USING btree (i); -- table t_116
CREATE INDEX CONCURRENTLY i_117 ON public.t_117 USING btree (i); -- table t_117
CREATE INDEX CONCURRENTLY i_118 ON public.t_118 USING btree (i); -- table t_118
CREATE INDEX CONCURRENTLY i_119 ON public.t_119 USING btree (i); -- table t_119
CREATE INDEX CONCURRENTLY i_12 ON public.t_12 USING btree (i); -- table t_12
CREATE INDEX CONCURRENTLY i_120 ON public.t_120 USING btree (i); -- table t_120
CREATE INDEX CONCURRENTLY i_121 ON public.t_121 USING btree (i); -- table t_121
CREATE INDEX CONCURRENTLY i_122 ON public.t_122 USING btree (i); -- table t_122
CREATE INDEX CONCURRENTLY i_123 ON public.t_123 USING btree (i); -- table t_123
CREATE INDEX CONCURRENTLY i_124 ON public.t_124 USING btree (i); -- table t_124
CREATE INDEX CONCURRENTLY i_125 ON public.t_125 USING btree (i); -- table t_125
CREATE INDEX CONCURRENTLY i_126 ON public.t_126 USING btree (i); -- table t_126
CREATE INDEX CONCURRENTLY i_127 ON public.t_127 USING btree (i); -- table t_127
CREATE INDEX CONCURRENTLY i_128 ON public.t_128 USING btree (i); -- table t_128
CREATE INDEX CONCURRENTLY i_129 ON public.t_129 USING btree (i); -- table t_129
CREATE INDEX CONCURRENTLY i_13 ON public.t_13 USING btree (i); -- table t_13
CREATE INDEX CONCURRENTLY i_130 ON public.t_130 USING btree (i); -- table t_130
CREATE INDEX CONCURRENTLY i_131 ON public.t_131 USING btree (i); -- table t_131
CREATE INDEX CONCURRENTLY i_132 ON public.t_132 USING btree (i); -- table t_132
CREATE INDEX CONCURRENTLY i_133 ON public.t_133 USING btree (i); -- table t_133
CREATE INDEX CONCURRENTLY i_134 ON public.t_134 USING btree (i); -- table t_134
CREATE INDEX CONCURRENTLY i_135 ON public.t_135 USING btree (i); -- table t_135
CREATE INDEX CONCURRENTLY i_136 ON public.t_136 USING btree (i); -- table t_136
CREATE INDEX CONCURRENTLY i_137 ON public.t_137 USING btree (i); -- table t_137
CREATE INDEX CONCURRENTLY i_138 ON public.t_138 USING btree (i); -- table t_138
CREATE INDEX CONCURRENTLY i_139 ON public.t_139 USING btree (i); -- table t_139
CREATE INDEX CONCURRENTLY i_14 ON public.t_14 USING btree (i); -- table t_14
CREATE INDEX CONCURRENTLY i_140 ON public.t_140 USING btree (i); -- table t_140
CREATE INDEX CONCURRENTLY i_141 ON public.t_141 USING btree (i); -- table t_141
CREATE INDEX CONCURRENTLY i_142 ON public.t_142 USING btree (i); -- table t_142
CREATE INDEX CONCURRENTLY i_143 ON public.t_143 USING btree (i); -- table t_143
CREATE INDEX CONCURRENTLY i_144 ON public.t_144 USING btree (i); -- table t_144
CREATE INDEX CONCURRENTLY i_145 ON public.t_145 USING btree (i); -- table t_145
CREATE INDEX CONCURRENTLY i_146 ON public.t_146 USING btree (i); -- table t_146
CREATE INDEX CONCURRENTLY i_147 ON public.t_147 USING btree (i); -- table t_147
CREATE INDEX CONCURRENTLY i_148 ON public.t_148 USING btree (i); -- table t_148
CREATE INDEX CONCURRENTLY i_149 ON public.t_149 USING btree (i); -- table t_149
CREATE INDEX CONCURRENTLY i_15 ON public.t_15 USING btree (i); -- table t_15
CREATE INDEX CONCURRENTLY i_150 ON public.t_150 USING btree (i); -- table t_150
CREATE INDEX CONCURRENTLY i_151 ON public.t_151 USING btree (i); -- table t_151
CREATE INDEX CONCURRENTLY i_152 ON public.t_152 USING btree (i); -- table t_152
CREATE INDEX CONCURRENTLY i_153 ON public.t_153 USING btree (i); -- table t_153
CREATE INDEX CONCURRENTLY i_154 ON public.t_154 USING btree (i); -- table t_154
CREATE INDEX CONCURRENTLY i_155 ON public.t_155 USING btree (i); -- table t_155
CREATE INDEX CONCURRENTLY i_156 ON public.t_156 USING btree (i); -- table t_156
CREATE INDEX CONCURRENTLY i_157 ON public.t_157 USING btree (i); -- table t_157
CREATE INDEX CONCURRENTLY i_158 ON public.t_158 USING btree (i); -- table t_158
CREATE INDEX CONCURRENTLY i_159 ON public.t_159 USING btree (i); -- table t_159
CREATE INDEX CONCURRENTLY i_16 ON public.t_16 USING btree (i); -- table t_16
CREATE INDEX CONCURRENTLY i_160 ON public.t_160 USING btree (i); -- table t_160
CREATE INDEX CONCURRENTLY i_161 ON public.t_161 USING btree (i); -- table t_161
CREATE INDEX CONCURRENTLY i_162 ON public.t_162 USING btree (i); -- table t_162
CREATE INDEX CONCURRENTLY i_163 ON public.t_163 USING btree (i); -- table t_163
CREATE INDEX CONCURRENTLY i_164 ON public.t_164 USING btree (i); -- table t_164
CREATE INDEX CONCURRENTLY i_165 ON public.t_165 USING btree (i); -- table t_165
CREATE INDEX CONCURRENTLY i_166 ON public.t_166 USING btree (i); -- table t_166
CREATE INDEX CONCURRENTLY i_167 ON public.t_167 USING btree (i); -- table t_167
CREATE INDEX CONCURRENTLY i_168 ON public.t_168 USING btree (i); -- table t_168
CREATE INDEX CONCURRENTLY i_169 ON public.t_169 USING btree (i); -- table t_169
CREATE INDEX CONCURRENTLY i_17 ON public.t_17 USING btree (i); -- table t_17
CREATE INDEX CONCURRENTLY i_170 ON public.t_170 USING btree (i); -- table t_170
CREATE INDEX CONCURRENTLY i_171 ON public.t_171 USING btree (i); -- table t_171
CREATE INDEX CONCURRENTLY i_172 ON public.t_172 USING btree (i); -- table t_172
CREATE INDEX CONCURRENTLY i_173 ON public.t_173 USING btree (i); -- table t_173
CREATE INDEX CONCURRENTLY i_174 ON public.t_174 USING btree (i); -- table t_174
CREATE INDEX CONCURRENTLY i_175 ON public.t_175 USING btree (i); -- table t_175
CREATE INDEX CONCURRENTLY i_176 ON public.t_176 USING btree (i); -- table t_176
CREATE INDEX CONCURRENTLY i_177 ON public.t_177 USING btree (i); -- table t_177
CREATE INDEX CONCURRENTLY i_178 ON public.t_178 USING btree (i); -- table t_178
CREATE INDEX CONCURRENTLY i_179 ON public.t_179 USING btree (i); -- table t_179
CREATE INDEX CONCURRENTLY i_18 ON public.t_18 USING btree (i); -- table t_18
CREATE INDEX CONCURRENTLY i_180 ON public.t_180 USING btree (i); -- table t_180
CREATE INDEX CONCURRENTLY i_181 ON public.t_181 USING btree (i); -- table t_181
CREATE INDEX CONCURRENTLY i_182 ON public.t_182 USING btree (i); -- table t_182
CREATE INDEX CONCURRENTLY i_183 ON public.t_183 USING btree (i); -- table t_183
CREATE INDEX CONCURRENTLY i_184 ON public.t_184 USING btree (i); -- table t_184
CREATE INDEX CONCURRENTLY i_185 ON public.t_185 USING btree (i); -- table t_185
CREATE INDEX CONCURRENTLY i_186 ON public.t_186 USING btree (i); -- table t_186
CREATE INDEX CONCURRENTLY i_187 ON public.t_187 USING btree (i); -- table t_187
CREATE INDEX CONCURRENTLY i_188 ON public.t_188 USING btree (i); -- table t_188
CREATE INDEX CONCURRENTLY i_189 ON public.t_189 USING btree (i); -- table t_189
CREATE INDEX CONCURRENTLY i_19 ON public.t_19 USING btree (i); -- table t_19
CREATE INDEX CONCURRENTLY i_190 ON public.t_190 USING btree (i); -- table t_190
CREATE INDEX CONCURRENTLY i_191 ON public.t_191 USING btree (i); -- table t_191
CREATE INDEX CONCURRENTLY i_192 ON public.t_192 USING btree (i); -- table t_192
CREATE INDEX CONCURRENTLY i_193 ON public.t_193 USING btree (i); -- table t_193
CREATE INDEX CONCURRENTLY i_194 ON public.t_194 USING btree (i); -- table t_194
CREATE INDEX CONCURRENTLY i_195 ON public.t_195 USING btree (i); -- table t_195
CREATE INDEX CONCURRENTLY i_196 ON public.t_196 USING btree (i); -- table t_196
CREATE INDEX CONCURRENTLY i_197 ON public.t_197 USING btree (i); -- table t_197
CREATE INDEX CONCURRENTLY i_198 ON public.t_198 USING btree (i); -- table t_198
CREATE INDEX CONCURRENTLY i_199 ON public.t_199 USING btree (i); -- table t_199
CREATE INDEX CONCURRENTLY i_2 ON public.t_2 USING btree (i); -- table t_2
CREATE INDEX CONCURRENTLY i_20 ON public.t_20 USING btree (i); -- table t_20
CREATE INDEX CONCURRENTLY i_200 ON public.t_200 USING btree (i); -- table t_200
CREATE INDEX CONCURRENTLY i_201 ON public.t_201 USING btree (i); -- table t_201
CREATE INDEX CONCURRENTLY i_202 ON public.t_202 USING btree (i); -- table t_202
CREATE INDEX CONCURRENTLY i_203 ON public.t_203 USING btree (i); -- table t_203
CREATE INDEX CONCURRENTLY i_204 ON public.t_204 USING btree (i); -- table t_204
CREATE INDEX CONCURRENTLY i_205 ON public.t_205 USING btree (i); -- table t_205
CREATE INDEX CONCURRENTLY i_206 ON public.t_206 USING btree (i); -- table t_206
CREATE INDEX CONCURRENTLY i_207 ON public.t_207 USING btree (i); -- table t_207
CREATE INDEX CONCURRENTLY i_208 ON public.t_208 USING btree (i); -- table t_208
CREATE INDEX CONCURRENTLY i_209 ON public.t_209 USING btree (i); -- table t_209
CREATE INDEX CONCURRENTLY i_21 ON public.t_21 USING btree (i); -- table t_21
CREATE INDEX CONCURRENTLY i_210 ON public.t_210 USING btree (i); -- table t_210
CREATE INDEX CONCURRENTLY i_211 ON public.t_211 USING btree (i); -- table t_211
CREATE INDEX CONCURRENTLY i_212 ON public.t_212 USING btree (i); -- table t_212
CREATE INDEX CONCURRENTLY i_213 ON public.t_213 USING btree (i); -- table t_213
CREATE INDEX CONCURRENTLY i_214 ON public.t_214 USING btree (i); -- table t_214
CREATE INDEX CONCURRENTLY i_215 ON public.t_215 USING btree (i); -- table t_215
CREATE INDEX CONCURRENTLY i_216 ON public.t_216 USING btree (i); -- table t_216
CREATE INDEX CONCURRENTLY i_217 ON public.t_217 USING btree (i); -- table t_217
CREATE INDEX CONCURRENTLY i_218 ON public.t_218 USING btree (i); -- table t_218
CREATE INDEX CONCURRENTLY i_219 ON public.t_219 USING btree (i); -- table t_219
CREATE INDEX CONCURRENTLY i_22 ON public.t_22 USING btree (i); -- table t_22
CREATE INDEX CONCURRENTLY i_220 ON public.t_220 USING btree (i); -- table t_220
CREATE INDEX CONCURRENTLY i_221 ON public.t_221 USING btree (i); -- table t_221
CREATE INDEX CONCURRENTLY i_222 ON public.t_222 USING btree (i); -- table t_222
CREATE INDEX CONCURRENTLY i_223 ON public.t_223 USING btree (i); -- table t_223
CREATE INDEX CONCURRENTLY i_224 ON public.t_224 USING btree (i); -- table t_224
CREATE INDEX CONCURRENTLY i_225 ON public.t_225 USING btree (i); -- table t_225
CREATE INDEX CONCURRENTLY i_226 ON public.t_226 USING btree (i); -- table t_226
CREATE INDEX CONCURRENTLY i_227 ON public.t_227 USING btree (i); -- table t_227
CREATE INDEX CONCURRENTLY i_228 ON public.t_228 USING btree (i); -- table t_228
CREATE INDEX CONCURRENTLY i_229 ON public.t_229 USING btree (i); -- table t_229
CREATE INDEX CONCURRENTLY i_23 ON public.t_23 USING btree (i); -- table t_23
CREATE INDEX CONCURRENTLY i_230 ON public.t_230 USING btree (i); -- table t_230
CREATE INDEX CONCURRENTLY i_231 ON public.t_231 USING btree (i); -- table t_231
CREATE INDEX CONCURRENTLY i_232 ON public.t_232 USING btree (i); -- table t_232
CREATE INDEX CONCURRENTLY i_233 ON public.t_233 USING btree (i); -- table t_233
CREATE INDEX CONCURRENTLY i_234 ON public.t_234 USING btree (i); -- table t_234
CREATE INDEX CONCURRENTLY i_235 ON public.t_235 USING btree (i); -- table t_235
CREATE INDEX CONCURRENTLY i_236 ON public.t_236 USING btree (i); -- table t_236
CREATE INDEX CONCURRENTLY i_237 ON public.t_237 USING btree (i); -- table t_237
CREATE INDEX CONCURRENTLY i_238 ON public.t_238 USING btree (i); -- table t_238
CREATE INDEX CONCURRENTLY i_239 ON public.t_239 USING btree (i); -- table t_239
CREATE INDEX CONCURRENTLY i_24 ON public.t_24 USING btree (i); -- table t_24
CREATE INDEX CONCURRENTLY i_240 ON public.t_240 USING btree (i); -- table t_240
CREATE INDEX CONCURRENTLY i_241 ON public.t_241 USING btree (i); -- table t_241
CREATE INDEX CONCURRENTLY i_242 ON public.t_242 USING btree (i); -- table t_242
CREATE INDEX CONCURRENTLY i_243 ON public.t_243 USING btree (i); -- table t_243
CREATE INDEX CONCURRENTLY i_244 ON public.t_244 USING btree (i); -- table t_244
CREATE INDEX CONCURRENTLY i_245 ON public.t_245 USING btree (i); -- table t_245
CREATE INDEX CONCURRENTLY i_246 ON public.t_246 USING btree (i); -- table t_246
CREATE INDEX CONCURRENTLY i_247 ON public.t_247 USING btree (i); -- table t_247
CREATE INDEX CONCURRENTLY i_248 ON public.t_248 USING btree (i); -- table t_248
CREATE INDEX CONCURRENTLY i_249 ON public.t_249 USING btree (i); -- table t_249
CREATE INDEX CONCURRENTLY i_25 ON public.t_25 USING btree (i); -- table t_25
CREATE INDEX CONCURRENTLY i_250 ON public.t_250 USING btree (i); -- table t_250
CREATE INDEX CONCURRENTLY i_251 ON public.t_251 USING btree (i); -- table t_251
CREATE INDEX CONCURRENTLY i_252 ON public.t_252 USING btree (i); -- table t_252
CREATE INDEX CONCURRENTLY i_253 ON public.t_253 USING btree (i); -- table t_253
CREATE INDEX CONCURRENTLY i_254 ON public.t_254 USING btree (i); -- table t_254
CREATE INDEX CONCURRENTLY i_255 ON public.t_255 USING btree (i); -- table t_255
CREATE INDEX CONCURRENTLY i_256 ON public.t_256 USING btree (i); -- table t_256
CREATE INDEX CONCURRENTLY i_257 ON public.t_257 USING btree (i); -- table t_257
CREATE INDEX CONCURRENTLY i_258 ON public.t_258 USING btree (i); -- table t_258
CREATE INDEX CONCURRENTLY i_259 ON public.t_259 USING btree (i); -- table t_259
CREATE INDEX CONCURRENTLY i_26 ON public.t_26 USING btree (i); -- table t_26
CREATE INDEX CONCURRENTLY i_260 ON public.t_260 USING btree (i); -- table t_260
CREATE INDEX CONCURRENTLY i_261 ON public.t_261 USING btree (i); -- table t_261
CREATE INDEX CONCURRENTLY i_262 ON public.t_262 USING btree (i); -- table t_262
CREATE INDEX CONCURRENTLY i_263 ON public.t_263 USING btree (i); -- table t_263
CREATE INDEX CONCURRENTLY i_264 ON public.t_264 USING btree (i); -- table t_264
CREATE INDEX CONCURRENTLY i_265 ON public.t_265 USING btree (i); -- table t_265
CREATE INDEX CONCURRENTLY i_266 ON public.t_266 USING btree (i); -- table t_266
CREATE INDEX CONCURRENTLY i_267 ON public.t_267 USING btree (i); -- table t_267
CREATE INDEX CONCURRENTLY i_268 ON public.t_268 USING btree (i); -- table t_268
CREATE INDEX CONCURRENTLY i_269 ON public.t_269 USING btree (i); -- table t_269
CREATE INDEX CONCURRENTLY i_27 ON public.t_27 USING btree (i); -- table t_27
CREATE INDEX CONCURRENTLY i_270 ON public.t_270 USING btree (i); -- table t_270
CREATE INDEX CONCURRENTLY i_271 ON public.t_271 USING btree (i); -- table t_271
CREATE INDEX CONCURRENTLY i_272 ON public.t_272 USING btree (i); -- table t_272
CREATE INDEX CONCURRENTLY i_273 ON public.t_273 USING btree (i); -- table t_273
CREATE INDEX CONCURRENTLY i_274 ON public.t_274 USING btree (i); -- table t_274
CREATE INDEX CONCURRENTLY i_275 ON public.t_275 USING btree (i); -- table t_275
CREATE INDEX CONCURRENTLY i_276 ON public.t_276 USING btree (i); -- table t_276
CREATE INDEX CONCURRENTLY i_277 ON public.t_277 USING btree (i); -- table t_277
CREATE INDEX CONCURRENTLY i_278 ON public.t_278 USING btree (i); -- table t_278
CREATE INDEX CONCURRENTLY i_279 ON public.t_279 USING btree (i); -- table t_279
CREATE INDEX CONCURRENTLY i_28 ON public.t_28 USING btree (i); -- table t_28
CREATE INDEX CONCURRENTLY i_280 ON public.t_280 USING btree (i); -- table t_280
CREATE INDEX CONCURRENTLY i_281 ON public.t_281 USING btree (i); -- table t_281
CREATE INDEX CONCURRENTLY i_282 ON public.t_282 USING btree (i); -- table t_282
CREATE INDEX CONCURRENTLY i_283 ON public.t_283 USING btree (i); -- table t_283
CREATE INDEX CONCURRENTLY i_284 ON public.t_284 USING btree (i); -- table t_284
CREATE INDEX CONCURRENTLY i_285 ON public.t_285 USING btree (i); -- table t_285
CREATE INDEX CONCURRENTLY i_286 ON public.t_286 USING btree (i); -- table t_286
CREATE INDEX CONCURRENTLY i_287 ON public.t_287 USING btree (i); -- table t_287
CREATE INDEX CONCURRENTLY i_288 ON public.t_288 USING btree (i); -- table t_288
CREATE INDEX CONCURRENTLY i_289 ON public.t_289 USING btree (i); -- table t_289
CREATE INDEX CONCURRENTLY i_29 ON public.t_29 USING btree (i); -- table t_29
CREATE INDEX CONCURRENTLY i_290 ON public.t_290 USING btree (i); -- table t_290
CREATE INDEX CONCURRENTLY i_291 ON public.t_291 USING btree (i); -- table t_291
CREATE INDEX CONCURRENTLY i_292 ON public.t_292 USING btree (i); -- table t_292
CREATE INDEX CONCURRENTLY i_293 ON public.t_293 USING btree (i); -- table t_293
CREATE INDEX CONCURRENTLY i_294 ON public.t_294 USING btree (i); -- table t_294
CREATE INDEX CONCURRENTLY i_295 ON public.t_295 USING btree (i); -- table t_295
CREATE INDEX CONCURRENTLY i_296 ON public.t_296 USING btree (i); -- table t_296
CREATE INDEX CONCURRENTLY i_297 ON public.t_297 USING btree (i); -- table t_297
CREATE INDEX CONCURRENTLY i_298 ON public.t_298 USING btree (i); -- table t_298
CREATE INDEX CONCURRENTLY i_299 ON public.t_299 USING btree (i); -- table t_299
CREATE INDEX CONCURRENTLY i_3 ON public.t_3 USING btree (i); -- table t_3
CREATE INDEX CONCURRENTLY i_30 ON public.t_30 USING btree (i); -- table t_30
CREATE INDEX CONCURRENTLY i_300 ON public.t_300 USING btree (i); -- table t_300
CREATE INDEX CONCURRENTLY i_301 ON public.t_301 USING btree (i); -- table t_301
CREATE INDEX CONCURRENTLY i_302 ON public.t_302 USING btree (i); -- table t_302
CREATE INDEX CONCURRENTLY i_303 ON public.t_303 USING btree (i); -- table t_303
CREATE INDEX CONCURRENTLY i_304 ON public.t_304 USING btree (i); -- table t_304
CREATE INDEX CONCURRENTLY i_305 ON public.t_305 USING btree (i); -- table t_305
CREATE INDEX CONCURRENTLY i_306 ON public.t_306 USING btree (i); -- table t_306
CREATE INDEX CONCURRENTLY i_307 ON public.t_307 USING btree (i); -- table t_307
CREATE INDEX CONCURRENTLY i_308 ON public.t_308 USING btree (i); -- table t_308
CREATE INDEX CONCURRENTLY i_309 ON public.t_309 USING btree (i); -- table t_309
CREATE INDEX CONCURRENTLY i_31 ON public.t_31 USING btree (i); -- table t_31
CREATE INDEX CONCURRENTLY i_310 ON public.t_310 USING btree (i); -- table t_310
CREATE INDEX CONCURRENTLY i_311 ON public.t_311 USING btree (i); -- table t_311
CREATE INDEX CONCURRENTLY i_312 ON public.t_312 USING btree (i); -- table t_312
CREATE INDEX CONCURRENTLY i_313 ON public.t_313 USING btree (i); -- table t_313
CREATE INDEX CONCURRENTLY i_314 ON public.t_314 USING btree (i); -- table t_314
CREATE INDEX CONCURRENTLY i_315 ON public.t_315 USING btree (i); -- table t_315
CREATE INDEX CONCURRENTLY i_316 ON public.t_316 USING btree (i); -- table t_316
CREATE INDEX CONCURRENTLY i_317 ON public.t_317 USING btree (i); -- table t_317
CREATE INDEX CONCURRENTLY i_318 ON public.t_318 USING btree (i); -- table t_318
CREATE INDEX CONCURRENTLY i_319 ON public.t_319 USING btree (i); -- table t_319
CREATE INDEX CONCURRENTLY i_32 ON public.t_32 USING btree (i); -- table t_32
CREATE INDEX CONCURRENTLY i_320 ON public.t_320 USING btree (i); -- table t_320
CREATE INDEX CONCURRENTLY i_321 ON public.t_321 USING btree (i); -- table t_321
CREATE INDEX CONCURRENTLY i_322 ON public.t_322 USING btree (i); -- table t_322
CREATE INDEX CONCURRENTLY i_323 ON public.t_323 USING btree (i); -- table t_323
CREATE INDEX CONCURRENTLY i_324 ON public.t_324 USING btree (i); -- table t_324
CREATE INDEX CONCURRENTLY i_325 ON public.t_325 USING btree (i); -- table t_325
CREATE INDEX CONCURRENTLY i_326 ON public.t_326 USING btree (i); -- table t_326
CREATE INDEX CONCURRENTLY i_327 ON public.t_327 USING btree (i); -- table t_327
CREATE INDEX CONCURRENTLY i_328 ON public.t_328 USING btree (i); -- table t_328
CREATE INDEX CONCURRENTLY i_329 ON public.t_329 USING btree (i); -- table t_329
CREATE INDEX CONCURRENTLY i_33 ON public.t_33 USING btree (i); -- table t_33
CREATE INDEX CONCURRENTLY i_330 ON public.t_330 USING btree (i); -- table t_330
CREATE INDEX CONCURRENTLY i_331 ON public.t_331 USING btree (i); -- table t_331
CREATE INDEX CONCURRENTLY i_332 ON public.t_332 USING btree (i); -- table t_332
CREATE INDEX CONCURRENTLY i_333 ON public.t_333 USING btree (i); -- table t_333
CREATE INDEX CONCURRENTLY i_334 ON public.t_334 USING btree (i); -- table t_334
CREATE INDEX CONCURRENTLY i_335 ON public.t_335 USING btree (i); -- table t_335
CREATE INDEX CONCURRENTLY i_336 ON public.t_336 USING btree (i); -- table t_336
CREATE INDEX CONCURRENTLY i_337 ON public.t_337 USING btree (i); -- table t_337
CREATE INDEX CONCURRENTLY i_338 ON public.t_338 USING btree (i); -- table t_338
CREATE INDEX CONCURRENTLY i_339 ON public.t_339 USING btree (i); -- table t_339
CREATE INDEX CONCURRENTLY i_34 ON public.t_34 USING btree (i); -- table t_34
CREATE INDEX CONCURRENTLY i_340 ON public.t_340 USING btree (i); -- table t_340
CREATE INDEX CONCURRENTLY i_341 ON public.t_341 USING btree (i); -- table t_341
CREATE INDEX CONCURRENTLY i_342 ON public.t_342 USING btree (i); -- table t_342
CREATE INDEX CONCURRENTLY i_343 ON public.t_343 USING btree (i); -- table t_343
CREATE INDEX CONCURRENTLY i_344 ON public.t_344 USING btree (i); -- table t_344
CREATE INDEX CONCURRENTLY i_345 ON public.t_345 USING btree (i); -- table t_345
CREATE INDEX CONCURRENTLY i_346 ON public.t_346 USING btree (i); -- table t_346
CREATE INDEX CONCURRENTLY i_347 ON public.t_347 USING btree (i); -- table t_347
CREATE INDEX CONCURRENTLY i_348 ON public.t_348 USING btree (i); -- table t_348
CREATE INDEX CONCURRENTLY i_349 ON public.t_349 USING btree (i); -- table t_349
CREATE INDEX CONCURRENTLY i_35 ON public.t_35 USING btree (i); -- table t_35
CREATE INDEX CONCURRENTLY i_350 ON public.t_350 USING btree (i); -- table t_350
CREATE INDEX CONCURRENTLY i_351 ON public.t_351 USING btree (i); -- table t_351
CREATE INDEX CONCURRENTLY i_352 ON public.t_352 USING btree (i); -- table t_352
CREATE INDEX CONCURRENTLY i_353 ON public.t_353 USING btree (i); -- table t_353
CREATE INDEX CONCURRENTLY i_354 ON public.t_354 USING btree (i); -- table t_354
CREATE INDEX CONCURRENTLY i_355 ON public.t_355 USING btree (i); -- table t_355
CREATE INDEX CONCURRENTLY i_356 ON public.t_356 USING btree (i); -- table t_356
CREATE INDEX CONCURRENTLY i_357 ON public.t_357 USING btree (i); -- table t_357
CREATE INDEX CONCURRENTLY i_358 ON public.t_358 USING btree (i); -- table t_358
CREATE INDEX CONCURRENTLY i_359 ON public.t_359 USING btree (i); -- table t_359
CREATE INDEX CONCURRENTLY i_36 ON public.t_36 USING btree (i); -- table t_36
CREATE INDEX CONCURRENTLY i_360 ON public.t_360 USING btree (i); -- table t_360
CREATE INDEX CONCURRENTLY i_361 ON public.t_361 USING btree (i); -- table t_361
CREATE INDEX CONCURRENTLY i_362 ON public.t_362 USING btree (i); -- table t_362
CREATE INDEX CONCURRENTLY i_363 ON public.t_363 USING btree (i); -- table t_363
CREATE INDEX CONCURRENTLY i_364 ON public.t_364 USING btree (i); -- table t_364
CREATE INDEX CONCURRENTLY i_365 ON public.t_365 USING btree (i); -- table t_365
CREATE INDEX CONCURRENTLY i_366 ON public.t_366 USING btree (i); -- table t_366
CREATE INDEX CONCURRENTLY i_367 ON public.t_367 USING btree (i); -- table t_367
CREATE INDEX CONCURRENTLY i_368 ON public.t_368 USING btree (i); -- table t_368
CREATE INDEX CONCURRENTLY i_369 ON public.t_369 USING btree (i); -- table t_369
CREATE INDEX CONCURRENTLY i_37 ON public.t_37 USING btree (i); -- table t_37
CREATE INDEX CONCURRENTLY i_370 ON public.t_370 USING btree (i); -- table t_370
CREATE INDEX CONCURRENTLY i_371 ON public.t_371 USING btree (i); -- table t_371
CREATE INDEX CONCURRENTLY i_372 ON public.t_372 USING btree (i); -- table t_372
CREATE INDEX CONCURRENTLY i_373 ON public.t_373 USING btree (i); -- table t_373
CREATE INDEX CONCURRENTLY i_374 ON public.t_374 USING btree (i); -- table t_374
CREATE INDEX CONCURRENTLY i_375 ON public.t_375 USING btree (i); -- table t_375
CREATE INDEX CONCURRENTLY i_376 ON public.t_376 USING btree (i); -- table t_376
CREATE INDEX CONCURRENTLY i_377 ON public.t_377 USING btree (i); -- table t_377
CREATE INDEX CONCURRENTLY i_378 ON public.t_378 USING btree (i); -- table t_378
CREATE INDEX CONCURRENTLY i_379 ON public.t_379 USING btree (i); -- table t_379
CREATE INDEX CONCURRENTLY i_38 ON public.t_38 USING btree (i); -- table t_38
CREATE INDEX CONCURRENTLY i_380 ON public.t_380 USING btree (i); -- table t_380
CREATE INDEX CONCURRENTLY i_381 ON public.t_381 USING btree (i); -- table t_381
CREATE INDEX CONCURRENTLY i_382 ON public.t_382 USING btree (i); -- table t_382
CREATE INDEX CONCURRENTLY i_383 ON public.t_383 USING btree (i); -- table t_383
CREATE INDEX CONCURRENTLY i_384 ON public.t_384 USING btree (i); -- table t_384
CREATE INDEX CONCURRENTLY i_385 ON public.t_385 USING btree (i); -- table t_385
CREATE INDEX CONCURRENTLY i_386 ON public.t_386 USING btree (i); -- table t_386
CREATE INDEX CONCURRENTLY i_387 ON public.t_387 USING btree (i); -- table t_387
CREATE INDEX CONCURRENTLY i_388 ON public.t_388 USING btree (i); -- table t_388
CREATE INDEX CONCURRENTLY i_389 ON public.t_389 USING btree (i); -- table t_389
CREATE INDEX CONCURRENTLY i_39 ON public.t_39 USING btree (i); -- table t_39
CREATE INDEX CONCURRENTLY i_390 ON public.t_390 USING btree (i); -- table t_390
CREATE INDEX CONCURRENTLY i_391 ON public.t_391 USING btree (i); -- table t_391
CREATE INDEX CONCURRENTLY i_392 ON public.t_392 USING btree (i); -- table t_392
CREATE INDEX CONCURRENTLY i_393 ON public.t_393 USING btree (i); -- table t_393
CREATE INDEX CONCURRENTLY i_394 ON public.t_394 USING btree (i); -- table t_394
CREATE INDEX CONCURRENTLY i_395 ON public.t_395 USING btree (i); -- table t_395
CREATE INDEX CONCURRENTLY i_396 ON public.t_396 USING btree (i); -- table t_396
CREATE INDEX CONCURRENTLY i_397 ON public.t_397 USING btree (i); -- table t_397
CREATE INDEX CONCURRENTLY i_398 ON public.t_398 USING btree (i); -- table t_398
CREATE INDEX CONCURRENTLY i_399 ON public.t_399 USING btree (i); -- table t_399
CREATE INDEX CONCURRENTLY i_4 ON public.t_4 USING btree (i); -- table t_4
CREATE INDEX CONCURRENTLY i_40 ON public.t_40 USING btree (i); -- table t_40
CREATE INDEX CONCURRENTLY i_400 ON public.t_400 USING btree (i); -- table t_400
CREATE INDEX CONCURRENTLY i_401 ON public.t_401 USING btree (i); -- table t_401
CREATE INDEX CONCURRENTLY i_402 ON public.t_402 USING btree (i); -- table t_402
CREATE INDEX CONCURRENTLY i_403 ON public.t_403 USING btree (i); -- table t_403
CREATE INDEX CONCURRENTLY i_404 ON public.t_404 USING btree (i); -- table t_404
CREATE INDEX CONCURRENTLY i_405 ON public.t_405 USING btree (i); -- table t_405
CREATE INDEX CONCURRENTLY i_406 ON public.t_406 USING btree (i); -- table t_406
CREATE INDEX CONCURRENTLY i_407 ON public.t_407 USING btree (i); -- table t_407
CREATE INDEX CONCURRENTLY i_408 ON public.t_408 USING btree (i); -- table t_408
CREATE INDEX CONCURRENTLY i_409 ON public.t_409 USING btree (i); -- table t_409
CREATE INDEX CONCURRENTLY i_41 ON public.t_41 USING btree (i); -- table t_41
CREATE INDEX CONCURRENTLY i_410 ON public.t_410 USING btree (i); -- table t_410
CREATE INDEX CONCURRENTLY i_411 ON public.t_411 USING btree (i); -- table t_411
CREATE INDEX CONCURRENTLY i_412 ON public.t_412 USING btree (i); -- table t_412
CREATE INDEX CONCURRENTLY i_413 ON public.t_413 USING btree (i); -- table t_413
CREATE INDEX CONCURRENTLY i_414 ON public.t_414 USING btree (i); -- table t_414
CREATE INDEX CONCURRENTLY i_415 ON public.t_415 USING btree (i); -- table t_415
CREATE INDEX CONCURRENTLY i_416 ON public.t_416 USING btree (i); -- table t_416
CREATE INDEX CONCURRENTLY i_417 ON public.t_417 USING btree (i); -- table t_417
CREATE INDEX CONCURRENTLY i_418 ON public.t_418 USING btree (i); -- table t_418
CREATE INDEX CONCURRENTLY i_419 ON public.t_419 USING btree (i); -- table t_419
CREATE INDEX CONCURRENTLY i_42 ON public.t_42 USING btree (i); -- table t_42
CREATE INDEX CONCURRENTLY i_420 ON public.t_420 USING btree (i); -- table t_420
CREATE INDEX CONCURRENTLY i_421 ON public.t_421 USING btree (i); -- table t_421
CREATE INDEX CONCURRENTLY i_422 ON public.t_422 USING btree (i); -- table t_422
CREATE INDEX CONCURRENTLY i_423 ON public.t_423 USING btree (i); -- table t_423
CREATE INDEX CONCURRENTLY i_424 ON public.t_424 USING btree (i); -- table t_424
CREATE INDEX CONCURRENTLY i_425 ON public.t_425 USING btree (i); -- table t_425
CREATE INDEX CONCURRENTLY i_426 ON public.t_426 USING btree (i); -- table t_426
CREATE INDEX CONCURRENTLY i_427 ON public.t_427 USING btree (i); -- table t_427
CREATE INDEX CONCURRENTLY i_428 ON public.t_428 USING btree (i); -- table t_428
CREATE INDEX CONCURRENTLY i_429 ON public.t_429 USING btree (i); -- table t_429
CREATE INDEX CONCURRENTLY i_43 ON public.t_43 USING btree (i); -- table t_43
CREATE INDEX CONCURRENTLY i_430 ON public.t_430 USING btree (i); -- table t_430
CREATE INDEX CONCURRENTLY i_431 ON public.t_431 USING btree (i); -- table t_431
CREATE INDEX CONCURRENTLY i_432 ON public.t_432 USING btree (i); -- table t_432
CREATE INDEX CONCURRENTLY i_433 ON public.t_433 USING btree (i); -- table t_433
CREATE INDEX CONCURRENTLY i_434 ON public.t_434 USING btree (i); -- table t_434
CREATE INDEX CONCURRENTLY i_435 ON public.t_435 USING btree (i); -- table t_435
CREATE INDEX CONCURRENTLY i_436 ON public.t_436 USING btree (i); -- table t_436
CREATE INDEX CONCURRENTLY i_437 ON public.t_437 USING btree (i); -- table t_437
CREATE INDEX CONCURRENTLY i_438 ON public.t_438 USING btree (i); -- table t_438
CREATE INDEX CONCURRENTLY i_439 ON public.t_439 USING btree (i); -- table t_439
CREATE INDEX CONCURRENTLY i_44 ON public.t_44 USING btree (i); -- table t_44
CREATE INDEX CONCURRENTLY i_440 ON public.t_440 USING btree (i); -- table t_440
CREATE INDEX CONCURRENTLY i_441 ON public.t_441 USING btree (i); -- table t_441
CREATE INDEX CONCURRENTLY i_442 ON public.t_442 USING btree (i); -- table t_442
CREATE INDEX CONCURRENTLY i_443 ON public.t_443 USING btree (i); -- table t_443
CREATE INDEX CONCURRENTLY i_444 ON public.t_444 USING btree (i); -- table t_444
CREATE INDEX CONCURRENTLY i_445 ON public.t_445 USING btree (i); -- table t_445
CREATE INDEX CONCURRENTLY i_446 ON public.t_446 USING btree (i); -- table t_446
CREATE INDEX CONCURRENTLY i_447 ON public.t_447 USING btree (i); -- table t_447
CREATE INDEX CONCURRENTLY i_448 ON public.t_448 USING btree (i); -- table t_448
CREATE INDEX CONCURRENTLY i_449 ON public.t_449 USING btree (i); -- table t_449
CREATE INDEX CONCURRENTLY i_45 ON public.t_45 USING btree (i); -- table t_45
CREATE INDEX CONCURRENTLY i_450 ON public.t_450 USING btree (i); -- table t_450
CREATE INDEX CONCURRENTLY i_451 ON public.t_451 USING btree (i); -- table t_451
CREATE INDEX CONCURRENTLY i_452 ON public.t_452 USING btree (i); -- table t_452
CREATE INDEX CONCURRENTLY i_453 ON public.t_453 USING btree (i); -- table t_453
CREATE INDEX CONCURRENTLY i_454 ON public.t_454 USING btree (i); -- table t_454
CREATE INDEX CONCURRENTLY i_455 ON public.t_455 USING btree (i); -- table t_455
CREATE INDEX CONCURRENTLY i_456 ON public.t_456 USING btree (i); -- table t_456
CREATE INDEX CONCURRENTLY i_457 ON public.t_457 USING btree (i); -- table t_457
CREATE INDEX CONCURRENTLY i_458 ON public.t_458 USING btree (i); -- table t_458
CREATE INDEX CONCURRENTLY i_459 ON public.t_459 USING btree (i); -- table t_459
CREATE INDEX CONCURRENTLY i_46 ON public.t_46 USING btree (i); -- table t_46
CREATE INDEX CONCURRENTLY i_460 ON public.t_460 USING btree (i); -- table t_460
CREATE INDEX CONCURRENTLY i_461 ON public.t_461 USING btree (i); -- table t_461
CREATE INDEX CONCURRENTLY i_462 ON public.t_462 USING btree (i); -- table t_462
CREATE INDEX CONCURRENTLY i_463 ON public.t_463 USING btree (i); -- table t_463
CREATE INDEX CONCURRENTLY i_464 ON public.t_464 USING btree (i); -- table t_464
CREATE INDEX CONCURRENTLY i_465 ON public.t_465 USING btree (i); -- table t_465
CREATE INDEX CONCURRENTLY i_466 ON public.t_466 USING btree (i); -- table t_466
CREATE INDEX CONCURRENTLY i_467 ON public.t_467 USING btree (i); -- table t_467
CREATE INDEX CONCURRENTLY i_468 ON public.t_468 USING btree (i); -- table t_468
CREATE INDEX CONCURRENTLY i_469 ON public.t_469 USING btree (i); -- table t_469
CREATE INDEX CONCURRENTLY i_47 ON public.t_47 USING btree (i); -- table t_47
CREATE INDEX CONCURRENTLY i_470 ON public.t_470 USING btree (i); -- table t_470
CREATE INDEX CONCURRENTLY i_471 ON public.t_471 USING btree (i); -- table t_471
CREATE INDEX CONCURRENTLY i_472 ON public.t_472 USING btree (i); -- table t_472
CREATE INDEX CONCURRENTLY i_473 ON public.t_473 USING btree (i); -- table t_473
CREATE INDEX CONCURRENTLY i_474 ON public.t_474 USING btree (i); -- table t_474
CREATE INDEX CONCURRENTLY i_475 ON public.t_475 USING btree (i); -- table t_475
CREATE INDEX CONCURRENTLY i_476 ON public.t_476 USING btree (i); -- table t_476
CREATE INDEX CONCURRENTLY i_477 ON public.t_477 USING btree (i); -- table t_477
CREATE INDEX CONCURRENTLY i_478 ON public.t_478 USING btree (i); -- table t_478
CREATE INDEX CONCURRENTLY i_479 ON public.t_479 USING btree (i); -- table t_479
CREATE INDEX CONCURRENTLY i_48 ON public.t_48 USING btree (i); -- table t_48
CREATE INDEX CONCURRENTLY i_480 ON public.t_480 USING btree (i); -- table t_480
CREATE INDEX CONCURRENTLY i_481 ON public.t_481 USING btree (i); -- table t_481
CREATE INDEX CONCURRENTLY i_482 ON public.t_482 USING btree (i); -- table t_482
CREATE INDEX CONCURRENTLY i_483 ON public.t_483 USING btree (i); -- table t_483
CREATE INDEX CONCURRENTLY i_484 ON public.t_484 USING btree (i); -- table t_484
CREATE INDEX CONCURRENTLY i_485 ON public.t_485 USING btree (i); -- table t_485
CREATE INDEX CONCURRENTLY i_486 ON public.t_486 USING btree (i); -- table t_486
CREATE INDEX CONCURRENTLY i_487 ON public.t_487 USING btree (i); -- table t_487
CREATE INDEX CONCURRENTLY i_488 ON public.t_488 USING btree (i); -- table t_488
CREATE INDEX CONCURRENTLY i_489 ON public.t_489 USING btree (i); -- table t_489
CREATE INDEX CONCURRENTLY i_49 ON public.t_49 USING btree (i); -- table t_49
CREATE INDEX CONCURRENTLY i_490 ON public.t_490 USING btree (i); -- table t_490
CREATE INDEX CONCURRENTLY i_491 ON public.t_491 USING btree (i); -- table t_491
CREATE INDEX CONCURRENTLY i_492 ON public.t_492 USING btree (i); -- table t_492
CREATE INDEX CONCURRENTLY i_493 ON public.t_493 USING btree (i); -- table t_493
CREATE INDEX CONCURRENTLY i_494 ON public.t_494 USING btree (i); -- table t_494
CREATE INDEX CONCURRENTLY i_495 ON public.t_495 USING btree (i); -- table t_495
CREATE INDEX CONCURRENTLY i_496 ON public.t_496 USING btree (i); -- table t_496
CREATE INDEX CONCURRENTLY i_497 ON public.t_497 USING btree (i); -- table t_497
CREATE INDEX CONCURRENTLY i_498 ON public.t_498 USING btree (i); -- table t_498
CREATE INDEX CONCURRENTLY i_499 ON public.t_499 USING btree (i); -- table t_499
CREATE INDEX CONCURRENTLY i_5 ON public.t_5 USING btree (i); -- table t_5
CREATE INDEX CONCURRENTLY i_50 ON public.t_50 USING btree (i); -- table t_50
CREATE INDEX CONCURRENTLY i_500 ON public.t_500 USING btree (i); -- table t_500
CREATE INDEX CONCURRENTLY i_501 ON public.t_501 USING btree (i); -- table t_501
CREATE INDEX CONCURRENTLY i_502 ON public.t_502 USING btree (i); -- table t_502
CREATE INDEX CONCURRENTLY i_503 ON public.t_503 USING btree (i); -- table t_503
CREATE INDEX CONCURRENTLY i_504 ON public.t_504 USING btree (i); -- table t_504
CREATE INDEX CONCURRENTLY i_505 ON public.t_505 USING btree (i); -- table t_505
CREATE INDEX CONCURRENTLY i_506 ON public.t_506 USING btree (i); -- table t_506
CREATE INDEX CONCURRENTLY i_507 ON public.t_507 USING btree (i); -- table t_507
CREATE INDEX CONCURRENTLY i_508 ON public.t_508 USING btree (i); -- table t_508
CREATE INDEX CONCURRENTLY i_509 ON public.t_509 USING btree (i); -- table t_509
CREATE INDEX CONCURRENTLY i_51 ON public.t_51 USING btree (i); -- table t_51
CREATE INDEX CONCURRENTLY i_510 ON public.t_510 USING btree (i); -- table t_510
CREATE INDEX CONCURRENTLY i_511 ON public.t_511 USING btree (i); -- table t_511
CREATE INDEX CONCURRENTLY i_512 ON public.t_512 USING btree (i); -- table t_512
CREATE INDEX CONCURRENTLY i_513 ON public.t_513 USING btree (i); -- table t_513
CREATE INDEX CONCURRENTLY i_514 ON public.t_514 USING btree (i); -- table t_514
CREATE INDEX CONCURRENTLY i_515 ON public.t_515 USING btree (i); -- table t_515
CREATE INDEX CONCURRENTLY i_516 ON public.t_516 USING btree (i); -- table t_516
CREATE INDEX CONCURRENTLY i_517 ON public.t_517 USING btree (i); -- table t_517
CREATE INDEX CONCURRENTLY i_518 ON public.t_518 USING btree (i); -- table t_518
CREATE INDEX CONCURRENTLY i_519 ON public.t_519 USING btree (i); -- table t_519
CREATE INDEX CONCURRENTLY i_52 ON public.t_52 USING btree (i); -- table t_52
CREATE INDEX CONCURRENTLY i_520 ON public.t_520 USING btree (i); -- table t_520
CREATE INDEX CONCURRENTLY i_521 ON public.t_521 USING btree (i); -- table t_521
CREATE INDEX CONCURRENTLY i_522 ON public.t_522 USING btree (i); -- table t_522
CREATE INDEX CONCURRENTLY i_523 ON public.t_523 USING btree (i); -- table t_523
CREATE INDEX CONCURRENTLY i_524 ON public.t_524 USING btree (i); -- table t_524
CREATE INDEX CONCURRENTLY i_525 ON public.t_525 USING btree (i); -- table t_525
CREATE INDEX CONCURRENTLY i_526 ON public.t_526 USING btree (i); -- table t_526
CREATE INDEX CONCURRENTLY i_527 ON public.t_527 USING btree (i); -- table t_527
CREATE INDEX CONCURRENTLY i_528 ON public.t_528 USING btree (i); -- table t_528
CREATE INDEX CONCURRENTLY i_529 ON public.t_529 USING btree (i); -- table t_529
CREATE INDEX CONCURRENTLY i_53 ON public.t_53 USING btree (i); -- table t_53
CREATE INDEX CONCURRENTLY i_530 ON public.t_530 USING btree (i); -- table t_530
CREATE INDEX CONCURRENTLY i_531 ON public.t_531 USING btree (i); -- table t_531
CREATE INDEX CONCURRENTLY i_532 ON public.t_532 USING btree (i); -- table t_532
CREATE INDEX CONCURRENTLY i_533 ON public.t_533 USING btree (i); -- table t_533
CREATE INDEX CONCURRENTLY i_534 ON public.t_534 USING btree (i); -- table t_534
CREATE INDEX CONCURRENTLY i_535 ON public.t_535 USING btree (i); -- table t_535
CREATE INDEX CONCURRENTLY i_536 ON public.t_536 USING btree (i); -- table t_536
CREATE INDEX CONCURRENTLY i_537 ON public.t_537 USING btree (i); -- table t_537
CREATE INDEX CONCURRENTLY i_538 ON public.t_538 USING btree (i); -- table t_538
CREATE INDEX CONCURRENTLY i_539 ON public.t_539 USING btree (i); -- table t_539
CREATE INDEX CONCURRENTLY i_54 ON public.t_54 USING btree (i); -- table t_54
CREATE INDEX CONCURRENTLY i_540 ON public.t_540 USING btree (i); -- table t_540
CREATE INDEX CONCURRENTLY i_541 ON public.t_541 USING btree (i); -- table t_541
CREATE INDEX CONCURRENTLY i_542 ON public.t_542 USING btree (i); -- table t_542
CREATE INDEX CONCURRENTLY i_543 ON public.t_543 USING btree (i); -- table t_543
CREATE INDEX CONCURRENTLY i_544 ON public.t_544 USING btree (i); -- table t_544
CREATE INDEX CONCURRENTLY i_545 ON public.t_545 USING btree (i); -- table t_545
CREATE INDEX CONCURRENTLY i_546 ON public.t_546 USING btree (i); -- table t_546
CREATE INDEX CONCURRENTLY i_547 ON public.t_547 USING btree (i); -- table t_547
CREATE INDEX CONCURRENTLY i_548 ON public.t_548 USING btree (i); -- table t_548
CREATE INDEX CONCURRENTLY i_549 ON public.t_549 USING btree (i); -- table t_549
CREATE INDEX CONCURRENTLY i_55 ON public.t_55 USING btree (i); -- table t_55
CREATE INDEX CONCURRENTLY i_550 ON public.t_550 USING btree (i); -- table t_550
CREATE INDEX CONCURRENTLY i_551 ON public.t_551 USING btree (i); -- table t_551
CREATE INDEX CONCURRENTLY i_552 ON public.t_552 USING btree (i); -- table t_552
CREATE INDEX CONCURRENTLY i_553 ON public.t_553 USING btree (i); -- table t_553
CREATE INDEX CONCURRENTLY i_554 ON public.t_554 USING btree (i); -- table t_554
CREATE INDEX CONCURRENTLY i_555 ON public.t_555 USING btree (i); -- table t_555
CREATE INDEX CONCURRENTLY i_556 ON public.t_556 USING btree (i); -- table t_556
CREATE INDEX CONCURRENTLY i_557 ON public.t_557 USING btree (i); -- table t_557
CREATE INDEX CONCURRENTLY i_558 ON public.t_558 USING btree (i); -- table t_558
CREATE INDEX CONCURRENTLY i_559 ON public.t_559 USING btree (i); -- table t_559
CREATE INDEX CONCURRENTLY i_56 ON public.t_56 USING btree (i); -- table t_56
CREATE INDEX CONCURRENTLY i_560 ON public.t_560 USING btree (i); -- table t_560
CREATE INDEX CONCURRENTLY i_561 ON public.t_561 USING btree (i); -- table t_561
CREATE INDEX CONCURRENTLY i_562 ON public.t_562 USING btree (i); -- table t_562
CREATE INDEX CONCURRENTLY i_563 ON public.t_563 USING btree (i); -- table t_563
CREATE INDEX CONCURRENTLY i_564 ON public.t_564 USING btree (i); -- table t_564
CREATE INDEX CONCURRENTLY i_565 ON public.t_565 USING btree (i); -- table t_565
CREATE INDEX CONCURRENTLY i_566 ON public.t_566 USING btree (i); -- table t_566
CREATE INDEX CONCURRENTLY i_567 ON public.t_567 USING btree (i); -- table t_567
CREATE INDEX CONCURRENTLY i_568 ON public.t_568 USING btree (i); -- table t_568
CREATE INDEX CONCURRENTLY i_569 ON public.t_569 USING btree (i); -- table t_569
CREATE INDEX CONCURRENTLY i_57 ON public.t_57 USING btree (i); -- table t_57
CREATE INDEX CONCURRENTLY i_570 ON public.t_570 USING btree (i); -- table t_570
CREATE INDEX CONCURRENTLY i_571 ON public.t_571 USING btree (i); -- table t_571
CREATE INDEX CONCURRENTLY i_572 ON public.t_572 USING btree (i); -- table t_572
CREATE INDEX CONCURRENTLY i_573 ON public.t_573 USING btree (i); -- table t_573
CREATE INDEX CONCURRENTLY i_574 ON public.t_574 USING btree (i); -- table t_574
CREATE INDEX CONCURRENTLY i_575 ON public.t_575 USING btree (i); -- table t_575
CREATE INDEX CONCURRENTLY i_576 ON public.t_576 USING btree (i); -- table t_576
CREATE INDEX CONCURRENTLY i_577 ON public.t_577 USING btree (i); -- table t_577
CREATE INDEX CONCURRENTLY i_578 ON public.t_578 USING btree (i); -- table t_578
CREATE INDEX CONCURRENTLY i_579 ON public.t_579 USING btree (i); -- table t_579
CREATE INDEX CONCURRENTLY i_58 ON public.t_58 USING btree (i); -- table t_58
CREATE INDEX CONCURRENTLY i_580 ON public.t_580 USING btree (i); -- table t_580
CREATE INDEX CONCURRENTLY i_581 ON public.t_581 USING btree (i); -- table t_581
CREATE INDEX CONCURRENTLY i_582 ON public.t_582 USING btree (i); -- table t_582
CREATE INDEX CONCURRENTLY i_583 ON public.t_583 USING btree (i); -- table t_583
CREATE INDEX CONCURRENTLY i_584 ON public.t_584 USING btree (i); -- table t_584
CREATE INDEX CONCURRENTLY i_585 ON public.t_585 USING btree (i); -- table t_585
CREATE INDEX CONCURRENTLY i_586 ON public.t_586 USING btree (i); -- table t_586
CREATE INDEX CONCURRENTLY i_587 ON public.t_587 USING btree (i); -- table t_587
CREATE INDEX CONCURRENTLY i_588 ON public.t_588 USING btree (i); -- table t_588
CREATE INDEX CONCURRENTLY i_589 ON public.t_589 USING btree (i); -- table t_589
CREATE INDEX CONCURRENTLY i_59 ON public.t_59 USING btree (i); -- table t_59
CREATE INDEX CONCURRENTLY i_590 ON public.t_590 USING btree (i); -- table t_590
CREATE INDEX CONCURRENTLY i_591 ON public.t_591 USING btree (i); -- table t_591
CREATE INDEX CONCURRENTLY i_592 ON public.t_592 USING btree (i); -- table t_592
CREATE INDEX CONCURRENTLY i_593 ON public.t_593 USING btree (i); -- table t_593
CREATE INDEX CONCURRENTLY i_594 ON public.t_594 USING btree (i); -- table t_594
CREATE INDEX CONCURRENTLY i_595 ON public.t_595 USING btree (i); -- table t_595
CREATE INDEX CONCURRENTLY i_596 ON public.t_596 USING btree (i); -- table t_596
CREATE INDEX CONCURRENTLY i_597 ON public.t_597 USING btree (i); -- table t_597
CREATE INDEX CONCURRENTLY i_598 ON public.t_598 USING btree (i); -- table t_598
CREATE INDEX CONCURRENTLY i_599 ON public.t_599 USING btree (i); -- table t_599
CREATE INDEX CONCURRENTLY i_6 ON public.t_6 USING btree (i); -- table t_6
CREATE INDEX CONCURRENTLY i_60 ON public.t_60 USING btree (i); -- table t_60
CREATE INDEX CONCURRENTLY i_600 ON public.t_600 USING btree (i); -- table t_600
CREATE INDEX CONCURRENTLY i_601 ON public.t_601 USING btree (i); -- table t_601
CREATE INDEX CONCURRENTLY i_602 ON public.t_602 USING btree (i); -- table t_602
CREATE INDEX CONCURRENTLY i_603 ON public.t_603 USING btree (i); -- table t_603
CREATE INDEX CONCURRENTLY i_604 ON public.t_604 USING btree (i); -- table t_604
CREATE INDEX CONCURRENTLY i_605 ON public.t_605 USING btree (i); -- table t_605
CREATE INDEX CONCURRENTLY i_606 ON public.t_606 USING btree (i); -- table t_606
CREATE INDEX CONCURRENTLY i_607 ON public.t_607 USING btree (i); -- table t_607
CREATE INDEX CONCURRENTLY i_608 ON public.t_608 USING btree (i); -- table t_608
CREATE INDEX CONCURRENTLY i_609 ON public.t_609 USING btree (i); -- table t_609
CREATE INDEX CONCURRENTLY i_61 ON public.t_61 USING btree (i); -- table t_61
CREATE INDEX CONCURRENTLY i_610 ON public.t_610 USING btree (i); -- table t_610
CREATE INDEX CONCURRENTLY i_611 ON public.t_611 USING btree (i); -- table t_611
CREATE INDEX CONCURRENTLY i_612 ON public.t_612 USING btree (i); -- table t_612
CREATE INDEX CONCURRENTLY i_613 ON public.t_613 USING btree (i); -- table t_613
CREATE INDEX CONCURRENTLY i_614 ON public.t_614 USING btree (i); -- table t_614
CREATE INDEX CONCURRENTLY i_615 ON public.t_615 USING btree (i); -- table t_615
CREATE INDEX CONCURRENTLY i_616 ON public.t_616 USING btree (i); -- table t_616
CREATE INDEX CONCURRENTLY i_617 ON public.t_617 USING btree (i); -- table t_617
CREATE INDEX CONCURRENTLY i_618 ON public.t_618 USING btree (i); -- table t_618
CREATE INDEX CONCURRENTLY i_619 ON public.t_619 USING btree (i); -- table t_619
CREATE INDEX CONCURRENTLY i_62 ON public.t_62 USING btree (i); -- table t_62
CREATE INDEX CONCURRENTLY i_620 ON public.t_620 USING btree (i); -- table t_620
CREATE INDEX CONCURRENTLY i_621 ON public.t_621 USING btree (i); -- table t_621
CREATE INDEX CONCURRENTLY i_622 ON public.t_622 USING btree (i); -- table t_622
CREATE INDEX CONCURRENTLY i_623 ON public.t_623 USING btree (i); -- table t_623
CREATE INDEX CONCURRENTLY i_624 ON public.t_624 USING btree (i); -- table t_624
CREATE INDEX CONCURRENTLY i_625 ON public.t_625 USING btree (i); -- table t_625
CREATE INDEX CONCURRENTLY i_626 ON public.t_626 USING btree (i); -- table t_626
CREATE INDEX CONCURRENTLY i_627 ON public.t_627 USING btree (i); -- table t_627
CREATE INDEX CONCURRENTLY i_628 ON public.t_628 USING btree (i); -- table t_628
CREATE INDEX CONCURRENTLY i_629 ON public.t_629 USING btree (i); -- table t_629
CREATE INDEX CONCURRENTLY i_63 ON public.t_63 USING btree (i); -- table t_63
CREATE INDEX CONCURRENTLY i_630 ON public.t_630 USING btree (i); -- table t_630
CREATE INDEX CONCURRENTLY i_631 ON public.t_631 USING btree (i); -- table t_631
CREATE INDEX CONCURRENTLY i_632 ON public.t_632 USING btree (i); -- table t_632
CREATE INDEX CONCURRENTLY i_633 ON public.t_633 USING btree (i); -- table t_633
CREATE INDEX CONCURRENTLY i_634 ON public.t_634 USING btree (i); -- table t_634
CREATE INDEX CONCURRENTLY i_635 ON public.t_635 USING btree (i); -- table t_635
CREATE INDEX CONCURRENTLY i_636 ON public.t_636 USING btree (i); -- table t_636
CREATE INDEX CONCURRENTLY i_637 ON public.t_637 USING btree (i); -- table t_637
CREATE INDEX CONCURRENTLY i_638 ON public.t_638 USING btree (i); -- table t_638
CREATE INDEX CONCURRENTLY i_639 ON public.t_639 USING btree (i); -- table t_639
CREATE INDEX CONCURRENTLY i_64 ON public.t_64 USING btree (i); -- table t_64
CREATE INDEX CONCURRENTLY i_640 ON public.t_640 USING btree (i); -- table t_640
CREATE INDEX CONCURRENTLY i_641 ON public.t_641 USING btree (i); -- table t_641
CREATE INDEX CONCURRENTLY i_642 ON public.t_642 USING btree (i); -- table t_642
CREATE INDEX CONCURRENTLY i_643 ON public.t_643 USING btree (i); -- table t_643
CREATE INDEX CONCURRENTLY i_644 ON public.t_644 USING btree (i); -- table t_644
CREATE INDEX CONCURRENTLY i_645 ON public.t_645 USING btree (i); -- table t_645
CREATE INDEX CONCURRENTLY i_646 ON public.t_646 USING btree (i); -- table t_646
CREATE INDEX CONCURRENTLY i_647 ON public.t_647 USING btree (i); -- table t_647
CREATE INDEX CONCURRENTLY i_648 ON public.t_648 USING btree (i); -- table t_648
CREATE INDEX CONCURRENTLY i_649 ON public.t_649 USING btree (i); -- table t_649
CREATE INDEX CONCURRENTLY i_65 ON public.t_65 USING btree (i); -- table t_65
CREATE INDEX CONCURRENTLY i_650 ON public.t_650 USING btree (i); -- table t_650
CREATE INDEX CONCURRENTLY i_651 ON public.t_651 USING btree (i); -- table t_651
CREATE INDEX CONCURRENTLY i_652 ON public.t_652 USING btree (i); -- table t_652
CREATE INDEX CONCURRENTLY i_653 ON public.t_653 USING btree (i); -- table t_653
CREATE INDEX CONCURRENTLY i_654 ON public.t_654 USING btree (i); -- table t_654
CREATE INDEX CONCURRENTLY i_655 ON public.t_655 USING btree (i); -- table t_655
CREATE INDEX CONCURRENTLY i_656 ON public.t_656 USING btree (i); -- table t_656
CREATE INDEX CONCURRENTLY i_657 ON public.t_657 USING btree (i); -- table t_657
CREATE INDEX CONCURRENTLY i_658 ON public.t_658 USING btree (i); -- table t_658
CREATE INDEX CONCURRENTLY i_659 ON public.t_659 USING btree (i); -- table t_659
CREATE INDEX CONCURRENTLY i_66 ON public.t_66 USING btree (i); -- table t_66
CREATE INDEX CONCURRENTLY i_660 ON public.t_660 USING btree (i); -- table t_660
CREATE INDEX CONCURRENTLY i_661 ON public.t_661 USING btree (i); -- table t_661
CREATE INDEX CONCURRENTLY i_662 ON public.t_662 USING btree (i); -- table t_662
CREATE INDEX CONCURRENTLY i_663 ON public.t_663 USING btree (i); -- table t_663
CREATE INDEX CONCURRENTLY i_664 ON public.t_664 USING btree (i); -- table t_664
CREATE INDEX CONCURRENTLY i_665 ON public.t_665 USING btree (i); -- table t_665
CREATE INDEX CONCURRENTLY i_666 ON public.t_666 USING btree (i); -- table t_666
CREATE INDEX CONCURRENTLY i_667 ON public.t_667 USING btree (i); -- table t_667
CREATE INDEX CONCURRENTLY i_668 ON public.t_668 USING btree (i); -- table t_668
CREATE INDEX CONCURRENTLY i_669 ON public.t_669 USING btree (i); -- table t_669
CREATE INDEX CONCURRENTLY i_67 ON public.t_67 USING btree (i); -- table t_67
CREATE INDEX CONCURRENTLY i_670 ON public.t_670 USING btree (i); -- table t_670
CREATE INDEX CONCURRENTLY i_671 ON public.t_671 USING btree (i); -- table t_671
CREATE INDEX CONCURRENTLY i_672 ON public.t_672 USING btree (i); -- table t_672
CREATE INDEX CONCURRENTLY i_673 ON public.t_673 USING btree (i); -- table t_673
CREATE INDEX CONCURRENTLY i_674 ON public.t_674 USING btree (i); -- table t_674
CREATE INDEX CONCURRENTLY i_675 ON public.t_675 USING btree (i); -- table t_675
CREATE INDEX CONCURRENTLY i_676 ON public.t_676 USING btree (i); -- table t_676
CREATE INDEX CONCURRENTLY i_677 ON public.t_677 USING btree (i); -- table t_677
CREATE INDEX CONCURRENTLY i_678 ON public.t_678 USING btree (i); -- table t_678
CREATE INDEX CONCURRENTLY i_679 ON public.t_679 USING btree (i); -- table t_679
CREATE INDEX CONCURRENTLY i_68 ON public.t_68 USING btree (i); -- table t_68
CREATE INDEX CONCURRENTLY i_680 ON public.t_680 USING btree (i); -- table t_680
CREATE INDEX CONCURRENTLY i_681 ON public.t_681 USING btree (i); -- table t_681
CREATE INDEX CONCURRENTLY i_682 ON public.t_682 USING btree (i); -- table t_682
CREATE INDEX CONCURRENTLY i_683 ON public.t_683 USING btree (i); -- table t_683
CREATE INDEX CONCURRENTLY i_684 ON public.t_684 USING btree (i); -- table t_684
CREATE INDEX CONCURRENTLY i_685 ON public.t_685 USING btree (i); -- table t_685
CREATE INDEX CONCURRENTLY i_686 ON public.t_686 USING btree (i); -- table t_686
CREATE INDEX CONCURRENTLY i_687 ON public.t_687 USING btree (i); -- table t_687
CREATE INDEX CONCURRENTLY i_688 ON public.t_688 USING btree (i); -- table t_688
CREATE INDEX CONCURRENTLY i_689 ON public.t_689 USING btree (i); -- table t_689
CREATE INDEX CONCURRENTLY i_69 ON public.t_69 USING btree (i); -- table t_69
CREATE INDEX CONCURRENTLY i_690 ON public.t_690 USING btree (i); -- table t_690
CREATE INDEX CONCURRENTLY i_691 ON public.t_691 USING btree (i); -- table t_691
CREATE INDEX CONCURRENTLY i_692 ON public.t_692 USING btree (i); -- table t_692
CREATE INDEX CONCURRENTLY i_693 ON public.t_693 USING btree (i); -- table t_693
CREATE INDEX CONCURRENTLY i_694 ON public.t_694 USING btree (i); -- table t_694
CREATE INDEX CONCURRENTLY i_695 ON public.t_695 USING btree (i); -- table t_695
CREATE INDEX CONCURRENTLY i_696 ON public.t_696 USING btree (i); -- table t_696
CREATE INDEX CONCURRENTLY i_697 ON public.t_697 USING btree (i); -- table t_697
CREATE INDEX CONCURRENTLY i_698 ON public.t_698 USING btree (i); -- table t_698
CREATE INDEX CONCURRENTLY i_699 ON public.t_699 USING btree (i); -- table t_699
CREATE INDEX CONCURRENTLY i_7 ON public.t_7 USING btree (i); -- table t_7
CREATE INDEX CONCURRENTLY i_70 ON public.t_70 USING btree (i); -- table t_70
CREATE INDEX CONCURRENTLY i_700 ON public.t_700 USING btree (i); -- table t_700
CREATE INDEX CONCURRENTLY i_701 ON public.t_701 USING btree (i); -- table t_701
CREATE INDEX CONCURRENTLY i_702 ON public.t_702 USING btree (i); -- table t_702
CREATE INDEX CONCURRENTLY i_703 ON public.t_703 USING btree (i); -- table t_703
CREATE INDEX CONCURRENTLY i_704 ON public.t_704 USING btree (i); -- table t_704
CREATE INDEX CONCURRENTLY i_705 ON public.t_705 USING btree (i); -- table t_705
CREATE INDEX CONCURRENTLY i_706 ON public.t_706 USING btree (i); -- table t_706
CREATE INDEX CONCURRENTLY i_707 ON public.t_707 USING btree (i); -- table t_707
CREATE INDEX CONCURRENTLY i_708 ON public.t_708 USING btree (i); -- table t_708
CREATE INDEX CONCURRENTLY i_709 ON public.t_709 USING btree (i); -- table t_709
CREATE INDEX CONCURRENTLY i_71 ON public.t_71 USING btree (i); -- table t_71
CREATE INDEX CONCURRENTLY i_710 ON public.t_710 USING btree (i); -- table t_710
CREATE INDEX CONCURRENTLY i_711 ON public.t_711 USING btree (i); -- table t_711
CREATE INDEX CONCURRENTLY i_712 ON public.t_712 USING btree (i); -- table t_712
CREATE INDEX CONCURRENTLY i_713 ON public.t_713 USING btree (i); -- table t_713
CREATE INDEX CONCURRENTLY i_714 ON public.t_714 USING btree (i); -- table t_714
CREATE INDEX CONCURRENTLY i_715 ON public.t_715 USING btree (i); -- table t_715
CREATE INDEX CONCURRENTLY i_716 ON public.t_716 USING btree (i); -- table t_716
CREATE INDEX CONCURRENTLY i_717 ON public.t_717 USING btree (i); -- table t_717
CREATE INDEX CONCURRENTLY i_718 ON public.t_718 USING btree (i); -- table t_718
CREATE INDEX CONCURRENTLY i_719 ON public.t_719 USING btree (i); -- table t_719
CREATE INDEX CONCURRENTLY i_72 ON public.t_72 USING btree (i); -- table t_72
CREATE INDEX CONCURRENTLY i_720 ON public.t_720 USING btree (i); -- table t_720
CREATE INDEX CONCURRENTLY i_721 ON public.t_721 USING btree (i); -- table t_721
CREATE INDEX CONCURRENTLY i_722 ON public.t_722 USING btree (i); -- table t_722
CREATE INDEX CONCURRENTLY i_723 ON public.t_723 USING btree (i); -- table t_723
CREATE INDEX CONCURRENTLY i_724 ON public.t_724 USING btree (i); -- table t_724
CREATE INDEX CONCURRENTLY i_725 ON public.t_725 USING btree (i); -- table t_725
CREATE INDEX CONCURRENTLY i_726 ON public.t_726 USING btree (i); -- table t_726
CREATE INDEX CONCURRENTLY i_727 ON public.t_727 USING btree (i); -- table t_727
CREATE INDEX CONCURRENTLY i_728 ON public.t_728 USING btree (i); -- table t_728
CREATE INDEX CONCURRENTLY i_729 ON public.t_729 USING btree (i); -- table t_729
CREATE INDEX CONCURRENTLY i_73 ON public.t_73 USING btree (i); -- table t_73
CREATE INDEX CONCURRENTLY i_730 ON public.t_730 USING btree (i); -- table t_730
CREATE INDEX CONCURRENTLY i_731 ON public.t_731 USING btree (i); -- table t_731
CREATE INDEX CONCURRENTLY i_732 ON public.t_732 USING btree (i); -- table t_732
CREATE INDEX CONCURRENTLY i_733 ON public.t_733 USING btree (i); -- table t_733
CREATE INDEX CONCURRENTLY i_734 ON public.t_734 USING btree (i); -- table t_734
CREATE INDEX CONCURRENTLY i_735 ON public.t_735 USING btree (i); -- table t_735
CREATE INDEX CONCURRENTLY i_736 ON public.t_736 USING btree (i); -- table t_736
CREATE INDEX CONCURRENTLY i_737 ON public.t_737 USING btree (i); -- table t_737
CREATE INDEX CONCURRENTLY i_738 ON public.t_738 USING btree (i); -- table t_738
CREATE INDEX CONCURRENTLY i_739 ON public.t_739 USING btree (i); -- table t_739
CREATE INDEX CONCURRENTLY i_74 ON public.t_74 USING btree (i); -- table t_74
CREATE INDEX CONCURRENTLY i_740 ON public.t_740 USING btree (i); -- table t_740
CREATE INDEX CONCURRENTLY i_741 ON public.t_741 USING btree (i); -- table t_741
CREATE INDEX CONCURRENTLY i_742 ON public.t_742 USING btree (i); -- table t_742
CREATE INDEX CONCURRENTLY i_743 ON public.t_743 USING btree (i); -- table t_743
CREATE INDEX CONCURRENTLY i_744 ON public.t_744 USING btree (i); -- table t_744
CREATE INDEX CONCURRENTLY i_745 ON public.t_745 USING btree (i); -- table t_745
CREATE INDEX CONCURRENTLY i_746 ON public.t_746 USING btree (i); -- table t_746
CREATE INDEX CONCURRENTLY i_747 ON public.t_747 USING btree (i); -- table t_747
CREATE INDEX CONCURRENTLY i_748 ON public.t_748 USING btree (i); -- table t_748
CREATE INDEX CONCURRENTLY i_749 ON public.t_749 USING btree (i); -- table t_749
CREATE INDEX CONCURRENTLY i_75 ON public.t_75 USING btree (i); -- table t_75
CREATE INDEX CONCURRENTLY i_750 ON public.t_750 USING btree (i); -- table t_750
CREATE INDEX CONCURRENTLY i_751 ON public.t_751 USING btree (i); -- table t_751
CREATE INDEX CONCURRENTLY i_752 ON public.t_752 USING btree (i); -- table t_752
CREATE INDEX CONCURRENTLY i_753 ON public.t_753 USING btree (i); -- table t_753
CREATE INDEX CONCURRENTLY i_754 ON public.t_754 USING btree (i); -- table t_754
CREATE INDEX CONCURRENTLY i_755 ON public.t_755 USING btree (i); -- table t_755
CREATE INDEX CONCURRENTLY i_756 ON public.t_756 USING btree (i); -- table t_756
CREATE INDEX CONCURRENTLY i_757 ON public.t_757 USING btree (i); -- table t_757
CREATE INDEX CONCURRENTLY i_758 ON public.t_758 USING btree (i); -- table t_758
CREATE INDEX CONCURRENTLY i_759 ON public.t_759 USING btree (i); -- table t_759
CREATE INDEX CONCURRENTLY i_76 ON public.t_76 USING btree (i); -- table t_76
CREATE INDEX CONCURRENTLY i_760 ON public.t_760 USING btree (i); -- table t_760
CREATE INDEX CONCURRENTLY i_761 ON public.t_761 USING btree (i); -- table t_761
CREATE INDEX CONCURRENTLY i_762 ON public.t_762 USING btree (i); -- table t_762
CREATE INDEX CONCURRENTLY i_763 ON public.t_763 USING btree (i); -- table t_763
CREATE INDEX CONCURRENTLY i_764 ON public.t_764 USING btree (i); -- table t_764
CREATE INDEX CONCURRENTLY i_765 ON public.t_765 USING btree (i); -- table t_765
CREATE INDEX CONCURRENTLY i_766 ON public.t_766 USING btree (i); -- table t_766
CREATE INDEX CONCURRENTLY i_767 ON public.t_767 USING btree (i); -- table t_767
CREATE INDEX CONCURRENTLY i_768 ON public.t_768 USING btree (i); -- table t_768
CREATE INDEX CONCURRENTLY i_769 ON public.t_769 USING btree (i); -- table t_769
CREATE INDEX CONCURRENTLY i_77 ON public.t_77 USING btree (i); -- table t_77
CREATE INDEX CONCURRENTLY i_770 ON public.t_770 USING btree (i); -- table t_770
CREATE INDEX CONCURRENTLY i_771 ON public.t_771 USING btree (i); -- table t_771
CREATE INDEX CONCURRENTLY i_772 ON public.t_772 USING btree (i); -- table t_772
CREATE INDEX CONCURRENTLY i_773 ON public.t_773 USING btree (i); -- table t_773
CREATE INDEX CONCURRENTLY i_774 ON public.t_774 USING btree (i); -- table t_774
CREATE INDEX CONCURRENTLY i_775 ON public.t_775 USING btree (i); -- table t_775
CREATE INDEX CONCURRENTLY i_776 ON public.t_776 USING btree (i); -- table t_776
CREATE INDEX CONCURRENTLY i_777 ON public.t_777 USING btree (i); -- table t_777
CREATE INDEX CONCURRENTLY i_778 ON public.t_778 USING btree (i); -- table t_778
CREATE INDEX CONCURRENTLY i_779 ON public.t_779 USING btree (i); -- table t_779
CREATE INDEX CONCURRENTLY i_78 ON public.t_78 USING btree (i); -- table t_78
CREATE INDEX CONCURRENTLY i_780 ON public.t_780 USING btree (i); -- table t_780
CREATE INDEX CONCURRENTLY i_781 ON public.t_781 USING btree (i); -- table t_781
CREATE INDEX CONCURRENTLY i_782 ON public.t_782 USING btree (i); -- table t_782
CREATE INDEX CONCURRENTLY i_783 ON public.t_783 USING btree (i); -- table t_783
CREATE INDEX CONCURRENTLY i_784 ON public.t_784 USING btree (i); -- table t_784
CREATE INDEX CONCURRENTLY i_785 ON public.t_785 USING btree (i); -- table t_785
CREATE INDEX CONCURRENTLY i_786 ON public.t_786 USING btree (i); -- table t_786
CREATE INDEX CONCURRENTLY i_787 ON public.t_787 USING btree (i); -- table t_787
CREATE INDEX CONCURRENTLY i_788 ON public.t_788 USING btree (i); -- table t_788
CREATE INDEX CONCURRENTLY i_789 ON public.t_789 USING btree (i); -- table t_789
CREATE INDEX CONCURRENTLY i_79 ON public.t_79 USING btree (i); -- table t_79
CREATE INDEX CONCURRENTLY i_790 ON public.t_790 USING btree (i); -- table t_790
CREATE INDEX CONCURRENTLY i_791 ON public.t_791 USING btree (i); -- table t_791
CREATE INDEX CONCURRENTLY i_792 ON public.t_792 USING btree (i); -- table t_792
CREATE INDEX CONCURRENTLY i_793 ON public.t_793 USING btree (i); -- table t_793
CREATE INDEX CONCURRENTLY i_794 ON public.t_794 USING btree (i); -- table t_794
CREATE INDEX CONCURRENTLY i_795 ON public.t_795 USING btree (i); -- table t_795
CREATE INDEX CONCURRENTLY i_796 ON public.t_796 USING btree (i); -- table t_796
CREATE INDEX CONCURRENTLY i_797 ON public.t_797 USING btree (i); -- table t_797
CREATE INDEX CONCURRENTLY i_798 ON public.t_798 USING btree (i); -- table t_798
CREATE INDEX CONCURRENTLY i_799 ON public.t_799 USING btree (i); -- table t_799
CREATE INDEX CONCURRENTLY i_8 ON public.t_8 USING btree (i); -- table t_8
CREATE INDEX CONCURRENTLY i_80 ON public.t_80 USING btree (i); -- table t_80
CREATE INDEX CONCURRENTLY i_800 ON public.t_800 USING btree (i); -- table t_800
CREATE INDEX CONCURRENTLY i_801 ON public.t_801 USING btree (i); -- table t_801
CREATE INDEX CONCURRENTLY i_802 ON public.t_802 USING btree (i); -- table t_802
CREATE INDEX CONCURRENTLY i_803 ON public.t_803 USING btree (i); -- table t_803
CREATE INDEX CONCURRENTLY i_804 ON public.t_804 USING btree (i); -- table t_804
CREATE INDEX CONCURRENTLY i_805 ON public.t_805 USING btree (i); -- table t_805
CREATE INDEX CONCURRENTLY i_806 ON public.t_806 USING btree (i); -- table t_806
CREATE INDEX CONCURRENTLY i_807 ON public.t_807 USING btree (i); -- table t_807
CREATE INDEX CONCURRENTLY i_808 ON public.t_808 USING btree (i); -- table t_808
CREATE INDEX CONCURRENTLY i_809 ON public.t_809 USING btree (i); -- table t_809
CREATE INDEX CONCURRENTLY i_81 ON public.t_81 USING btree (i); -- table t_81
CREATE INDEX CONCURRENTLY i_810 ON public.t_810 USING btree (i); -- table t_810
CREATE INDEX CONCURRENTLY i_811 ON public.t_811 USING btree (i); -- table t_811
CREATE INDEX CONCURRENTLY i_812 ON public.t_812 USING btree (i); -- table t_812
CREATE INDEX CONCURRENTLY i_813 ON public.t_813 USING btree (i); -- table t_813
CREATE INDEX CONCURRENTLY i_814 ON public.t_814 USING btree (i); -- table t_814
CREATE INDEX CONCURRENTLY i_815 ON public.t_815 USING btree (i); -- table t_815
CREATE INDEX CONCURRENTLY i_816 ON public.t_816 USING btree (i); -- table t_816
CREATE INDEX CONCURRENTLY i_817 ON public.t_817 USING btree (i); -- table t_817
CREATE INDEX CONCURRENTLY i_818 ON public.t_818 USING btree (i); -- table t_818
CREATE INDEX CONCURRENTLY i_819 ON public.t_819 USING btree (i); -- table t_819
CREATE INDEX CONCURRENTLY i_82 ON public.t_82 USING btree (i); -- table t_82
CREATE INDEX CONCURRENTLY i_820 ON public.t_820 USING btree (i); -- table t_820
CREATE INDEX CONCURRENTLY i_821 ON public.t_821 USING btree (i); -- table t_821
CREATE INDEX CONCURRENTLY i_822 ON public.t_822 USING btree (i); -- table t_822
CREATE INDEX CONCURRENTLY i_823 ON public.t_823 USING btree (i); -- table t_823
CREATE INDEX CONCURRENTLY i_824 ON public.t_824 USING btree (i); -- table t_824
CREATE INDEX CONCURRENTLY i_825 ON public.t_825 USING btree (i); -- table t_825
CREATE INDEX CONCURRENTLY i_826 ON public.t_826 USING btree (i); -- table t_826
CREATE INDEX CONCURRENTLY i_827 ON public.t_827 USING btree (i); -- table t_827
CREATE INDEX CONCURRENTLY i_828 ON public.t_828 USING btree (i); -- table t_828
CREATE INDEX CONCURRENTLY i_829 ON public.t_829 USING btree (i); -- table t_829
CREATE INDEX CONCURRENTLY i_83 ON public.t_83 USING btree (i); -- table t_83
CREATE INDEX CONCURRENTLY i_830 ON public.t_830 USING btree (i); -- table t_830
CREATE INDEX CONCURRENTLY i_831 ON public.t_831 USING btree (i); -- table t_831
CREATE INDEX CONCURRENTLY i_832 ON public.t_832 USING btree (i); -- table t_832
CREATE INDEX CONCURRENTLY i_833 ON public.t_833 USING btree (i); -- table t_833
CREATE INDEX CONCURRENTLY i_834 ON public.t_834 USING btree (i); -- table t_834
CREATE INDEX CONCURRENTLY i_835 ON public.t_835 USING btree (i); -- table t_835
CREATE INDEX CONCURRENTLY i_836 ON public.t_836 USING btree (i); -- table t_836
CREATE INDEX CONCURRENTLY i_837 ON public.t_837 USING btree (i); -- table t_837
CREATE INDEX CONCURRENTLY i_838 ON public.t_838 USING btree (i); -- table t_838
CREATE INDEX CONCURRENTLY i_839 ON public.t_839 USING btree (i); -- table t_839
CREATE INDEX CONCURRENTLY i_84 ON public.t_84 USING btree (i); -- table t_84
CREATE INDEX CONCURRENTLY i_840 ON public.t_840 USING btree (i); -- table t_840
CREATE INDEX CONCURRENTLY i_841 ON public.t_841 USING btree (i); -- table t_841
CREATE INDEX CONCURRENTLY i_842 ON public.t_842 USING btree (i); -- table t_842
CREATE INDEX CONCURRENTLY i_843 ON public.t_843 USING btree (i); -- table t_843
CREATE INDEX CONCURRENTLY i_844 ON public.t_844 USING btree (i); -- table t_844
CREATE INDEX CONCURRENTLY i_845 ON public.t_845 USING btree (i); -- table t_845
CREATE INDEX CONCURRENTLY i_846 ON public.t_846 USING btree (i); -- table t_846
CREATE INDEX CONCURRENTLY i_847 ON public.t_847 USING btree (i); -- table t_847
CREATE INDEX CONCURRENTLY i_848 ON public.t_848 USING btree (i); -- table t_848
CREATE INDEX CONCURRENTLY i_849 ON public.t_849 USING btree (i); -- table t_849
CREATE INDEX CONCURRENTLY i_85 ON public.t_85 USING btree (i); -- table t_85
CREATE INDEX CONCURRENTLY i_850 ON public.t_850 USING btree (i); -- table t_850
CREATE INDEX CONCURRENTLY i_851 ON public.t_851 USING btree (i); -- table t_851
CREATE INDEX CONCURRENTLY i_852 ON public.t_852 USING btree (i); -- table t_852
CREATE INDEX CONCURRENTLY i_853 ON public.t_853 USING btree (i); -- table t_853
CREATE INDEX CONCURRENTLY i_854 ON public.t_854 USING btree (i); -- table t_854
CREATE INDEX CONCURRENTLY i_855 ON public.t_855 USING btree (i); -- table t_855
CREATE INDEX CONCURRENTLY i_856 ON public.t_856 USING btree (i); -- table t_856
CREATE INDEX CONCURRENTLY i_857 ON public.t_857 USING btree (i); -- table t_857
CREATE INDEX CONCURRENTLY i_858 ON public.t_858 USING btree (i); -- table t_858
CREATE INDEX CONCURRENTLY i_859 ON public.t_859 USING btree (i); -- table t_859
CREATE INDEX CONCURRENTLY i_86 ON public.t_86 USING btree (i); -- table t_86
CREATE INDEX CONCURRENTLY i_860 ON public.t_860 USING btree (i); -- table t_860
CREATE INDEX CONCURRENTLY i_861 ON public.t_861 USING btree (i); -- table t_861
CREATE INDEX CONCURRENTLY i_862 ON public.t_862 USING btree (i); -- table t_862
CREATE INDEX CONCURRENTLY i_863 ON public.t_863 USING btree (i); -- table t_863
CREATE INDEX CONCURRENTLY i_864 ON public.t_864 USING btree (i); -- table t_864
CREATE INDEX CONCURRENTLY i_865 ON public.t_865 USING btree (i); -- table t_865
CREATE INDEX CONCURRENTLY i_866 ON public.t_866 USING btree (i); -- table t_866
CREATE INDEX CONCURRENTLY i_867 ON public.t_867 USING btree (i); -- table t_867
CREATE INDEX CONCURRENTLY i_868 ON public.t_868 USING btree (i); -- table t_868
CREATE INDEX CONCURRENTLY i_869 ON public.t_869 USING btree (i); -- table t_869
CREATE INDEX CONCURRENTLY i_87 ON public.t_87 USING btree (i); -- table t_87
CREATE INDEX CONCURRENTLY i_870 ON public.t_870 USING btree (i); -- table t_870
CREATE INDEX CONCURRENTLY i_871 ON public.t_871 USING btree (i); -- table t_871
CREATE INDEX CONCURRENTLY i_872 ON public.t_872 USING btree (i); -- table t_872
CREATE INDEX CONCURRENTLY i_873 ON public.t_873 USING btree (i); -- table t_873
CREATE INDEX CONCURRENTLY i_874 ON public.t_874 USING btree (i); -- table t_874
CREATE INDEX CONCURRENTLY i_875 ON public.t_875 USING btree (i); -- table t_875
CREATE INDEX CONCURRENTLY i_876 ON public.t_876 USING btree (i); -- table t_876
CREATE INDEX CONCURRENTLY i_877 ON public.t_877 USING btree (i); -- table t_877
CREATE INDEX CONCURRENTLY i_878 ON public.t_878 USING btree (i); -- table t_878
CREATE INDEX CONCURRENTLY i_879 ON public.t_879 USING btree (i); -- table t_879
CREATE INDEX CONCURRENTLY i_88 ON public.t_88 USING btree (i); -- table t_88
CREATE INDEX CONCURRENTLY i_880 ON public.t_880 USING btree (i); -- table t_880
CREATE INDEX CONCURRENTLY i_881 ON public.t_881 USING btree (i); -- table t_881
CREATE INDEX CONCURRENTLY i_882 ON public.t_882 USING btree (i); -- table t_882
CREATE INDEX CONCURRENTLY i_883 ON public.t_883 USING btree (i); -- table t_883
CREATE INDEX CONCURRENTLY i_884 ON public.t_884 USING btree (i); -- table t_884
CREATE INDEX CONCURRENTLY i_885 ON public.t_885 USING btree (i); -- table t_885
CREATE INDEX CONCURRENTLY i_886 ON public.t_886 USING btree (i); -- table t_886
CREATE INDEX CONCURRENTLY i_887 ON public.t_887 USING btree (i); -- table t_887
CREATE INDEX CONCURRENTLY i_888 ON public.t_888 USING btree (i); -- table t_888
CREATE INDEX CONCURRENTLY i_889 ON public.t_889 USING btree (i); -- table t_889
CREATE INDEX CONCURRENTLY i_89 ON public.t_89 USING btree (i); -- table t_89
CREATE INDEX CONCURRENTLY i_890 ON public.t_890 USING btree (i); -- table t_890
CREATE INDEX CONCURRENTLY i_891 ON public.t_891 USING btree (i); -- table t_891
CREATE INDEX CONCURRENTLY i_892 ON public.t_892 USING btree (i); -- table t_892
CREATE INDEX CONCURRENTLY i_893 ON public.t_893 USING btree (i); -- table t_893
CREATE INDEX CONCURRENTLY i_894 ON public.t_894 USING btree (i); -- table t_894
CREATE INDEX CONCURRENTLY i_895 ON public.t_895 USING btree (i); -- table t_895
CREATE INDEX CONCURRENTLY i_896 ON public.t_896 USING btree (i); -- table t_896
CREATE INDEX CONCURRENTLY i_897 ON public.t_897 USING btree (i); -- table t_897
CREATE INDEX CONCURRENTLY i_898 ON public.t_898 USING btree (i); -- table t_898
CREATE INDEX CONCURRENTLY i_899 ON public.t_899 USING btree (i); -- table t_899
CREATE INDEX CONCURRENTLY i_9 ON public.t_9 USING btree (i); -- table t_9
CREATE INDEX CONCURRENTLY i_90 ON public.t_90 USING btree (i); -- table t_90
CREATE INDEX CONCURRENTLY i_900 ON public.t_900 USING btree (i); -- table t_900
CREATE INDEX CONCURRENTLY i_901 ON public.t_901 USING btree (i); -- table t_901
CREATE INDEX CONCURRENTLY i_902 ON public.t_902 USING btree (i); -- table t_902
CREATE INDEX CONCURRENTLY i_903 ON public.t_903 USING btree (i); -- table t_903
CREATE INDEX CONCURRENTLY i_904 ON public.t_904 USING btree (i); -- table t_904
CREATE INDEX CONCURRENTLY i_905 ON public.t_905 USING btree (i); -- table t_905
CREATE INDEX CONCURRENTLY i_906 ON public.t_906 USING btree (i); -- table t_906
CREATE INDEX CONCURRENTLY i_907 ON public.t_907 USING btree (i); -- table t_907
CREATE INDEX CONCURRENTLY i_908 ON public.t_908 USING btree (i); -- table t_908
CREATE INDEX CONCURRENTLY i_909 ON public.t_909 USING btree (i); -- table t_909
CREATE INDEX CONCURRENTLY i_91 ON public.t_91 USING btree (i); -- table t_91
CREATE INDEX CONCURRENTLY i_910 ON public.t_910 USING btree (i); -- table t_910
CREATE INDEX CONCURRENTLY i_911 ON public.t_911 USING btree (i); -- table t_911
CREATE INDEX CONCURRENTLY i_912 ON public.t_912 USING btree (i); -- table t_912
CREATE INDEX CONCURRENTLY i_913 ON public.t_913 USING btree (i); -- table t_913
CREATE INDEX CONCURRENTLY i_914 ON public.t_914 USING btree (i); -- table t_914
CREATE INDEX CONCURRENTLY i_915 ON public.t_915 USING btree (i); -- table t_915
CREATE INDEX CONCURRENTLY i_916 ON public.t_916 USING btree (i); -- table t_916
CREATE INDEX CONCURRENTLY i_917 ON public.t_917 USING btree (i); -- table t_917
CREATE INDEX CONCURRENTLY i_918 ON public.t_918 USING btree (i); -- table t_918
CREATE INDEX CONCURRENTLY i_919 ON public.t_919 USING btree (i); -- table t_919
CREATE INDEX CONCURRENTLY i_92 ON public.t_92 USING btree (i); -- table t_92
CREATE INDEX CONCURRENTLY i_920 ON public.t_920 USING btree (i); -- table t_920
CREATE INDEX CONCURRENTLY i_921 ON public.t_921 USING btree (i); -- table t_921
CREATE INDEX CONCURRENTLY i_922 ON public.t_922 USING btree (i); -- table t_922
CREATE INDEX CONCURRENTLY i_923 ON public.t_923 USING btree (i); -- table t_923
CREATE INDEX CONCURRENTLY i_924 ON public.t_924 USING btree (i); -- table t_924
CREATE INDEX CONCURRENTLY i_925 ON public.t_925 USING btree (i); -- table t_925
CREATE INDEX CONCURRENTLY i_926 ON public.t_926 USING btree (i); -- table t_926
CREATE INDEX CONCURRENTLY i_927 ON public.t_927 USING btree (i); -- table t_927
CREATE INDEX CONCURRENTLY i_928 ON public.t_928 USING btree (i); -- table t_928
CREATE INDEX CONCURRENTLY i_929 ON public.t_929 USING btree (i); -- table t_929
CREATE INDEX CONCURRENTLY i_93 ON public.t_93 USING btree (i); -- table t_93
CREATE INDEX CONCURRENTLY i_930 ON public.t_930 USING btree (i); -- table t_930
CREATE INDEX CONCURRENTLY i_931 ON public.t_931 USING btree (i); -- table t_931
CREATE INDEX CONCURRENTLY i_932 ON public.t_932 USING btree (i); -- table t_932
CREATE INDEX CONCURRENTLY i_933 ON public.t_933 USING btree (i); -- table t_933
CREATE INDEX CONCURRENTLY i_934 ON public.t_934 USING btree (i); -- table t_934
CREATE INDEX CONCURRENTLY i_935 ON public.t_935 USING btree (i); -- table t_935
CREATE INDEX CONCURRENTLY i_936 ON public.t_936 USING btree (i); -- table t_936
CREATE INDEX CONCURRENTLY i_937 ON public.t_937 USING btree (i); -- table t_937
CREATE INDEX CONCURRENTLY i_938 ON public.t_938 USING btree (i); -- table t_938
CREATE INDEX CONCURRENTLY i_939 ON public.t_939 USING btree (i); -- table t_939
CREATE INDEX CONCURRENTLY i_94 ON public.t_94 USING btree (i); -- table t_94
CREATE INDEX CONCURRENTLY i_940 ON public.t_940 USING btree (i); -- table t_940
CREATE INDEX CONCURRENTLY i_941 ON public.t_941 USING btree (i); -- table t_941
CREATE INDEX CONCURRENTLY i_942 ON public.t_942 USING btree (i); -- table t_942
CREATE INDEX CONCURRENTLY i_943 ON public.t_943 USING btree (i); -- table t_943
CREATE INDEX CONCURRENTLY i_944 ON public.t_944 USING btree (i); -- table t_944
CREATE INDEX CONCURRENTLY i_945 ON public.t_945 USING btree (i); -- table t_945
CREATE INDEX CONCURRENTLY i_946 ON public.t_946 USING btree (i); -- table t_946
CREATE INDEX CONCURRENTLY i_947 ON public.t_947 USING btree (i); -- table t_947
CREATE INDEX CONCURRENTLY i_948 ON public.t_948 USING btree (i); -- table t_948
CREATE INDEX CONCURRENTLY i_949 ON public.t_949 USING btree (i); -- table t_949
CREATE INDEX CONCURRENTLY i_95 ON public.t_95 USING btree (i); -- table t_95
CREATE INDEX CONCURRENTLY i_950 ON public.t_950 USING btree (i); -- table t_950
CREATE INDEX CONCURRENTLY i_951 ON public.t_951 USING btree (i); -- table t_951
CREATE INDEX CONCURRENTLY i_952 ON public.t_952 USING btree (i); -- table t_952
CREATE INDEX CONCURRENTLY i_953 ON public.t_953 USING btree (i); -- table t_953
CREATE INDEX CONCURRENTLY i_954 ON public.t_954 USING btree (i); -- table t_954
CREATE INDEX CONCURRENTLY i_955 ON public.t_955 USING btree (i); -- table t_955
CREATE INDEX CONCURRENTLY i_956 ON public.t_956 USING btree (i); -- table t_956
CREATE INDEX CONCURRENTLY i_957 ON public.t_957 USING btree (i); -- table t_957
CREATE INDEX CONCURRENTLY i_958 ON public.t_958 USING btree (i); -- table t_958
CREATE INDEX CONCURRENTLY i_959 ON public.t_959 USING btree (i); -- table t_959
CREATE INDEX CONCURRENTLY i_96 ON public.t_96 USING btree (i); -- table t_96
CREATE INDEX CONCURRENTLY i_960 ON public.t_960 USING btree (i); -- table t_960
CREATE INDEX CONCURRENTLY i_961 ON public.t_961 USING btree (i); -- table t_961
CREATE INDEX CONCURRENTLY i_962 ON public.t_962 USING btree (i); -- table t_962
CREATE INDEX CONCURRENTLY i_963 ON public.t_963 USING btree (i); -- table t_963
CREATE INDEX CONCURRENTLY i_964 ON public.t_964 USING btree (i); -- table t_964
CREATE INDEX CONCURRENTLY i_965 ON public.t_965 USING btree (i); -- table t_965
CREATE INDEX CONCURRENTLY i_966 ON public.t_966 USING btree (i); -- table t_966
CREATE INDEX CONCURRENTLY i_967 ON public.t_967 USING btree (i); -- table t_967
CREATE INDEX CONCURRENTLY i_968 ON public.t_968 USING btree (i); -- table t_968
CREATE INDEX CONCURRENTLY i_969 ON public.t_969 USING btree (i); -- table t_969
CREATE INDEX CONCURRENTLY i_97 ON public.t_97 USING btree (i); -- table t_97
CREATE INDEX CONCURRENTLY i_970 ON public.t_970 USING btree (i); -- table t_970
CREATE INDEX CONCURRENTLY i_971 ON public.t_971 USING btree (i); -- table t_971
CREATE INDEX CONCURRENTLY i_972 ON public.t_972 USING btree (i); -- table t_972
CREATE INDEX CONCURRENTLY i_973 ON public.t_973 USING btree (i); -- table t_973
CREATE INDEX CONCURRENTLY i_974 ON public.t_974 USING btree (i); -- table t_974
CREATE INDEX CONCURRENTLY i_975 ON public.t_975 USING btree (i); -- table t_975
CREATE INDEX CONCURRENTLY i_976 ON public.t_976 USING btree (i); -- table t_976
CREATE INDEX CONCURRENTLY i_977 ON public.t_977 USING btree (i); -- table t_977
CREATE INDEX CONCURRENTLY i_978 ON public.t_978 USING btree (i); -- table t_978
CREATE INDEX CONCURRENTLY i_979 ON public.t_979 USING btree (i); -- table t_979
CREATE INDEX CONCURRENTLY i_98 ON public.t_98 USING btree (i); -- table t_98
CREATE INDEX CONCURRENTLY i_980 ON public.t_980 USING btree (i); -- table t_980
CREATE INDEX CONCURRENTLY i_981 ON public.t_981 USING btree (i); -- table t_981
CREATE INDEX CONCURRENTLY i_982 ON public.t_982 USING btree (i); -- table t_982
CREATE INDEX CONCURRENTLY i_983 ON public.t_983 USING btree (i); -- table t_983
CREATE INDEX CONCURRENTLY i_984 ON public.t_984 USING btree (i); -- table t_984
CREATE INDEX CONCURRENTLY i_985 ON public.t_985 USING btree (i); -- table t_985
CREATE INDEX CONCURRENTLY i_986 ON public.t_986 USING btree (i); -- table t_986
CREATE INDEX CONCURRENTLY i_987 ON public.t_987 USING btree (i); -- table t_987
CREATE INDEX CONCURRENTLY i_988 ON public.t_988 USING btree (i); -- table t_988
CREATE INDEX CONCURRENTLY i_989 ON public.t_989 USING btree (i); -- table t_989
CREATE INDEX CONCURRENTLY i_99 ON public.t_99 USING btree (i); -- table t_99
CREATE INDEX CONCURRENTLY i_990 ON public.t_990 USING btree (i); -- table t_990
CREATE INDEX CONCURRENTLY i_991 ON public.t_991 USING btree (i); -- table t_991
CREATE INDEX CONCURRENTLY i_992 ON public.t_992 USING btree (i); -- table t_992
CREATE INDEX CONCURRENTLY i_993 ON public.t_993 USING btree (i); -- table t_993
CREATE INDEX CONCURRENTLY i_994 ON public.t_994 USING btree (i); -- table t_994
CREATE INDEX CONCURRENTLY i_995 ON public.t_995 USING btree (i); -- table t_995
CREATE INDEX CONCURRENTLY i_996 ON public.t_996 USING btree (i); -- table t_996
CREATE INDEX CONCURRENTLY i_997 ON public.t_997 USING btree (i); -- table t_997
CREATE INDEX CONCURRENTLY i_998 ON public.t_998 USING btree (i); -- table t_998
CREATE INDEX CONCURRENTLY i_999 ON public.t_999 USING btree (i); -- table t_999
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
Data collected: 2019-03-11 06:04:39 +0000 UTC  
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
Data collected: 2019-03-11 06:04:39 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
Start: 2019-03-11T06:03:58.655519+00:00  
End: 2019-03-11T06:04:39.863167+00:00  
Period seconds: 41.20765  
Period age: 00:00:41.207648  

Error (calls): 5.00 (71.43%)  
Error (total time): 156.63 (6.93%)

Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------
7<br/>0.17/sec<br/>1.00/call<br/>100.00% |2,258.71&nbsp;ms<br/>54ms/sec<br/>322ms/call<br/>100.00% |7<br/>0.17/sec<br/>1.00/call<br/>100.00% |3,345,899&nbsp;blks<br/>81.20K&nbsp;blks/sec<br/>477.99K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K002"></a>
[Table of contents](#postgres-checkup_top)
# K002 Workload type ("first word" analysis)

## Observations ##
Data collected: 2019-03-11 06:04:39 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
Start: 2019-03-11T06:03:58.655519+00:00  
End: 2019-03-11T06:04:39.863167+00:00  
Period seconds: 41.20765  
Period age: 00:00:41.207648  

Error (calls): 5.00 (71.43%)  
Error (total time): 156.63 (6.93%)

\# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|------- 
1 |with |6<br/>0.15/sec<br/>1.00/call<br/>85.71% |2,258.57&nbsp;ms<br/>54ms/sec<br/>376ms/call<br/>99.99% |6<br/>0.15/sec<br/>1.00/call<br/>85.71% |3,345,899&nbsp;blks<br/>81.20K&nbsp;blks/sec<br/>557.65K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
2 |select |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |0.14&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.01% |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
3 |update |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
4 |vacuum |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
5 |delete |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
6 |alter |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
7 |insert |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
8 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K003"></a>
[Table of contents](#postgres-checkup_top)
# K003 Top-50 queries by total_time

## Observations ##
Data collected: 2019-03-11 06:04:39 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
Start: 2019-03-11T06:03:58.655519+00:00  
End: 2019-03-11T06:04:39.863167+00:00  
Period seconds: 41.20765  
Period age: 00:00:41.207648  

Error (calls): 5.00 (71.43%)  
Error (total time): 156.63 (6.93%)

  

\# | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |Query
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------
1 |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |1,952.28&nbsp;ms<br/>47ms/sec<br/>1.952s/call<br/>86.43% |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |3,235,058&nbsp;blks<br/>78.51K&nbsp;blks/sec<br/>3.24M&nbsp;blks/call<br/>96.69% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;overrided_tables&nbsp;as&nbsp;(&nbsp;select&nbsp;pc.oid&nbsp;as&nbsp;table_id,&nbsp;pn.nspname&nbsp;as&nbsp;scheme_name,&nbsp;pc.relname&nbsp;as&nbsp;table_name,&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;from&nbsp;pg_class&nbsp;pc&nbsp;join&nbsp;pg_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;),&nbsp;step1&nbsp;as&nbsp;(&nbsp;select&nbsp;i.tblid,&nbsp;i.nspname&nbsp;as&nbsp;schema_name,&nbsp;i.tblname&nbsp;as&nbsp;table_name,&nbsp;i.idxname&nbsp;as&nbsp;index_name,&nbsp;i.reltuples,&nbsp;i.relpages,&nbsp;i.relam,&nbsp;a.attrelid&nbsp;AS&nbsp;table_oid,&nbsp;current_setting($2)::numeric&nbsp;AS&nbsp;bs,&nbsp;fillfactor,&nbsp;&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$3&nbsp;then&nbsp;$4&nbsp;else&nbsp;$5&nbsp;end&nbsp;as&nbsp;maxalign,&nbsp;/*&nbsp;per&nbsp;page&nbsp;header,&nbsp;fixed&nbsp;size:&nbsp;20&nbsp;for&nbsp;7.X,&nbsp;24&nbsp;for&nbsp;others&nbsp;*/&nbsp;$6&nbsp;AS&nbsp;pagehdr,&nbsp;/*&nbsp;per&nbsp;page&nbsp;btree&nbsp;opaque&nbsp;data&nbsp;*/&nbsp;$7&nbsp;AS&nbsp;pageopqdata,&nbsp;/*&nbsp;per&nbsp;tuple&nbsp;header:&nbsp;add&nbsp;IndexAttributeBitMapData&nbsp;if&nbsp;some&nbsp;cols&nbsp;are&nbsp;null-able&nbsp;*/&nbsp;case&nbsp;when&nbsp;max(coalesce(s.null_frac,$8))&nbsp;=&nbsp;$9&nbsp;then&nbsp;$10&nbsp;&nbsp;else&nbsp;$11&nbsp;+&nbsp;((&nbsp;$12&nbsp;+&nbsp;$13&nbsp;-&nbsp;$14&nbsp;)&nbsp;/&nbsp;$15)&nbsp;&nbsp;end&nbsp;as&nbsp;index_tuple_hdr_bm,&nbsp;/*&nbsp;data&nbsp;len:&nbsp;we&nbsp;remove&nbsp;null&nbsp;values&nbsp;save&nbsp;space&nbsp;using&nbsp;it&nbsp;fractionnal&nbsp;part&nbsp;from&nbsp;stats&nbsp;*/&nbsp;sum(($16&nbsp;-&nbsp;coalesce(s.null_frac,&nbsp;$17))&nbsp;*&nbsp;coalesce(s.avg_width,&nbsp;$18))&nbsp;as&nbsp;nulldatawidth,&nbsp;max(case&nbsp;when&nbsp;a.atttypid&nbsp;=&nbsp;$19::regtype&nbsp;then&nbsp;$20&nbsp;else&nbsp;$21&nbsp;end)&nbsp;>&nbsp;$22&nbsp;as&nbsp;is_na&nbsp;from&nbsp;pg_attribute&nbsp;as&nbsp;a&nbsp;join&nbsp;(&nbsp;select&nbsp;tbl.oid&nbsp;tblid,&nbsp;nspname,&nbsp;tbl.relname&nbsp;AS&nbsp;tblname,&nbsp;idx.relname&nbsp;AS&nbsp;idxname,&nbsp;idx.reltuples,&nbsp;idx.relpages,&nbsp;idx.relam,&nbsp;indrelid,&nbsp;indexrelid,&nbsp;indkey::smallint[]&nbsp;AS&nbsp;attnum,&nbsp;coalesce(substring(array_to_string(idx.reloptions,&nbsp;$23)&nbsp;from&nbsp;$24)::smallint,&nbsp;$25)&nbsp;as&nbsp;fillfactor&nbsp;from&nbsp;pg_index&nbsp;join&nbsp;pg_class&nbsp;idx&nbsp;on&nbsp;idx.oid&nbsp;=&nbsp;pg_index.indexrelid&nbsp;join&nbsp;pg_class&nbsp;tbl&nbsp;on&nbsp;tbl.oid&nbsp;=&nbsp;pg_index.indrelid&nbsp;join&nbsp;pg_namespace&nbsp;on&nbsp;pg_namespace.oid&nbsp;=&nbsp;idx.relnamespace&nbsp;where&nbsp;pg_index.indisvalid&nbsp;AND&nbsp;tbl.relkind&nbsp;=&nbsp;$26&nbsp;AND&nbsp;idx.relpages&nbsp;>&nbsp;$27&nbsp;)&nbsp;as&nbsp;i&nbsp;on&nbsp;a.attrelid&nbsp;=&nbsp;i.indexrelid&nbsp;join&nbsp;pg_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;s.schemaname&nbsp;=&nbsp;i.nspname&nbsp;and&nbsp;(&nbsp;(s.tablename&nbsp;=&nbsp;i.tblname&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;pg_catalog.pg_get_indexdef(a.attrelid,&nbsp;a.attnum,&nbsp;$28))&nbsp;&nbsp;OR&nbsp;(s.tablename&nbsp;=&nbsp;i.idxname&nbsp;AND&nbsp;s.attname&nbsp;=&nbsp;a.attname)&nbsp;&nbsp;)&nbsp;join&nbsp;pg_type&nbsp;as&nbsp;t&nbsp;on&nbsp;a.atttypid&nbsp;=&nbsp;t.oid&nbsp;where&nbsp;a.attnum&nbsp;>&nbsp;$29&nbsp;group...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/1.sql)
2 |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |131.45&nbsp;ms<br/>3ms/sec<br/>131ms/call<br/>5.82% |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |53,287&nbsp;blks<br/>1.30K&nbsp;blks/sec<br/>53.29K&nbsp;blks/call<br/>1.59% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;fk_indexes&nbsp;as&nbsp;(&nbsp;select&nbsp;schemaname&nbsp;as&nbsp;schema_name,&nbsp;(indexrelid::regclass)::text&nbsp;as&nbsp;index_name,&nbsp;(relid::regclass)::text&nbsp;as&nbsp;table_name,&nbsp;(confrelid::regclass)::text&nbsp;as&nbsp;fk_table_ref,&nbsp;array_to_string(indclass,&nbsp;$1)&nbsp;as&nbsp;opclasses&nbsp;from&nbsp;pg_stat_user_indexes&nbsp;join&nbsp;pg_index&nbsp;using&nbsp;(indexrelid)&nbsp;left&nbsp;join&nbsp;pg_constraint&nbsp;on&nbsp;array_to_string(indkey,&nbsp;$2)&nbsp;=&nbsp;array_to_string(conkey,&nbsp;$3)&nbsp;and&nbsp;schemaname&nbsp;=&nbsp;(connamespace::regnamespace)::text&nbsp;and&nbsp;conrelid&nbsp;=&nbsp;relid&nbsp;and&nbsp;contype&nbsp;=&nbsp;$4&nbsp;where&nbsp;idx_scan&nbsp;=&nbsp;$5&nbsp;and&nbsp;indisunique&nbsp;is&nbsp;false&nbsp;and&nbsp;conkey&nbsp;is&nbsp;not&nbsp;null&nbsp;),&nbsp;table_scans&nbsp;as&nbsp;(&nbsp;select&nbsp;relid,&nbsp;tables.idx_scan&nbsp;+&nbsp;tables.seq_scan&nbsp;as&nbsp;all_scans,&nbsp;(&nbsp;tables.n_tup_ins&nbsp;+&nbsp;tables.n_tup_upd&nbsp;+&nbsp;tables.n_tup_del&nbsp;)&nbsp;as&nbsp;writes,&nbsp;pg_relation_size(relid)&nbsp;as&nbsp;table_size&nbsp;from&nbsp;pg_stat_user_tables&nbsp;as&nbsp;tables),&nbsp;all_writes&nbsp;as&nbsp;(&nbsp;select&nbsp;sum(writes)&nbsp;as&nbsp;total_writes&nbsp;from&nbsp;table_scans),&nbsp;indexes&nbsp;as&nbsp;(&nbsp;select&nbsp;idx_stat.relid,&nbsp;idx_stat.indexrelid,&nbsp;idx_stat.schemaname&nbsp;as&nbsp;schema_name,&nbsp;idx_stat.relname&nbsp;as&nbsp;table_name,&nbsp;idx_stat.indexrelname&nbsp;as&nbsp;index_name,&nbsp;quote_ident(idx_stat.schemaname)&nbsp;as&nbsp;formated_schema_name,&nbsp;quote_ident(idx_stat.indexrelname)&nbsp;as&nbsp;formated_index_name,&nbsp;quote_ident(idx_stat.relname)&nbsp;as&nbsp;formated_table_name,&nbsp;coalesce(nullif(quote_ident(idx_stat.schemaname),&nbsp;$6)&nbsp;||&nbsp;$7,&nbsp;$8)&nbsp;||&nbsp;quote_ident(idx_stat.relname)&nbsp;as&nbsp;formated_relation_name,&nbsp;idx_stat.idx_scan,&nbsp;pg_relation_size(idx_stat.indexrelid)&nbsp;as&nbsp;index_bytes,&nbsp;indexdef&nbsp;~*&nbsp;$9&nbsp;as&nbsp;idx_is_btree,&nbsp;pg_get_indexdef(pg_index.indexrelid)&nbsp;as&nbsp;index_def,&nbsp;array_to_string(pg_index.indclass,&nbsp;$10)&nbsp;as&nbsp;opclasses&nbsp;from&nbsp;pg_stat_user_indexes&nbsp;as&nbsp;idx_stat&nbsp;join&nbsp;pg_index&nbsp;using&nbsp;(indexrelid)&nbsp;join&nbsp;pg_indexes&nbsp;as&nbsp;indexes&nbsp;on&nbsp;idx_stat.schemaname&nbsp;=&nbsp;indexes.schemaname&nbsp;and&nbsp;idx_stat.relname&nbsp;=&nbsp;indexes.tablename&nbsp;and&nbsp;idx_stat.indexrelname&nbsp;=&nbsp;indexes.indexname&nbsp;where&nbsp;pg_index.indisunique&nbsp;=&nbsp;$11&nbsp;and&nbsp;pg_index.indisvalid&nbsp;=&nbsp;$12),&nbsp;index_ratios&nbsp;as&nbsp;(&nbsp;select&nbsp;i.indexrelid&nbsp;as&nbsp;index_id,&nbsp;i.schema_name,&nbsp;i.table_name,&nbsp;i.index_name,&nbsp;idx_scan,&nbsp;all_scans,&nbsp;round((&nbsp;case&nbsp;when&nbsp;all_scans&nbsp;=&nbsp;$13&nbsp;the...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/2.sql)
3 |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |60.92&nbsp;ms<br/>1ms/sec<br/>60ms/call<br/>2.70% |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |37,771&nbsp;blks<br/>916.60&nbsp;blks/sec<br/>37.78K&nbsp;blks/call<br/>1.13% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;fk_actions&nbsp;(&nbsp;code,&nbsp;action&nbsp;)&nbsp;as&nbsp;(&nbsp;values&nbsp;($1,&nbsp;$2),&nbsp;($3,&nbsp;$4),&nbsp;($5,&nbsp;$6),&nbsp;($7,&nbsp;$8),&nbsp;($9,&nbsp;$10)&nbsp;),&nbsp;fk_list&nbsp;as&nbsp;(&nbsp;select&nbsp;pg_constraint.oid&nbsp;as&nbsp;fkoid,&nbsp;conrelid,&nbsp;confrelid&nbsp;as&nbsp;parentid,&nbsp;conname,&nbsp;relname,&nbsp;nspname,&nbsp;fk_actions_update.action&nbsp;as&nbsp;update_action,&nbsp;fk_actions_delete.action&nbsp;as&nbsp;delete_action,&nbsp;conkey&nbsp;as&nbsp;key_cols&nbsp;from&nbsp;pg_constraint&nbsp;join&nbsp;pg_class&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;pg_class.oid&nbsp;join&nbsp;pg_namespace&nbsp;on&nbsp;pg_class.relnamespace&nbsp;=&nbsp;pg_namespace.oid&nbsp;join&nbsp;fk_actions&nbsp;as&nbsp;fk_actions_update&nbsp;on&nbsp;confupdtype&nbsp;=&nbsp;fk_actions_update.code&nbsp;join&nbsp;fk_actions&nbsp;as&nbsp;fk_actions_delete&nbsp;on&nbsp;confdeltype&nbsp;=&nbsp;fk_actions_delete.code&nbsp;where&nbsp;contype&nbsp;=&nbsp;$11&nbsp;),&nbsp;fk_attributes&nbsp;as&nbsp;(&nbsp;select&nbsp;fkoid,&nbsp;conrelid,&nbsp;attname,&nbsp;attnum&nbsp;from&nbsp;fk_list&nbsp;join&nbsp;pg_attribute&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;attrelid&nbsp;and&nbsp;attnum&nbsp;=&nbsp;any(key_cols)&nbsp;order&nbsp;by&nbsp;fkoid,&nbsp;attnum&nbsp;),&nbsp;fk_cols_list&nbsp;as&nbsp;(&nbsp;select&nbsp;fkoid,&nbsp;array_agg(attname)&nbsp;as&nbsp;cols_list&nbsp;from&nbsp;fk_attributes&nbsp;group&nbsp;by&nbsp;fkoid&nbsp;),&nbsp;index_list&nbsp;as&nbsp;(&nbsp;select&nbsp;indexrelid&nbsp;as&nbsp;indexid,&nbsp;pg_class.relname&nbsp;as&nbsp;indexname,&nbsp;indrelid,&nbsp;indkey,&nbsp;indpred&nbsp;is&nbsp;not&nbsp;null&nbsp;as&nbsp;has_predicate,&nbsp;pg_get_indexdef(indexrelid)&nbsp;as&nbsp;indexdef&nbsp;from&nbsp;pg_index&nbsp;join&nbsp;pg_class&nbsp;on&nbsp;indexrelid&nbsp;=&nbsp;pg_class.oid&nbsp;where&nbsp;indisvalid&nbsp;),&nbsp;fk_index_match&nbsp;as&nbsp;(&nbsp;select&nbsp;fk_list.*,&nbsp;indexid,&nbsp;indexname,&nbsp;indkey::int[]&nbsp;as&nbsp;indexatts,&nbsp;has_predicate,&nbsp;indexdef,&nbsp;array_length(key_cols,&nbsp;$12)&nbsp;as&nbsp;fk_colcount,&nbsp;array_length(indkey,$13)&nbsp;as&nbsp;index_colcount,&nbsp;round(pg_relation_size(conrelid)/($14^$15)::numeric)&nbsp;as&nbsp;table_mb,&nbsp;cols_list&nbsp;from&nbsp;fk_list&nbsp;join&nbsp;fk_cols_list&nbsp;using&nbsp;(fkoid)&nbsp;left&nbsp;join&nbsp;index_list&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;indrelid&nbsp;and&nbsp;(indkey::int2[])[$16:(array_length(key_cols,$17)&nbsp;-$18)]&nbsp;operator(pg_catalog.@>)&nbsp;key_cols&nbsp;),&nbsp;fk_perfect_match&nbsp;as&nbsp;(&nbsp;select&nbsp;fkoid&nbsp;from&nbsp;fk_index_match&nbsp;where&nbsp;(index_colcount&nbsp;-&nbsp;$19)&nbsp;<=&nbsp;fk_colcount&nbsp;and&nbsp;not&nbsp;has_predicate&nbsp;and&nbsp;indexdef&nbsp;like&nbsp;$20&nbsp;),&nbsp;fk_index_check&nbsp;as&nbsp;(&nbsp;select&nbsp;$21&nbsp;as&nbsp;issue,&nbsp;*,&nbsp;$22&nbsp;as&nbsp;issue_sort&nbsp;from&nbsp;fk_index_match&nbsp;where&nbsp;indexid&nbsp;is&nbsp;null&nbsp;union&nbsp;all&nbsp;select&nbsp;$23&nbsp;as&nbsp;issue,&nbsp;*,&nbsp;$24&nbsp;from&nbsp;fk_index_match&nbsp;where&nbsp;indexid&nbsp;i...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/3.sql)
4 |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |57.60&nbsp;ms<br/>1ms/sec<br/>57ms/call<br/>2.55% |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |19,753&nbsp;blks<br/>479.35&nbsp;blks/sec<br/>19.76K&nbsp;blks/call<br/>0.59% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;overrided_tables&nbsp;as&nbsp;(&nbsp;select&nbsp;pc.oid&nbsp;as&nbsp;table_id,&nbsp;pn.nspname&nbsp;as&nbsp;scheme_name,&nbsp;pc.relname&nbsp;as&nbsp;table_name,&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;from&nbsp;pg_class&nbsp;pc&nbsp;join&nbsp;pg_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;),&nbsp;step1&nbsp;as&nbsp;(&nbsp;select&nbsp;tbl.oid&nbsp;tblid,&nbsp;ns.nspname&nbsp;as&nbsp;schema_name,&nbsp;tbl.relname&nbsp;as&nbsp;table_name,&nbsp;tbl.reltuples,&nbsp;tbl.relpages&nbsp;as&nbsp;heappages,&nbsp;coalesce(toast.relpages,&nbsp;$2)&nbsp;as&nbsp;toastpages,&nbsp;coalesce(toast.reltuples,&nbsp;$3)&nbsp;as&nbsp;toasttuples,&nbsp;coalesce(substring(array_to_string(tbl.reloptions,&nbsp;$4)&nbsp;from&nbsp;$5&nbsp;for&nbsp;$6)::int2,&nbsp;$7)&nbsp;as&nbsp;fillfactor,&nbsp;current_setting($8)::numeric&nbsp;as&nbsp;bs,&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$9&nbsp;then&nbsp;$10&nbsp;else&nbsp;$11&nbsp;end&nbsp;as&nbsp;ma,&nbsp;&nbsp;$12&nbsp;as&nbsp;page_hdr,&nbsp;$13&nbsp;+&nbsp;case&nbsp;when&nbsp;max(coalesce(null_frac,&nbsp;$14))&nbsp;>&nbsp;$15&nbsp;then&nbsp;($16&nbsp;+&nbsp;count(*))&nbsp;/&nbsp;$17&nbsp;else&nbsp;$18::int&nbsp;end&nbsp;+&nbsp;case&nbsp;when&nbsp;tbl.relhasoids&nbsp;then&nbsp;$19&nbsp;else&nbsp;$20&nbsp;end&nbsp;as&nbsp;tpl_hdr_size,&nbsp;sum(($21&nbsp;-&nbsp;coalesce(s.null_frac,&nbsp;$22))&nbsp;*&nbsp;coalesce(s.avg_width,&nbsp;$23))&nbsp;as&nbsp;tpl_data_size,&nbsp;bool_or(att.atttypid&nbsp;=&nbsp;$24::regtype)&nbsp;or&nbsp;count(att.attname)&nbsp;<>&nbsp;count(s.attname)&nbsp;as&nbsp;is_na&nbsp;from&nbsp;pg_attribute&nbsp;as&nbsp;att&nbsp;join&nbsp;pg_class&nbsp;as&nbsp;tbl&nbsp;on&nbsp;att.attrelid&nbsp;=&nbsp;tbl.oid&nbsp;and&nbsp;tbl.relkind&nbsp;=&nbsp;$25&nbsp;join&nbsp;pg_namespace&nbsp;as&nbsp;ns&nbsp;on&nbsp;ns.oid&nbsp;=&nbsp;tbl.relnamespace&nbsp;join&nbsp;pg_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;s.schemaname&nbsp;=&nbsp;ns.nspname&nbsp;and&nbsp;s.tablename&nbsp;=&nbsp;tbl.relname&nbsp;and&nbsp;not&nbsp;s.inherited&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;att.attname&nbsp;left&nbsp;join&nbsp;pg_class&nbsp;as&nbsp;toast&nbsp;on&nbsp;tbl.reltoastrelid&nbsp;=&nbsp;toast.oid&nbsp;where&nbsp;att.attnum&nbsp;>&nbsp;$26&nbsp;and&nbsp;not&nbsp;att.attisdropped&nbsp;and&nbsp;s.schemaname&nbsp;not&nbsp;in&nbsp;($27,&nbsp;$28)&nbsp;group&nbsp;by&nbsp;1,&nbsp;2,&nbsp;3,&nbsp;4,&nbsp;5,&nbsp;6,&nbsp;7,&nbsp;8,&nbsp;9,&nbsp;10,&nbsp;tbl.relhasoids&nbsp;order&nbsp;by&nbsp;2,&nbsp;3&nbsp;),&nbsp;step2&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;(&nbsp;$29&nbsp;+&nbsp;tpl_hdr_size&nbsp;+&nbsp;tpl_data_size&nbsp;+&nbsp;($30&nbsp;*&nbsp;ma)&nbsp;-&nbsp;case&nbsp;when&nbsp;tpl_hdr_size&nbsp;%&nbsp;ma&nbsp;=&nbsp;$31&nbsp;then&nbsp;ma&nbsp;else&nbsp;tpl_hdr_size&nbsp;%&nbsp;ma&nbsp;end&nbsp;-&nbsp;case&nbsp;when&nbsp;ceil(tpl_data_size)::int&nbsp;%&nbsp;ma&nbsp;=&nbsp;$32&nbsp;then&nbsp;ma&nbsp;else&nbsp;ceil(tpl_data_size)::int&nbsp;%&nbsp;ma&nbsp;end&nbsp;)&nbsp;as&nbsp;tpl_size,&nbsp;bs&nbsp;-&nbsp;page_hdr&nbsp;as&nbsp;size_per_block,&nbsp;(heappages&nbsp;+&nbsp;toastpages)&nbsp;as&nbsp;tblpages&nbsp;from&nbsp;step1&nbsp;),&nbsp;step3&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;ceil(reltuples&nbsp;/&nbsp;((bs&nbsp;-&nbsp;page_hdr)&nbsp;/&nbsp;tpl_size))&nbsp;+&nbsp;ceil(toasttuples&nbsp;/&nbsp;$33)&nbsp;as&nbsp;est_tblpages,&nbsp;ceil(r...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/4.sql)
5 |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |54.27&nbsp;ms<br/>1ms/sec<br/>54ms/call<br/>2.40% |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |24&nbsp;blks<br/>0.58&nbsp;blks/sec<br/>24.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;s.*&nbsp;from&nbsp;pg_stat_database&nbsp;s&nbsp;where&nbsp;s.datname&nbsp;=&nbsp;current_database()&nbsp;)&nbsp;select&nbsp;$1&nbsp;as&nbsp;metric,&nbsp;version()&nbsp;as&nbsp;value&nbsp;union&nbsp;all&nbsp;select&nbsp;$2&nbsp;as&nbsp;metric,&nbsp;(select&nbsp;setting&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;=&nbsp;$3)&nbsp;as&nbsp;value&nbsp;union&nbsp;all&nbsp;select&nbsp;$4&nbsp;as&nbsp;metric,&nbsp;case&nbsp;when&nbsp;pg_is_in_recovery()&nbsp;then&nbsp;$5&nbsp;||&nbsp;$6&nbsp;||&nbsp;((((case&nbsp;when&nbsp;pg_last_wal_receive_lsn()&nbsp;=&nbsp;pg_last_wal_replay_lsn()&nbsp;then&nbsp;$7&nbsp;else&nbsp;extract&nbsp;($8&nbsp;from&nbsp;now()&nbsp;-&nbsp;pg_last_xact_replay_timestamp())&nbsp;end)::int)::text&nbsp;||&nbsp;$9)::interval)::text&nbsp;||&nbsp;$10&nbsp;||&nbsp;pg_is_wal_replay_paused()::text&nbsp;||&nbsp;$11&nbsp;else&nbsp;$12&nbsp;end&nbsp;as&nbsp;value&nbsp;union&nbsp;all&nbsp;(&nbsp;with&nbsp;repl_groups&nbsp;as&nbsp;(&nbsp;select&nbsp;sync_state,&nbsp;state,&nbsp;string_agg(host(client_addr),&nbsp;$13)&nbsp;as&nbsp;hosts&nbsp;from&nbsp;pg_stat_replication&nbsp;group&nbsp;by&nbsp;1,&nbsp;2&nbsp;)&nbsp;select&nbsp;$14,&nbsp;string_agg(sync_state&nbsp;||&nbsp;$15&nbsp;||&nbsp;state&nbsp;||&nbsp;$16&nbsp;||&nbsp;hosts,&nbsp;$17)&nbsp;from&nbsp;repl_groups&nbsp;)&nbsp;union&nbsp;all&nbsp;select&nbsp;$18,&nbsp;pg_postmaster_start_time()::timestamptz(0)::text&nbsp;union&nbsp;all&nbsp;select&nbsp;$19,&nbsp;(now()&nbsp;-&nbsp;pg_postmaster_start_time())::interval(0)::text&nbsp;union&nbsp;all&nbsp;select&nbsp;$20,&nbsp;(select&nbsp;(checkpoints_timed&nbsp;+&nbsp;checkpoints_req)::text&nbsp;from&nbsp;pg_stat_bgwriter)&nbsp;union&nbsp;all&nbsp;select&nbsp;$21,&nbsp;(&nbsp;select&nbsp;round($22&nbsp;*&nbsp;checkpoints_req::numeric&nbsp;/&nbsp;(nullif(checkpoints_timed&nbsp;+&nbsp;checkpoints_req,&nbsp;$23)),&nbsp;$24)::text&nbsp;||&nbsp;$25&nbsp;from&nbsp;pg_stat_bgwriter&nbsp;)&nbsp;union&nbsp;all&nbsp;select&nbsp;$26,&nbsp;(&nbsp;select&nbsp;round((nullif(buffers_checkpoint::numeric,&nbsp;$27)&nbsp;/&nbsp;(($28&nbsp;*&nbsp;$29&nbsp;/&nbsp;(current_setting($30)::numeric))&nbsp;*&nbsp;extract($31&nbsp;from&nbsp;now()&nbsp;-&nbsp;stats_reset)&nbsp;))::numeric,&nbsp;$32)::text&nbsp;from&nbsp;pg_stat_bgwriter&nbsp;)&nbsp;union&nbsp;all&nbsp;select&nbsp;repeat($33,&nbsp;$34),&nbsp;repeat($35,&nbsp;$36)&nbsp;union&nbsp;all&nbsp;select&nbsp;$37&nbsp;as&nbsp;metric,&nbsp;datname&nbsp;as&nbsp;value&nbsp;from&nbsp;data&nbsp;union&nbsp;all&nbsp;select&nbsp;$38,&nbsp;pg_size_pretty(pg_database_size(current_database()))&nbsp;union&nbsp;all&nbsp;select&nbsp;$39,&nbsp;stats_reset::timestamptz(0)::text&nbsp;from&nbsp;data&nbsp;union&nbsp;all&nbsp;select&nbsp;$40,&nbsp;(now()&nbsp;-&nbsp;stats_reset)::interval(0)::text&nbsp;from&nbsp;data&nbsp;union&nbsp;all&nbsp;select&nbsp;$41,&nbsp;(&nbsp;with&nbsp;exts&nbsp;as&nbsp;(&nbsp;select&nbsp;extname&nbsp;||&nbsp;$42&nbsp;||&nbsp;extversion&nbsp;e,&nbsp;($43&nbsp;+&nbsp;row_number()&nbsp;over&nbsp;(order&nbsp;by&nbsp;extname))&nbsp;/&nbsp;$44&nbsp;i&nbsp;from&nbsp;pg_extension&nbsp;),&nbsp;lines(l)&nbsp;as&nbsp;(&nbsp;select...<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/5.sql)
6 |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |2.06&nbsp;ms<br/>0s/sec<br/>2ms/call<br/>0.09% |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |6&nbsp;blks<br/>0.15&nbsp;blks/sec<br/>6.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;ae.name,&nbsp;installed_version,&nbsp;default_version,&nbsp;case&nbsp;when&nbsp;installed_version&nbsp;<>&nbsp;default_version&nbsp;then&nbsp;$1&nbsp;end&nbsp;as&nbsp;is_old&nbsp;from&nbsp;pg_extension&nbsp;e&nbsp;join&nbsp;pg_available_extensions&nbsp;ae&nbsp;on&nbsp;extname&nbsp;=&nbsp;ae.name&nbsp;order&nbsp;by&nbsp;ae.name&nbsp;),&nbsp;withsettins&nbsp;as&nbsp;(&nbsp;select&nbsp;data.*,&nbsp;(select&nbsp;json_object_agg(name,&nbsp;setting)&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;~&nbsp;data.name)&nbsp;as&nbsp;settings&nbsp;from&nbsp;data&nbsp;order&nbsp;by&nbsp;name&nbsp;)&nbsp;select&nbsp;json_object_agg(withsettins.name,&nbsp;withsettins)&nbsp;as&nbsp;json&nbsp;from&nbsp;withsettins<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/6.sql)
7 |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |0.14&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.01% |1<br/>0.02/sec<br/>1.00/call<br/>14.29% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;json_build_object($1,&nbsp;version(),&nbsp;$2,&nbsp;current_setting($3),&nbsp;$4,&nbsp;(select&nbsp;regexp_replace(current_setting($5),&nbsp;$6,&nbsp;$7)),&nbsp;$8,&nbsp;(select&nbsp;regexp_replace(current_setting($9),&nbsp;$10,&nbsp;$11)))<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/7.sql)
8 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_503&nbsp;on&nbsp;t_503(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/8.sql)
9 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_red_fk_1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate_series(0,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/9.sql)
10 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |VACUUM&nbsp;(ANALYZE)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/10.sql)
11 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_511&nbsp;on&nbsp;t_511(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/11.sql)
12 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_710&nbsp;on&nbsp;t_710(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/12.sql)
13 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_453&nbsp;on&nbsp;t_453(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/13.sql)
14 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |CREATE&nbsp;TABLE&nbsp;test_schema.order(&nbsp;id&nbsp;serial,	cnt&nbsp;integer,&nbsp;CONSTRAINT&nbsp;ordiadjust_pk&nbsp;PRIMARY&nbsp;KEY&nbsp;(id))<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/14.sql)
15 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;dbname<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/15.sql)
16 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_705&nbsp;on&nbsp;t_705(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/16.sql)
17 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_743&nbsp;on&nbsp;t_743(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/17.sql)
18 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_338&nbsp;on&nbsp;t_338(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/18.sql)
19 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_508&nbsp;on&nbsp;t_508(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/19.sql)
20 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |INSERT&nbsp;INTO&nbsp;test_schema.order(cnt)&nbsp;select&nbsp;id&nbsp;from&nbsp;generate_series($1,&nbsp;$2)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/20.sql)
21 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;checkup_test_db<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/21.sql)
22 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_481&nbsp;on&nbsp;t_481(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/22.sql)
23 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_516&nbsp;on&nbsp;t_516(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/23.sql)
24 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_red_fk_2&nbsp;add&nbsp;constraint&nbsp;fk_red_fk2_t1&nbsp;foreign&nbsp;key&nbsp;(r_t1_id)&nbsp;references&nbsp;t_red_fk_1(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/24.sql)
25 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_504&nbsp;on&nbsp;t_504(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/25.sql)
26 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_red_fk_1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/26.sql)
27 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_482&nbsp;on&nbsp;t_482(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/27.sql)
28 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |update&nbsp;t_with_bloat&nbsp;set&nbsp;i&nbsp;=&nbsp;i<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/28.sql)
29 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_337&nbsp;on&nbsp;t_337(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/29.sql)
30 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_fk_1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/30.sql)
31 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_1&nbsp;on&nbsp;t_1(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/31.sql)
32 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_redundant_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/32.sql)
33 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_221&nbsp;on&nbsp;t_221(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/33.sql)
34 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_365&nbsp;on&nbsp;t_365(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/34.sql)
35 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_353&nbsp;on&nbsp;t_353(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/35.sql)
36 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_900&nbsp;on&nbsp;t_900(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/36.sql)
37 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_56&nbsp;on&nbsp;t_56(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/37.sql)
38 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_bloat&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/38.sql)
39 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_127&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/39.sql)
40 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_483&nbsp;on&nbsp;t_483(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/40.sql)
41 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_slw_q&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate_series(0,&nbsp;10000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/41.sql)
42 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_fk_1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate_series(0,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/42.sql)
43 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_498&nbsp;on&nbsp;t_498(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/43.sql)
44 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_668&nbsp;on&nbsp;t_668(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/44.sql)
45 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_red_fk_2&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;*&nbsp;1000000)::int8&nbsp;as&nbsp;r_t1_id&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/45.sql)
46 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |update&nbsp;t_rar_q&nbsp;set&nbsp;t_dat=$1&nbsp;where&nbsp;t_dat&nbsp;between&nbsp;$2&nbsp;and&nbsp;$3<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/46.sql)
47 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;bloated&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;100000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/47.sql)
48 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;t_rar_q_idx&nbsp;on&nbsp;t_rar_q(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/48.sql)
49 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_207&nbsp;on&nbsp;t_207(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/49.sql)
50 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_518&nbsp;on&nbsp;t_518(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/50.sql)
51 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |delete&nbsp;from&nbsp;bloated&nbsp;where&nbsp;i&nbsp;%&nbsp;$1&nbsp;=&nbsp;$2<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/51.sql)
52 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_368&nbsp;on&nbsp;t_368(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/52.sql)
53 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_506&nbsp;on&nbsp;t_506(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/53.sql)
54 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_220&nbsp;on&nbsp;t_220(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/54.sql)
55 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_491&nbsp;on&nbsp;t_491(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/55.sql)
56 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_899&nbsp;on&nbsp;t_899(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/56.sql)
57 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;count(*)&nbsp;from&nbsp;t_slw_q<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/57.sql)
58 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_779&nbsp;on&nbsp;t_779(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/58.sql)
59 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_fk_2&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;*&nbsp;1000000)::int8&nbsp;as&nbsp;t1_id&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/59.sql)
60 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_676&nbsp;on&nbsp;t_676(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/60.sql)
61 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_351&nbsp;on&nbsp;t_351(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/61.sql)
62 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r_red_fk_1_X_idx&nbsp;on&nbsp;t_red_fk_1(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/62.sql)
63 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_497&nbsp;on&nbsp;t_497(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/63.sql)
64 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_487&nbsp;on&nbsp;t_487(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/64.sql)
65 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_210&nbsp;on&nbsp;t_210(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/65.sql)
66 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_500&nbsp;on&nbsp;t_500(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/66.sql)
67 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_unused_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/67.sql)
68 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_492&nbsp;on&nbsp;t_492(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/68.sql)
69 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_fk_2&nbsp;add&nbsp;constraint&nbsp;fk_t2_t1&nbsp;foreign&nbsp;key&nbsp;(t1_id)&nbsp;references&nbsp;t_fk_1(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/69.sql)
70 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_1&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/70.sql)
71 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_rar_q&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;*&nbsp;1000000)::int8&nbsp;as&nbsp;t_dat&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/71.sql)
72 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;test_schema.t_with_invalid_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/72.sql)
73 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_572&nbsp;on&nbsp;t_572(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/73.sql)
74 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;i_bloated&nbsp;on&nbsp;bloated(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/74.sql)
75 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |VACUUM&nbsp;ANALYZE<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/75.sql)
76 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_449&nbsp;on&nbsp;t_449(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/76.sql)
77 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_redundant_1&nbsp;on&nbsp;t_with_redundant_index(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/77.sql)
78 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_945&nbsp;on&nbsp;t_945(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/78.sql)
79 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_unused&nbsp;on&nbsp;t_with_unused_index(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/79.sql)
80 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_473&nbsp;on&nbsp;t_473(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/80.sql)
81 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r_red_fk_2_fk_idx&nbsp;on&nbsp;t_red_fk_2(r_t1_id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/81.sql)
82 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_505&nbsp;on&nbsp;t_505(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/82.sql)
83 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_208&nbsp;on&nbsp;t_208(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/83.sql)
84 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_335&nbsp;on&nbsp;t_335(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/84.sql)
85 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;system&nbsp;set&nbsp;random_page_cost&nbsp;=&nbsp;2.22<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/85.sql)
86 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_367&nbsp;on&nbsp;t_367(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/86.sql)
87 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_336&nbsp;on&nbsp;t_336(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/87.sql)
88 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r_red_fk_1_id_idx&nbsp;on&nbsp;t_red_fk_1(id)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/88.sql)
89 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_502&nbsp;on&nbsp;t_502(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/89.sql)
90 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_669&nbsp;on&nbsp;t_669(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/90.sql)
91 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_507&nbsp;on&nbsp;t_507(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/91.sql)
92 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_499&nbsp;on&nbsp;t_499(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/92.sql)
93 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_369&nbsp;on&nbsp;t_369(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/93.sql)
94 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_489&nbsp;on&nbsp;t_489(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/94.sql)
95 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_redundant_2&nbsp;on&nbsp;t_with_redundant_index(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/95.sql)
96 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_501&nbsp;on&nbsp;t_501(i)<br/>[full query (50k symbols)](../../json_reports/1_2019_03_11T06_03_40_+0000/K_query_groups/96.sql)





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L001"></a>
[Table of contents](#postgres-checkup_top)
# L001 Table sizes #

## Observations ##
Data collected: 2019-03-11 06:04:52 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
The list is limited to 100 items.  

\# | Table | Rows | &#9660;&nbsp;Total size | Table size | Index(es) Size | TOAST Size
---|---|------|------------|------------|----------------|------------
<no value> | =====TOTAL===== | ~21M | 1108 MB (100.00%) | 831 MB (100.00%) | 277 MB (100.00%) | 56 kB (100.00%)
1 | t_slw_q | ~10M | 346 MB (31.21%) | 346 MB (41.62%) | 0 bytes (0.00%) | <no value>
2 | t_red_fk_1 | ~1M | 99 MB (8.93%) | 35 MB (4.17%) | 64 MB (23.22%) | <no value>
3 | t_rar_q | ~1000k | 93 MB (8.37%) | 50 MB (6.01%) | 43 MB (15.47%) | <no value>
4 | t_with_redundant_index | ~1000k | 78 MB (7.00%) | 35 MB (4.17%) | 43 MB (15.48%) | <no value>
5 | t_with_bloat | ~1000k | 69 MB (6.25%) | 69 MB (8.33%) | 0 bytes (0.00%) | <no value>
6 | t_red_fk_2 | ~1000k | 64 MB (5.75%) | 42 MB (5.09%) | 21 MB (7.74%) | <no value>
7 | t_fk_1 | ~1M | 56 MB (5.06%) | 35 MB (4.17%) | 21 MB (7.74%) | <no value>
8 | t_with_unused_index | ~1000k | 56 MB (5.06%) | 35 MB (4.17%) | 21 MB (7.74%) | <no value>
9 | test_schema.order | ~1M | 56 MB (5.06%) | 35 MB (4.17%) | 21 MB (7.74%) | <no value>
10 | t_fk_2 | ~1000k | 42 MB (3.82%) | 42 MB (5.09%) | 0 bytes (0.00%) | <no value>
11 | test_schema.t_with_invalid_index | ~1000k | 35 MB (3.12%) | 35 MB (4.17%) | 0 bytes (0.00%) | <no value>
12 | bloated | ~50k | 5784 kB (0.51%) | 3576 kB (0.42%) | 2208 kB (0.78%) | <no value>
13 | t_41 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
14 | t_44 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
15 | t_47 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
16 | t_53 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
17 | t_54 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
18 | t_55 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
19 | t_56 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
20 | t_57 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
21 | t_58 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
22 | t_1 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
23 | t_5 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
24 | t_11 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
25 | t_16 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
26 | t_2 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
27 | t_6 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
28 | t_9 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
29 | t_14 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
30 | t_19 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
31 | t_21 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
32 | t_23 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
33 | t_25 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
34 | t_27 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
35 | t_29 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
36 | t_31 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
37 | t_34 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
38 | t_37 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
39 | t_40 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
40 | t_43 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
41 | t_46 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
42 | t_49 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
43 | t_50 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
44 | t_51 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
45 | t_52 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
46 | t_12 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
47 | t_17 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
48 | t_3 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
49 | t_7 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
50 | t_4 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
51 | t_10 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
52 | t_15 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
53 | t_33 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
54 | t_36 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
55 | t_39 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
56 | t_42 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
57 | t_45 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
58 | t_48 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
59 | t_59 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
60 | t_60 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
61 | t_61 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
62 | t_62 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
63 | t_63 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
64 | t_64 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
65 | t_65 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
66 | t_66 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
67 | t_67 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
68 | t_68 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
69 | t_69 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
70 | t_70 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
71 | t_71 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
72 | t_72 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
73 | t_73 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
74 | t_74 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
75 | t_75 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
76 | t_76 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
77 | t_77 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
78 | t_78 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
79 | t_79 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
80 | t_80 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
81 | t_81 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
82 | t_82 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
83 | t_83 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
84 | t_84 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
85 | t_85 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
86 | t_86 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
87 | t_87 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
88 | t_88 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
89 | t_89 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
90 | t_90 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
91 | t_91 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
92 | t_92 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
93 | t_93 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
94 | t_94 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
95 | t_95 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
96 | t_96 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
97 | t_97 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
98 | t_98 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
99 | t_99 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>
100 | t_100 | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L003"></a>
[Table of contents](#postgres-checkup_top)
# L003 Integer (int2, int4) out-of-range risks in PKs #

## Observations ##
Data collected: 2019-03-11 06:04:52 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
Table | PK | Type | Current max value | &#9660;&nbsp;Capacity used, %
------|----|------|-------------------|-------------------------------
test_schema."order" | id | int4 |1,000,001 | 0.05


## Conclusions ##


## Recommendations ##
