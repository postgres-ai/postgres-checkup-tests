# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-02-13 15:11:45 +0000


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
[H002 Unused/Rarely Used Indexes](#postgres-checkup_H002)  
[H003 Non indexed foreign keys (or with bad indexes)](#postgres-checkup_H003)  
[K001 Globally aggregated query metrics](#postgres-checkup_K001)  
[K002 Workload type ("first word" analysis)](#postgres-checkup_K002)  
[K003 Top-50 queries by total_time](#postgres-checkup_K003)  
[L001 Table sizes](#postgres-checkup_L001)  

---
<a name="postgres-checkup_A001"></a>
[Table of contents](#postgres-checkup_top)
# A001 System information #

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

**System**

```
Linux runner-ed2dce3a-project-9951336-concurrent-0 4.14.48-coreos-r2 #1 SMP Thu Jun 14 08:23:03 UTC 2018 x86_64 x86_64 x86_64 GNU/Linux
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
Flags:                 fpu vme de pse tsc msr pae mce cx8 apic sep mtrr pge mca cmov pat pse36 clflush mmx fxsr sse sse2 ss ht syscall nx pdpe1gb rdtscp lm constant_tsc rep_good nopl xtopology nonstop_tsc cpuid pni pclmulqdq ssse3 fma cx16 pcid sse4_1 sse4_2 x2apic movbe popcnt aes xsave avx f16c rdrand hypervisor lahf_lm abm invpcid_single pti ssbd ibrs ibpb stibp fsgsbase tsc_adjust bmi1 avx2 smep bmi2 erms invpcid xsaveopt arat arch_capabilities
```


**Memory**

```
MemTotal:        3784708 kB
MemFree:          200816 kB
MemAvailable:    2698836 kB
Buffers:           69968 kB
Cached:          2845388 kB
SwapCached:            4 kB
Active:           996028 kB
Inactive:        2310916 kB
Active(anon):     570892 kB
Inactive(anon):   153264 kB
Active(file):     425136 kB
Inactive(file):  2157652 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2097136 kB
Dirty:             14992 kB
Writeback:             0 kB
AnonPages:        389580 kB
Mapped:           226748 kB
Shmem:            332572 kB
Slab:             233944 kB
SReclaimable:     202664 kB
SUnreclaim:        31280 kB
KernelStack:        2752 kB
PageTables:         6976 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3989500 kB
Committed_AS:    1231284 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
HardwareCorrupted:     0 kB
AnonHugePages:    274432 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
DirectMap4k:      108532 kB
DirectMap2M:     2775040 kB
DirectMap1G:     1048576 kB
```


**Disk**

```
Filesystem     Type     Size  Used Avail Use% Mounted on
overlay        overlay   22G  6.6G   15G  32% /
tmpfs          tmpfs     64M     0   64M   0% /dev
tmpfs          tmpfs    1.9G     0  1.9G   0% /sys/fs/cgroup
/dev/sda9      ext4      22G  6.6G   15G  32% /builds/postgres-ai-team
shm            tmpfs     64M  8.0K   64M   1% /dev/shm
```







## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A002"></a>
[Table of contents](#postgres-checkup_top)
# A002 Version information #

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

```
PostgreSQL 11.1 (Ubuntu 11.1-3.pgdg16.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609, 64-bit
```





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A003"></a>
[Table of contents](#postgres-checkup_top)
# A003 Postgres settings #

## Observations ##


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
Client Connection Defaults / Statement Behavior|[statement_timeout](https://postgresqlco.nf/en/doc/param/statement_timeout) | 0 | ms  | 
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
Preset Options|[server_version](https://postgresqlco.nf/en/doc/param/server_version) | 11.1 (Ubuntu 11.1-3.pgdg16.04+1) |  | 
Preset Options|[server_version_num](https://postgresqlco.nf/en/doc/param/server_version_num) | 110001 |  | 
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
Query Tuning / Planner Cost Constants|[random_page_cost](https://postgresqlco.nf/en/doc/param/random_page_cost) | 4 |  | 
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
Reporting and Logging / When to Log|[client_min_messages](https://postgresqlco.nf/en/doc/param/client_min_messages) | notice |  | 
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


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

 Indicator | Value
-----------|-------
Postgres Version | PostgreSQL&nbsp;11.1&nbsp;(Ubuntu&nbsp;11.1-3.pgdg16.04+1)&nbsp;on&nbsp;x86_64-pc-linux-gnu,&nbsp;compiled&nbsp;by&nbsp;gcc&nbsp;(Ubuntu&nbsp;5.4.0-6ubuntu1~16.04.11)&nbsp;5.4.0&nbsp;20160609,&nbsp;64-bit
Config file | /etc/postgresql/11/main/postgresql.conf
Role | Master
Replicas | 
Started At | 2019-02-13&nbsp;15:09:53+00
Uptime | 00:01:41
Checkpoints | 4
Forced Checkpoints | 100.0%
Checkpoint MB/sec | 0.006588
Database Name | dbname
Database Size | 349&nbsp;MB
Stats Since | 2019-02-13&nbsp;15:09:55+00
Stats Age | 00:01:38
Installed Extensions | pg_stat_kcache&nbsp;2.1.1,&nbsp;pg_stat_statements&nbsp;1.6,&nbsp;plpgsql&nbsp;1.0
Cache Effectiveness | 95.69%
Successful Commits | 99.45%
Conflicts | 0
Temp Files: total size | 158&nbsp;MB
Temp Files: total number of files | 17
Temp Files: avg file size | 9513&nbsp;kB
Deadlocks | 0

#### Databases sizes ####
Database | &#9660;&nbsp;Size
---------|------
dbname | 349.06 MiB
postgres | 7.52 MiB
checkup_test_db | 7.52 MiB
template1 | 7.38 MiB
template0 | 7.38 MiB


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A005"></a>
[Table of contents](#postgres-checkup_top)
# A005 Extensions #

## Observations ##


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


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Source | Settings count | Changed settings
-------|----------------|-----------------
/etc/postgresql/11/main/postgresql.conf | 25 |  DateStyle TimeZone cluster_name default_text_search_config dynamic_shared_memory_type external_pid_file lc_messages lc_monetary lc_numeric lc_time listen_addresses log_filename log_line_prefix log_timezone max_connections max_wal_size min_wal_size port shared_buffers shared_preload_libraries ssl ssl_cert_file ssl_key_file stats_temp_directory unix_socket_directories  
default | 278 | 





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A008"></a>
[Table of contents](#postgres-checkup_top)
# A008 Disk usage and file system type
Output of `df -TPh` (follows symlinks)

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Name | FS Type | Size | Available | Use | Used | Mount Point | Path | Device
-----|---------|------|-----------|-----|------|-------------|------|-------
PGDATA | overlay | 22G | 15G | 6.6G | 32% | / | /var/lib/postgresql/11/main | overlay 
WAL directory | overlay | 22G | 15G | 6.6G | 32% | / | /var/lib/postgresql/11/main/pg_wal | overlay 
stats_temp_directory | overlay | 22G | 15G | 6.6G | 32% | / | /var/run/postgresql/11-main.pg_stat_tmp | overlay 






## Conclusions ##

## Recommendations ##
---
<a name="postgres-checkup_D002"></a>
[Table of contents](#postgres-checkup_top)
# D002 Useful Linux tools
## Observations ##


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
[pg_stat_kcache.linux_hz](https://postgresqlco.nf/en/doc/param/pg_stat_kcache.linux_hz)|500000||integer|-1 |2147483647 


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F001"></a>
[Table of contents](#postgres-checkup_top)
# F001 Autovacuum: Current settings #

## Observations ##


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







## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F002"></a>
[Table of contents](#postgres-checkup_top)
# F002 Autovacuum: Transaction wraparound check #

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

#### Databases ####
 Database | &#9660;&nbsp;Age | Capacity used, % | Warning | datfrozenxid
----------|-----|------------------|---------|--------------
postgres |84 |0 |  |561
dbname |84 |0 |  |561
template1 |84 |0 |  |561
template0 |84 |0 |  |561
checkup_test_db |84 |0 |  |561



#### Tables in the observed database ####
 Relation | Age | &#9660;&nbsp;Capacity used, % | Warning |rel_relfrozenxid | toast_relfrozenxid 
----------|-----|------------------|---------|-----------------|--------------------
t_fillfactor |68 |0 |  |577 |0 |
t_with_unused_index |67 |0 |  |578 |0 |
t_with_redundant_index |65 |0 |  |580 |0 |
t_with_invalid_index |62 |0 |  |583 |0 |
t_fk_1 |60 |0 |  |585 |0 |
t_fk_2 |58 |0 |  |587 |0 |
bloated |56 |0 |  |589 |0 |
t_with_bloat |53 |0 |  |592 |0 |
pg_catalog.pg_class |84 |0 |  |561 |0 |




## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F003"></a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead tuples #

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Stats reset: 00:02:00 ago (2019-02-13 15:09:55 +0000 UTC)  
Report created: 2019-02-13 15:11:39 +0000 UTC  

 Relation | Type | Since last autovacuum | Since last vacuum | Autovacuum Count | Vacuum Count | n_tup_ins | n_tup_upd | n_tup_del | pg_class.reltuples | n_live_tup | n_dead_tup | &#9660;Dead Tuples Ratio, %
----------|------|-----------------------|-------------------|----------|---------|-----------|-----------|-----------|--------------------|------------|------------|-----------
bloated |r |<no value> |00:01:08.592655 |0 |1 |100000 |0 |50000 |50000 |50000 |0 |0
t_with_redundant_index |r |<no value> |00:01:09.263022 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 |0
t_with_bloat |r |<no value> |00:01:08.400774 |0 |1 |1000000 |1000000 |0 |1000000 |1000000 |0 |0
t_with_unused_index |r |<no value> |00:01:09.402232 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 |0
t_fk_1 |r |<no value> |00:01:08.932751 |0 |1 |1000001 |0 |0 |1000001 |1000001 |0 |0
t_fk_2 |r |<no value> |00:01:08.699526 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 |0
t_with_invalid_index |r |<no value> |00:01:09.100324 |0 |1 |1000000 |0 |0 |1000000 |1000000 |0 |0



## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F004"></a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###

 Table | Size | Extra | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat ratio,% | Live | Last vacuum | Fillfactor
-------|------|-------|------------------------------|------------------|--------------------|------|-------------|------------
**Total** | **253.12 MiB** ||**37.12 MiB** |**38,920,192** ||||
t_with_bloat |69.15 MiB |~34.71 MiB (50.19%)|34.71 MiB |36,388,864 |50.19 |~34.44 MiB | 2019-02-13 15:10:31  |100
bloated |3.47 MiB |~1.74 MiB (50.11%)|1.74 MiB |1,818,624 |50.11 |~1.73 MiB | 2019-02-13 15:10:31  |100
t_fk_2 |42.24 MiB |~152.00 KiB (0.35%)|152.00 KiB |155,648 |0.35 |~42.09 MiB | 2019-02-13 15:10:31  |100
t_with_redundant_index |34.58 MiB |~136.00 KiB (0.38%)|136.00 KiB |139,264 |0.38 |~34.44 MiB | 2019-02-13 15:10:30  |100
t_with_unused_index |34.58 MiB |~136.00 KiB (0.38%)|136.00 KiB |139,264 |0.38 |~34.44 MiB | 2019-02-13 15:10:30  |100
t_with_invalid_index |34.58 MiB |~136.00 KiB (0.38%)|136.00 KiB |139,264 |0.38 |~34.44 MiB | 2019-02-13 15:10:31  |100
t_fk_1 |34.58 MiB |~136.00 KiB (0.38%)|136.00 KiB |139,264 |0.38 |~34.44 MiB | 2019-02-13 15:10:31  |100
 

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F005"></a>
[Table of contents](#postgres-checkup_top)
# F005 Autovacuum: Index bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
 Index (Table) | &#9660;&nbsp;Size | Extra | Estimated bloat | Est. bloat, bytes | Est. bloat ratio,% | Live | Fill factor
---------------|-------------------|-------|-------|-------------|-------------|------|-------------
**Total** |**90.16 MiB** ||**1.75 MiB** |**1,835,008**|||
i_redundant_2 (t_with_redundant_index) |21.45 MiB |~2.24 MiB (0.00%) |88.00 KiB |90,112 |0.40 |~21.36 MiB |90
i_unused (t_with_unused_index) |21.45 MiB |~2.24 MiB (0.00%) |88.00 KiB |90,112 |0.40 |~21.36 MiB |90
i_redundant_1 (t_with_redundant_index) |21.45 MiB |~2.24 MiB (0.00%) |88.00 KiB |90,112 |0.40 |~21.36 MiB |90
t_fk_1_pkey (t_fk_1) |21.45 MiB |~2.24 MiB (0.00%) |88.00 KiB |90,112 |0.40 |~21.36 MiB |90
i_bloated (bloated) |2.16 MiB |~1.19 MiB (0.00%) |1.08 MiB |1,130,496 |50.00 |~1.08 MiB |90
pg_depend_reference_index (pg_catalog.pg_depend) |376.00 KiB |~160.00 KiB (0.00%) |136.00 KiB |139,264 |36.17 |~240.00 KiB |90
pg_depend_depender_index (pg_catalog.pg_depend) |336.00 KiB |~120.00 KiB (0.00%) |96.00 KiB |98,304 |28.57 |~240.00 KiB |90
pg_proc_proname_args_nsp_index (pg_catalog.pg_proc) |264.00 KiB | | | | |~392.00 KiB |90
pg_description_o_c_o_index (pg_catalog.pg_description) |184.00 KiB |~40.00 KiB (0.00%) |32.00 KiB |32,768 |17.39 |~152.00 KiB |90
pg_attribute_relid_attnam_index (pg_catalog.pg_attribute) |104.00 KiB | | | | |~248.00 KiB |90
pg_attribute_relid_attnum_index (pg_catalog.pg_attribute) |80.00 KiB |~16.00 KiB (0.00%) |8.00 KiB |8,192 |10.00 |~72.00 KiB |90
pg_class_relname_nsp_index (pg_catalog.pg_class) |48.00 KiB |~8.00 KiB (0.00%) |8.00 KiB |8,192 |16.67 |~40.00 KiB |90
pg_operator_oprname_l_r_n_index (pg_catalog.pg_operator) |48.00 KiB | | | | |~88.00 KiB |90
pg_collation_name_enc_nsp_index (pg_catalog.pg_collation) |48.00 KiB | | | | |~72.00 KiB |90
pg_type_typname_nsp_index (pg_catalog.pg_type) |40.00 KiB | | | | |~48.00 KiB |90
pg_amop_opr_fam_index (pg_catalog.pg_amop) |40.00 KiB |~8.00 KiB (0.00%) |8.00 KiB |8,192 |20.00 |~32.00 KiB |90
pg_amop_fam_strat_index (pg_catalog.pg_amop) |40.00 KiB |~8.00 KiB (0.00%) |8.00 KiB |8,192 |20.00 |~32.00 KiB |90
pg_class_tblspc_relfilenode_index (pg_catalog.pg_class) |40.00 KiB |~24.00 KiB (0.00%) |24.00 KiB |24,576 |60.00 |~16.00 KiB |90
pg_amproc_fam_proc_index (pg_catalog.pg_amproc) |32.00 KiB |~8.00 KiB (0.00%) |8.00 KiB |8,192 |25.00 |~24.00 KiB |90
pg_ts_config_map_index (pg_catalog.pg_ts_config_map) |32.00 KiB |~8.00 KiB (0.00%) |8.00 KiB |8,192 |25.00 |~24.00 KiB |90
pg_opclass_am_name_nsp_index (pg_catalog.pg_opclass) |16.00 KiB | | | | |~24.00 KiB |90
pg_opfamily_am_name_nsp_index (pg_catalog.pg_opfamily) |16.00 KiB | | | | |~24.00 KiB |90
pg_pltemplate_name_index (pg_catalog.pg_pltemplate) |16.00 KiB | | | | |~16.00 KiB |90
pg_range_rngtypid_index (pg_catalog.pg_range) |16.00 KiB | | | | |~16.00 KiB |90
pg_rewrite_rel_rulename_index (pg_catalog.pg_rewrite) |16.00 KiB | | | | |~24.00 KiB |90
pg_shdepend_depender_index (pg_catalog.pg_shdepend) |16.00 KiB | | | | |~16.00 KiB |90
pg_shdepend_reference_index (pg_catalog.pg_shdepend) |16.00 KiB | | | | |~16.00 KiB |90
pg_shdescription_o_c_index (pg_catalog.pg_shdescription) |16.00 KiB | | | | |~16.00 KiB |90
pg_tablespace_spcname_index (pg_catalog.pg_tablespace) |16.00 KiB | | | | |~16.00 KiB |90
pg_trigger_tgconstraint_index (pg_catalog.pg_trigger) |16.00 KiB | | | | |~16.00 KiB |90
pg_trigger_tgrelid_tgname_index (pg_catalog.pg_trigger) |16.00 KiB | | | | |~16.00 KiB |90
pg_ts_config_cfgname_index (pg_catalog.pg_ts_config) |16.00 KiB | | | | |~16.00 KiB |90
pg_ts_dict_dictname_index (pg_catalog.pg_ts_dict) |16.00 KiB | | | | |~16.00 KiB |90
pg_ts_parser_prsname_index (pg_catalog.pg_ts_parser) |16.00 KiB | | | | |~16.00 KiB |90
pg_aggregate_fnoid_index (pg_catalog.pg_aggregate) |16.00 KiB | | | | |~16.00 KiB |90
pg_ts_template_tmplname_index (pg_catalog.pg_ts_template) |16.00 KiB | | | | |~16.00 KiB |90
pg_am_name_index (pg_catalog.pg_am) |16.00 KiB | | | | |~16.00 KiB |90
pg_auth_members_member_role_index (pg_catalog.pg_auth_members) |16.00 KiB | | | | |~16.00 KiB |90
pg_auth_members_role_member_index (pg_catalog.pg_auth_members) |16.00 KiB | | | | |~16.00 KiB |90
pg_authid_rolname_index (pg_catalog.pg_authid) |16.00 KiB | | | | |~16.00 KiB |90
pg_cast_source_target_index (pg_catalog.pg_cast) |16.00 KiB | | | | |~16.00 KiB |90
pg_constraint_conname_nsp_index (pg_catalog.pg_constraint) |16.00 KiB | | | | |~16.00 KiB |90
pg_constraint_conparentid_index (pg_catalog.pg_constraint) |16.00 KiB | | | | |~16.00 KiB |90
pg_constraint_conrelid_contypid_conname_index (pg_catalog.pg_constraint) |16.00 KiB | | | | |~16.00 KiB |90
pg_constraint_contypid_index (pg_catalog.pg_constraint) |16.00 KiB | | | | |~16.00 KiB |90
pg_conversion_default_index (pg_catalog.pg_conversion) |16.00 KiB | | | | |~16.00 KiB |90
pg_conversion_name_nsp_index (pg_catalog.pg_conversion) |16.00 KiB | | | | |~24.00 KiB |90
pg_database_datname_index (pg_catalog.pg_database) |16.00 KiB | | | | |~16.00 KiB |90
pg_db_role_setting_databaseid_rol_index (pg_catalog.pg_db_role_setting) |16.00 KiB | | | | |~16.00 KiB |90
pg_extension_name_index (pg_catalog.pg_extension) |16.00 KiB | | | | |~16.00 KiB |90
pg_index_indexrelid_index (pg_catalog.pg_index) |16.00 KiB | | | | |~16.00 KiB |90
pg_index_indrelid_index (pg_catalog.pg_index) |16.00 KiB | | | | |~16.00 KiB |90
pg_init_privs_o_c_o_index (pg_catalog.pg_init_privs) |16.00 KiB | | | | |~16.00 KiB |90
pg_language_name_index (pg_catalog.pg_language) |16.00 KiB | | | | |~16.00 KiB |90
pg_namespace_nspname_index (pg_catalog.pg_namespace) |16.00 KiB | | | | |~16.00 KiB |90


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F008"></a>
[Table of contents](#postgres-checkup_top)
# F008 Autovacuum: Resource usage #

## Observations ##

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

Max workers memory: 192 MiB


### DISK ###

:warning: Warning: collection of current impact on disks is not yet implemented. Please refer to Postgres logs and see current read and write IO bandwidth caused by autovacuum.

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_G001"></a>
[Table of contents](#postgres-checkup_top)
# G001 Memory-related settings #

## Observations ##


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


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
#### Timeouts ####
Setting name | Value | Unit | Pretty value
-------------|-------|------|--------------
[authentication_timeout](https://postgresqlco.nf/en/doc/param/authentication_timeout)|60|s|
[idle_in_transaction_session_timeout](https://postgresqlco.nf/en/doc/param/idle_in_transaction_session_timeout)|0|ms|
[statement_timeout](https://postgresqlco.nf/en/doc/param/statement_timeout)|0|ms|

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
postgres|0|0|2019-02-13T15:09:53.931889+00:00|00:01:47
dbname|0|0|2019-02-13T15:09:55.379458+00:00|00:01:46
checkup_test_db|0|0|2019-02-13T15:10:57.564076+00:00|00:00:44


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_H001"></a>
[Table of contents](#postgres-checkup_top)
# H001 Invalid indexes #

## Observations ##



### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###


\# | Schema name | Table name | Index name | Index size
----|-------------|------------|------------|------------
1 |public |t_with_invalid_index |i_invalid |0 bytes


## Conclusions ##


## Recommendations ##


#### "DO" database migration code ####
```
-- Call each line separately. "CONCURRENTLY" queries cannot be
-- combined in multi-statement requests.

DROP INDEX CONCURRENTLY i_invalid; -- Invalid index, table t_with_invalid_index
CREATE INDEX CONCURRENTLY i_invalid ON public.t_with_invalid_index USING btree (i); -- table t_with_invalid_index

```
---
<a name="postgres-checkup_H002"></a>
[Table of contents](#postgres-checkup_top)
# H002 Unused/Rarely Used Indexes #

## Observations ##





Stats reset: 00:02:00 ago (2019-02-13 15:09:55 +0000 UTC)  
Report created: 2019-02-13 15:11:41 +0000 UTC  


### Never Used Indexes ###
Index | runner-ed2dce3a-project-9951336-concurrent-0 usage | &#9660;&nbsp;Index size | Usage
--------|-------|-----|-----
i_unused |0|Index&nbsp;size:&nbsp;21&nbsp;MB<br/>Table&nbsp;size:&nbsp;35&nbsp;MB |Not used 
i_redundant_2 |0|Index&nbsp;size:&nbsp;21&nbsp;MB<br/>Table&nbsp;size:&nbsp;35&nbsp;MB |Not used 
i_redundant_1 |0|Index&nbsp;size:&nbsp;21&nbsp;MB<br/>Table&nbsp;size:&nbsp;35&nbsp;MB |Not used 
i_bloated |0|Index&nbsp;size:&nbsp;2208&nbsp;kB<br/>Table&nbsp;size:&nbsp;3544&nbsp;kB |Not used 
i_invalid |0|Index&nbsp;size:&nbsp;0&nbsp;bytes<br/>Table&nbsp;size:&nbsp;35&nbsp;MB |Not used 


### Other unused indexes ###
Index | Reason |runner-ed2dce3a-project-9951336-concurrent-0 | Usage
------|--------|-------|-----

### Redundant indexes ###

Index | runner-ed2dce3a-project-9951336-concurrent-0 usage | Usage | Index size
--------|-------|-----|-----
i_redundant_1 | <no value>| Not used  | 21 MB
i_redundant_2 | <no value>| Not used  | 21 MB






## Conclusions ##


## Recommendations ##

#### "DO" database migration code ####
```
DROP INDEX CONCURRENTLY public.i_bloated; -- 2208 kB, unused (idx_scan: 0), table bloated
DROP INDEX CONCURRENTLY public.i_invalid; -- 0 bytes, unused (idx_scan: 0), table t_with_invalid_index
DROP INDEX CONCURRENTLY i_redundant_1; -- 21 MB, redundant to index: i_redundant_2, table t_with_redundant_index
DROP INDEX CONCURRENTLY i_redundant_1; -- 21 MB, redundant to index: i_redundant_2, table t_with_redundant_index
DROP INDEX CONCURRENTLY public.i_unused; -- 21 MB, unused (idx_scan: 0), table t_with_unused_index

```



#### "UNDO" database migration code ####
```
CREATE INDEX CONCURRENTLY i_bloated ON public.bloated USING btree (i); -- table bloated
CREATE INDEX CONCURRENTLY i_invalid ON public.t_with_invalid_index USING btree (i); -- table t_with_invalid_index
CREATE INDEX CONCURRENTLY i_redundant_1 ON public.t_with_redundant_index USING btree (i); -- table t_with_redundant_index
CREATE INDEX CONCURRENTLY i_redundant_2 ON public.t_with_redundant_index USING btree (i); -- table t_with_redundant_index
CREATE INDEX CONCURRENTLY i_unused ON public.t_with_unused_index USING btree (i); -- table t_with_unused_index

```
---
<a name="postgres-checkup_H003"></a>
[Table of contents](#postgres-checkup_top)
# H003 Non indexed foreign keys (or with bad indexes) #

## Observations ##

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


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Start: 2019-02-13T15:11:07.650789+00:00  
End: 2019-02-13T15:11:43.402162+00:00  
Period seconds: 35.75137  
Period age: 00:00:35.751373  

Error (calls): 3.00 (3.00%)  
Error (total time): 2.30 (1.29%)

Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------
100<br/>2.80/sec<br/>1.00/call<br/>100.00% |178.80&nbsp;ms<br/>5ms/sec<br/>1ms/call<br/>100.00% |46<br/>1.29/sec<br/>0.46/call<br/>100.00% |145,615&nbsp;blks<br/>4.08K&nbsp;blks/sec<br/>1.46K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K002"></a>
[Table of contents](#postgres-checkup_top)
# K002 Workload type ("first word" analysis)

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Start: 2019-02-13T15:11:07.650789+00:00  
End: 2019-02-13T15:11:43.402162+00:00  
Period seconds: 35.75137  
Period age: 00:00:35.751373  

Error (calls): 3.00 (3.00%)  
Error (total time): 2.30 (1.29%)

\# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time 
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|------- 
1 |with |15<br/>0.42/sec<br/>1.00/call<br/>15.00% |168.71&nbsp;ms<br/>4ms/sec<br/>11ms/call<br/>94.36% |15<br/>0.42/sec<br/>1.00/call<br/>32.61% |145,606&nbsp;blks<br/>4.08K&nbsp;blks/sec<br/>9.71K&nbsp;blks/call<br/>99.99% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
2 |select |31<br/>0.87/sec<br/>1.00/call<br/>31.00% |9.78&nbsp;ms<br/>0s/sec<br/>0s/call<br/>5.47% |31<br/>0.87/sec<br/>1.00/call<br/>67.39% |9&nbsp;blks<br/>0.25&nbsp;blks/sec<br/>0.29&nbsp;blks/call<br/>0.01% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
3 |begin |54<br/>1.51/sec<br/>1.00/call<br/>54.00% |0.31&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.17% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
4 |update |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
5 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
6 |grant |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
7 |delete |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
8 |alter |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%
9 |vacuum |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00%





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K003"></a>
[Table of contents](#postgres-checkup_top)
# K003 Top-50 queries by total_time

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Start: 2019-02-13T15:11:07.650789+00:00  
End: 2019-02-13T15:11:43.402162+00:00  
Period seconds: 35.75137  
Period age: 00:00:35.751373  

Error (calls): 3.00 (3.00%)  
Error (total time): 2.30 (1.29%)

\# | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time | Query
----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|------- 
1 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |90.69&nbsp;ms<br/>2ms/sec<br/>90ms/call<br/>50.72% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |138,024&nbsp;blks<br/>3.87K&nbsp;blks/sec<br/>138.03K&nbsp;blks/call<br/>94.79% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;step1&nbsp;as&nbsp;(&nbsp;select&nbsp;i.nspname&nbsp;as&nbsp;schema_name,&nbsp;i.tblname&nbsp;as&nbsp;table_name,&nbsp;i.idxname&nbsp;as&nbsp;index_name,&nbsp;i.reltuples,&nbsp;i.relpages,&nbsp;i.relam,&nbsp;a.attrelid&nbsp;AS&nbsp;table_oid,&nbsp;current_setting($1)::numeric&nbsp;AS&nbsp;bs,&nbsp;fillfactor,&nbsp;&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$2&nbsp;then&nbsp;$3&nbsp;else&nbsp;$4&nbsp;end&nbsp;as&nbsp;maxalign,&nbsp;/*&nbsp;per&nbsp;page&nbsp;header,&nbsp;fixed&nbsp;size:&nbsp;20&nbsp;for&nbsp;7.X,&nbsp;24&nbsp;for&nbsp;others&nbsp;*/&nbsp;$5&nbsp;AS&nbsp;pagehdr,&nbsp;/*&nbsp;per&nbsp;page&nbsp;btree&nbsp;opaque&nbsp;data&nbsp;*/&nbsp;$6&nbsp;AS&nbsp;pageopqdata,&nbsp;/*&nbsp;per&nbsp;tuple&nbsp;header:&nbsp;add&nbsp;IndexAttributeBitMapData&nbsp;if&nbsp;some&nbsp;cols&nbsp;are&nbsp;null-able&nbsp;*/&nbsp;case&nbsp;when&nbsp;max(coalesce(s.null_frac,$7))&nbsp;=&nbsp;$8&nbsp;then&nbsp;$9&nbsp;&nbsp;else&nbsp;$10&nbsp;+&nbsp;((&nbsp;$11&nbsp;+&nbsp;$12&nbsp;-&nbsp;$13&nbsp;)&nbsp;/&nbsp;$14)&nbsp;&nbsp;end&nbsp;as&nbsp;index_tuple_hdr_bm,&nbsp;/*&nbsp;data&nbsp;len:&nbsp;we&nbsp;remove&nbsp;null&nbsp;values&nbsp;save&nbsp;space&nbsp;using&nbsp;it&nbsp;fractionnal&nbsp;part&nbsp;from&nbsp;stats&nbsp;*/&nbsp;sum(($15&nbsp;-&nbsp;coalesce(s.null_frac,&nbsp;$16))&nbsp;*&nbsp;coalesce(s.avg_width,&nbsp;$17))&nbsp;as&nbsp;nulldatawidth,&nbsp;max(case&nbsp;when&nbsp;a.atttypid&nbsp;=&nbsp;$18::regtype&nbsp;then&nbsp;$19&nbsp;else&nbsp;$20&nbsp;end)&nbsp;>&nbsp;$21&nbsp;as&nbsp;is_na&nbsp;from&nbsp;pg_attribute&nbsp;as&nbsp;a&nbsp;join&nbsp;(&nbsp;select&nbsp;nspname,&nbsp;tbl.relname&nbsp;AS&nbsp;tblname,&nbsp;idx.relname&nbsp;AS&nbsp;idxname,&nbsp;idx.reltuples,&nbsp;idx.relpages,&nbsp;idx.relam,&nbsp;indrelid,&nbsp;indexrelid,&nbsp;indkey::smallint[]&nbsp;AS&nbsp;attnum,&nbsp;coalesce(substring(array_to_string(idx.reloptions,&nbsp;$22)&nbsp;from&nbsp;$23)::smallint,&nbsp;$24)&nbsp;as&nbsp;fillfactor&nbsp;from&nbsp;pg_index&nbsp;join&nbsp;pg_class&nbsp;idx&nbsp;on&nbsp;idx.oid&nbsp;=&nbsp;pg_index.indexrelid&nbsp;join&nbsp;pg_class&nbsp;tbl&nbsp;on&nbsp;tbl.oid&nbsp;=&nbsp;pg_index.indrelid&nbsp;join&nbsp;pg_namespace&nbsp;on&nbsp;pg_namespace.oid&nbsp;=&nbsp;idx.relnamespace&nbsp;where&nbsp;pg_index.indisvalid&nbsp;AND&nbsp;tbl.relkind&nbsp;=&nbsp;$25&nbsp;AND&nbsp;idx.relpages&nbsp;>&nbsp;$26&nbsp;)&nbsp;as&nbsp;i&nbsp;on&nbsp;a.attrelid&nbsp;=&nbsp;i.indexrelid&nbsp;join&nbsp;pg_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;s.schemaname&nbsp;=&nbsp;i.nspname&nbsp;and&nbsp;(&nbsp;(s.tablename&nbsp;=&nbsp;i.tblname&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;pg_catalog.pg_get_indexdef(a.attrelid,&nbsp;a.attnum,&nbsp;$27))&nbsp;&nbsp;OR&nbsp;(s.tablename&nbsp;=&nbsp;i.idxname&nbsp;AND&nbsp;s.attname&nbsp;=&nbsp;a.attname)&nbsp;&nbsp;)&nbsp;join&nbsp;pg_type&nbsp;as&nbsp;t&nbsp;on&nbsp;a.atttypid&nbsp;=&nbsp;t.oid&nbsp;where&nbsp;a.attnum&nbsp;>&nbsp;$28&nbsp;group&nbsp;by&nbsp;1,&nbsp;2,&nbsp;3,&nbsp;4,&nbsp;5,&nbsp;6,&nbsp;7,&nbsp;8,&nbsp;9&nbsp;),&nbsp;step2&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;(&nbsp;index_tuple_hdr_bm&nbsp;+&nbsp;maxalign&nbsp;&nbsp;-&nbsp;case&nbsp;when&nbsp;index_tuple_hdr_bm&nbsp;%&nbsp;maxalign&nbsp;=&nbsp;$29&nbsp;THEN&nbsp;maxalign&nbsp;else&nbsp;index_tuple_hdr_bm&nbsp;%&nbsp;maxalign&nbsp;end&nbsp;+&nbsp;nulldatawidth&nbsp;+&nbsp;maxalign&nbsp;&nbsp;-&nbsp;case&nbsp;when&nbsp;nulldatawidth&nbsp;=&nbsp;$30&nbsp;...
2 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |18.18&nbsp;ms<br/>0s/sec<br/>18ms/call<br/>10.17% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |24&nbsp;blks<br/>0.67&nbsp;blks/sec<br/>24.00&nbsp;blks/call<br/>0.02% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;/*For&nbsp;Postgres&nbsp;versions&nbsp;older&nbsp;than&nbsp;10,&nbsp;run&nbsp;this&nbsp;first:&nbsp;\set&nbsp;postgres_dba_last_wal_receive_lsn&nbsp;pg_last_xlog_receive_location&nbsp;\set&nbsp;postgres_dba_last_wal_replay_lsn&nbsp;pg_last_xlog_replay_location&nbsp;\set&nbsp;postgres_dba_is_wal_replay_paused&nbsp;pg_is_xlog_replay_paused*/with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;s.*&nbsp;from&nbsp;pg_stat_database&nbsp;s&nbsp;where&nbsp;s.datname&nbsp;=&nbsp;current_database())select&nbsp;$1&nbsp;as&nbsp;metric,&nbsp;version()&nbsp;as&nbsp;valueunion&nbsp;allselect&nbsp;$2&nbsp;as&nbsp;metric,&nbsp;(select&nbsp;setting&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;=&nbsp;$3)&nbsp;as&nbsp;valueunion&nbsp;allselect&nbsp;$4&nbsp;as&nbsp;metric,&nbsp;case&nbsp;when&nbsp;pg_is_in_recovery()&nbsp;then&nbsp;$5&nbsp;||&nbsp;$6&nbsp;||&nbsp;((((case&nbsp;when&nbsp;pg_last_wal_receive_lsn()&nbsp;=&nbsp;pg_last_wal_replay_lsn()&nbsp;then&nbsp;$7&nbsp;else&nbsp;extract&nbsp;($8&nbsp;from&nbsp;now()&nbsp;-&nbsp;pg_last_xact_replay_timestamp())&nbsp;end)::int)::text&nbsp;||&nbsp;$9)::interval)::text&nbsp;||&nbsp;$10&nbsp;||&nbsp;pg_is_wal_replay_paused()::text&nbsp;||&nbsp;$11&nbsp;else&nbsp;$12&nbsp;end&nbsp;as&nbsp;valueunion&nbsp;all(&nbsp;with&nbsp;repl_groups&nbsp;as&nbsp;(&nbsp;select&nbsp;sync_state,&nbsp;state,&nbsp;string_agg(host(client_addr),&nbsp;$13)&nbsp;as&nbsp;hosts&nbsp;from&nbsp;pg_stat_replication&nbsp;group&nbsp;by&nbsp;1,&nbsp;2&nbsp;)&nbsp;select&nbsp;$14,&nbsp;string_agg(sync_state&nbsp;||&nbsp;$15&nbsp;||&nbsp;state&nbsp;||&nbsp;$16&nbsp;||&nbsp;hosts,&nbsp;$17)&nbsp;from&nbsp;repl_groups)union&nbsp;allselect&nbsp;$18,&nbsp;pg_postmaster_start_time()::timestamptz(0)::textunion&nbsp;allselect&nbsp;$19,&nbsp;(now()&nbsp;-&nbsp;pg_postmaster_start_time())::interval(0)::textunion&nbsp;allselect&nbsp;$20,&nbsp;(select&nbsp;(checkpoints_timed&nbsp;+&nbsp;checkpoints_req)::text&nbsp;from&nbsp;pg_stat_bgwriter)union&nbsp;allselect&nbsp;$21,&nbsp;(&nbsp;select&nbsp;round($22&nbsp;*&nbsp;checkpoints_req::numeric&nbsp;/&nbsp;(nullif(checkpoints_timed&nbsp;+&nbsp;checkpoints_req,&nbsp;$23)),&nbsp;$24)::text&nbsp;||&nbsp;$25&nbsp;from&nbsp;pg_stat_bgwriter&nbsp;)union&nbsp;allselect&nbsp;$26,&nbsp;(&nbsp;select&nbsp;round((nullif(buffers_checkpoint::numeric,&nbsp;$27)&nbsp;/&nbsp;(($28&nbsp;*&nbsp;$29&nbsp;/&nbsp;(current_setting($30)::numeric))&nbsp;*&nbsp;extract($31&nbsp;from&nbsp;now()&nbsp;-&nbsp;stats_reset)&nbsp;))::numeric,&nbsp;$32)::text&nbsp;from&nbsp;pg_stat_bgwriter&nbsp;)union&nbsp;allselect&nbsp;repeat($33,&nbsp;$34),&nbsp;repeat($35,&nbsp;$36)union&nbsp;allselect&nbsp;$37&nbsp;as&nbsp;metric,&nbsp;datname&nbsp;as&nbsp;value&nbsp;from&nbsp;dataunion&nbsp;allselect&nbsp;$38,&nbsp;pg_size_pretty(pg_database_size(current_database()))union&nbsp;allselect&nbsp;$39,&nbsp;stats_reset::timestamptz(0)::text&nbsp;from&nbsp;dataunion&nbsp;allselect...
3 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |15.45&nbsp;ms<br/>0s/sec<br/>15ms/call<br/>8.64% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |806&nbsp;blks<br/>22.54&nbsp;blks/sec<br/>806.00&nbsp;blks/call<br/>0.55% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;indexes&nbsp;as&nbsp;(&nbsp;WITH&nbsp;table_scans&nbsp;as&nbsp;(&nbsp;SELECT&nbsp;relid,&nbsp;tables.idx_scan&nbsp;+&nbsp;tables.seq_scan&nbsp;as&nbsp;all_scans,&nbsp;(&nbsp;tables.n_tup_ins&nbsp;+&nbsp;tables.n_tup_upd&nbsp;+&nbsp;tables.n_tup_del&nbsp;)&nbsp;as&nbsp;writes,&nbsp;pg_relation_size(relid)&nbsp;as&nbsp;table_size&nbsp;FROM&nbsp;pg_stat_user_tables&nbsp;as&nbsp;tables),all_writes&nbsp;as&nbsp;(&nbsp;SELECT&nbsp;sum(writes)&nbsp;as&nbsp;total_writes&nbsp;FROM&nbsp;table_scans),indexes&nbsp;as&nbsp;(&nbsp;SELECT&nbsp;idx_stat.relid,&nbsp;idx_stat.indexrelid,&nbsp;idx_stat.schemaname,&nbsp;idx_stat.relname&nbsp;as&nbsp;tablename,&nbsp;idx_stat.indexrelname&nbsp;as&nbsp;indexname,&nbsp;idx_stat.idx_scan,&nbsp;pg_relation_size(idx_stat.indexrelid)&nbsp;as&nbsp;index_bytes,&nbsp;indexdef&nbsp;~*&nbsp;$1&nbsp;AS&nbsp;idx_is_btree&nbsp;FROM&nbsp;pg_stat_user_indexes&nbsp;as&nbsp;idx_stat&nbsp;JOIN&nbsp;pg_index&nbsp;USING&nbsp;(indexrelid)&nbsp;JOIN&nbsp;pg_indexes&nbsp;as&nbsp;indexes&nbsp;ON&nbsp;idx_stat.schemaname&nbsp;=&nbsp;indexes.schemaname&nbsp;AND&nbsp;idx_stat.relname&nbsp;=&nbsp;indexes.tablename&nbsp;AND&nbsp;idx_stat.indexrelname&nbsp;=&nbsp;indexes.indexname&nbsp;WHERE&nbsp;pg_index.indisunique&nbsp;=&nbsp;$2),index_ratios&nbsp;AS&nbsp;(SELECT&nbsp;schemaname,&nbsp;tablename,&nbsp;indexname,&nbsp;idx_scan,&nbsp;all_scans,&nbsp;round((&nbsp;CASE&nbsp;WHEN&nbsp;all_scans&nbsp;=&nbsp;$3&nbsp;THEN&nbsp;$4::NUMERIC&nbsp;ELSE&nbsp;idx_scan::NUMERIC/all_scans&nbsp;*&nbsp;$5&nbsp;END),$6)&nbsp;as&nbsp;index_scan_pct,&nbsp;writes,&nbsp;round((CASE&nbsp;WHEN&nbsp;writes&nbsp;=&nbsp;$7&nbsp;THEN&nbsp;idx_scan::NUMERIC&nbsp;ELSE&nbsp;idx_scan::NUMERIC/writes&nbsp;END),$8)&nbsp;as&nbsp;scans_per_write,&nbsp;pg_size_pretty(index_bytes)&nbsp;as&nbsp;index_size,&nbsp;pg_size_pretty(table_size)&nbsp;as&nbsp;table_size,&nbsp;idx_is_btree,&nbsp;index_bytes&nbsp;FROM&nbsp;indexes&nbsp;JOIN&nbsp;table_scans&nbsp;USING&nbsp;(relid)),index_groups&nbsp;AS&nbsp;(SELECT&nbsp;$9&nbsp;as&nbsp;reason,&nbsp;*,&nbsp;$10&nbsp;as&nbsp;grpFROM&nbsp;index_ratiosWHERE&nbsp;idx_scan&nbsp;=&nbsp;$11&nbsp;and&nbsp;idx_is_btreeUNION&nbsp;ALLSELECT&nbsp;$12&nbsp;as&nbsp;reason,&nbsp;*,&nbsp;$13&nbsp;as&nbsp;grpFROM&nbsp;index_ratiosWHERE&nbsp;scans_per_write&nbsp;<=&nbsp;$14&nbsp;and&nbsp;index_scan_pct&nbsp;<&nbsp;$15&nbsp;and&nbsp;idx_scan&nbsp;>&nbsp;$16&nbsp;and&nbsp;writes&nbsp;>&nbsp;$17&nbsp;and&nbsp;idx_is_btreeUNION&nbsp;ALLSELECT&nbsp;$18&nbsp;as&nbsp;reason,&nbsp;*,&nbsp;$19&nbsp;as&nbsp;grpFROM&nbsp;index_ratiosWHERE&nbsp;index_scan_pct&nbsp;<&nbsp;$20&nbsp;and&nbsp;scans_per_write&nbsp;>&nbsp;$21&nbsp;and&nbsp;idx_scan&nbsp;>&nbsp;$22&nbsp;and&nbsp;idx_is_btree&nbsp;and&nbsp;index_bytes&nbsp;>&nbsp;$23UNION&nbsp;ALLSELECT&nbsp;$24&nbsp;as&nbsp;reason,&nbsp;index_ratios.*,&nbsp;$25&nbsp;as&nbsp;grpFROM&nbsp;index_ratios,&nbsp;all_writesWHERE&nbsp;(&nbsp;writes::NUMERIC&nbsp;/&nbsp;(&nbsp;total_writes&nbsp;+&nbsp;$26&nbsp;)&nbsp;)&nbsp;>&nbsp;$27&nbsp;AND&nbsp;NOT&nbsp;idx_is_btree&nbsp;AND&nbsp;index_bytes&nbsp;>&nbsp;$28...
4 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |12.45&nbsp;ms<br/>0s/sec<br/>12ms/call<br/>6.96% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |16&nbsp;blks<br/>0.45&nbsp;blks/sec<br/>16.00&nbsp;blks/call<br/>0.01% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;timeouts&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(s.name,s&nbsp;)&nbsp;from&nbsp;pg_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;in&nbsp;($1,&nbsp;$2,&nbsp;$3)),&nbsp;locks&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(s.name,s&nbsp;)&nbsp;from&nbsp;pg_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;in&nbsp;($4,&nbsp;$5,&nbsp;$6,&nbsp;$7,&nbsp;$8,&nbsp;$9)),&nbsp;databases_stat&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;((now()&nbsp;-&nbsp;sd.stats_reset)::interval(0)::text)&nbsp;as&nbsp;stats_reset_age&nbsp;from&nbsp;pg_stat_database&nbsp;sd&nbsp;where&nbsp;datname&nbsp;in&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg_database&nbsp;WHERE&nbsp;datistemplate&nbsp;=&nbsp;$10)&nbsp;order&nbsp;by&nbsp;deadlocks&nbsp;desc),&nbsp;dbs_data&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(sd.datname,&nbsp;sd)&nbsp;from&nbsp;databases_stat&nbsp;sd),&nbsp;db_specified_settings&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(dbs.database,&nbsp;dbs)&nbsp;from&nbsp;(select&nbsp;(select&nbsp;datname&nbsp;from&nbsp;pg_database&nbsp;where&nbsp;oid&nbsp;=&nbsp;pd.setdatabase)&nbsp;as&nbsp;database,&nbsp;*&nbsp;from&nbsp;pg_db_role_setting&nbsp;pd&nbsp;where&nbsp;setconfig::text&nbsp;~&nbsp;$11&nbsp;and&nbsp;setdatabase&nbsp;is&nbsp;not&nbsp;null&nbsp;and&nbsp;setdatabase&nbsp;<>&nbsp;$12)&nbsp;dbs),&nbsp;user_specified_settings&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(pr.rolname,&nbsp;pr)&nbsp;from&nbsp;pg_roles&nbsp;pr&nbsp;where&nbsp;rolconfig::text&nbsp;~&nbsp;$13)select&nbsp;json_build_object(&nbsp;$14,&nbsp;(select&nbsp;*&nbsp;from&nbsp;timeouts),&nbsp;$15,&nbsp;(select&nbsp;*&nbsp;from&nbsp;locks),&nbsp;$16,&nbsp;(select&nbsp;*&nbsp;from&nbsp;dbs_data),&nbsp;$17,&nbsp;(select&nbsp;*&nbsp;from&nbsp;db_specified_settings),&nbsp;$18,&nbsp;(select&nbsp;*&nbsp;from&nbsp;user_specified_settings)&nbsp;)
5 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |11.51&nbsp;ms<br/>0s/sec<br/>11ms/call<br/>6.44% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |33&nbsp;blks<br/>0.92&nbsp;blks/sec<br/>33.00&nbsp;blks/call<br/>0.02% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;coalesce(nullif(schemaname&nbsp;||&nbsp;$1,&nbsp;$2),&nbsp;$3)&nbsp;||&nbsp;c.relname&nbsp;as&nbsp;"relation",&nbsp;c.relkind,&nbsp;now()&nbsp;-&nbsp;last_autovacuum&nbsp;as&nbsp;since_last_autovacuum,&nbsp;now()&nbsp;-&nbsp;last_vacuum&nbsp;as&nbsp;since_last_vacuum,&nbsp;autovacuum_count&nbsp;as&nbsp;av_count,&nbsp;vacuum_count&nbsp;as&nbsp;v_count,&nbsp;n_tup_ins,&nbsp;&nbsp;n_tup_upd,&nbsp;&nbsp;n_tup_del,&nbsp;reltuples::int8&nbsp;as&nbsp;pg_class_reltuples,&nbsp;n_live_tup,&nbsp;n_dead_tup,&nbsp;round((n_dead_tup::numeric&nbsp;*&nbsp;$4&nbsp;/&nbsp;nullif(n_dead_tup&nbsp;+&nbsp;n_live_tup,&nbsp;$5))::numeric,&nbsp;$6)&nbsp;as&nbsp;dead_ratio&nbsp;from&nbsp;pg_stat_all_tables&nbsp;join&nbsp;pg_class&nbsp;c&nbsp;on&nbsp;c.oid&nbsp;=&nbsp;relid&nbsp;where&nbsp;reltuples&nbsp;>&nbsp;$7&nbsp;order&nbsp;by&nbsp;13&nbsp;desc&nbsp;limit&nbsp;$8),&nbsp;dead_tuples&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(data."relation",&nbsp;data)&nbsp;as&nbsp;json&nbsp;from&nbsp;data),&nbsp;database_stat&nbsp;as&nbsp;(&nbsp;select&nbsp;row_to_json(dbstat)&nbsp;from&nbsp;(&nbsp;select&nbsp;sd.stats_reset::timestamptz(0),&nbsp;age(&nbsp;date_trunc($9,now()),&nbsp;date_trunc($10,sd.stats_reset)&nbsp;)&nbsp;as&nbsp;stats_age&nbsp;from&nbsp;pg_stat_database&nbsp;sd&nbsp;where&nbsp;datname&nbsp;=&nbsp;current_database()&nbsp;)&nbsp;dbstat)select&nbsp;json_build_object(&nbsp;$11,&nbsp;(select&nbsp;*&nbsp;from&nbsp;dead_tuples),&nbsp;$12,&nbsp;(select&nbsp;*&nbsp;from&nbsp;database_stat)&nbsp;)
6 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |6.48&nbsp;ms<br/>0s/sec<br/>6ms/call<br/>3.62% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |5,305&nbsp;blks<br/>148.39&nbsp;blks/sec<br/>5.31K&nbsp;blks/call<br/>3.64% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;fk_actions&nbsp;(&nbsp;code,&nbsp;action&nbsp;)&nbsp;as&nbsp;(&nbsp;values&nbsp;($1,&nbsp;$2),&nbsp;($3,&nbsp;$4),&nbsp;($5,&nbsp;$6),&nbsp;($7,&nbsp;$8),&nbsp;($9,&nbsp;$10)),&nbsp;fk_list&nbsp;as&nbsp;(&nbsp;select&nbsp;pg_constraint.oid&nbsp;as&nbsp;fkoid,&nbsp;conrelid,&nbsp;confrelid&nbsp;as&nbsp;parentid,&nbsp;conname,&nbsp;relname,&nbsp;nspname,&nbsp;fk_actions_update.action&nbsp;as&nbsp;update_action,&nbsp;fk_actions_delete.action&nbsp;as&nbsp;delete_action,&nbsp;conkey&nbsp;as&nbsp;key_cols&nbsp;from&nbsp;pg_constraint&nbsp;join&nbsp;pg_class&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;pg_class.oid&nbsp;join&nbsp;pg_namespace&nbsp;on&nbsp;pg_class.relnamespace&nbsp;=&nbsp;pg_namespace.oid&nbsp;join&nbsp;fk_actions&nbsp;as&nbsp;fk_actions_update&nbsp;on&nbsp;confupdtype&nbsp;=&nbsp;fk_actions_update.code&nbsp;join&nbsp;fk_actions&nbsp;as&nbsp;fk_actions_delete&nbsp;on&nbsp;confdeltype&nbsp;=&nbsp;fk_actions_delete.code&nbsp;where&nbsp;contype&nbsp;=&nbsp;$11),&nbsp;fk_attributes&nbsp;as&nbsp;(&nbsp;select&nbsp;fkoid,&nbsp;conrelid,&nbsp;attname,&nbsp;attnum&nbsp;from&nbsp;fk_list&nbsp;join&nbsp;pg_attribute&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;attrelid&nbsp;and&nbsp;attnum&nbsp;=&nbsp;any(key_cols)&nbsp;order&nbsp;by&nbsp;fkoid,&nbsp;attnum),&nbsp;fk_cols_list&nbsp;as&nbsp;(&nbsp;select&nbsp;fkoid,&nbsp;array_agg(attname)&nbsp;as&nbsp;cols_list&nbsp;from&nbsp;fk_attributes&nbsp;group&nbsp;by&nbsp;fkoid),&nbsp;index_list&nbsp;as&nbsp;(&nbsp;select&nbsp;indexrelid&nbsp;as&nbsp;indexid,&nbsp;pg_class.relname&nbsp;as&nbsp;indexname,&nbsp;indrelid,&nbsp;indkey,&nbsp;indpred&nbsp;is&nbsp;not&nbsp;null&nbsp;as&nbsp;has_predicate,&nbsp;pg_get_indexdef(indexrelid)&nbsp;as&nbsp;indexdef&nbsp;from&nbsp;pg_index&nbsp;join&nbsp;pg_class&nbsp;on&nbsp;indexrelid&nbsp;=&nbsp;pg_class.oid&nbsp;where&nbsp;indisvalid),&nbsp;fk_index_match&nbsp;as&nbsp;(&nbsp;select&nbsp;fk_list.*,&nbsp;indexid,&nbsp;indexname,&nbsp;indkey::int[]&nbsp;as&nbsp;indexatts,&nbsp;has_predicate,&nbsp;indexdef,&nbsp;array_length(key_cols,&nbsp;$12)&nbsp;as&nbsp;fk_colcount,&nbsp;array_length(indkey,$13)&nbsp;as&nbsp;index_colcount,&nbsp;round(pg_relation_size(conrelid)/($14^$15)::numeric)&nbsp;as&nbsp;table_mb,&nbsp;cols_list&nbsp;from&nbsp;fk_list&nbsp;join&nbsp;fk_cols_list&nbsp;using&nbsp;(fkoid)&nbsp;left&nbsp;join&nbsp;index_list&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;indrelid&nbsp;and&nbsp;(indkey::int2[])[$16:(array_length(key_cols,$17)&nbsp;-$18)]&nbsp;operator(pg_catalog.@>)&nbsp;key_cols),&nbsp;fk_perfect_match&nbsp;as&nbsp;(&nbsp;select&nbsp;fkoid&nbsp;from&nbsp;fk_index_match&nbsp;where&nbsp;(index_colcount&nbsp;-&nbsp;$19)&nbsp;<=&nbsp;fk_colcount&nbsp;and&nbsp;not&nbsp;has_predicate&nbsp;and&nbsp;indexdef&nbsp;like&nbsp;$20),&nbsp;fk_index_check&nbsp;as&nbsp;(&nbsp;select&nbsp;$21&nbsp;as&nbsp;issue,&nbsp;*,&nbsp;$22&nbsp;as&nbsp;issue_sort&nbsp;from&nbsp;fk_index_match&nbsp;where&nbsp;indexid&nbsp;is&nbsp;null&nbsp;union&nbsp;all&nbsp;select&nbsp;$23&nbsp;as&nbsp;issue,&nbsp;*,&nbsp;$24&nbsp;from&nbsp;fk_index_match&nbsp;where&nbsp;indexid&nbsp;is&nbsp;...
7 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |3.61&nbsp;ms<br/>0s/sec<br/>3ms/call<br/>2.02% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |3&nbsp;blks<br/>0.08&nbsp;blks/sec<br/>3.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;json_object_agg(s.name,&nbsp;s)&nbsp;from&nbsp;(select&nbsp;*&nbsp;from&nbsp;pg_settings&nbsp;s&nbsp;order&nbsp;by&nbsp;name)&nbsp;s
8 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |3.50&nbsp;ms<br/>0s/sec<br/>3ms/call<br/>1.96% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |3&nbsp;blks<br/>0.08&nbsp;blks/sec<br/>3.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;json_object_agg(s.name,&nbsp;s)&nbsp;from&nbsp;(select&nbsp;*&nbsp;from&nbsp;pg_settings&nbsp;s&nbsp;order&nbsp;by&nbsp;category,&nbsp;name)&nbsp;s
9 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |3.07&nbsp;ms<br/>0s/sec<br/>3ms/call<br/>1.72% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |1,225&nbsp;blks<br/>34.26&nbsp;blks/sec<br/>1.23K&nbsp;blks/call<br/>0.84% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;with&nbsp;step1&nbsp;as&nbsp;(&nbsp;select&nbsp;tbl.oid&nbsp;tblid,&nbsp;ns.nspname&nbsp;as&nbsp;schema_name,&nbsp;tbl.relname&nbsp;as&nbsp;table_name,&nbsp;tbl.reltuples,&nbsp;tbl.relpages&nbsp;as&nbsp;heappages,&nbsp;coalesce(toast.relpages,&nbsp;$1)&nbsp;as&nbsp;toastpages,&nbsp;coalesce(toast.reltuples,&nbsp;$2)&nbsp;as&nbsp;toasttuples,&nbsp;coalesce(substring(array_to_string(tbl.reloptions,&nbsp;$3)&nbsp;from&nbsp;$4&nbsp;for&nbsp;$5)::int2,&nbsp;$6)&nbsp;as&nbsp;fillfactor,&nbsp;current_setting($7)::numeric&nbsp;as&nbsp;bs,&nbsp;case&nbsp;when&nbsp;version()&nbsp;~&nbsp;$8&nbsp;then&nbsp;$9&nbsp;else&nbsp;$10&nbsp;end&nbsp;as&nbsp;ma,&nbsp;&nbsp;$11&nbsp;as&nbsp;page_hdr,&nbsp;$12&nbsp;+&nbsp;case&nbsp;when&nbsp;max(coalesce(null_frac,&nbsp;$13))&nbsp;>&nbsp;$14&nbsp;then&nbsp;($15&nbsp;+&nbsp;count(*))&nbsp;/&nbsp;$16&nbsp;else&nbsp;$17::int&nbsp;end&nbsp;+&nbsp;case&nbsp;when&nbsp;tbl.relhasoids&nbsp;then&nbsp;$18&nbsp;else&nbsp;$19&nbsp;end&nbsp;as&nbsp;tpl_hdr_size,&nbsp;sum(($20&nbsp;-&nbsp;coalesce(s.null_frac,&nbsp;$21))&nbsp;*&nbsp;coalesce(s.avg_width,&nbsp;$22))&nbsp;as&nbsp;tpl_data_size,&nbsp;bool_or(att.atttypid&nbsp;=&nbsp;$23::regtype)&nbsp;or&nbsp;count(att.attname)&nbsp;<>&nbsp;count(s.attname)&nbsp;as&nbsp;is_na&nbsp;from&nbsp;pg_attribute&nbsp;as&nbsp;att&nbsp;join&nbsp;pg_class&nbsp;as&nbsp;tbl&nbsp;on&nbsp;att.attrelid&nbsp;=&nbsp;tbl.oid&nbsp;and&nbsp;tbl.relkind&nbsp;=&nbsp;$24&nbsp;join&nbsp;pg_namespace&nbsp;as&nbsp;ns&nbsp;on&nbsp;ns.oid&nbsp;=&nbsp;tbl.relnamespace&nbsp;join&nbsp;pg_stats&nbsp;as&nbsp;s&nbsp;on&nbsp;s.schemaname&nbsp;=&nbsp;ns.nspname&nbsp;and&nbsp;s.tablename&nbsp;=&nbsp;tbl.relname&nbsp;and&nbsp;not&nbsp;s.inherited&nbsp;and&nbsp;s.attname&nbsp;=&nbsp;att.attname&nbsp;left&nbsp;join&nbsp;pg_class&nbsp;as&nbsp;toast&nbsp;on&nbsp;tbl.reltoastrelid&nbsp;=&nbsp;toast.oid&nbsp;where&nbsp;att.attnum&nbsp;>&nbsp;$25&nbsp;and&nbsp;not&nbsp;att.attisdropped&nbsp;and&nbsp;s.schemaname&nbsp;not&nbsp;in&nbsp;($26,&nbsp;$27)&nbsp;group&nbsp;by&nbsp;1,&nbsp;2,&nbsp;3,&nbsp;4,&nbsp;5,&nbsp;6,&nbsp;7,&nbsp;8,&nbsp;9,&nbsp;10,&nbsp;tbl.relhasoids&nbsp;order&nbsp;by&nbsp;2,&nbsp;3&nbsp;),&nbsp;step2&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;(&nbsp;$28&nbsp;+&nbsp;tpl_hdr_size&nbsp;+&nbsp;tpl_data_size&nbsp;+&nbsp;($29&nbsp;*&nbsp;ma)&nbsp;-&nbsp;case&nbsp;when&nbsp;tpl_hdr_size&nbsp;%&nbsp;ma&nbsp;=&nbsp;$30&nbsp;then&nbsp;ma&nbsp;else&nbsp;tpl_hdr_size&nbsp;%&nbsp;ma&nbsp;end&nbsp;-&nbsp;case&nbsp;when&nbsp;ceil(tpl_data_size)::int&nbsp;%&nbsp;ma&nbsp;=&nbsp;$31&nbsp;then&nbsp;ma&nbsp;else&nbsp;ceil(tpl_data_size)::int&nbsp;%&nbsp;ma&nbsp;end&nbsp;)&nbsp;as&nbsp;tpl_size,&nbsp;bs&nbsp;-&nbsp;page_hdr&nbsp;as&nbsp;size_per_block,&nbsp;(heappages&nbsp;+&nbsp;toastpages)&nbsp;as&nbsp;tblpages&nbsp;from&nbsp;step1&nbsp;),&nbsp;step3&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;ceil(reltuples&nbsp;/&nbsp;((bs&nbsp;-&nbsp;page_hdr)&nbsp;/&nbsp;tpl_size))&nbsp;+&nbsp;ceil(toasttuples&nbsp;/&nbsp;$32)&nbsp;as&nbsp;est_tblpages,&nbsp;ceil(reltuples&nbsp;/&nbsp;((bs&nbsp;-&nbsp;page_hdr)&nbsp;*&nbsp;fillfactor&nbsp;/&nbsp;(tpl_size&nbsp;*&nbsp;$33)))&nbsp;+&nbsp;ceil(toasttuples&nbsp;/&nbsp;$34)&nbsp;as&nbsp;est_tblpages_ff&nbsp;&nbsp;from&nbsp;step2&nbsp;),&nbsp;step4&nbsp;as&nbsp;(&nbsp;select&nbsp;*,&nbsp;tblpages&nbsp;*&nbsp;bs&nbsp;as&nbsp;real_size,&nbsp;(tblpages&nbsp;-&nbsp;est_tblpages)&nbsp;*&nbsp;bs&nbsp;as&nbsp;extra_size,&nbsp;case&nbsp;when...
10 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |2.82&nbsp;ms<br/>0s/sec<br/>2ms/call<br/>1.58% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |10&nbsp;blks<br/>0.28&nbsp;blks/sec<br/>10.00&nbsp;blks/call<br/>0.01% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;ae.name,&nbsp;installed_version,&nbsp;default_version,&nbsp;case&nbsp;when&nbsp;installed_version&nbsp;<>&nbsp;default_version&nbsp;then&nbsp;$1&nbsp;end&nbsp;as&nbsp;is_oldfrom&nbsp;pg_extension&nbsp;ejoin&nbsp;pg_available_extensions&nbsp;ae&nbsp;on&nbsp;extname&nbsp;=&nbsp;ae.nameorder&nbsp;by&nbsp;ae.name&nbsp;),&nbsp;withsettins&nbsp;as&nbsp;(&nbsp;select&nbsp;data.*,&nbsp;(select&nbsp;json_object_agg(name,&nbsp;setting)&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;~&nbsp;data.name)&nbsp;as&nbsp;settings&nbsp;from&nbsp;data&nbsp;order&nbsp;by&nbsp;name&nbsp;)&nbsp;select&nbsp;json_object_agg(withsettins.name,&nbsp;withsettins)&nbsp;as&nbsp;json&nbsp;from&nbsp;withsettins
11 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |2.04&nbsp;ms<br/>0s/sec<br/>2ms/call<br/>1.14% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |2&nbsp;blks<br/>0.06&nbsp;blks/sec<br/>2.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;stat_statements&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(pg_settings.name,&nbsp;pg_settings)&nbsp;as&nbsp;json&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;~&nbsp;$1),&nbsp;kcache&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(pg_settings.name,&nbsp;pg_settings)&nbsp;as&nbsp;json&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;~&nbsp;$2)select&nbsp;json_build_object($3,&nbsp;(select&nbsp;*&nbsp;from&nbsp;stat_statements),&nbsp;$4,&nbsp;(select&nbsp;*&nbsp;from&nbsp;kcache))
12 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |1.84&nbsp;ms<br/>0s/sec<br/>1ms/call<br/>1.03% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |6&nbsp;blks<br/>0.17&nbsp;blks/sec<br/>6.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;ae.name,&nbsp;installed_version,&nbsp;default_version,&nbsp;case&nbsp;when&nbsp;installed_version&nbsp;<>&nbsp;default_version&nbsp;then&nbsp;$1&nbsp;end&nbsp;as&nbsp;is_oldfrom&nbsp;pg_extension&nbsp;ejoin&nbsp;pg_available_extensions&nbsp;ae&nbsp;on&nbsp;extname&nbsp;=&nbsp;ae.nameorder&nbsp;by&nbsp;ae.name&nbsp;),&nbsp;withsettins&nbsp;as&nbsp;(&nbsp;select&nbsp;data.*,&nbsp;(select&nbsp;json_object_agg(name,&nbsp;setting)&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;~&nbsp;data.name)&nbsp;as&nbsp;settings&nbsp;from&nbsp;data&nbsp;order&nbsp;by&nbsp;name&nbsp;)&nbsp;select&nbsp;json_object_agg(withsettins.name,&nbsp;withsettins)&nbsp;as&nbsp;json&nbsp;from&nbsp;withsettins
13 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |1.82&nbsp;ms<br/>0s/sec<br/>1ms/call<br/>1.02% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |3&nbsp;blks<br/>0.08&nbsp;blks/sec<br/>3.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;settings_count&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(coalesce(s.sourcefile,&nbsp;$1),&nbsp;s.count)&nbsp;from&nbsp;(select&nbsp;sourcefile,&nbsp;count(ps.*)&nbsp;as&nbsp;count&nbsp;from&nbsp;pg_settings&nbsp;ps&nbsp;group&nbsp;by&nbsp;1)&nbsp;s),&nbsp;changes&nbsp;as&nbsp;(&nbsp;select&nbsp;json_agg(json_build_object(&nbsp;$2,&nbsp;s.sourcefile,&nbsp;$3,&nbsp;s.count,&nbsp;$4,&nbsp;s.examples&nbsp;))&nbsp;from&nbsp;(&nbsp;select&nbsp;sourcefile,&nbsp;count(ps.*)&nbsp;as&nbsp;count,&nbsp;(json_agg(name&nbsp;order&nbsp;by&nbsp;name)&nbsp;filter&nbsp;(where&nbsp;sourcefile&nbsp;is&nbsp;not&nbsp;null))&nbsp;as&nbsp;examples&nbsp;from&nbsp;pg_settings&nbsp;ps&nbsp;group&nbsp;by&nbsp;1&nbsp;)&nbsp;s)select&nbsp;json_build_object($5,&nbsp;(select&nbsp;*&nbsp;from&nbsp;settings_count),&nbsp;$6,&nbsp;(select&nbsp;*&nbsp;from&nbsp;changes))
14 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |1.31&nbsp;ms<br/>0s/sec<br/>1ms/call<br/>0.73% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |18&nbsp;blks<br/>0.50&nbsp;blks/sec<br/>18.00&nbsp;blks/call<br/>0.01% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;global_settings&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(s.name,&nbsp;s)&nbsp;from&nbsp;(&nbsp;select&nbsp;*&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;(&nbsp;name&nbsp;~&nbsp;$1&nbsp;or&nbsp;name&nbsp;in&nbsp;(&nbsp;$2,&nbsp;$3&nbsp;)&nbsp;)&nbsp;order&nbsp;by&nbsp;name&nbsp;)&nbsp;s),&nbsp;table_settings&nbsp;as&nbsp;(&nbsp;select&nbsp;json_object_agg(s.namespace&nbsp;||&nbsp;$4&nbsp;||&nbsp;s.relname,&nbsp;s)&nbsp;from&nbsp;(select&nbsp;(select&nbsp;nspname&nbsp;from&nbsp;pg_namespace&nbsp;where&nbsp;oid&nbsp;=&nbsp;relnamespace)&nbsp;namespace,&nbsp;relname,&nbsp;reloptions&nbsp;from&nbsp;pg_class&nbsp;where&nbsp;reloptions::text&nbsp;~&nbsp;$5&nbsp;order&nbsp;by&nbsp;namespace,&nbsp;relname&nbsp;)&nbsp;s)select&nbsp;json_build_object($6,&nbsp;(select&nbsp;*&nbsp;from&nbsp;global_settings),&nbsp;$7,&nbsp;(select&nbsp;*&nbsp;from&nbsp;table_settings))
15 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |0.75&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.42% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;json_object_agg(s.name,&nbsp;s)&nbsp;from&nbsp;pg_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;in&nbsp;($1,&nbsp;$2,&nbsp;$3,&nbsp;$4,&nbsp;$5,&nbsp;$6,&nbsp;$7)
16 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |0.74&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.42% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;&nbsp;json_object_agg(s.name,&nbsp;s)&nbsp;&nbsp;from&nbsp;pg_settings&nbsp;s&nbsp;&nbsp;where&nbsp;&nbsp;name&nbsp;in&nbsp;($1,&nbsp;$2,&nbsp;$3,&nbsp;$4,&nbsp;$5,&nbsp;$6,&nbsp;$7,&nbsp;$8,&nbsp;$9&nbsp;)
17 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |0.59&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.33% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;setting::integer&nbsp;/&nbsp;$1&nbsp;from&nbsp;pg_settings&nbsp;where&nbsp;name&nbsp;=&nbsp;$2
18 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |0.51&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.29% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |32&nbsp;blks<br/>0.90&nbsp;blks/sec<br/>32.00&nbsp;blks/call<br/>0.02% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;per_instance&nbsp;as&nbsp;(&nbsp;select&nbsp;datname,&nbsp;age(datfrozenxid),&nbsp;round(&nbsp;age(datfrozenxid)::numeric&nbsp;*&nbsp;$1&nbsp;/&nbsp;($2&nbsp;*&nbsp;$3^$4&nbsp;-&nbsp;current_setting($5)::numeric&nbsp;)::numeric,&nbsp;$6&nbsp;)&nbsp;as&nbsp;capacity_used,&nbsp;datfrozenxid,&nbsp;(age(datfrozenxid)&nbsp;>&nbsp;$7)::int&nbsp;as&nbsp;warning&nbsp;from&nbsp;pg_database&nbsp;order&nbsp;by&nbsp;3&nbsp;desc),&nbsp;per_database&nbsp;as&nbsp;(&nbsp;select&nbsp;coalesce(nullif(n.nspname&nbsp;||&nbsp;$8,&nbsp;$9),&nbsp;$10)&nbsp;||&nbsp;c.relname&nbsp;as&nbsp;relation,&nbsp;greatest(age(c.relfrozenxid),&nbsp;age(t.relfrozenxid))&nbsp;as&nbsp;age,&nbsp;round(&nbsp;(greatest(age(c.relfrozenxid),&nbsp;age(t.relfrozenxid))::numeric&nbsp;*&nbsp;&nbsp;$11&nbsp;/&nbsp;($12&nbsp;*&nbsp;$13^$14&nbsp;-&nbsp;current_setting($15)::numeric)::numeric),&nbsp;$16&nbsp;)&nbsp;as&nbsp;capacity_used,&nbsp;c.relfrozenxid&nbsp;as&nbsp;rel_relfrozenxid,&nbsp;t.relfrozenxid&nbsp;as&nbsp;toast_relfrozenxid,&nbsp;(greatest(age(c.relfrozenxid),&nbsp;age(t.relfrozenxid))&nbsp;>&nbsp;$17)::int&nbsp;as&nbsp;warning&nbsp;from&nbsp;pg_class&nbsp;c&nbsp;join&nbsp;pg_namespace&nbsp;n&nbsp;on&nbsp;c.relnamespace&nbsp;=&nbsp;n.oid&nbsp;left&nbsp;join&nbsp;pg_class&nbsp;t&nbsp;ON&nbsp;c.reltoastrelid&nbsp;=&nbsp;t.oid&nbsp;where&nbsp;c.relkind&nbsp;IN&nbsp;($18,&nbsp;$19)&nbsp;and&nbsp;not&nbsp;(n.nspname&nbsp;=&nbsp;$20&nbsp;and&nbsp;c.relname&nbsp;<>&nbsp;$21)&nbsp;and&nbsp;n.nspname&nbsp;<>&nbsp;$22&nbsp;order&nbsp;by&nbsp;3&nbsp;desc&nbsp;limit&nbsp;$23)select&nbsp;&nbsp;json_build_object(&nbsp;$24,&nbsp;&nbsp;(select&nbsp;json_object_agg(i.datname,&nbsp;i)&nbsp;from&nbsp;per_instance&nbsp;i),&nbsp;&nbsp;$25,&nbsp;&nbsp;(select&nbsp;json_object_agg(d.relation,&nbsp;d)&nbsp;from&nbsp;per_database&nbsp;d)&nbsp;)
19 |54<br/>1.51/sec<br/>1.00/call<br/>54.00% |0.31&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.17% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |BEGIN
20 |24<br/>0.67/sec<br/>1.00/call<br/>24.00% |0.31&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.17% |24<br/>0.67/sec<br/>1.00/call<br/>52.17% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;*&nbsp;from&nbsp;pg_is_in_recovery()
21 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |0.28&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.16% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |83&nbsp;blks<br/>2.32&nbsp;blks/sec<br/>83.00&nbsp;blks/call<br/>0.06% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;&nbsp;coalesce(nullif(pn.nspname,&nbsp;$1)&nbsp;||&nbsp;$2,&nbsp;$3)&nbsp;||&nbsp;pct.relname&nbsp;as&nbsp;"relation_name",&nbsp;pci.relname&nbsp;as&nbsp;index_name,&nbsp;pn.nspname&nbsp;as&nbsp;schema_name,&nbsp;pct.relname&nbsp;as&nbsp;table_name,&nbsp;pg_size_pretty(pg_relation_size(pidx.indexrelid))&nbsp;index_size,&nbsp;format(&nbsp;$4,&nbsp;pidx.indexrelid::regclass::text,&nbsp;$5,&nbsp;pct.relname)&nbsp;as&nbsp;drop_code,&nbsp;replace(&nbsp;format($6,&nbsp;pg_get_indexdef(pidx.indexrelid),&nbsp;pct.relname),&nbsp;$7,&nbsp;$8&nbsp;)&nbsp;as&nbsp;revert_codefrom&nbsp;pg_index&nbsp;pidxjoin&nbsp;pg_class&nbsp;as&nbsp;pci&nbsp;on&nbsp;pci.oid&nbsp;=&nbsp;pidx.indexrelidjoin&nbsp;pg_class&nbsp;as&nbsp;pct&nbsp;on&nbsp;pct.oid&nbsp;=&nbsp;pidx.indrelidleft&nbsp;join&nbsp;pg_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pct.relnamespacewhere&nbsp;pidx.indisvalid&nbsp;=&nbsp;$9),num_data&nbsp;as&nbsp;(&nbsp;select&nbsp;row_number()&nbsp;over&nbsp;()&nbsp;num,&nbsp;data.*&nbsp;from&nbsp;data)select&nbsp;json_object_agg(num_data.num,&nbsp;num_data)&nbsp;from&nbsp;num_data
22 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |0.25&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.14% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |19&nbsp;blks<br/>0.53&nbsp;blks/sec<br/>19.00&nbsp;blks/call<br/>0.01% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |with&nbsp;data&nbsp;as&nbsp;(&nbsp;select&nbsp;coalesce(usename,&nbsp;$1)&nbsp;as&nbsp;"User",&nbsp;coalesce(datname,&nbsp;$2)&nbsp;as&nbsp;"DB",&nbsp;coalesce(state,&nbsp;$3)&nbsp;as&nbsp;"Current&nbsp;State",&nbsp;count(*)&nbsp;as&nbsp;"Count",&nbsp;count(*)&nbsp;filter&nbsp;(where&nbsp;state_change&nbsp;<&nbsp;now()&nbsp;-&nbsp;interval&nbsp;$4)&nbsp;as&nbsp;"State&nbsp;changed&nbsp;>1m&nbsp;ago",&nbsp;count(*)&nbsp;filter&nbsp;(where&nbsp;state_change&nbsp;<&nbsp;now()&nbsp;-&nbsp;interval&nbsp;$5)&nbsp;as&nbsp;"State&nbsp;changed&nbsp;>1h&nbsp;ago"from&nbsp;pg_stat_activitygroup&nbsp;by&nbsp;grouping&nbsp;sets&nbsp;((datname,&nbsp;usename,&nbsp;state),&nbsp;(usename,&nbsp;state),&nbsp;())order&nbsp;by&nbsp;usename&nbsp;is&nbsp;null&nbsp;desc,&nbsp;datname&nbsp;is&nbsp;null&nbsp;desc,&nbsp;2&nbsp;asc,&nbsp;3&nbsp;asc,&nbsp;count(*)&nbsp;desc),num_data&nbsp;as&nbsp;(&nbsp;select&nbsp;row_number()&nbsp;over&nbsp;()&nbsp;num,&nbsp;data.*&nbsp;from&nbsp;data)select&nbsp;json_object_agg(num_data.num,&nbsp;num_data)&nbsp;from&nbsp;num_data
23 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |0.15&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.08% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |3&nbsp;blks<br/>0.08&nbsp;blks/sec<br/>3.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;json_object_agg(s.name,&nbsp;s)&nbsp;from&nbsp;(select&nbsp;*&nbsp;from&nbsp;pg_config&nbsp;s&nbsp;order&nbsp;by&nbsp;name)&nbsp;s
24 |1<br/>0.03/sec<br/>1.00/call<br/>1.00% |0.13&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.07% |1<br/>0.03/sec<br/>1.00/call<br/>2.17% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |select&nbsp;json_build_object($1,&nbsp;version(),&nbsp;$2,&nbsp;current_setting($3),&nbsp;$4,&nbsp;(select&nbsp;regexp_replace(current_setting($5),&nbsp;$6,&nbsp;$7)),&nbsp;$8,&nbsp;(select&nbsp;regexp_replace(current_setting($9),&nbsp;$10,&nbsp;$11)))
25 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |VACUUM&nbsp;(ANALYZE)
26 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;dbname
27 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_unused&nbsp;on&nbsp;t_with_unused_index(i)
28 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;bloated&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;100000)&nbsp;_(i)
29 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |grant&nbsp;all&nbsp;privileges&nbsp;on&nbsp;database&nbsp;checkup_test_db&nbsp;to&nbsp;checkup_test_user
30 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_fk_2&nbsp;add&nbsp;constraint&nbsp;fk_t2_t1&nbsp;foreign&nbsp;key&nbsp;(t1_id)&nbsp;references&nbsp;t_fk_1(id)
31 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_bloat&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)
32 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_fk_1&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;from&nbsp;generate_series(0,&nbsp;1000000)&nbsp;_(id)
33 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |update&nbsp;t_with_bloat&nbsp;set&nbsp;i&nbsp;=&nbsp;i
34 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_fk_2&nbsp;as&nbsp;select&nbsp;id,&nbsp;(random()&nbsp;*&nbsp;1000000)::int8&nbsp;as&nbsp;t1_id&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(id)
35 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_redundant_2&nbsp;on&nbsp;t_with_redundant_index(i)
36 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;role&nbsp;username&nbsp;superuser&nbsp;login
37 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_fillfactor&nbsp;(i&nbsp;int)&nbsp;with&nbsp;(fillfactor=60)
38 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_unused_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)
39 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg_stat_kcache
40 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;concurrently&nbsp;i_redundant_1&nbsp;on&nbsp;t_with_redundant_index(i)
41 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_invalid_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)
42 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;table&nbsp;t_with_redundant_index&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate_series(1,&nbsp;1000000)&nbsp;_(i)
43 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg_stat_statements
44 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;index&nbsp;i_bloated&nbsp;on&nbsp;bloated(i)
45 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |delete&nbsp;from&nbsp;bloated&nbsp;where&nbsp;i&nbsp;%&nbsp;$1&nbsp;=&nbsp;$2
46 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |create&nbsp;database&nbsp;checkup_test_db
47 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;table&nbsp;t_fk_1&nbsp;add&nbsp;primary&nbsp;key&nbsp;(id)
48 |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |0.00&nbsp;ms<br/>0s/sec<br/>0s/call<br/>0.00% |alter&nbsp;user&nbsp;checkup_test_user&nbsp;set&nbsp;lock_timeout&nbsp;to&nbsp;'3s'





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L001"></a>
[Table of contents](#postgres-checkup_top)
# L001 Table sizes #

## Observations ##


### Master (`runner-ed2dce3a-project-9951336-concurrent-0`) ###
Table | Rows | &#9660;&nbsp;Total size | Table size | Index(es) Size | TOAST Size
------|------|------------|------------|----------------|------------
*** TOTAL *** | ~6M | 342 MB (100.00%) | 254 MB (100.00%) | 88 MB (100.00%) | 56 kB (100.00%)
t_with_redundant_index | ~1000k | 78 MB (22.71%) | 35 MB (13.66%) | 43 MB (48.77%) | <no value>
t_with_bloat | ~1000k | 69 MB (20.27%) | 69 MB (27.30%) | 0 bytes (0.00%) | <no value>
t_fk_1 | ~1M | 56 MB (16.42%) | 35 MB (13.66%) | 21 MB (24.39%) | <no value>
t_with_unused_index | ~1000k | 56 MB (16.42%) | 35 MB (13.66%) | 21 MB (24.39%) | <no value>
t_fk_2 | ~1000k | 42 MB (12.38%) | 42 MB (16.68%) | 0 bytes (0.00%) | <no value>
t_with_invalid_index | ~1000k | 35 MB (10.14%) | 35 MB (13.66%) | 0 bytes (0.00%) | <no value>
bloated | ~50k | 5784 kB (1.65%) | 3576 kB (1.38%) | 2208 kB (2.45%) | <no value>
t_fillfactor | ~0 | 0 bytes (0.00%) | 0 bytes (0.00%) | 0 bytes (0.00%) | <no value>


## Conclusions ##


## Recommendations ##
