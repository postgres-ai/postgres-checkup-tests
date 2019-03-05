# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-03-05 14:27:05 +0000


<a name="postgres-checkup_top"></a>
### Table of contents ###

[PostgreSQL Checkup. Project: 'test'. Database: 'dbname'](#postgres-checkup_Post)  
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
<a name="postgres-checkup_Post"></a>
[Table of contents](#postgres-checkup_top)
# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-03-05 14:27:05 +0000


<a name="postgres-checkup_top"></a>
### Table of contents ###
---
<a name="postgres-checkup_A001"></a>
[Table of contents](#postgres-checkup_top)
# A001 System information #

## Observations ##
Data collected: 2019-03-05 14:26:47 +0000 UTC  





### Master (`runner-72989761-project-9951336-concurrent-0`) ###

**System**

```
Linux runner-72989761-project-9951336-concurrent-0 4.19.23-coreos-r1 #1 SMP Mon Feb 25 23:40:01 -00 2019 x86_64 x86_64 x86_64 GNU/Linux
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
MemFree:          189116 kB
MemAvailable:    2670420 kB
Buffers:           81588 kB
Cached:          2899900 kB
SwapCached:          172 kB
Active:          1339400 kB
Inactive:        2050692 kB
Active(anon):     448828 kB
Inactive(anon):   307464 kB
Active(file):     890572 kB
Inactive(file):  1743228 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2094576 kB
Dirty:             14104 kB
Writeback:             0 kB
AnonPages:        408508 kB
Mapped:           264240 kB
Shmem:            347688 kB
Slab:             130852 kB
SReclaimable:     101348 kB
SUnreclaim:        29504 kB
KernelStack:        2920 kB
PageTables:         7896 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988900 kB
Committed_AS:    1530828 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              452 kB
HardwareCorrupted:     0 kB
AnonHugePages:    129024 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      102388 kB
DirectMap2M:     2781184 kB
DirectMap1G:     1048576 kB
```







## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A002"></a>
[Table of contents](#postgres-checkup_top)
# A002 Version information #

## Observations ##
Data collected: 2019-03-05 14:26:47 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###

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
Data collected: 2019-03-05 14:26:47 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###  
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
Customized Options|[pg_stat_kcache.linux_hz](https://postgresqlco.nf/en/doc/param/pg_stat_kcache.linux_hz) | 500000 |  | 
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
Data collected: 2019-03-05 14:26:51 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###

 Indicator | Value
-----------|-------
Postgres Version | PostgreSQL&nbsp;11.2&nbsp;(Ubuntu&nbsp;11.2-1.pgdg16.04+1)&nbsp;on&nbsp;x86_64-pc-linux-gnu,&nbsp;compiled&nbsp;by&nbsp;gcc&nbsp;(Ubuntu&nbsp;5.4.0-6ubuntu1~16.04.11)&nbsp;5.4.0&nbsp;20160609,&nbsp;64-bit
Config file | /etc/postgresql/11/main/postgresql.conf
Role | Master
Replicas | 
Started At | 2019-03-05&nbsp;14:23:45+00
Uptime | 00:03:06
Checkpoints | 6
Forced Checkpoints | 100.0%
Checkpoint MB/sec | 0.537821
Database Name | dbname
Database Size | 1007&nbsp;MB
Stats Since | 2019-03-05&nbsp;14:23:50+00
Stats Age | 00:03:02
Installed Extensions | pg_stat_kcache&nbsp;2.1.1,&nbsp;pg_stat_statements&nbsp;1.6,&nbsp;plpgsql&nbsp;1.0
Cache Effectiveness | 93.98%
Successful Commits | 99.67%
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
dbname | 0.99&nbsp;GiB
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
Data collected: 2019-03-05 14:26:51 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###
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
Data collected: 2019-03-05 14:26:51 +0000 UTC  

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
Data collected: 2019-03-05 14:26:55 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###
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
Data collected: 2019-03-05 14:26:55 +0000 UTC  

    
### Master (`runner-72989761-project-9951336-concurrent-0`) ###

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
Data collected: 2019-03-05 14:26:56 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###
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
Data collected: 2019-03-05 14:26:56 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###

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
[pg_stat_kcache.linux_hz](https://postgresqlco.nf/en/doc/param/pg_stat_kcache.linux_hz)|500000||integer|-1 |2147483647 


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F001"></a>
[Table of contents](#postgres-checkup_top)
# F001 Autovacuum: Current settings #

## Observations ##
Data collected: 2019-03-05 14:26:57 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###
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
Data collected: 2019-03-05 14:26:57 +0000 UTC  
Current database: dbname  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###

#### Databases ####
 Database | &#9660;&nbsp;Age | Capacity used, % | Warning | datfrozenxid
----------|-----|------------------|---------|--------------
postgres |168 |0 |  |561
dbname |168 |0 |  |561
template1 |168 |0 |  |561
template0 |168 |0 |  |561
checkup_test_db |168 |0 |  |561



#### Tables in the observed database ####
 Relation | Age | &#9660;&nbsp;Capacity used, % | Warning |rel_relfrozenxid | toast_relfrozenxid 
----------|-----|------------------|---------|-----------------|--------------------
test_schema.order |60 |0 |  |669 |0 |
t_rar_q |152 |0 |  |577 |0 |
t_fillfactor |150 |0 |  |579 |0 |
t_with_unused_index |149 |0 |  |580 |0 |
t_with_redundant_index |147 |0 |  |582 |0 |
test_schema.t_with_invalid_index |143 |0 |  |586 |0 |
t_fk_1 |141 |0 |  |588 |0 |
t_fk_2 |139 |0 |  |590 |0 |
bloated |137 |0 |  |592 |0 |
t_red_fk_1 |133 |0 |  |596 |0 |
t_red_fk_2 |129 |0 |  |600 |0 |
t_slw_q |126 |0 |  |603 |0 |
t_with_bloat<sup>*</sup> |134 |0 |  |595 |0 |
pg_catalog.pg_class |168 |0 |  |561 |0 |


<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F003"></a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead tuples #

## Observations ##
Data collected: 2019-03-05 14:26:57 +0000 UTC  
Current database: dbname  
Stats reset: 00:03:00 ago (2019-03-05 14:23:50 +0000 UTC)  
### Master (`runner-72989761-project-9951336-concurrent-0`) ###

 Relation | reltype | Since last autovacuum | Since last vacuum | Autovacuum Count | Vacuum Count | n_tup_ins | n_tup_upd | n_tup_del | pg_class.reltuples | n_live_tup | n_dead_tup | &#9660;Dead Tuples Ratio, %
----------|------|-----------------------|-------------------|----------|---------|-----------|-----------|-----------|--------------------|------------|------------|-----------
t_with_unused_index |r |<no value> |00:01:27.335303 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
t_fk_2 |r |<no value> |00:01:27.082076 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
test_schema.order |r |<no value> |00:01:28.298469 |0 |1 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
t_with_bloat<sup>*</sup> |r |<no value> |00:01:26.296304 |0 |2 |1000000 |1000000 |0 |1000000 |1000000 |0 | 0 
test_schema.t_with_invalid_index |r |<no value> |00:01:27.206829 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
bloated |r |<no value> |00:01:27.010242 |0 |2 |100000 |0 |50000 |50000 |50000 |0 | 0 
t_fk_1 |r |<no value> |00:01:27.145107 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
t_red_fk_1 |r |<no value> |00:01:26.996215 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0 
t_rar_q |r |<no value> |00:01:27.431295 |0 |2 |1000000 |745205 |0 |1000000 |1000000 |0 | 0 
t_slw_q |r |<no value> |00:01:26.871548 |0 |2 |10000001 |0 |0 |9999979 |9999979 |0 | 0 
t_red_fk_2 |r |<no value> |00:01:26.939335 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 
t_with_redundant_index |r |<no value> |00:01:27.269848 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0 

<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F004"></a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-03-05 14:26:57 +0000 UTC  
Current database: dbname  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###


 Table | Size | Extra | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat ratio, % | Live | Last vacuum | Fillfactor
-------|------|-------|------------------------------|------------------|--------------------|------|-------------|------------
===== TOTAL ===== |760.08&nbsp;MiB ||46.69&nbsp;MiB |48,955,392 |6.14|||
t_with_bloat<sup>*</sup> |69.15&nbsp;MiB |~34.71&nbsp;MiB (50.19%)|34.71&nbsp;MiB |36,388,864 | **50.19** |~34.44&nbsp;MiB | 2019-03-05 14:25:31  |100
t_rar_q |49.90&nbsp;MiB |~7.81&nbsp;MiB (15.64%)|7.81&nbsp;MiB |8,183,808 |15.64 |~42.09&nbsp;MiB | 2019-03-05 14:25:30  |100
bloated |3.47&nbsp;MiB |~1.74&nbsp;MiB (50.11%)|1.74&nbsp;MiB |1,818,624 | **50.11** |~1.73&nbsp;MiB | 2019-03-05 14:25:31  |100
t_slw_q |345.69&nbsp;MiB |~1.36&nbsp;MiB (0.39%)|1.36&nbsp;MiB |1,417,216 |0.39 |~344.34&nbsp;MiB | 2019-03-05 14:25:31  |100
t_fk_2 |42.24&nbsp;MiB |~152.00&nbsp;KiB (0.35%)|152.00&nbsp;KiB |155,648 |0.35 |~42.09&nbsp;MiB | 2019-03-05 14:25:31  |100
t_red_fk_2 |42.24&nbsp;MiB |~152.00&nbsp;KiB (0.35%)|152.00&nbsp;KiB |155,648 |0.35 |~42.09&nbsp;MiB | 2019-03-05 14:25:31  |100
test_schema.t_with_invalid_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-05 14:25:30  |100
t_fk_1 |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-05 14:25:31  |100
test_schema.order |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-05 14:25:29  |100
t_red_fk_1 |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-05 14:25:31  |100
t_with_redundant_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-05 14:25:30  |100
t_with_unused_index |34.58&nbsp;MiB |~136.00&nbsp;KiB (0.38%)|136.00&nbsp;KiB |139,264 |0.38 |~34.44&nbsp;MiB | 2019-03-05 14:25:30  |100
 
<sup>*</sup> This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F005"></a>
[Table of contents](#postgres-checkup_top)
# F005 Autovacuum: Index bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-03-05 14:26:57 +0000 UTC  
Current database: dbname  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###
 Index (Table) | &#9660;&nbsp;Size | Extra | Estimated bloat | Est. bloat, bytes | Est. bloat ratio, % | Live | Fill factor
---------------|-------------------|-------|-------|-------------|-------------|------|-------------
===== TOTAL ===== |240.28&nbsp;MiB ||23.66&nbsp;MiB |24,805,376|9.85||
t_rar_q_idx (t_rar_q) |42.86&nbsp;MiB |~23.65&nbsp;MiB (0.00%) |21.50&nbsp;MiB |22,544,384 | **50.16** |~21.36&nbsp;MiB |90
i_redundant_2 (t_with_redundant_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
t_fk_1_pkey (t_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
r_red_fk_2_fk_idx (t_red_fk_2) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
t_red_fk_1_pkey (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
i_unused (t_with_unused_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
ordiadjust_pk (test_schema.order) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
r_red_fk_1_x_idx (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
r_red_fk_1_id_idx (t_red_fk_1) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
i_redundant_1 (t_with_redundant_index) |21.45&nbsp;MiB |~2.24&nbsp;MiB (0.00%) |88.00&nbsp;KiB |90,112 |0.40 |~21.36&nbsp;MiB |90
i_bloated (bloated) |2.16&nbsp;MiB |~1.19&nbsp;MiB (0.00%) |1.08&nbsp;MiB |1,130,496 | **50.00** |~1.08&nbsp;MiB |90
pg_depend_reference_index (pg_catalog.pg_depend) |368.00&nbsp;KiB |~152.00&nbsp;KiB (0.00%) |128.00&nbsp;KiB |131,072 |34.78 |~240.00&nbsp;KiB |90
pg_depend_depender_index (pg_catalog.pg_depend) |336.00&nbsp;KiB |~120.00&nbsp;KiB (0.00%) |96.00&nbsp;KiB |98,304 |28.57 |~240.00&nbsp;KiB |90
pg_proc_proname_args_nsp_index (pg_catalog.pg_proc) |264.00&nbsp;KiB | | | |0.00 |~392.00&nbsp;KiB |90
pg_description_o_c_o_index (pg_catalog.pg_description) |184.00&nbsp;KiB |~40.00&nbsp;KiB (0.00%) |32.00&nbsp;KiB |32,768 |17.39 |~152.00&nbsp;KiB |90
pg_attribute_relid_attnam_index (pg_catalog.pg_attribute) |112.00&nbsp;KiB | | | |0.00 |~264.00&nbsp;KiB |90
pg_attribute_relid_attnum_index (pg_catalog.pg_attribute) |80.00&nbsp;KiB |~16.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |10.00 |~72.00&nbsp;KiB |90
pg_operator_oprname_l_r_n_index (pg_catalog.pg_operator) |48.00&nbsp;KiB | | | |0.00 |~88.00&nbsp;KiB |90
pg_collation_name_enc_nsp_index (pg_catalog.pg_collation) |48.00&nbsp;KiB | | | |0.00 |~72.00&nbsp;KiB |90
pg_class_relname_nsp_index (pg_catalog.pg_class) |48.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) | | |0.00 |~48.00&nbsp;KiB |90
pg_class_tblspc_relfilenode_index (pg_catalog.pg_class) |40.00&nbsp;KiB |~24.00&nbsp;KiB (0.00%) |16.00&nbsp;KiB |16,384 | **40.00** |~24.00&nbsp;KiB |90
pg_amop_opr_fam_index (pg_catalog.pg_amop) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
pg_amop_fam_strat_index (pg_catalog.pg_amop) |40.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |20.00 |~32.00&nbsp;KiB |90
pg_type_typname_nsp_index (pg_catalog.pg_type) |40.00&nbsp;KiB | | | |0.00 |~48.00&nbsp;KiB |90
pg_ts_config_map_index (pg_catalog.pg_ts_config_map) |32.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |25.00 |~24.00&nbsp;KiB |90
pg_amproc_fam_proc_index (pg_catalog.pg_amproc) |32.00&nbsp;KiB |~8.00&nbsp;KiB (0.00%) |8.00&nbsp;KiB |8,192 |25.00 |~24.00&nbsp;KiB |90
pg_trigger_tgconstraint_index (pg_catalog.pg_trigger) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_trigger_tgrelid_tgname_index (pg_catalog.pg_trigger) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_opfamily_am_name_nsp_index (pg_catalog.pg_opfamily) |16.00&nbsp;KiB | | | |0.00 |~24.00&nbsp;KiB |90
pg_db_role_setting_databaseid_rol_index (pg_catalog.pg_db_role_setting) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_extension_name_index (pg_catalog.pg_extension) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_init_privs_o_c_o_index (pg_catalog.pg_init_privs) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_range_rngtypid_index (pg_catalog.pg_range) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_ts_dict_dictname_index (pg_catalog.pg_ts_dict) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_ts_parser_prsname_index (pg_catalog.pg_ts_parser) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_ts_config_cfgname_index (pg_catalog.pg_ts_config) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_ts_template_tmplname_index (pg_catalog.pg_ts_template) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_rewrite_rel_rulename_index (pg_catalog.pg_rewrite) |16.00&nbsp;KiB | | | |0.00 |~24.00&nbsp;KiB |90
pg_tablespace_spcname_index (pg_catalog.pg_tablespace) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_shdepend_depender_index (pg_catalog.pg_shdepend) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_shdepend_reference_index (pg_catalog.pg_shdepend) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_authid_rolname_index (pg_catalog.pg_authid) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_auth_members_member_role_index (pg_catalog.pg_auth_members) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_auth_members_role_member_index (pg_catalog.pg_auth_members) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_database_datname_index (pg_catalog.pg_database) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_sequence_seqrelid_index (pg_catalog.pg_sequence) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_shdescription_o_c_index (pg_catalog.pg_shdescription) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_aggregate_fnoid_index (pg_catalog.pg_aggregate) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_am_name_index (pg_catalog.pg_am) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_attrdef_adrelid_adnum_index (pg_catalog.pg_attrdef) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_cast_source_target_index (pg_catalog.pg_cast) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_constraint_conname_nsp_index (pg_catalog.pg_constraint) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_constraint_conparentid_index (pg_catalog.pg_constraint) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_constraint_conrelid_contypid_conname_index (pg_catalog.pg_constraint) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_constraint_contypid_index (pg_catalog.pg_constraint) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_conversion_default_index (pg_catalog.pg_conversion) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_conversion_name_nsp_index (pg_catalog.pg_conversion) |16.00&nbsp;KiB | | | |0.00 |~24.00&nbsp;KiB |90
pg_index_indexrelid_index (pg_catalog.pg_index) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_index_indrelid_index (pg_catalog.pg_index) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_language_name_index (pg_catalog.pg_language) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_namespace_nspname_index (pg_catalog.pg_namespace) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90
pg_opclass_am_name_nsp_index (pg_catalog.pg_opclass) |16.00&nbsp;KiB | | | |0.00 |~24.00&nbsp;KiB |90
pg_pltemplate_name_index (pg_catalog.pg_pltemplate) |16.00&nbsp;KiB | | | |0.00 |~16.00&nbsp;KiB |90


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F008"></a>
[Table of contents](#postgres-checkup_top)
# F008 Autovacuum: Resource usage #

## Observations ##
Data collected: 2019-03-05 14:26:58 +0000 UTC  
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
Data collected: 2019-03-05 14:26:58 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###

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
Data collected: 2019-03-05 14:26:58 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###
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
Data collected: 2019-03-05 14:26:59 +0000 UTC  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###
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
Database | Conflicts | &#9660;&nbsp;Deadlocks | Stats reset at | Stat reset
-------------|-------|-----------|----------------|------------
postgres|0|0|2019-03-05T14:23:45.973574+00:00|00:03:13
dbname|0|0|2019-03-05T14:23:49.769716+00:00|00:03:09
checkup_test_db|0|0|2019-03-05T14:26:12.632346+00:00|00:00:47


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_H001"></a>
[Table of contents](#postgres-checkup_top)
# H001 Invalid indexes #

## Observations ##
Data collected: 2019-03-05 14:26:59 +0000 UTC  
Current database: dbname  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###


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
Data collected: 2019-03-05 14:26:59 +0000 UTC  
Current database: dbname  
Stats reset: 00:03:00 ago (2019-03-05 14:23:50 +0000 UTC)  
:warning: Statistics age is less than 30 days. Make decisions on index cleanup with caution!
### Never Used Indexes ###
\#| Table | Index | runner-72989761-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Supports FK
--|-------|-------|----|-----|-----|-----
&nbsp;|=====TOTAL=====|||130.83&nbsp;MiB|218.55&nbsp;MiB|
1|t_red_fk_1|r_red_fk_1_x_idx|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
2|t_with_redundant_index|i_redundant_1|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
3|t_red_fk_2|r_red_fk_2_fk_idx|0|21.45&nbsp;MiB|42.24&nbsp;MiB|
4|t_with_redundant_index|i_redundant_2|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
5|t_red_fk_1|r_red_fk_1_id_idx|0|21.45&nbsp;MiB|34.58&nbsp;MiB|Yes
6|t_with_unused_index|i_unused|0|21.45&nbsp;MiB|34.58&nbsp;MiB|
7|bloated|i_bloated|0|2.16&nbsp;MiB|3.47&nbsp;MiB|

### Rarely Used Indexes ###
\#| Table | Index | runner-72989761-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Comment | Supports FK
--|-------|-------|-----|-----|-----|----|-----
&nbsp;|=====TOTAL=====|||42.86&nbsp;MiB|49.90&nbsp;MiB||
1|t_rar_q|t_rar_q_idx|scans: 1\/hour, writes: 1,745,205\/hour|42.86&nbsp;MiB|49.90&nbsp;MiB|Low Scans, High Writes|

### Redundant indexes ###
\#| Table | Index | Redundant to |runner-72989761-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Table size | Supports FK
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
DROP INDEX CONCURRENTLY r_red_fk_1_id_idx; -- 21 MB, Never Used Indexes, r_red_fk_1_x_idx, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_1_x_idx; -- 21 MB, r_red_fk_1_id_idx, Never Used Indexes, table t_red_fk_1
DROP INDEX CONCURRENTLY t_red_fk_1_pkey; -- 21 MB, r_red_fk_1_id_idx, r_red_fk_1_x_idx, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_2_fk_idx; -- 21 MB, Never Used Indexes, table t_red_fk_2
DROP INDEX CONCURRENTLY i_redundant_1; -- 21 MB, Never Used Indexes, i_redundant_2, table t_with_redundant_index
DROP INDEX CONCURRENTLY i_redundant_2; -- 21 MB, Never Used Indexes, i_redundant_1, table t_with_redundant_index
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
Data collected: 2019-03-05 14:26:59 +0000 UTC  
Current database: dbname  

### Master (`runner-72989761-project-9951336-concurrent-0`) ###

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
Data collected: 2019-03-05 14:27:00 +0000 UTC  
Current database: dbname  



### Master (`runner-72989761-project-9951336-concurrent-0`) ###
Start: 2019-03-05T14:26:22.216475+00:00  
End: 2019-03-05T14:27:00.247321+00:00  
Period seconds: 38.03084  
Period age: 00:00:38.030846  

Error (calls): 1.00 (8.33%)  
Error (total time): 30.14 (16.01%)

Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------
12<br/>0.32/sec<br/>1.00/call<br/>100.00% |188.22&nbsp;ms<br/>4ms/sec<br/>15ms/call<br/>100.00% |12<br/>0.32/sec<br/>1.00/call<br/>100.00% |154,439&nbsp;blks<br/>4.07K&nbsp;blks/sec<br/>12.87K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K002"></a>
[Table of contents](#postgres-checkup_top)
# K002 Workload type ("first word" analysis)

## Observations ##
Data collected: 2019-03-05 14:27:00 +0000 UTC  
Current database: dbname  



### Master (`runner-72989761-project-9951336-concurrent-0`) ###
Start: 2019-03-05T14:26:22.216475+00:00  
End: 2019-03-05T14:27:00.247321+00:00  
Period seconds: 38.03084  
Period age: 00:00:38.030846  

Error (calls): 1.00 (8.33%)  
Error (total time): 30.14 (16.01%)

\# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|------- 
1 |with |9<br/>0.24/sec<br/>1.00/call<br/>75.00% |179.89&nbsp;ms<br/>4ms/sec<br/>19ms/call<br/>95.57% |9<br/>0.24/sec<br/>1.00/call<br/>75.00% |154,433&nbsp;blks<br/>4.07K&nbsp;blks/sec<br/>17.16K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
2 |select |3<br/>0.08/sec<br/>1.00/call<br/>25.00% |8.34&nbsp;ms<br/>0s/sec<br/>2ms/call<br/>4.43% |3<br/>0.08/sec<br/>1.00/call<br/>25.00% |6&nbsp;blks<br/>0.16&nbsp;blks/sec<br/>2.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
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
Data collected: 2019-03-05 14:27:00 +0000 UTC  
Current database: dbname  



### Master (`runner-72989761-project-9951336-concurrent-0`) ###
Start: 2019-03-05T14:26:22.216475+00:00  
End: 2019-03-05T14:27:00.247321+00:00  
Period seconds: 38.03084  
Period age: 00:00:38.030846  

Error (calls): 1.00 (8.33%)  
Error (total time): 30.14 (16.01%)

\# | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |Query
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------
1 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |92.56&nbsp;ms<br/>2ms/sec<br/>92ms/call<br/>49.18% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |143,203&nbsp;blks<br/>3.77K&nbsp;blks/sec<br/>143.21K&nbsp;blks/call<br/>92.72% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;with&nbsp;overrided\_tables&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;pc.oid&nbsp;as&nbsp;table\_id,&nbsp;&nbsp;pn.nspname&nbsp;as&nbsp;scheme\_name,&nbsp;&nbsp;pc.relname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;&nbsp;from&nbsp;pg\_class&nbsp;pc&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;&nbsp;),&nbsp;step1&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;i.tblid,&nbsp;&nbsp;i.nspname&nbsp;as&nbsp;schema\_name,&nbsp;&nbsp;i.tblname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;i.idxname&nbsp;as&nbsp;index\_name,&nbsp;&nbsp;i.reltuples,&nbsp;&nbsp;i.relpages,&nbsp;&nbsp;i.relam,&nbsp;&nbsp;a.attrelid&nbsp;AS&nbsp;table\_oid,&nbsp;&nbsp;current\_setting($2)::numeric&nbsp;AS&nbsp;bs,&nbsp;&nbsp;fillfactor,&nbsp;&nbsp;&nbsp;&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$3&nbsp;then&nbsp;$4&nbsp;else&nbsp;$5&nbsp;end&nbsp;as&nbsp;maxalign,&nbsp;&nbsp;/\*&nbsp;per&nbsp;page&nbsp;header,&nbsp;fixed&nbsp;size:&nbsp;20&nbsp;for&nbsp;7.X,&nbsp;24&nbsp;for&nbsp;others&nbsp;\*/&nbsp;&nbsp;$6&nbsp;AS&nbsp;pagehdr,&nbsp;&nbsp;/\*&nbsp;per&nbsp;page&nbsp;btree&nbsp;opaque&nbsp;data&nbsp;\*/&nbsp;&nbsp;$7&nbsp;AS&nbsp;pageopqdata,&nbsp;&nbsp;/\*&nbsp;per&nbsp;tuple&nbsp;header:&nbsp;add&nbsp;IndexAttributeBitMapData&nbsp;if&nbsp;some&nbsp;cols&nbsp;are&nbsp;null\-able&nbsp;\*/&nbsp;&nbsp;case&nbsp;&nbsp;when&nbsp;max(coalesce(s.null\_frac,$8))&nbsp;=&nbsp;$9&nbsp;then&nbsp;$10&nbsp;&nbsp;&nbsp;else&nbsp;$11&nbsp;+&nbsp;((&nbsp;$12&nbsp;+&nbsp;$13&nbsp;\-&nbsp;$14&nbsp;)&nbsp;/&nbsp;$15)&nbsp;&nbsp;&nbsp;end&nbsp;as&nbsp;index\_tuple\_hdr\_bm,&nbsp;&nbsp;/\*&nbsp;data&nbsp;len:&nbsp;we&nbsp;remove&nbsp;null&nbsp;values&nbsp;save&nbsp;space&nbsp;using&nbsp;it&nbsp;fractionnal&nbsp;part&nbsp;from&nbsp;stats&nbsp;\*/&nbsp;&nbsp;sum(($16&nbsp;\-&nbsp;coalesce(s.null\_frac,&nbsp;$17))&nbsp;\*&nbsp;coalesce(s.avg\_width,&nbsp;$18))&nbsp;as&nbsp;nulldatawidth,&nbsp;&nbsp;max(case&nbsp;when&nbsp;a.atttypid&nbsp;=&nbsp;$19::regtype&nbsp;then&nbsp;$20&nbsp;else&nbsp;$21&nbsp;end)&nbsp;>&nbsp;$22&nbsp;as&nbsp;is\_na&nbsp;&nbsp;from&nbsp;pg\_attribute&nbsp;as&nbsp;a&nbsp;&nbsp;join&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;tbl.oid&nbsp;tblid,&nbsp;nspname,&nbsp;tbl.relname&nbsp;AS&nbsp;tblname,&nbsp;idx.relname&nbsp;AS&nbsp;idxname,&nbsp;idx.reltuples,&nbsp;idx.relpages,&nbsp;idx.relam,&nbsp;&nbsp;indrelid,&nbsp;indexrelid,&nbsp;indkey::smallint[]&nbsp;AS&nbsp;attnum,&nbsp;&nbsp;coalesce(substring(array\_to\_string(idx.reloptions,&nbsp;$23)&nbsp;from&nbsp;$24)::smallint,&nbsp;$25)&nbsp;as&nbsp;fillfactor&nbsp;&nbsp;from&nbsp;pg\_index&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;idx&nbsp;on&nbsp;idx.oid&nbsp;=&nbsp;pg\_index.indexrelid&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;tbl&nbsp;on&nbsp;tbl.oid&nbsp;=&nbsp;pg\_index.indrelid&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;on&nbsp;pg\_namespace.oid&nbsp;=&nbsp;idx.relnamespace&nbsp;&nbsp;where&nbsp;pg\_index.indisvalid&nbsp;AND&nbsp;tbl.relkind&nbsp;=&nbsp;$26&nbsp;AND&nbsp;idx.relpages&nbsp;>&nbsp;$27&nbsp;&nbsp;)&nbsp;as&nbsp;i&nbsp;on&nbsp;a.attrelid&nbsp;=&nbsp;i.indexrelid&nbsp;&nbsp;join&nbsp;pg\_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;&nbsp;s.schemaname&nbsp;=&nbsp;i.nspname&nbsp;&nbsp;and&nbsp;(&nbsp;&nbsp;(s.tablename&nbsp;=&nbsp;i.tblname&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;pg\_catalog.pg\_get\_indexdef(a.attrelid,&nbsp;a.attnum,&nbsp;$28))&nbsp;&nbsp;&nbsp;OR&nbsp;(s.tablename&nbsp;=&nbsp;i.idxname&nbsp;AND&nbsp;s.attname&nbsp;=&nbsp;a.attname)&nbsp;&nbsp;&nbsp;)&nbsp;&nbsp;join&nbsp;pg\_type&nbsp;as&nbsp;t&nbsp;on&nbsp;a.atttypid&nbsp;=&nbsp;t.oid&nbsp;&nbsp;where&nbsp;a.attnum&nbsp;>&nbsp;$29&nbsp;&nbsp;group...<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/1.sql)
2 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |27.18&nbsp;ms<br/>0s/sec<br/>27ms/call<br/>14.44% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |24&nbsp;blks<br/>0.63&nbsp;blks/sec<br/>24.00&nbsp;blks/call<br/>0.02% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;s.\*&nbsp;&nbsp;from&nbsp;pg\_stat\_database&nbsp;s&nbsp;&nbsp;where&nbsp;s.datname&nbsp;=&nbsp;current\_database()&nbsp;&nbsp;)&nbsp;&nbsp;select&nbsp;$1&nbsp;as&nbsp;metric,&nbsp;version()&nbsp;as&nbsp;value&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$2&nbsp;as&nbsp;metric,&nbsp;&nbsp;(select&nbsp;setting&nbsp;from&nbsp;pg\_settings&nbsp;where&nbsp;name&nbsp;=&nbsp;$3)&nbsp;as&nbsp;value&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$4&nbsp;as&nbsp;metric,&nbsp;&nbsp;case&nbsp;&nbsp;when&nbsp;pg\_is\_in\_recovery()&nbsp;then&nbsp;$5&nbsp;\|\|&nbsp;$6&nbsp;&nbsp;\|\|&nbsp;((((case&nbsp;&nbsp;when&nbsp;pg\_last\_wal\_receive\_lsn()&nbsp;=&nbsp;pg\_last\_wal\_replay\_lsn()&nbsp;then&nbsp;$7&nbsp;&nbsp;else&nbsp;extract&nbsp;($8&nbsp;from&nbsp;now()&nbsp;\-&nbsp;pg\_last\_xact\_replay\_timestamp())&nbsp;&nbsp;end)::int)::text&nbsp;\|\|&nbsp;$9)::interval)::text&nbsp;&nbsp;\|\|&nbsp;$10&nbsp;\|\|&nbsp;pg\_is\_wal\_replay\_paused()::text&nbsp;\|\|&nbsp;$11&nbsp;&nbsp;else&nbsp;&nbsp;$12&nbsp;&nbsp;end&nbsp;as&nbsp;value&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;(&nbsp;&nbsp;with&nbsp;repl\_groups&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;sync\_state,&nbsp;state,&nbsp;string\_agg(host(client\_addr),&nbsp;$13)&nbsp;as&nbsp;hosts&nbsp;&nbsp;from&nbsp;pg\_stat\_replication&nbsp;&nbsp;group&nbsp;by&nbsp;1,&nbsp;2&nbsp;&nbsp;)&nbsp;&nbsp;select&nbsp;&nbsp;$14,&nbsp;&nbsp;string\_agg(sync\_state&nbsp;\|\|&nbsp;$15&nbsp;\|\|&nbsp;state&nbsp;\|\|&nbsp;$16&nbsp;\|\|&nbsp;hosts,&nbsp;$17)&nbsp;&nbsp;from&nbsp;repl\_groups&nbsp;&nbsp;)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$18,&nbsp;pg\_postmaster\_start\_time()::timestamptz(0)::text&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$19,&nbsp;(now()&nbsp;\-&nbsp;pg\_postmaster\_start\_time())::interval(0)::text&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$20,&nbsp;&nbsp;(select&nbsp;(checkpoints\_timed&nbsp;+&nbsp;checkpoints\_req)::text&nbsp;from&nbsp;pg\_stat\_bgwriter)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$21,&nbsp;&nbsp;(&nbsp;&nbsp;select&nbsp;round($22&nbsp;\*&nbsp;checkpoints\_req::numeric&nbsp;/&nbsp;&nbsp;(nullif(checkpoints\_timed&nbsp;+&nbsp;checkpoints\_req,&nbsp;$23)),&nbsp;$24)::text&nbsp;\|\|&nbsp;$25&nbsp;&nbsp;from&nbsp;pg\_stat\_bgwriter&nbsp;&nbsp;)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;&nbsp;$26,&nbsp;&nbsp;(&nbsp;&nbsp;select&nbsp;round((nullif(buffers\_checkpoint::numeric,&nbsp;$27)&nbsp;/&nbsp;&nbsp;(($28&nbsp;\*&nbsp;$29&nbsp;/&nbsp;&nbsp;(current\_setting($30)::numeric))&nbsp;&nbsp;\*&nbsp;extract($31&nbsp;from&nbsp;now()&nbsp;\-&nbsp;stats\_reset)&nbsp;&nbsp;))::numeric,&nbsp;$32)::text&nbsp;&nbsp;from&nbsp;pg\_stat\_bgwriter&nbsp;&nbsp;)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;repeat($33,&nbsp;$34),&nbsp;repeat($35,&nbsp;$36)&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$37&nbsp;as&nbsp;metric,&nbsp;datname&nbsp;as&nbsp;value&nbsp;from&nbsp;data&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$38,&nbsp;pg\_size\_pretty(pg\_database\_size(current\_database()))&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$39,&nbsp;stats\_reset::timestamptz(0)::text&nbsp;from&nbsp;data&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$40,&nbsp;(now()&nbsp;\-&nbsp;stats\_reset)::interval(0)::text&nbsp;from&nbsp;data&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$41,&nbsp;(&nbsp;&nbsp;with&nbsp;exts&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;extname&nbsp;\|\|&nbsp;$42&nbsp;\|\|&nbsp;extversion&nbsp;e,&nbsp;($43&nbsp;+&nbsp;row\_number()&nbsp;over&nbsp;(order&nbsp;by&nbsp;extname))&nbsp;/&nbsp;$44&nbsp;i&nbsp;from&nbsp;pg\_extension&nbsp;&nbsp;),&nbsp;lines(l)&nbsp;as&nbsp;(&nbsp;&nbsp;select...<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/2.sql)
3 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |18.10&nbsp;ms<br/>0s/sec<br/>18ms/call<br/>9.62% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |5,498&nbsp;blks<br/>144.57&nbsp;blks/sec<br/>5.50K&nbsp;blks/call<br/>3.56% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;with&nbsp;fk\_actions&nbsp;(&nbsp;code,&nbsp;action&nbsp;)&nbsp;as&nbsp;(&nbsp;&nbsp;values&nbsp;($1,&nbsp;$2),&nbsp;&nbsp;($3,&nbsp;$4),&nbsp;&nbsp;($5,&nbsp;$6),&nbsp;&nbsp;($7,&nbsp;$8),&nbsp;&nbsp;($9,&nbsp;$10)&nbsp;&nbsp;),&nbsp;fk\_list&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;pg\_constraint.oid&nbsp;as&nbsp;fkoid,&nbsp;conrelid,&nbsp;confrelid&nbsp;as&nbsp;parentid,&nbsp;&nbsp;conname,&nbsp;&nbsp;relname,&nbsp;&nbsp;nspname,&nbsp;&nbsp;fk\_actions\_update.action&nbsp;as&nbsp;update\_action,&nbsp;&nbsp;fk\_actions\_delete.action&nbsp;as&nbsp;delete\_action,&nbsp;&nbsp;conkey&nbsp;as&nbsp;key\_cols&nbsp;&nbsp;from&nbsp;pg\_constraint&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;pg\_class.oid&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;on&nbsp;pg\_class.relnamespace&nbsp;=&nbsp;pg\_namespace.oid&nbsp;&nbsp;join&nbsp;fk\_actions&nbsp;as&nbsp;fk\_actions\_update&nbsp;on&nbsp;confupdtype&nbsp;=&nbsp;fk\_actions\_update.code&nbsp;&nbsp;join&nbsp;fk\_actions&nbsp;as&nbsp;fk\_actions\_delete&nbsp;on&nbsp;confdeltype&nbsp;=&nbsp;fk\_actions\_delete.code&nbsp;&nbsp;where&nbsp;contype&nbsp;=&nbsp;$11&nbsp;&nbsp;),&nbsp;fk\_attributes&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;fkoid,&nbsp;conrelid,&nbsp;attname,&nbsp;attnum&nbsp;&nbsp;from&nbsp;fk\_list&nbsp;&nbsp;join&nbsp;pg\_attribute&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;attrelid&nbsp;and&nbsp;attnum&nbsp;=&nbsp;any(key\_cols)&nbsp;&nbsp;order&nbsp;by&nbsp;fkoid,&nbsp;attnum&nbsp;&nbsp;),&nbsp;fk\_cols\_list&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;fkoid,&nbsp;array\_agg(attname)&nbsp;as&nbsp;cols\_list&nbsp;&nbsp;from&nbsp;fk\_attributes&nbsp;&nbsp;group&nbsp;by&nbsp;fkoid&nbsp;&nbsp;),&nbsp;index\_list&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;indexrelid&nbsp;as&nbsp;indexid,&nbsp;&nbsp;pg\_class.relname&nbsp;as&nbsp;indexname,&nbsp;&nbsp;indrelid,&nbsp;&nbsp;indkey,&nbsp;&nbsp;indpred&nbsp;is&nbsp;not&nbsp;null&nbsp;as&nbsp;has\_predicate,&nbsp;&nbsp;pg\_get\_indexdef(indexrelid)&nbsp;as&nbsp;indexdef&nbsp;&nbsp;from&nbsp;pg\_index&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;on&nbsp;indexrelid&nbsp;=&nbsp;pg\_class.oid&nbsp;&nbsp;where&nbsp;indisvalid&nbsp;&nbsp;),&nbsp;fk\_index\_match&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;fk\_list.\*,&nbsp;&nbsp;indexid,&nbsp;&nbsp;indexname,&nbsp;&nbsp;indkey::int[]&nbsp;as&nbsp;indexatts,&nbsp;&nbsp;has\_predicate,&nbsp;&nbsp;indexdef,&nbsp;&nbsp;array\_length(key\_cols,&nbsp;$12)&nbsp;as&nbsp;fk\_colcount,&nbsp;&nbsp;array\_length(indkey,$13)&nbsp;as&nbsp;index\_colcount,&nbsp;&nbsp;round(pg\_relation\_size(conrelid)/($14^$15)::numeric)&nbsp;as&nbsp;table\_mb,&nbsp;&nbsp;cols\_list&nbsp;&nbsp;from&nbsp;fk\_list&nbsp;&nbsp;join&nbsp;fk\_cols\_list&nbsp;using&nbsp;(fkoid)&nbsp;&nbsp;left&nbsp;join&nbsp;index\_list&nbsp;on&nbsp;&nbsp;conrelid&nbsp;=&nbsp;indrelid&nbsp;&nbsp;and&nbsp;(indkey::int2[])[$16:(array\_length(key\_cols,$17)&nbsp;\-$18)]&nbsp;operator(pg\_catalog.@>)&nbsp;key\_cols&nbsp;&nbsp;),&nbsp;fk\_perfect\_match&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;fkoid&nbsp;&nbsp;from&nbsp;fk\_index\_match&nbsp;&nbsp;where&nbsp;&nbsp;(index\_colcount&nbsp;\-&nbsp;$19)&nbsp;<=&nbsp;fk\_colcount&nbsp;&nbsp;and&nbsp;not&nbsp;has\_predicate&nbsp;&nbsp;and&nbsp;indexdef&nbsp;like&nbsp;$20&nbsp;&nbsp;),&nbsp;fk\_index\_check&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;$21&nbsp;as&nbsp;issue,&nbsp;\*,&nbsp;$22&nbsp;as&nbsp;issue\_sort&nbsp;&nbsp;from&nbsp;fk\_index\_match&nbsp;&nbsp;where&nbsp;indexid&nbsp;is&nbsp;null&nbsp;&nbsp;union&nbsp;all&nbsp;&nbsp;select&nbsp;$23&nbsp;as&nbsp;issue,&nbsp;\*,&nbsp;$24&nbsp;&nbsp;from&nbsp;fk\_index\_match&nbsp;&nbsp;where&nbsp;&nbsp;indexid&nbsp;i...<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/3.sql)
4 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |13.27&nbsp;ms<br/>0s/sec<br/>13ms/call<br/>7.05% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |16&nbsp;blks<br/>0.42&nbsp;blks/sec<br/>16.00&nbsp;blks/call<br/>0.01% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;timeouts&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(s.name,s&nbsp;)&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;in&nbsp;($1,&nbsp;$2,&nbsp;$3)&nbsp;),&nbsp;locks&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(s.name,s&nbsp;)&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;in&nbsp;($4,&nbsp;$5,&nbsp;$6,&nbsp;$7,&nbsp;$8,&nbsp;$9)&nbsp;),&nbsp;databases\_stat&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;\*,&nbsp;&nbsp;((now()&nbsp;\-&nbsp;sd.stats\_reset)::interval(0)::text)&nbsp;as&nbsp;stats\_reset\_age&nbsp;&nbsp;from&nbsp;pg\_stat\_database&nbsp;sd&nbsp;&nbsp;where&nbsp;datname&nbsp;in&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;WHERE&nbsp;datistemplate&nbsp;=&nbsp;$10)&nbsp;&nbsp;order&nbsp;by&nbsp;deadlocks&nbsp;desc&nbsp;),&nbsp;dbs\_data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(sd.datname,&nbsp;sd)&nbsp;from&nbsp;databases\_stat&nbsp;sd&nbsp;),&nbsp;db\_specified\_settings&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(dbs.database,&nbsp;dbs)&nbsp;from&nbsp;&nbsp;(select&nbsp;&nbsp;(select&nbsp;datname&nbsp;from&nbsp;pg\_database&nbsp;where&nbsp;oid&nbsp;=&nbsp;pd.setdatabase)&nbsp;as&nbsp;database,&nbsp;&nbsp;\*&nbsp;&nbsp;from&nbsp;pg\_db\_role\_setting&nbsp;pd&nbsp;&nbsp;where&nbsp;&nbsp;setconfig::text&nbsp;~&nbsp;$11&nbsp;&nbsp;and&nbsp;setdatabase&nbsp;is&nbsp;not&nbsp;null&nbsp;and&nbsp;setdatabase&nbsp;<>&nbsp;$12)&nbsp;dbs&nbsp;),&nbsp;user\_specified\_settings&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(pr.rolname,&nbsp;pr)&nbsp;from&nbsp;pg\_roles&nbsp;pr&nbsp;where&nbsp;rolconfig::text&nbsp;~&nbsp;$13&nbsp;)&nbsp;select&nbsp;&nbsp;json\_build\_object(&nbsp;&nbsp;$14,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;timeouts),&nbsp;$15,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;locks),&nbsp;&nbsp;$16,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;dbs\_data),&nbsp;&nbsp;$17,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;db\_specified\_settings),&nbsp;&nbsp;$18,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;user\_specified\_settings)&nbsp;&nbsp;)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/4.sql)
5 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |12.32&nbsp;ms<br/>0s/sec<br/>12ms/call<br/>6.54% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |46&nbsp;blks<br/>1.21&nbsp;blks/sec<br/>46.00&nbsp;blks/call<br/>0.03% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;overrided\_tables&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;pc.oid&nbsp;as&nbsp;table\_id,&nbsp;&nbsp;pn.nspname&nbsp;as&nbsp;scheme\_name,&nbsp;&nbsp;pc.relname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;&nbsp;from&nbsp;pg\_class&nbsp;pc&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;),&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;coalesce(nullif(schemaname&nbsp;\|\|&nbsp;$2,&nbsp;$3),&nbsp;$4)&nbsp;\|\|&nbsp;c.relname&nbsp;as&nbsp;"relation",&nbsp;&nbsp;c.relkind,&nbsp;&nbsp;now()&nbsp;\-&nbsp;last\_autovacuum&nbsp;as&nbsp;since\_last\_autovacuum,&nbsp;&nbsp;now()&nbsp;\-&nbsp;last\_vacuum&nbsp;as&nbsp;since\_last\_vacuum,&nbsp;&nbsp;autovacuum\_count&nbsp;as&nbsp;av\_count,&nbsp;&nbsp;vacuum\_count&nbsp;as&nbsp;v\_count,&nbsp;&nbsp;n\_tup\_ins,&nbsp;&nbsp;&nbsp;n\_tup\_upd,&nbsp;&nbsp;&nbsp;n\_tup\_del,&nbsp;&nbsp;reltuples::int8&nbsp;as&nbsp;pg\_class\_reltuples,&nbsp;&nbsp;n\_live\_tup,&nbsp;&nbsp;n\_dead\_tup,&nbsp;&nbsp;round((n\_dead\_tup::numeric&nbsp;\*&nbsp;$5&nbsp;/&nbsp;nullif(n\_dead\_tup&nbsp;+&nbsp;n\_live\_tup,&nbsp;$6))::numeric,&nbsp;$7)&nbsp;as&nbsp;dead\_ratio,&nbsp;&nbsp;case&nbsp;when&nbsp;ot.table\_id&nbsp;is&nbsp;not&nbsp;null&nbsp;then&nbsp;$8&nbsp;else&nbsp;$9&nbsp;end&nbsp;as&nbsp;overrided\_settings&nbsp;&nbsp;from&nbsp;pg\_stat\_all\_tables&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;c&nbsp;on&nbsp;c.oid&nbsp;=&nbsp;relid&nbsp;&nbsp;left&nbsp;join&nbsp;overrided\_tables&nbsp;ot&nbsp;on&nbsp;ot.table\_id&nbsp;=&nbsp;c.oid&nbsp;&nbsp;where&nbsp;reltuples&nbsp;>&nbsp;$10&nbsp;&nbsp;order&nbsp;by&nbsp;13&nbsp;desc&nbsp;limit&nbsp;$11&nbsp;),&nbsp;dead\_tuples&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;json\_object\_agg(data."relation",&nbsp;data)&nbsp;as&nbsp;json&nbsp;from&nbsp;data&nbsp;),&nbsp;database\_stat&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;row\_to\_json(dbstat)&nbsp;&nbsp;from&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;sd.stats\_reset::timestamptz(0),&nbsp;&nbsp;age(&nbsp;&nbsp;date\_trunc($12,now()),&nbsp;&nbsp;date\_trunc($13,sd.stats\_reset)&nbsp;&nbsp;)&nbsp;as&nbsp;stats\_age&nbsp;&nbsp;from&nbsp;pg\_stat\_database&nbsp;sd&nbsp;&nbsp;where&nbsp;datname&nbsp;=&nbsp;current\_database()&nbsp;&nbsp;)&nbsp;dbstat&nbsp;)&nbsp;select&nbsp;&nbsp;json\_build\_object(&nbsp;&nbsp;$14,&nbsp;&nbsp;(select&nbsp;\*&nbsp;from&nbsp;dead\_tuples),&nbsp;&nbsp;$15,&nbsp;&nbsp;(select&nbsp;\*&nbsp;from&nbsp;database\_stat),&nbsp;&nbsp;$16,&nbsp;&nbsp;(select&nbsp;count($17)&nbsp;from&nbsp;data&nbsp;where&nbsp;overrided\_settings&nbsp;=&nbsp;$18)&nbsp;&nbsp;)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/5.sql)
6 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |6.72&nbsp;ms<br/>0s/sec<br/>6ms/call<br/>3.57% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |4,232&nbsp;blks<br/>111.28&nbsp;blks/sec<br/>4.24K&nbsp;blks/call<br/>2.74% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;fk\_indexes&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;schemaname&nbsp;as&nbsp;schema\_name,&nbsp;&nbsp;(indexrelid::regclass)::text&nbsp;as&nbsp;index\_name,&nbsp;&nbsp;(relid::regclass)::text&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;(confrelid::regclass)::text&nbsp;as&nbsp;fk\_table\_ref,&nbsp;&nbsp;array\_to\_string(indclass,&nbsp;$1)&nbsp;as&nbsp;opclasses&nbsp;&nbsp;from&nbsp;&nbsp;pg\_stat\_user\_indexes&nbsp;&nbsp;join&nbsp;pg\_index&nbsp;using&nbsp;(indexrelid)&nbsp;&nbsp;left&nbsp;join&nbsp;pg\_constraint&nbsp;&nbsp;on&nbsp;array\_to\_string(indkey,&nbsp;$2)&nbsp;=&nbsp;array\_to\_string(conkey,&nbsp;$3)&nbsp;&nbsp;and&nbsp;schemaname&nbsp;=&nbsp;(connamespace::regnamespace)::text&nbsp;&nbsp;and&nbsp;conrelid&nbsp;=&nbsp;relid&nbsp;&nbsp;and&nbsp;contype&nbsp;=&nbsp;$4&nbsp;&nbsp;where&nbsp;idx\_scan&nbsp;=&nbsp;$5&nbsp;&nbsp;and&nbsp;indisunique&nbsp;is&nbsp;false&nbsp;&nbsp;and&nbsp;conkey&nbsp;is&nbsp;not&nbsp;null&nbsp;&nbsp;),&nbsp;table\_scans&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;relid,&nbsp;&nbsp;tables.idx\_scan&nbsp;+&nbsp;tables.seq\_scan&nbsp;as&nbsp;all\_scans,&nbsp;&nbsp;(&nbsp;tables.n\_tup\_ins&nbsp;+&nbsp;tables.n\_tup\_upd&nbsp;+&nbsp;tables.n\_tup\_del&nbsp;)&nbsp;as&nbsp;writes,&nbsp;&nbsp;pg\_relation\_size(relid)&nbsp;as&nbsp;table\_size&nbsp;&nbsp;from&nbsp;pg\_stat\_user\_tables&nbsp;as&nbsp;tables&nbsp;),&nbsp;all\_writes&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;sum(writes)&nbsp;as&nbsp;total\_writes&nbsp;&nbsp;from&nbsp;table\_scans&nbsp;),&nbsp;indexes&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;idx\_stat.relid,&nbsp;&nbsp;idx\_stat.indexrelid,&nbsp;&nbsp;idx\_stat.schemaname&nbsp;as&nbsp;schema\_name,&nbsp;&nbsp;idx\_stat.relname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;idx\_stat.indexrelname&nbsp;as&nbsp;index\_name,&nbsp;&nbsp;quote\_ident(idx\_stat.schemaname)&nbsp;as&nbsp;formated\_schema\_name,&nbsp;&nbsp;quote\_ident(idx\_stat.indexrelname)&nbsp;as&nbsp;formated\_index\_name,&nbsp;&nbsp;quote\_ident(idx\_stat.relname)&nbsp;as&nbsp;formated\_table\_name,&nbsp;&nbsp;coalesce(nullif(quote\_ident(idx\_stat.schemaname),&nbsp;$6)&nbsp;\|\|&nbsp;$7,&nbsp;$8)&nbsp;\|\|&nbsp;quote\_ident(idx\_stat.relname)&nbsp;as&nbsp;formated\_relation\_name,&nbsp;&nbsp;idx\_stat.idx\_scan,&nbsp;&nbsp;pg\_relation\_size(idx\_stat.indexrelid)&nbsp;as&nbsp;index\_bytes,&nbsp;&nbsp;indexdef&nbsp;~\*&nbsp;$9&nbsp;as&nbsp;idx\_is\_btree,&nbsp;&nbsp;pg\_get\_indexdef(pg\_index.indexrelid)&nbsp;as&nbsp;index\_def,&nbsp;&nbsp;array\_to\_string(pg\_index.indclass,&nbsp;$10)&nbsp;as&nbsp;opclasses&nbsp;&nbsp;from&nbsp;pg\_stat\_user\_indexes&nbsp;as&nbsp;idx\_stat&nbsp;&nbsp;join&nbsp;pg\_index&nbsp;&nbsp;using&nbsp;(indexrelid)&nbsp;&nbsp;join&nbsp;pg\_indexes&nbsp;as&nbsp;indexes&nbsp;&nbsp;on&nbsp;idx\_stat.schemaname&nbsp;=&nbsp;indexes.schemaname&nbsp;&nbsp;and&nbsp;idx\_stat.relname&nbsp;=&nbsp;indexes.tablename&nbsp;&nbsp;and&nbsp;idx\_stat.indexrelname&nbsp;=&nbsp;indexes.indexname&nbsp;&nbsp;where&nbsp;&nbsp;pg\_index.indisunique&nbsp;=&nbsp;$11&nbsp;&nbsp;and&nbsp;pg\_index.indisvalid&nbsp;=&nbsp;$12&nbsp;),&nbsp;index\_ratios&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;i.indexrelid&nbsp;as&nbsp;index\_id,&nbsp;&nbsp;i.schema\_name,&nbsp;&nbsp;i.table\_name,&nbsp;&nbsp;i.index\_name,&nbsp;&nbsp;idx\_scan,&nbsp;&nbsp;all\_scans,&nbsp;&nbsp;round((&nbsp;case&nbsp;when&nbsp;all\_scans&nbsp;=&nbsp;$13&nbsp;the...<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/6.sql)
7 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |4.47&nbsp;ms<br/>0s/sec<br/>4ms/call<br/>2.37% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |1,398&nbsp;blks<br/>36.76&nbsp;blks/sec<br/>1.40K&nbsp;blks/call<br/>0.91% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;with&nbsp;overrided\_tables&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;pc.oid&nbsp;as&nbsp;table\_id,&nbsp;&nbsp;pn.nspname&nbsp;as&nbsp;scheme\_name,&nbsp;&nbsp;pc.relname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;pc.reloptions&nbsp;as&nbsp;options&nbsp;&nbsp;from&nbsp;pg\_class&nbsp;pc&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace&nbsp;&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$1&nbsp;&nbsp;),&nbsp;step1&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;tbl.oid&nbsp;tblid,&nbsp;&nbsp;ns.nspname&nbsp;as&nbsp;schema\_name,&nbsp;&nbsp;tbl.relname&nbsp;as&nbsp;table\_name,&nbsp;&nbsp;tbl.reltuples,&nbsp;&nbsp;tbl.relpages&nbsp;as&nbsp;heappages,&nbsp;&nbsp;coalesce(toast.relpages,&nbsp;$2)&nbsp;as&nbsp;toastpages,&nbsp;&nbsp;coalesce(toast.reltuples,&nbsp;$3)&nbsp;as&nbsp;toasttuples,&nbsp;&nbsp;coalesce(substring(array\_to\_string(tbl.reloptions,&nbsp;$4)&nbsp;from&nbsp;$5&nbsp;for&nbsp;$6)::int2,&nbsp;$7)&nbsp;as&nbsp;fillfactor,&nbsp;&nbsp;current\_setting($8)::numeric&nbsp;as&nbsp;bs,&nbsp;&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$9&nbsp;then&nbsp;$10&nbsp;else&nbsp;$11&nbsp;end&nbsp;as&nbsp;ma,&nbsp;&nbsp;&nbsp;$12&nbsp;as&nbsp;page\_hdr,&nbsp;&nbsp;$13&nbsp;+&nbsp;case&nbsp;when&nbsp;max(coalesce(null\_frac,&nbsp;$14))&nbsp;>&nbsp;$15&nbsp;then&nbsp;($16&nbsp;+&nbsp;count(\*))&nbsp;/&nbsp;$17&nbsp;else&nbsp;$18::int&nbsp;end&nbsp;&nbsp;+&nbsp;case&nbsp;when&nbsp;tbl.relhasoids&nbsp;then&nbsp;$19&nbsp;else&nbsp;$20&nbsp;end&nbsp;as&nbsp;tpl\_hdr\_size,&nbsp;&nbsp;sum(($21&nbsp;\-&nbsp;coalesce(s.null\_frac,&nbsp;$22))&nbsp;\*&nbsp;coalesce(s.avg\_width,&nbsp;$23))&nbsp;as&nbsp;tpl\_data\_size,&nbsp;&nbsp;bool\_or(att.atttypid&nbsp;=&nbsp;$24::regtype)&nbsp;or&nbsp;count(att.attname)&nbsp;<>&nbsp;count(s.attname)&nbsp;as&nbsp;is\_na&nbsp;&nbsp;from&nbsp;pg\_attribute&nbsp;as&nbsp;att&nbsp;&nbsp;join&nbsp;pg\_class&nbsp;as&nbsp;tbl&nbsp;on&nbsp;att.attrelid&nbsp;=&nbsp;tbl.oid&nbsp;and&nbsp;tbl.relkind&nbsp;=&nbsp;$25&nbsp;&nbsp;join&nbsp;pg\_namespace&nbsp;as&nbsp;ns&nbsp;on&nbsp;ns.oid&nbsp;=&nbsp;tbl.relnamespace&nbsp;&nbsp;join&nbsp;pg\_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;s.schemaname&nbsp;=&nbsp;ns.nspname&nbsp;and&nbsp;s.tablename&nbsp;=&nbsp;tbl.relname&nbsp;and&nbsp;not&nbsp;s.inherited&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;att.attname&nbsp;&nbsp;left&nbsp;join&nbsp;pg\_class&nbsp;as&nbsp;toast&nbsp;on&nbsp;tbl.reltoastrelid&nbsp;=&nbsp;toast.oid&nbsp;&nbsp;where&nbsp;att.attnum&nbsp;>&nbsp;$26&nbsp;and&nbsp;not&nbsp;att.attisdropped&nbsp;and&nbsp;s.schemaname&nbsp;not&nbsp;in&nbsp;($27,&nbsp;$28)&nbsp;&nbsp;group&nbsp;by&nbsp;1,&nbsp;2,&nbsp;3,&nbsp;4,&nbsp;5,&nbsp;6,&nbsp;7,&nbsp;8,&nbsp;9,&nbsp;10,&nbsp;tbl.relhasoids&nbsp;&nbsp;order&nbsp;by&nbsp;2,&nbsp;3&nbsp;&nbsp;),&nbsp;step2&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;\*,&nbsp;&nbsp;(&nbsp;&nbsp;$29&nbsp;+&nbsp;tpl\_hdr\_size&nbsp;+&nbsp;tpl\_data\_size&nbsp;+&nbsp;($30&nbsp;\*&nbsp;ma)&nbsp;&nbsp;\-&nbsp;case&nbsp;when&nbsp;tpl\_hdr\_size&nbsp;%&nbsp;ma&nbsp;=&nbsp;$31&nbsp;then&nbsp;ma&nbsp;else&nbsp;tpl\_hdr\_size&nbsp;%&nbsp;ma&nbsp;end&nbsp;&nbsp;\-&nbsp;case&nbsp;when&nbsp;ceil(tpl\_data\_size)::int&nbsp;%&nbsp;ma&nbsp;=&nbsp;$32&nbsp;then&nbsp;ma&nbsp;else&nbsp;ceil(tpl\_data\_size)::int&nbsp;%&nbsp;ma&nbsp;end&nbsp;&nbsp;)&nbsp;as&nbsp;tpl\_size,&nbsp;&nbsp;bs&nbsp;\-&nbsp;page\_hdr&nbsp;as&nbsp;size\_per\_block,&nbsp;&nbsp;(heappages&nbsp;+&nbsp;toastpages)&nbsp;as&nbsp;tblpages&nbsp;&nbsp;from&nbsp;step1&nbsp;&nbsp;),&nbsp;step3&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;\*,&nbsp;&nbsp;ceil(reltuples&nbsp;/&nbsp;((bs&nbsp;\-&nbsp;page\_hdr)&nbsp;/&nbsp;tpl\_size))&nbsp;+&nbsp;ceil(toasttuples&nbsp;/&nbsp;$33)&nbsp;as&nbsp;est\_tblpages,&nbsp;&nbsp;ceil(r...<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/7.sql)
8 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |4.41&nbsp;ms<br/>0s/sec<br/>4ms/call<br/>2.34% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |3&nbsp;blks<br/>0.08&nbsp;blks/sec<br/>3.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;json\_object\_agg(s.name,&nbsp;s)&nbsp;from&nbsp;(select&nbsp;\*&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;order&nbsp;by&nbsp;category,&nbsp;name)&nbsp;s<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/8.sql)
9 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |3.78&nbsp;ms<br/>0s/sec<br/>3ms/call<br/>2.01% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |3&nbsp;blks<br/>0.08&nbsp;blks/sec<br/>3.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;json\_object\_agg(s.name,&nbsp;s)&nbsp;from&nbsp;(select&nbsp;\*&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;order&nbsp;by&nbsp;name)&nbsp;s<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/9.sql)
10 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |3.07&nbsp;ms<br/>0s/sec<br/>3ms/call<br/>1.63% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |10&nbsp;blks<br/>0.26&nbsp;blks/sec<br/>10.00&nbsp;blks/call<br/>0.01% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;ae.name,&nbsp;&nbsp;installed\_version,&nbsp;&nbsp;default\_version,&nbsp;&nbsp;case&nbsp;when&nbsp;installed\_version&nbsp;<>&nbsp;default\_version&nbsp;then&nbsp;$1&nbsp;end&nbsp;as&nbsp;is\_old&nbsp;&nbsp;from&nbsp;pg\_extension&nbsp;e&nbsp;&nbsp;join&nbsp;pg\_available\_extensions&nbsp;ae&nbsp;on&nbsp;extname&nbsp;=&nbsp;ae.name&nbsp;&nbsp;order&nbsp;by&nbsp;ae.name&nbsp;&nbsp;),&nbsp;withsettins&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;data.\*,&nbsp;&nbsp;(select&nbsp;json\_object\_agg(name,&nbsp;setting)&nbsp;&nbsp;from&nbsp;pg\_settings&nbsp;&nbsp;where&nbsp;name&nbsp;~&nbsp;data.name)&nbsp;as&nbsp;settings&nbsp;from&nbsp;data&nbsp;&nbsp;order&nbsp;by&nbsp;name&nbsp;&nbsp;)&nbsp;&nbsp;select&nbsp;json\_object\_agg(withsettins.name,&nbsp;withsettins)&nbsp;as&nbsp;json&nbsp;from&nbsp;withsettins<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/10.sql)
11 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |2.20&nbsp;ms<br/>0s/sec<br/>2ms/call<br/>1.17% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |6&nbsp;blks<br/>0.16&nbsp;blks/sec<br/>6.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;ae.name,&nbsp;&nbsp;installed\_version,&nbsp;&nbsp;default\_version,&nbsp;&nbsp;case&nbsp;when&nbsp;installed\_version&nbsp;<>&nbsp;default\_version&nbsp;then&nbsp;$1&nbsp;end&nbsp;as&nbsp;is\_old&nbsp;&nbsp;from&nbsp;pg\_extension&nbsp;e&nbsp;&nbsp;join&nbsp;pg\_available\_extensions&nbsp;ae&nbsp;on&nbsp;extname&nbsp;=&nbsp;ae.name&nbsp;&nbsp;order&nbsp;by&nbsp;ae.name&nbsp;&nbsp;),&nbsp;withsettins&nbsp;as&nbsp;(&nbsp;&nbsp;select&nbsp;&nbsp;data.\*,&nbsp;&nbsp;(select&nbsp;json\_object\_agg(name,&nbsp;setting)&nbsp;&nbsp;from&nbsp;pg\_settings&nbsp;&nbsp;where&nbsp;name&nbsp;~&nbsp;data.name)&nbsp;as&nbsp;settings&nbsp;from&nbsp;data&nbsp;&nbsp;order&nbsp;by&nbsp;name&nbsp;&nbsp;)&nbsp;&nbsp;select&nbsp;json\_object\_agg(withsettins.name,&nbsp;withsettins)&nbsp;as&nbsp;json&nbsp;from&nbsp;withsettins<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/11.sql)
12 |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |0.14&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.08% |1<br/>0.03/sec<br/>1.00/call<br/>8.33% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;&nbsp;json\_build\_object($1,&nbsp;version(),&nbsp;&nbsp;$2,&nbsp;current\_setting($3),&nbsp;&nbsp;$4,&nbsp;(select&nbsp;regexp\_replace(current\_setting($5),&nbsp;$6,&nbsp;$7)),&nbsp;&nbsp;$8,&nbsp;(select&nbsp;regexp\_replace(current\_setting($9),&nbsp;$10,&nbsp;$11)))<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/12.sql)
13 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |update&nbsp;t\_with\_bloat&nbsp;set&nbsp;i&nbsp;=&nbsp;i<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/13.sql)
14 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t\_fk\_1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/14.sql)
15 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_with\_redundant\_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(i)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/15.sql)
16 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_with\_bloat&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(i)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/16.sql)
17 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_slw\_q&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate\_series(0,&nbsp;10000000)&nbsp;\_(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/17.sql)
18 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_fk\_1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate\_series(0,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/18.sql)
19 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_red\_fk\_2&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;\*&nbsp;1000000)::int8&nbsp;as&nbsp;r\_t1\_id&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/19.sql)
20 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |update&nbsp;t\_rar\_q&nbsp;set&nbsp;t\_dat=$1&nbsp;where&nbsp;t\_dat&nbsp;between&nbsp;$2&nbsp;and&nbsp;$3<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/20.sql)
21 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;bloated&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;100000)&nbsp;\_(i)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/21.sql)
22 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;t\_rar\_q\_idx&nbsp;on&nbsp;t\_rar\_q(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/22.sql)
23 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |delete&nbsp;from&nbsp;bloated&nbsp;where&nbsp;i&nbsp;%&nbsp;$1&nbsp;=&nbsp;$2<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/23.sql)
24 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_fk\_2&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;\*&nbsp;1000000)::int8&nbsp;as&nbsp;t1\_id&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/24.sql)
25 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r\_red\_fk\_1\_X\_idx&nbsp;on&nbsp;t\_red\_fk\_1(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/25.sql)
26 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_with\_unused\_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(i)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/26.sql)
27 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t\_fk\_2&nbsp;add&nbsp;constraint&nbsp;fk\_t2\_t1&nbsp;foreign&nbsp;key&nbsp;(t1\_id)&nbsp;references&nbsp;t\_fk\_1(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/27.sql)
28 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_rar\_q&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;\*&nbsp;1000000)::int8&nbsp;as&nbsp;t\_dat&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/28.sql)
29 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;test\_schema.t\_with\_invalid\_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;\_(i)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/29.sql)
30 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;i\_bloated&nbsp;on&nbsp;bloated(i)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/30.sql)
31 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |VACUUM&nbsp;ANALYZE<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/31.sql)
32 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_redundant\_1&nbsp;on&nbsp;t\_with\_redundant\_index(i)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/32.sql)
33 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_statements<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/33.sql)
34 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_unused&nbsp;on&nbsp;t\_with\_unused\_index(i)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/34.sql)
35 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r\_red\_fk\_2\_fk\_idx&nbsp;on&nbsp;t\_red\_fk\_2(r\_t1\_id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/35.sql)
36 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;system&nbsp;set&nbsp;random\_page\_cost&nbsp;=&nbsp;2.22<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/36.sql)
37 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;r\_red\_fk\_1\_id\_idx&nbsp;on&nbsp;t\_red\_fk\_1(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/37.sql)
38 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;count(\*)&nbsp;from&nbsp;t\_slw\_q<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/38.sql)
39 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i\_redundant\_2&nbsp;on&nbsp;t\_with\_redundant\_index(i)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/39.sql)
40 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate\_series(0,&nbsp;1000000)&nbsp;\_(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/40.sql)
41 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |VACUUM&nbsp;(ANALYZE)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/41.sql)
42 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |CREATE&nbsp;TABLE&nbsp;test\_schema.order&nbsp;(&nbsp;&nbsp;id&nbsp;serial,&nbsp;	cnt&nbsp;integer,&nbsp;&nbsp;CONSTRAINT&nbsp;ordiadjust\_pk&nbsp;PRIMARY&nbsp;KEY&nbsp;(id)&nbsp;)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/42.sql)
43 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;dbname<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/43.sql)
44 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |INSERT&nbsp;INTO&nbsp;test\_schema.order(cnt)&nbsp;select&nbsp;id&nbsp;from&nbsp;generate\_series($1,&nbsp;$2)&nbsp;\_(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/44.sql)
45 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;checkup\_test\_db<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/45.sql)
46 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t\_red\_fk\_2&nbsp;add&nbsp;constraint&nbsp;fk\_red\_fk2\_t1&nbsp;foreign&nbsp;key&nbsp;(r\_t1\_id)&nbsp;references&nbsp;t\_red\_fk\_1(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/46.sql)
47 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;pg\_reload\_conf()<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/47.sql)
48 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_kcache<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/48.sql)
49 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(id)<br/><br/>[Full query link](../../json_reports/1_2019_03_05T14_26_06_+0000/K_query_groups/49.sql)





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L001"></a>
[Table of contents](#postgres-checkup_top)
# L001 Table sizes #

## Observations ##
Data collected: 2019-03-05 14:27:04 +0000 UTC  
Current database: dbname  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###
Table | Rows | &#9660;&nbsp;Total size | Table size | Index(es) Size | TOAST Size
------|------|------------|------------|----------------|------------
*** TOTAL *** | ~20M | 999 MB (100.00%) | 761 MB (100.00%) | 238 MB (100.00%) | 56 kB (100.00%)
t_slw_q | ~10M | 346 MB (34.63%) | 346 MB (45.46%) | 0 bytes (0.00%) | <no value>
t_red_fk_1 | ~1M | 99 MB (9.91%) | 35 MB (4.55%) | 64 MB (27.03%) | <no value>
t_rar_q | ~1000k | 93 MB (9.29%) | 50 MB (6.56%) | 43 MB (18.01%) | <no value>
t_with_redundant_index | ~1000k | 78 MB (7.76%) | 35 MB (4.55%) | 43 MB (18.02%) | <no value>
t_with_bloat | ~1000k | 69 MB (6.93%) | 69 MB (9.10%) | 0 bytes (0.00%) | <no value>
t_red_fk_2 | ~1000k | 64 MB (6.38%) | 42 MB (5.56%) | 21 MB (9.01%) | <no value>
t_with_unused_index | ~1000k | 56 MB (5.61%) | 35 MB (4.55%) | 21 MB (9.01%) | <no value>
t_fk_1 | ~1M | 56 MB (5.61%) | 35 MB (4.55%) | 21 MB (9.01%) | <no value>
test_schema.order | ~1M | 56 MB (5.61%) | 35 MB (4.55%) | 21 MB (9.01%) | <no value>
t_fk_2 | ~1000k | 42 MB (4.23%) | 42 MB (5.56%) | 0 bytes (0.00%) | <no value>
test_schema.t_with_invalid_index | ~1000k | 35 MB (3.47%) | 35 MB (4.55%) | 0 bytes (0.00%) | <no value>
bloated | ~50k | 5784 kB (0.57%) | 3576 kB (0.46%) | 2208 kB (0.91%) | <no value>
t_fillfactor | ~0 | 0 bytes (0.00%) | 0 bytes (0.00%) | 0 bytes (0.00%) | <no value>


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L003"></a>
[Table of contents](#postgres-checkup_top)
# L003 Integer (int2, int4) out-of-range risks in PKs #

## Observations ##
Data collected: 2019-03-05 14:27:05 +0000 UTC  
Current database: dbname  


### Master (`runner-72989761-project-9951336-concurrent-0`) ###
Table | PK | Type | Current max value | &#9660;&nbsp;Capacity used, %
------|----|------|-------------------|-------------------------------
test_schema."order" | id | int4 |1,000,001 | 0.05


## Conclusions ##


## Recommendations ##
