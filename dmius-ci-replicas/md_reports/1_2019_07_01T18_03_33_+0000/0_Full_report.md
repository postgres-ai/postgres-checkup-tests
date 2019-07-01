# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-07-01 18:05:22 +0000


<a name="postgres-checkup_top">&nbsp;</a>
### Table of contents ###

[A001 System Information](#postgres-checkup_A001)  
[A002 Version Information](#postgres-checkup_A002)  
[A003 Postgres Settings](#postgres-checkup_A003)  
[A004 Cluster Information](#postgres-checkup_A004)  
[A005 Extensions](#postgres-checkup_A005)  
[A006 Postgres Setting Deviations](#postgres-checkup_A006)  
[A007 Altered Settings](#postgres-checkup_A007)  
[A008 Disk Usage and File System Type](#postgres-checkup_A008)  
[D002 Useful Linux Tools](#postgres-checkup_D002)  
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
<a name="postgres-checkup_A001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A001 System Information #

## Observations ##
Data collected: 2019-07-01 18:04:55 +0000 UTC  

 
### Operating System by hosts ###

| Host| Operating System | Kernel |
|-----|------------------|--------|
|postgres.master.node|GNU/Linux|4.19.23-coreos-r1|
|postgres.replica.node|GNU/Linux|4.19.23-coreos-r1|






### Master (`postgres.master.node`) ###

**System**

```
Linux runner-0277ea0f-project-9951336-concurrent-0 4.19.23-coreos-r1 #1 SMP Mon Feb 25 23:40:01 -00 2019 x86_64 x86_64 x86_64 GNU/Linux
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
MemFree:          230096 kB
MemAvailable:    2650348 kB
Buffers:           78460 kB
Cached:          2854660 kB
SwapCached:          268 kB
Active:          1368212 kB
Inactive:        1979052 kB
Active(anon):     432860 kB
Inactive(anon):   343932 kB
Active(file):     935352 kB
Inactive(file):  1635120 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2092272 kB
Dirty:             26800 kB
Writeback:             0 kB
AnonPages:        414024 kB
Mapped:           293004 kB
Shmem:            362652 kB
Slab:             135272 kB
SReclaimable:     105868 kB
SUnreclaim:        29404 kB
KernelStack:        3024 kB
PageTables:         9640 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988900 kB
Committed_AS:    1713248 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              440 kB
HardwareCorrupted:     0 kB
AnonHugePages:    126976 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:       94196 kB
DirectMap2M:     3837952 kB
DirectMap1G:           0 kB
```







### Replica servers: ###
    
#### Replica (`postgres.replica.node`) ####
        

**System**

```
Linux runner-0277ea0f-project-9951336-concurrent-0 4.19.23-coreos-r1 #1 SMP Mon Feb 25 23:40:01 -00 2019 x86_64 x86_64 x86_64 GNU/Linux
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
MemFree:          225680 kB
MemAvailable:    2648132 kB
Buffers:           78548 kB
Cached:          2856140 kB
SwapCached:          268 kB
Active:          1369536 kB
Inactive:        1979544 kB
Active(anon):     433236 kB
Inactive(anon):   343804 kB
Active(file):     936300 kB
Inactive(file):  1635740 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2092272 kB
Dirty:             12980 kB
Writeback:             0 kB
AnonPages:        414276 kB
Mapped:           292972 kB
Shmem:            362652 kB
Slab:             136536 kB
SReclaimable:     107128 kB
SUnreclaim:        29408 kB
KernelStack:        3024 kB
PageTables:         9672 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988900 kB
Committed_AS:    1713244 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              440 kB
HardwareCorrupted:     0 kB
AnonHugePages:    126976 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:       94196 kB
DirectMap2M:     3837952 kB
DirectMap1G:           0 kB
```


        

## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A002 Version Information #

## Observations ##
Data collected: 2019-07-01 18:04:56 +0000 UTC  



### Master (`postgres.master.node`) ###

```
PostgreSQL 11.4 (Ubuntu 11.4-1.pgdg16.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609, 64-bit
```





### Replica servers: ###

#### Replica (`postgres.replica.node`) ####


```
PostgreSQL 11.4 (Ubuntu 11.4-1.pgdg16.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609, 64-bit
```


## Conclusions ##
  - All nodes have the same Postgres version (`11.4`).  

  - `11.4` is the most up-to-date Postgres minor version in the branch `11`.  

  
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_A003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A003 Postgres Settings #

## Observations ##
Data collected: 2019-07-01 18:04:56 +0000 UTC  



### Master (`postgres.master.node`) ###  
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
| Client Connection Defaults / Locale and Formatting|[DateStyle](https://postgresqlco.nf/en/doc/param/DateStyle) | ISO,  MDY |  |  |
| Client Connection Defaults / Locale and Formatting|[IntervalStyle](https://postgresqlco.nf/en/doc/param/IntervalStyle) | postgres |  |  |
| Client Connection Defaults / Locale and Formatting|[TimeZone](https://postgresqlco.nf/en/doc/param/TimeZone) | Etc/UTC |  |  |
| Client Connection Defaults / Locale and Formatting|[client_encoding](https://postgresqlco.nf/en/doc/param/client_encoding) | UTF8 |  |  |
| Client Connection Defaults / Locale and Formatting|[default_text_search_config](https://postgresqlco.nf/en/doc/param/default_text_search_config) | pg_catalog.english |  |  |
| Client Connection Defaults / Locale and Formatting|[extra_float_digits](https://postgresqlco.nf/en/doc/param/extra_float_digits) | 0 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_collate](https://postgresqlco.nf/en/doc/param/lc_collate) | C.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_ctype](https://postgresqlco.nf/en/doc/param/lc_ctype) | C.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_messages](https://postgresqlco.nf/en/doc/param/lc_messages) | C.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_monetary](https://postgresqlco.nf/en/doc/param/lc_monetary) | C.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_numeric](https://postgresqlco.nf/en/doc/param/lc_numeric) | C.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[lc_time](https://postgresqlco.nf/en/doc/param/lc_time) | C.UTF-8 |  |  |
| Client Connection Defaults / Locale and Formatting|[server_encoding](https://postgresqlco.nf/en/doc/param/server_encoding) | UTF8 |  |  |
| Client Connection Defaults / Locale and Formatting|[timezone_abbreviations](https://postgresqlco.nf/en/doc/param/timezone_abbreviations) | Default |  |  |
| Client Connection Defaults / Other Defaults|[dynamic_library_path](https://postgresqlco.nf/en/doc/param/dynamic_library_path) | $libdir |  |  |
| Client Connection Defaults / Other Defaults|[gin_fuzzy_search_limit](https://postgresqlco.nf/en/doc/param/gin_fuzzy_search_limit) | 0 |  |  |
| Client Connection Defaults / Other Defaults|[tcp_keepalives_count](https://postgresqlco.nf/en/doc/param/tcp_keepalives_count) | 0 |  |  |
| Client Connection Defaults / Other Defaults|[tcp_keepalives_idle](https://postgresqlco.nf/en/doc/param/tcp_keepalives_idle) | 0 | s  |  |
| Client Connection Defaults / Other Defaults|[tcp_keepalives_interval](https://postgresqlco.nf/en/doc/param/tcp_keepalives_interval) | 0 | s  |  |
| Client Connection Defaults / Shared Library Preloading|[jit_provider](https://postgresqlco.nf/en/doc/param/jit_provider) | llvmjit |  |  |
| Client Connection Defaults / Shared Library Preloading|[local_preload_libraries](https://postgresqlco.nf/en/doc/param/local_preload_libraries) |  |  |  |
| Client Connection Defaults / Shared Library Preloading|[session_preload_libraries](https://postgresqlco.nf/en/doc/param/session_preload_libraries) |  |  |  |
| Client Connection Defaults / Shared Library Preloading|[shared_preload_libraries](https://postgresqlco.nf/en/doc/param/shared_preload_libraries) | pg_stat_statements, auto_explain, pg_stat_kcache |  |  |
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
| Connections and Authentication / Authentication|[krb_server_keyfile](https://postgresqlco.nf/en/doc/param/krb_server_keyfile) | FILE:/etc/postgresql-common/krb5.keytab |  |  |
| Connections and Authentication / Authentication|[password_encryption](https://postgresqlco.nf/en/doc/param/password_encryption) | md5 |  |  |
| Connections and Authentication / Connection Settings|[bonjour](https://postgresqlco.nf/en/doc/param/bonjour) | off |  |  |
| Connections and Authentication / Connection Settings|[bonjour_name](https://postgresqlco.nf/en/doc/param/bonjour_name) |  |  |  |
| Connections and Authentication / Connection Settings|[listen_addresses](https://postgresqlco.nf/en/doc/param/listen_addresses) | * |  |  |
| Connections and Authentication / Connection Settings|[max_connections](https://postgresqlco.nf/en/doc/param/max_connections) | 100 |  |  |
| Connections and Authentication / Connection Settings|[port](https://postgresqlco.nf/en/doc/param/port) | 5432 |  |  |
| Connections and Authentication / Connection Settings|[superuser_reserved_connections](https://postgresqlco.nf/en/doc/param/superuser_reserved_connections) | 3 |  |  |
| Connections and Authentication / Connection Settings|[unix_socket_directories](https://postgresqlco.nf/en/doc/param/unix_socket_directories) | /var/run/postgresql |  |  |
| Connections and Authentication / Connection Settings|[unix_socket_group](https://postgresqlco.nf/en/doc/param/unix_socket_group) |  |  |  |
| Connections and Authentication / Connection Settings|[unix_socket_permissions](https://postgresqlco.nf/en/doc/param/unix_socket_permissions) | 0777 |  |  |
| Connections and Authentication / SSL|[ssl](https://postgresqlco.nf/en/doc/param/ssl) | on |  |  |
| Connections and Authentication / SSL|[ssl_ca_file](https://postgresqlco.nf/en/doc/param/ssl_ca_file) |  |  |  |
| Connections and Authentication / SSL|[ssl_cert_file](https://postgresqlco.nf/en/doc/param/ssl_cert_file) | /etc/ssl/certs/ssl-cert-snakeoil.pem |  |  |
| Connections and Authentication / SSL|[ssl_ciphers](https://postgresqlco.nf/en/doc/param/ssl_ciphers) | HIGH:MEDIUM:+3DES:!aNULL |  |  |
| Connections and Authentication / SSL|[ssl_crl_file](https://postgresqlco.nf/en/doc/param/ssl_crl_file) |  |  |  |
| Connections and Authentication / SSL|[ssl_dh_params_file](https://postgresqlco.nf/en/doc/param/ssl_dh_params_file) |  |  |  |
| Connections and Authentication / SSL|[ssl_ecdh_curve](https://postgresqlco.nf/en/doc/param/ssl_ecdh_curve) | prime256v1 |  |  |
| Connections and Authentication / SSL|[ssl_key_file](https://postgresqlco.nf/en/doc/param/ssl_key_file) | /etc/ssl/private/ssl-cert-snakeoil.key |  |  |
| Connections and Authentication / SSL|[ssl_passphrase_command](https://postgresqlco.nf/en/doc/param/ssl_passphrase_command) |  |  |  |
| Connections and Authentication / SSL|[ssl_passphrase_command_supports_reload](https://postgresqlco.nf/en/doc/param/ssl_passphrase_command_supports_reload) | off |  |  |
| Connections and Authentication / SSL|[ssl_prefer_server_ciphers](https://postgresqlco.nf/en/doc/param/ssl_prefer_server_ciphers) | on |  |  |
| Customized Options|[auto_explain.log_analyze](https://postgresqlco.nf/en/doc/param/auto_explain.log_analyze) | off |  |  |
| Customized Options|[auto_explain.log_buffers](https://postgresqlco.nf/en/doc/param/auto_explain.log_buffers) | off |  |  |
| Customized Options|[auto_explain.log_format](https://postgresqlco.nf/en/doc/param/auto_explain.log_format) | text |  |  |
| Customized Options|[auto_explain.log_min_duration](https://postgresqlco.nf/en/doc/param/auto_explain.log_min_duration) | -1 | ms  |  |
| Customized Options|[auto_explain.log_nested_statements](https://postgresqlco.nf/en/doc/param/auto_explain.log_nested_statements) | off |  |  |
| Customized Options|[auto_explain.log_timing](https://postgresqlco.nf/en/doc/param/auto_explain.log_timing) | on |  |  |
| Customized Options|[auto_explain.log_triggers](https://postgresqlco.nf/en/doc/param/auto_explain.log_triggers) | off |  |  |
| Customized Options|[auto_explain.log_verbose](https://postgresqlco.nf/en/doc/param/auto_explain.log_verbose) | off |  |  |
| Customized Options|[auto_explain.sample_rate](https://postgresqlco.nf/en/doc/param/auto_explain.sample_rate) | 1 |  |  |
| Customized Options|[pg_stat_kcache.linux_hz](https://postgresqlco.nf/en/doc/param/pg_stat_kcache.linux_hz) | 1000000 |  |  |
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
| File Locations|[config_file](https://postgresqlco.nf/en/doc/param/config_file) | /etc/postgresql/11/main/postgresql.conf |  |  |
| File Locations|[data_directory](https://postgresqlco.nf/en/doc/param/data_directory) | /var/lib/postgresql/11/main |  |  |
| File Locations|[external_pid_file](https://postgresqlco.nf/en/doc/param/external_pid_file) | /var/run/postgresql/11-main.pid |  |  |
| File Locations|[hba_file](https://postgresqlco.nf/en/doc/param/hba_file) | /etc/postgresql/11/main/pg_hba.conf |  |  |
| File Locations|[ident_file](https://postgresqlco.nf/en/doc/param/ident_file) | /etc/postgresql/11/main/pg_ident.conf |  |  |
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
| Preset Options|[server_version](https://postgresqlco.nf/en/doc/param/server_version) | 11.4 (Ubuntu 11.4-1.pgdg16.04+1) |  |  |
| Preset Options|[server_version_num](https://postgresqlco.nf/en/doc/param/server_version_num) | 110004 |  |  |
| Preset Options|[wal_block_size](https://postgresqlco.nf/en/doc/param/wal_block_size) | 8192 |  |  |
| Preset Options|[wal_segment_size](https://postgresqlco.nf/en/doc/param/wal_segment_size) | 16777216 | B  |  |
| Process Title|[cluster_name](https://postgresqlco.nf/en/doc/param/cluster_name) | 11/main |  |  |
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
| Replication / Sending Servers|[max_wal_senders](https://postgresqlco.nf/en/doc/param/max_wal_senders) | 5 |  |  |
| Replication / Sending Servers|[wal_keep_segments](https://postgresqlco.nf/en/doc/param/wal_keep_segments) | 32 |  |  |
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
| Reporting and Logging / What to Log|[log_line_prefix](https://postgresqlco.nf/en/doc/param/log_line_prefix) | %m [%p] %q%u@%d  |  |  |
| Reporting and Logging / What to Log|[log_lock_waits](https://postgresqlco.nf/en/doc/param/log_lock_waits) | off |  |  |
| Reporting and Logging / What to Log|[log_replication_commands](https://postgresqlco.nf/en/doc/param/log_replication_commands) | off |  |  |
| Reporting and Logging / What to Log|[log_statement](https://postgresqlco.nf/en/doc/param/log_statement) | none |  |  |
| Reporting and Logging / What to Log|[log_temp_files](https://postgresqlco.nf/en/doc/param/log_temp_files) | -1 | kB  |  |
| Reporting and Logging / What to Log|[log_timezone](https://postgresqlco.nf/en/doc/param/log_timezone) | Etc/UTC |  |  |
| Reporting and Logging / When to Log|[log_min_duration_statement](https://postgresqlco.nf/en/doc/param/log_min_duration_statement) | -1 | ms  |  |
| Reporting and Logging / When to Log|[log_min_error_statement](https://postgresqlco.nf/en/doc/param/log_min_error_statement) | error |  |  |
| Reporting and Logging / When to Log|[log_min_messages](https://postgresqlco.nf/en/doc/param/log_min_messages) | warning |  |  |
| Reporting and Logging / Where to Log|[event_source](https://postgresqlco.nf/en/doc/param/event_source) | PostgreSQL |  |  |
| Reporting and Logging / Where to Log|[log_destination](https://postgresqlco.nf/en/doc/param/log_destination) | stderr |  |  |
| Reporting and Logging / Where to Log|[log_directory](https://postgresqlco.nf/en/doc/param/log_directory) | log |  |  |
| Reporting and Logging / Where to Log|[log_file_mode](https://postgresqlco.nf/en/doc/param/log_file_mode) | 0600 |  |  |
| Reporting and Logging / Where to Log|[log_filename](https://postgresqlco.nf/en/doc/param/log_filename) | postgresql-11-main.log |  |  |
| Reporting and Logging / Where to Log|[log_rotation_age](https://postgresqlco.nf/en/doc/param/log_rotation_age) | 1440 | min  |  |
| Reporting and Logging / Where to Log|[log_rotation_size](https://postgresqlco.nf/en/doc/param/log_rotation_size) | 10240 | kB  | 10.00 MiB |
| Reporting and Logging / Where to Log|[log_truncate_on_rotation](https://postgresqlco.nf/en/doc/param/log_truncate_on_rotation) | off |  |  |
| Reporting and Logging / Where to Log|[logging_collector](https://postgresqlco.nf/en/doc/param/logging_collector) | off |  |  |
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
| Statistics / Query and Index Statistics Collector|[stats_temp_directory](https://postgresqlco.nf/en/doc/param/stats_temp_directory) | /var/run/postgresql/11-main.pg_stat_tmp |  |  |
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
| Write-Ahead Log / Archiving|[archive_command](https://postgresqlco.nf/en/doc/param/archive_command) | cp %p /path_to/archive/%f |  |  |
| Write-Ahead Log / Archiving|[archive_mode](https://postgresqlco.nf/en/doc/param/archive_mode) | on |  |  |
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
Data collected: 2019-07-01 18:05:03 +0000 UTC  

|&#9660;&nbsp;Indicator | postgres.master.node | postgres.replica.node |
|--------|-------|-------- |
|Config file |/etc/postgresql/11/main/postgresql.conf|/var/lib/postgresql/11/secondary/postgresql.conf|
|Role |Master|<no value>|
|Replicas ||<no value>|
|Started At |2019-07-01&nbsp;18:00:30+00|2019-07-01 18:00:37+00|
|Uptime |00:03:53|00:04:27|
|Checkpoints |7|0|
|Forced Checkpoints |100.0%|<no value>|
|Checkpoint MB/sec |0.624054|<no value>|
|Database Name |dbname|dbname|
|Database Size |1305&nbsp;MB|7693 kB|
|Stats Since |2019-07-01&nbsp;18:00:33+00|2019-07-01 18:00:42+00|
|Stats Age |00:03:50|00:04:22|
|Cache Effectiveness |87.14%|97.34%|
|Successful Commits |99.48%|100.00%|
|Conflicts |0|0|
|Temp Files: total size |708&nbsp;MB|0 bytes|
|Temp Files: total number of files |64|0|
|Temp Files: total number of files per day |64|0|
|Temp Files: avg file size |11&nbsp;MB|<no value>|
|Deadlocks |0|0|
|Deadlocks per day |0|0|


### Databases sizes ###

| Database | &#9660;&nbsp;Size |
|----------|--------|
| `dbname` | 1.28&nbsp;GiB |
| `postgres` | 7.51&nbsp;MiB |
| `checkup_test_db` | 7.51&nbsp;MiB |
| `template1` | 7.37&nbsp;MiB |
| `template0` | 7.37&nbsp;MiB |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A005">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A005 Extensions #

## Observations ##
Data collected: 2019-07-01 18:05:03 +0000 UTC  



### Master (`postgres.master.node`) ###
| &#9660;&nbsp;Database | Extension name | Installed version | Default version | Is old |
|---------|----------------|-------------------|-----------------|--------|
| `checkup_test_db` | `plpgsql` | 1.0 | 1.0 | <no value> |
| `dbname` | `pg_stat_kcache` | 2.1.1 | 2.1.1 | <no value> |
| `dbname` | `pg_stat_statements` | 1.6 | 1.6 | <no value> |
| `dbname` | `plpgsql` | 1.0 | 1.0 | <no value> |




## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A006">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A006 Postgres Setting Deviations #

## Observations ##
Data collected: 2019-07-01 18:05:04 +0000 UTC  

### Settings (pg_settings) that Differ ###

&#9660;&nbsp;Setting | postgres.master.node | postgres.replica.node |
|--------|-------|--------|
| [archive_command](https://postgresqlco.nf/en/doc/param/archive_command) |cp %p /path_to/archive/%f |(disabled) |
| [archive_mode](https://postgresqlco.nf/en/doc/param/archive_mode) |on |off |
| [client_encoding](https://postgresqlco.nf/en/doc/param/client_encoding) |UTF8 |SQL_ASCII |
| [cluster_name](https://postgresqlco.nf/en/doc/param/cluster_name) |11/main | |
| [config_file](https://postgresqlco.nf/en/doc/param/config_file) |/etc/postgresql/11/main/postgresql.conf |/var/lib/postgresql/11/secondary/postgresql.conf |
| [data_directory](https://postgresqlco.nf/en/doc/param/data_directory) |/var/lib/postgresql/11/main |/var/lib/postgresql/11/secondary |
| [external_pid_file](https://postgresqlco.nf/en/doc/param/external_pid_file) |/var/run/postgresql/11-main.pid | |
| [hba_file](https://postgresqlco.nf/en/doc/param/hba_file) |/etc/postgresql/11/main/pg_hba.conf |/var/lib/postgresql/11/secondary/pg_hba.conf |
| [ident_file](https://postgresqlco.nf/en/doc/param/ident_file) |/etc/postgresql/11/main/pg_ident.conf |/var/lib/postgresql/11/secondary/pg_ident.conf |
| [lc_collate](https://postgresqlco.nf/en/doc/param/lc_collate) |C.UTF-8 |C |
| [lc_ctype](https://postgresqlco.nf/en/doc/param/lc_ctype) |C.UTF-8 |C |
| [lc_messages](https://postgresqlco.nf/en/doc/param/lc_messages) |C.UTF-8 |C |
| [lc_monetary](https://postgresqlco.nf/en/doc/param/lc_monetary) |C.UTF-8 |C |
| [lc_numeric](https://postgresqlco.nf/en/doc/param/lc_numeric) |C.UTF-8 |C |
| [lc_time](https://postgresqlco.nf/en/doc/param/lc_time) |C.UTF-8 |C |
| [log_filename](https://postgresqlco.nf/en/doc/param/log_filename) |postgresql-11-main.log |postgresql-%Y-%m-%d_%H%M%S.log |
| [log_line_prefix](https://postgresqlco.nf/en/doc/param/log_line_prefix) |%m [%p] %q%u@%d  |%m [%p]  |
| [max_wal_senders](https://postgresqlco.nf/en/doc/param/max_wal_senders) |5 |10 |
| [port](https://postgresqlco.nf/en/doc/param/port) |5432 |5433 |
| [random_page_cost](https://postgresqlco.nf/en/doc/param/random_page_cost) |2.22 |4 |
| [server_encoding](https://postgresqlco.nf/en/doc/param/server_encoding) |UTF8 |SQL_ASCII |
| [ssl](https://postgresqlco.nf/en/doc/param/ssl) |on |off |
| [ssl_cert_file](https://postgresqlco.nf/en/doc/param/ssl_cert_file) |/etc/ssl/certs/ssl-cert-snakeoil.pem |server.crt |
| [ssl_key_file](https://postgresqlco.nf/en/doc/param/ssl_key_file) |/etc/ssl/private/ssl-cert-snakeoil.key |server.key |
| [stats_temp_directory](https://postgresqlco.nf/en/doc/param/stats_temp_directory) |/var/run/postgresql/11-main.pg_stat_tmp |pg_stat_tmp |
| [wal_keep_segments](https://postgresqlco.nf/en/doc/param/wal_keep_segments) |32 |0 |


### Configs(pg_config) that differ ###

No differences in `pg_config` are found.



## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A007">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A007 Altered Settings #

## Observations ##
Data collected: 2019-07-01 18:05:12 +0000 UTC  



### Master (`postgres.master.node`) ###
| Source | Settings count | Changed settings |
|-------|----------------|-----------------|
| /etc/postgresql/11/main/postgresql.conf | 30 |  DateStyle TimeZone archive_command archive_mode cluster_name default_text_search_config dynamic_shared_memory_type external_pid_file lc_messages lc_monetary lc_numeric lc_time listen_addresses log_filename log_line_prefix log_timezone max_connections max_wal_senders max_wal_size min_wal_size port shared_buffers shared_preload_libraries ssl ssl_cert_file ssl_key_file stats_temp_directory unix_socket_directories wal_keep_segments wal_level |
| /var/lib/postgresql/11/main/postgresql.auto.conf | 1 |  random_page_cost |
| default | 273 | |







### Replica servers: ###
  
#### Replica (`postgres.replica.node`) ####
    
| Source | Settings count | Changed settings |
|-------|----------------|-----------------|
|/var/lib/postgresql/11/secondary/postgresql.conf | 17 |  DateStyle TimeZone default_text_search_config dynamic_shared_memory_type hot_standby lc_messages lc_monetary lc_numeric lc_time listen_addresses log_timezone max_connections max_wal_size min_wal_size port shared_buffers shared_preload_libraries |
|default | 287 | |



## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A008">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A008 Disk Usage and File System Type

## Observations ##
Data collected: 2019-07-01 18:05:12 +0000 UTC  
Output of `df -TPh` (follows symlinks)  


    
        
### Master (`postgres.master.node`) ###

#### System directories ####
| Device | FS Type | Size | Available | Usage | Used | Mount Point |
|-------|---------|------|-----------|-----|------|-------------|
| overlay|overlay|22G|12G|44%|9.1G|/ |
| tmpfs|tmpfs|64M|64M|0%|0|/dev |
| tmpfs|tmpfs|1.9G|1.9G|0%|0|/sys/fs/cgroup |
| /dev/sda9|ext4|22G|12G|44%|9.1G|/builds |
| shm|tmpfs|64M|64M|1%|16K|/dev/shm |


#### Database directories ####
| Name | FS Type | Size | Available | Usage | Used | Mount Point | Path | Device |
|-----|---------|------|-----------|-----|------|-------------|------|-------|
| PGDATA |overlay |22G |12G |44% |9.1G |/ |/var/lib/postgresql/11/main |overlay |
| WAL directory |overlay |22G |12G |44% |9.1G |/ |/var/lib/postgresql/11/main/pg_wal |overlay |
| stats_temp_directory |overlay |22G |12G |44% |9.1G |/ |/var/run/postgresql/11-main.pg_stat_tmp |overlay |


        
    



### Replica servers: ###
    
#### Replica (`postgres.replica.node`) ####

#### System directories ####
| Device | FS Type | Size | Available | Usage | Used | Mount Point |
|-------|---------|------|-----------|-----|------|-------------|
| overlay |overlay |22G |12G |44% |9.1G |/ |
| tmpfs |tmpfs |64M |64M |0% |0 |/dev |
| tmpfs |tmpfs |1.9G |1.9G |0% |0 |/sys/fs/cgroup |
| /dev/sda9 |ext4 |22G |12G |44% |9.1G |/builds |
| shm |tmpfs |64M |64M |1% |16K |/dev/shm |


#### Database directories ####
| Name | FS Type | Size | Available | Usage | Used | Mount Point | Path | Device |
|-----|---------|------|-----------|-----|------|-------------|------|-------|
| PGDATA |overlay |22G |12G |44% |9.1G |/ |/var/lib/postgresql/11/secondary |overlay |
| WAL directory |overlay |22G |12G |44% |9.1G |/ |/var/lib/postgresql/11/secondary/pg_wal |overlay |
| stats_temp_directory |overlay |22G |12G |44% |9.1G |/ |/var/lib/postgresql/11/secondary/pg_stat_tmp |overlay |


        
    


## Conclusions ##
  - No significant risks of out-of-disk-space problem have been detected.
  
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_D002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# D002 Useful Linux Tools
## Observations ##
Data collected: 2019-07-01 18:05:12 +0000 UTC  



### Master (`postgres.master.node`) ###
### cpu ###
| Utility | Availability |
|--------|--------------|
| ps | yes |
| htop |  |
| top | yes |
| mpstat | yes |
| lscpu | yes |  

### free_space ###
| Utility | Availability |
|--------|--------------|
| df | yes |
| du | yes |  

### io ###
| Utility | Availability |
|--------|--------------|
| pidstat | yes |
| iostat | yes |
| iotop |  |
| ftrace |  |
| blktrace |  |  

### memory ###
| Utility | Availability |
|--------|--------------|
| free | yes |
| vmstat | yes |  

### network ###
| Utility | Availability |
|--------|--------------|
| tcpdump |  |
| netstat |  |
| ss | yes |
| iptraf |  |
| ethtool |  |  

### misc ###
| Utility | Availability |
|--------|--------------|
| dstat |  |
| strace |  |
| ltrace |  |
| perf |  |
| numastat |  |  






### Replica servers:  

#### Replica (`postgres.replica.node`)  

### cpu
| Utility | Availability |
|--------|--------------|
| ps | yes |
| htop |  |
| top | yes |
| mpstat | yes |
| lscpu | yes |  

### free_space
| Utility | Availability |
|--------|--------------|
| df | yes |
| du | yes |  

### io
| Utility | Availability |
|--------|--------------|
| pidstat | yes |
| iostat | yes |
| iotop |  |
| ftrace |  |
| blktrace |  |  

### memory
| Utility | Availability |
|--------|--------------|
| free | yes |
| vmstat | yes |  

### network
| Utility | Availability |
|--------|--------------|
| tcpdump |  |
| netstat |  |
| ss | yes |
| iptraf |  |
| ethtool |  |  

### misc
| Utility | Availability |
|--------|--------------|
| dstat |  |
| strace |  |
| ltrace |  |
| perf |  |
| numastat |  |  






## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_D004">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# D004 pg_stat_statements and pg_stat_kcache Settings #

## Observations ##
Data collected: 2019-07-01 18:05:13 +0000 UTC  



### Master (`postgres.master.node`) ###

#### `pg_stat_statements` extension settings ####
| Setting | Value | Unit | Type | Min value | Max value |
|--------|-------|------|------|-----------|-----------|
|[pg_stat_statements.max](https://postgresqlco.nf/en/doc/param/pg_stat_statements.max)|5000||integer|100 |2147483647  |
|[pg_stat_statements.save](https://postgresqlco.nf/en/doc/param/pg_stat_statements.save)|on||bool|| |
|[pg_stat_statements.track](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track)|top||enum|| |
|[pg_stat_statements.track_utility](https://postgresqlco.nf/en/doc/param/pg_stat_statements.track_utility)|on||bool|| |

#### `kcache` extension settings ####
| Setting | Value | Unit | Type | Min value | Max value |
|--------|-------|------|------|-----------|-----------|
| [pg_stat_kcache.linux_hz](https://postgresqlco.nf/en/doc/param/pg_stat_kcache.linux_hz)|1000000||integer|-1 |2147483647  |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_F001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F001 Autovacuum: Current Settings #

## Observations ##
Data collected: 2019-07-01 18:05:13 +0000 UTC  



### Master (`postgres.master.node`) ###
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





### Replicas settings ###
| Setting | postgres.replica.node  |
|--------|-------- |
|[hot_standby_feedback](https://postgresqlco.nf/en/doc/param/hot_standby_feedback)| off |


## Conclusions ##
  - [P1] Autovacuum is not tuned. The following parameters are default, meaning that autovacuum behavior is far from optimal for an OLTP workload leading to higher levels of bloat in tables and indexes, lagging statistics:  
    - `autovacuum_vacuum_scale_factor` = 0.2 and `autovacuum_vacuum_threshold` = 50  
    - `autovacuum_analyze_scale_factor` = 0.1 and `autovacuum_analyze_threshold` = 50  
    - `autovacuum_vacuum_cost_delay` = 20 and `autovacuum_vacuum_cost_limit` = -1  
  

  
 


## Recommendations ##
  - [P1] Autovacuum is not tuned. Consider its tuning for your workload.  

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
- Data collected: 2019-07-01 18:04:33 +0000 UTC
- Current database: dbname




### Master (`postgres.master.node`) ###


#### Databases ####


| \# | Database | &#9660;&nbsp;Age | Capacity used, % | Warning | datfrozenxid |
|--|--------|-----|------------------|---------|--------------|
| 1 |`postgres`|557 |0 |  |561 |
| 2 |`dbname`|557 |0 |  |561 |
| 3 |`template1`|557 |0 |  |561 |
| 4 |`template0`|557 |0 |  |561 |
| 5 |`checkup_test_db`|557 |0 |  |561 |


#### Tables in the observed database ####
The list is limited to 10 items.

| \# | Relation | Age | &#9660;&nbsp;Capacity used, % | Warning |rel_relfrozenxid | toast_relfrozenxid |
|---|-------|-----|------------------|---------|-----------------|--------------------|
| 1 |`exp_redundant.t_with_redundant_ref_idx` |517 |0 |  |601 |0 |
| 2 |`test_schema.t_with_invalid_index` |512 |0 |  |606 |0 |
| 3 |`bloated` |510 |0 |  |608 |0 |
| 4 |`t_red_fk_1` |506 |0 |  |612 |0 |
| 5 |`t_red_fk_2` |502 |0 |  |616 |0 |
| 6 |`t_slw_q` |499 |0 |  |619 |0 |
| 7 |`t_with_bloat`\* |507 |0 |  |611 |0 |
| 8 |`test_schema.orders` |430 |0 |  |688 |0 |
| 9 |`test_schema.orders_A` |427 |0 |  |691 |0 |
| 10 |`t_4` |418 |0 |  |700 |0 |


\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_F003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead Tuples #

## Observations ##
Data collected: 2019-07-01 18:04:33 +0000 UTC  
Current database: dbname  
Stats reset: 00:04:00 ago (2019-07-01 18:00:33 +0000 UTC)  
### Master (`postgres.master.node`) ###
  
  
| \#|  Relation | reltype | Since last autovacuum | Since last vacuum | Autovacuum Count | Vacuum Count | n_tup_ins | n_tup_upd | n_tup_del | pg_class.reltuples | n_live_tup | n_dead_tup | &#9660;Dead Tuples Ratio, % |
|---|-------|------|-----------------------|-------------------|----------|---------|-----------|-----------|-----------|--------------------|------------|------------|-----------|
| 1 |`t_with_redundant_idx` |r |<no value> |00:01:18.158906 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 2 |`t_with_redundant_ref_idx` |r |<no value> |00:01:18.065105 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 3 |`exp_redundant.t_with_redundant_ref_idx` |r |<no value> |00:01:23.784917 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 4 |`bloated` |r |<no value> |00:01:22.989209 |0 |2 |100000 |0 |50000 |50000 |50000 |0 | 0  |
| 5 |`t_rar_q` |r |<no value> |00:01:18.421786 |0 |2 |1000000 |744797 |0 |1000000 |1000000 |0 | 0  |
| 6 |`t_red_fk_2` |r |<no value> |00:01:22.919434 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 7 |`t_with_bloat`\* |r |<no value> |00:01:22.128293 |0 |2 |1000000 |1000000 |0 |1000000 |1000000 |0 | 0  |
| 8 |`t_with_redundant_index` |r |<no value> |00:01:18.254292 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 9 |`t_with_unused_index` |r |<no value> |00:01:18.328756 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 10 |`t_red_fk_1` |r |<no value> |00:01:22.97633 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0  |
| 11 |`test_schema.t_with_invalid_index` |r |<no value> |00:01:23.256103 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 12 |`t_slw_q` |r |<no value> |00:01:22.85159 |0 |2 |10000001 |0 |0 |9999979 |9999979 |0 | 0  |

\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##

## Recommendations ##


---
<a name="postgres-checkup_F004">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap Bloat (Estimated) #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-07-01 18:04:34 +0000 UTC  
Current database: dbname  


### Master (`postgres.master.node`) ###


  

| \# | Table | Real Size | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat factor | Est. bloat level, % | Live Data Size | Last vacuum | Fillfactor |
|----|-------|------|------------------------------|-------------------|-------------------|---------------------|----------------|-------------|------------|
|&nbsp;|===== TOTAL ===== |767.61&nbsp;MiB |46.57&nbsp;MiB |48,824,320 |1.06 |6.07 | ~721.04&nbsp;MiB ||||
|1 |`t_with_bloat`\* |69.15&nbsp;MiB |34.71&nbsp;MiB |36,388,864 |2.01 | **50.19** |~34.44&nbsp;MiB | 2019-07-01 18:03:12  |100 |
|2 |`t_rar_q` |49.90&nbsp;MiB |7.81&nbsp;MiB |8,183,808 |1.19 |15.64 |~42.09&nbsp;MiB | 2019-07-01 18:03:16  |100 |
|3 |`bloated` |3.47&nbsp;MiB |1.74&nbsp;MiB |1,818,624 |2.00 | **50.11** |~1.73&nbsp;MiB | 2019-07-01 18:03:11  |100 |
|4 |`t_slw_q` |345.69&nbsp;MiB |1.36&nbsp;MiB |1,417,216 |1.00 |0.39 |~344.34&nbsp;MiB | 2019-07-01 18:03:11  |100 |
|5 |`t_red_fk_2` |42.24&nbsp;MiB |152.00&nbsp;KiB |155,648 |1.00 |0.35 |~42.09&nbsp;MiB | 2019-07-01 18:03:11  |100 |
|6 |`t_with_redundant_ref_idx` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-07-01 18:03:16  |100 |
|7 |`t_with_redundant_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-07-01 18:03:16  |100 |
|8 |`t_with_unused_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-07-01 18:03:16  |100 |
|9 |`t_red_fk_1` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-07-01 18:03:11  |100 |
|10 |`test_schema.t_with_invalid_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-07-01 18:03:11  |100 |
|11 |`exp_redundant.t_with_redundant_ref_idx` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-07-01 18:03:10  |100 |
|12 |`t_with_redundant_idx` |49.77&nbsp;MiB |24.00&nbsp;KiB |24,576 |1.00 |0.05 |~49.75&nbsp;MiB | 2019-07-01 18:03:16  |100 |

\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'

## Conclusions ##
  - The total table (heap) bloat estimate is quite low, just ~6.07% (~46.57 MiB). Hooray! Keep watching it though.  

  - [P2] There are 2 tables with size > 1 MiB and table bloat estimate >= 40% and < 90%:  
    - `t_with_bloat`: size 69.15 MiB, can be reduced 2.01 times, by ~34.71 MiB (~50%)  
    - `bloated`: size 3.47 MiB, can be reduced 2.00 times, by ~1.74 MiB (~50%)  
  

  
 


## Recommendations ##
  - [P2] To resolve the table bloat issue, do both of the following actions:  
    - to prevent high level of bloat in the future, tune autovacuum: consider more aggressive autovacuum settings (see F001);  
    - get rid of current table bloat using one of the approaches mentioned below.  

  - If you want to get exact bloat numbers, clone the database, get table sizes, then apply `VACUUM FULL` and get new table sizes. This will give the most reliable numbers.  

  - To reduce the table bloat, consider using one of the following:  
    - [`VACUUM FULL`](https://www.postgresql.org/docs/current/sql-vacuum.html) (:warning:  requires downtime / maintenance window),  
    - one of the tools reducing the bloat online, without interrupting the operations:  
        - [pg_repack](https://github.com/reorg/pg_repack),  
        - [pg_squeeze](https://github.com/reorg/pg_repack),  
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
Data collected: 2019-07-01 18:04:34 +0000 UTC  
Current database: dbname  



### Master (`postgres.master.node`) ###
  

| \# | Index (Table) | Index Size | Table Size | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat factor |Est. bloat level, % | Live Data Size | Fillfactor  |
|----|---------------|------------|------------|------------------------------|-------------------|-------------------|--------------------|----------------|-------------|
|&nbsp;|===== TOTAL ===== |366.70&nbsp;MiB |276.28&nbsp;MiB |23.87&nbsp;MiB |25,026,560|1.07 |6.51|342.83&nbsp;MiB |||
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
|17 | `i_unused` (`t_with_unused_index`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |



## Conclusions ##
  - The total index bloat estimate is quite low, just ~6.51% (~23.87 MiB). Hooray! Keep watching it though.
  - [P2] There are 2 indexes with size > 1 MiB and index bloat estimate >= 40% and < 90%:  
    - `t_rar_q_idx`: size 42.86 MiB, can be reduced 2.01 times, by ~23.65 MiB (~50%)  
    - `i_bloated`: size 2.16 MiB, can be reduced 2.00 times, by ~1.19 MiB (~50%)  
  

  
 


## Recommendations ##
  - [P2] Reduce and prevent high level of index bloat:  
    - tune autovacuum: consider more aggressive autovacuum settings (See F001)  
    - reduce index bloat using one of the approaches mentioned below.  

  - If you want to get exact bloat numbers, clone the database, get index sizes, then apply `VACUUM FULL` and get new index sizes. This will give the most reliable numbers.  

  - To reduce the index bloat, consider using one of the following:  
    - [`VACUUM FULL`](https://www.postgresql.org/docs/current/sql-vacuum.html) (:warning:  requires downtime / maintenance window),  
    - [`REINDEX`](https://www.postgresql.org/docs/current/sql-reindex.html) (`REINDEX INDEX`, `REINDEX TABLE`; :warning:  requires downtime / maintenance window),  
    - recreating indexes online using `CREATE INDEX CONCURRENTLY`, `DROP INDEX CONCURRENTLY` and renaming (not trivial for indexes supporting PK, FK) // Postgres 12 also provides `REINDEX CONCURRENTLY`,  
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
Data collected: 2019-07-01 18:04:34 +0000 UTC  
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
  - [P1] Autovacuum cost delay and limit are not tuned. In Postgres versions prior to version 12, the effective values of `autovacuum_vacuum_cost_limit` and `autovacuum_vacuum_cost_delay` are too conservative, so autovacuum is throttled. Roughly speaking, the default settings mean, that all autovacuum workers (except those which process tables with individual, per-table settings) can read data with combined read throughput only up to ~8 MiB/s. This is extremely low for modern disk systems, and with growing sizes of tables and indexes it might lead to cases when some objects are processed by autovacuum during many hours: it will take ~30 hours to read 1 TiB of data if the allowed throughput is just 8 MiB/s. In some cases, it might lead to serious issues such as performance degradation due to inability to process big tables in timed fashion and growing bloat, and even to such critical issues as transaction ID wraparound. At the same time, if disk system is powerful enough these risks can be easily mitigated by reducing throttling for autovacuum. In Postgres 12, it was decided to reduce `autovacuum_vacuum_cost_delay` 10 times (from 20 ms to 2 ms).
  
 


## Recommendations ##
  - [P1] Autovacuum cost delay and limit are not tuned. Consider raising `autovacuum_vacuum_cost_limit` or reducing `autovacuum_vacuum_cost_delay`: for example, consider reducing `autovacuum_vacuum_cost_delay` to 2 milliseconds, as it was done with default  settings in Postgres 12. For more fine-grained tuning, analyze disk capabilities (first of all, random read and random write troughput) and logs with `log_autovacuum_min_duration = 0`, and do a few iterations of tuning.
  - Useful links related to autovacuum tuning:  
    - [PostgreSQL Documentation. 19.10. Automatic Vacuuming](https://www.postgresql.org/docs/11.0/runtime-config-autovacuum.html)  
    - [Autovacuum Tuning Basics](https://www.2ndquadrant.com/en/blog/autovacuum-tuning-basics/) (2ndQuadrant, 2017)  
    - [Visualizing & Tuning Postgres Autovacuum](https://pganalyze.com/blog/visualizing-and-tuning-postgres-autovacuum) (pganalyze, 2017)  
    - [A Case Study of Tuning Autovacuum in Amazon RDS for PostgreSQL](https://aws.amazon.com/ru/blogs/database/a-case-study-of-tuning-autovacuum-in-amazon-rds-for-postgresql/) (AWS, 2018)  
    - [Understanding Autovacuum](https://www.youtube.com/watch?v=GqrBp0gyNHs) (video, 55 min, Citus Data, 2016)
  
 


---
<a name="postgres-checkup_G001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# G001 Memory-related Settings #

## Observations ##
Data collected: 2019-07-01 18:05:13 +0000 UTC  



### Master (`postgres.master.node`) ###

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





### Replica servers: ###

#### Replica (`postgres.replica.node`) ####

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
  - [P1] shared_buffers value is far from optimal:  
    - server `postgres.master.node` has 3.61 GiB of RAM, while `shared_buffers` is set to 128.00 MiB, or 0% of RAM – it is too low, so Postgres performance on this server is sub-optimal,  
    - server `postgres.replica.node` has 3.61 GiB of RAM, while `shared_buffers` is set to 128.00 MiB, or 0% of RAM – it is too low, so Postgres performance on this server is sub-optimal.  

  
 


## Recommendations ##
  - [P1] shared_buffers value is far from optimal:  
    - server `postgres.master.node`: 923.71 MiB (25%) or a value between 738.97 MiB (20%) and 2.89 GiB (80%),  
    - server `postgres.replica.node`: 923.71 MiB (25%) or a value between 738.97 MiB (20%) and 2.89 GiB (80%).  

  - Useful links related to `shared_buffers` tuning:  
    - [PostgreSQL documentation. 19.4. Resource Consumption](https://www.postgresql.org/docs/current/runtime-config-resource.html)  
    - [Tuning Your PostgreSQL Server](https://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server#shared_buffers) (PostgreSQL Wiki)  
    - [annotated.conf](https://github.com/jberkus/annotated.conf) (Josh Berkus, 2018)  

  
 


---
<a name="postgres-checkup_G002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# G002 Connections and Current Activity #

## Observations ##
Data collected: 2019-07-01 18:05:14 +0000 UTC  



### Master (`postgres.master.node`) ###
  

 \# | User | DB | Current state | Count | State changed >1m ago | State changed >1h ago | Tx age >1m | Tx age >1h
|----|------|----|---------------|-------|-----------------------|-----------------------|------------|-----------
| 1 |ALL users|ALL databases| ALL states | <no value> | 0 | 0 | 0 | 0 | 
| 2 |ALL users|ALL databases| ALL states | <no value> | 0 | 0 | 0 | 0 | 
| 3 |ALL users|ALL databases| ALL states | <no value> | 0 | 0 | 0 | 0 | 
| 4 |`postgres`|ALL databases| ALL states | <no value> | 0 | 0 | 0 | 0 | 
| 5 |`postgres`|ALL databases| ALL states | <no value> | 0 | 0 | 0 | 0 | 
| 6 |`username`|ALL databases| active | <no value> | 0 | 0 | 0 | 0 | 
| 7 |`username`|`dbname`| active | <no value> | 0 | 0 | 0 | 0 | 



### Replica servers: ###

#### Replica (`postgres.replica.node`) ####

  

| \# | User | DB | Current state | Count | State changed >1m ago | State changed >1h ago | Tx age >1m | Tx age >1h |
|----|------|----|---------------|-------|-----------------------|-----------------------|------------|------------|
| 1 |ALL users|ALL databases| ALL states | 4 | 0 | 0 | 0 | 0 |
| 2 |ALL users|ALL databases| ALL states | 3 | 0 | 0 | 0 | 0 |
| 3 |ALL users|ALL databases| ALL states | 3 | 0 | 0 | 0 | 0 |
| 4 |`username`|ALL databases| active | 1 | 0 | 0 | 0 | 0 |
| 5 |`username`|`dbname`| active | 1 | 0 | 0 | 0 | 0 |


## Conclusions ##
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_G003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# G003 Timeouts, Locks, Deadlocks #

## Observations ##
Data collected: 2019-07-01 18:05:14 +0000 UTC  



### Master (`postgres.master.node`) ###
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
| 1| `postgres` | 0 | 0 | 2019-07-01T18:00:30.888809+00:00|00:04:05 |
| 2| `dbname` | 0 | 0 | 2019-07-01T18:00:32.768468+00:00|00:04:03 |
| 3| `checkup_test_db` | 0 | 0 | 2019-07-01T18:03:39.604125+00:00|00:00:56 |


### Replica servers: ###

#### Replica (`postgres.replica.node`) ####

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


#### Databases data ####
  

| Database | Conflicts | &#9660;&nbsp;Deadlocks | Stats reset at | Stat reset |
|----------|-----------|------------------------|----------------|------------|
| `postgres` | 0 | 0 | <no value> | <no value> |
| `dbname` | 0 | 0 | 2019-07-01T18:00:41.854367+00:00 | 00:04:33 |




## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_H001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# H001 Invalid Indexes #

## Observations ##
Data collected: 2019-07-01 18:04:35 +0000 UTC  
Current database: dbname  


### Master (`postgres.master.node`) ###


  

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
Data collected: 2019-07-01 18:05:14 +0000 UTC  
Current database: dbname  
Stats reset: 00:04:00 ago (2019-07-01 18:00:33 +0000 UTC)  
:warning: Statistics age is less than 30 days. Make decisions on index cleanup with caution!
### Never Used Indexes ###

  

| \#| Table | Index | postgres.master.node usage | postgres.replica.node usage | &#9660;&nbsp;Index size | Table size | Supports FK |
|--|-------|-------|----|--------|-----|-----|-----|
|&nbsp;|=====TOTAL=====||||388.18&nbsp;MiB|724.57&nbsp;MiB||
|1|`t_red_fk_1`|`r_red_fk_1_id_idx`|0||21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|2|`t_with_redundant_idx`|`t_with_redundant_idx_f3_1`|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|3|`t_with_redundant_idx`|`t_with_redundant_idx_f2`|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|4|`t_with_redundant_idx`|`t_with_redundant_idx_f1_f2`|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|5|`t_with_redundant_idx`|`t_with_redundant_idx_f1_2`|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|6|`t_with_redundant_idx`|`t_with_redundant_idx_f1`|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|7|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_3`|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|8|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_2`|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|9|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_1`|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|10|`exp_redundant.t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_3`|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|11|`exp_redundant.t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_2`|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|12|`exp_redundant.t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_1`|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|13|`t_with_redundant_idx`|`t_with_redundant_idx_f3_2`|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|14|`t_red_fk_2`|`r_red_fk_2_fk_idx`|0||21.45&nbsp;MiB|42.24&nbsp;MiB||
|15|`t_with_redundant_index`|`i_redundant_2`|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|16|`t_with_redundant_index`|`i_redundant_1`|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|17|`t_with_unused_index`|`i_unused`|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|18|`t_red_fk_1`|`r_red_fk_1_x_idx`|0||21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|19|`bloated`|`i_bloated`|0||2.16&nbsp;MiB|3.47&nbsp;MiB||



### Rarely Used Indexes ###

  

|\#| Table | Index | postgres.master.node usage | postgres.replica.node usage | &#9660;&nbsp;Index size | Table size | Comment | Supports FK|
|--|-------|-------|-----|--------|-----|-----|----|-----|
|&nbsp;|=====TOTAL=====||||64.31&nbsp;MiB|99.66&nbsp;MiB|||
|1|`t_rar_q`|`t_rar_q_idx`|scans: 1\/hour, writes: 1,744,797\/hour||42.86&nbsp;MiB|49.90&nbsp;MiB|Low Scans, High Writes||
|2|`t_with_redundant_idx`|`t_with_redundant_idx_id`|scans: 1\/hour, writes: 1,000,000\/hour||21.45&nbsp;MiB|49.77&nbsp;MiB|Low Scans, High Writes||



### Redundant Indexes ###

  

|\#| Table | Index | Redundant to |postgres.master.node usage | postgres.replica.node usage | &#9660;&nbsp;Index size | Table size | Supports FK |
|--|-------|-------|--------------|--|--------|-----|-----|-----|
|&nbsp;|=====TOTAL=====|||||235.90&nbsp;MiB|441.06&nbsp;MiB||
|1|`t_with_redundant_index`|`i_redundant_2`|`i_redundant_1`<br/>|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|2|`t_with_redundant_idx`|`t_with_redundant_idx_id`|`t_with_redundant_idx_pkey`<br/>|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|3|`t_with_redundant_idx`|`t_with_redundant_idx_f1`|`t_with_redundant_idx_f1_uniq`<br/>|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|4|`t_with_redundant_idx`|`t_with_redundant_idx_f1_2`|`t_with_redundant_idx_f1`<br/>`t_with_redundant_idx_f1_uniq`<br/>|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|5|`t_with_redundant_idx`|`t_with_redundant_idx_f3_2`|`t_with_redundant_idx_f3_1`<br/>|0||21.45&nbsp;MiB|49.77&nbsp;MiB||
|6|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_2`|`t_with_redundant_ref_idx_1`<br/>|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|7|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_3`|`t_with_redundant_ref_idx_1`<br/>`t_with_redundant_ref_idx_2`<br/>|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|8|`exp_redundant.t_with_redundant_ref_idx`|`exp_redundant.t_with_redundant_ref_idx_2`|`exp_redundant.t_with_redundant_ref_idx_1`<br/>|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|9|`exp_redundant.t_with_redundant_ref_idx`|`exp_redundant.t_with_redundant_ref_idx_3`|`exp_redundant.t_with_redundant_ref_idx_1`<br/>`exp_redundant.t_with_redundant_ref_idx_2`<br/>|0||21.45&nbsp;MiB|34.58&nbsp;MiB||
|10|`t_red_fk_1`|`r_red_fk_1_id_idx`|`t_red_fk_1_pkey`<br/>|0||21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|11|`t_red_fk_1`|`r_red_fk_1_x_idx`|`r_red_fk_1_id_idx`<br/>`t_red_fk_1_pkey`<br/>|0||21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|



## Conclusions ##


## Recommendations ##



#### "DO" database migration code ####
```
DROP INDEX CONCURRENTLY i_bloated; -- 2208 kB, Never Used Indexes, table bloated
DROP INDEX CONCURRENTLY r_red_fk_1_id_idx; -- 21 MB, r_red_fk_1_x_idx, Never Used Indexes, t_red_fk_1_pkey, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_1_x_idx; -- 21 MB, Never Used Indexes, r_red_fk_1_id_idx, t_red_fk_1_pkey, table t_red_fk_1
DROP INDEX CONCURRENTLY r_red_fk_2_fk_idx; -- 21 MB, Never Used Indexes, table t_red_fk_2
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1; -- 21 MB, Never Used Indexes, t_with_redundant_idx_f1_uniq, t_with_redundant_idx_f1_2, t_with_redundant_idx_f1_f2, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1_2; -- 21 MB, t_with_redundant_idx_f1_uniq, Never Used Indexes, t_with_redundant_idx_f1_f2, t_with_redundant_idx_f1, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1_f2; -- 21 MB, Never Used Indexes, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f2; -- 21 MB, Never Used Indexes, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f3_1; -- 21 MB, t_with_redundant_idx_f3_2, Never Used Indexes, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_f3_2; -- 21 MB, Never Used Indexes, t_with_redundant_idx_f3_1, table t_with_redundant_idx
DROP INDEX CONCURRENTLY t_with_redundant_idx_id; -- 21 MB, t_with_redundant_idx_pkey, table t_with_redundant_idx
DROP INDEX CONCURRENTLY i_redundant_1; -- 21 MB, i_redundant_2, Never Used Indexes, table t_with_redundant_index
DROP INDEX CONCURRENTLY i_redundant_2; -- 21 MB, Never Used Indexes, i_redundant_1, table t_with_redundant_index
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_1; -- 21 MB, Never Used Indexes, exp_redundant.t_with_redundant_ref_idx_3, Never Used Indexes, t_with_redundant_ref_idx_2, exp_redundant.t_with_redundant_ref_idx_2, t_with_redundant_ref_idx_3, table t_with_redundant_ref_idx
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_2; -- 21 MB, Never Used Indexes, t_with_redundant_ref_idx_1, t_with_redundant_ref_idx_3, exp_redundant.t_with_redundant_ref_idx_1, exp_redundant.t_with_redundant_ref_idx_3, Never Used Indexes, table t_with_redundant_ref_idx
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_3; -- 21 MB, exp_redundant.t_with_redundant_ref_idx_2, Never Used Indexes, t_with_redundant_ref_idx_1, t_with_redundant_ref_idx_2, exp_redundant.t_with_redundant_ref_idx_1, Never Used Indexes, table t_with_redundant_ref_idx
DROP INDEX CONCURRENTLY i_unused; -- 21 MB, Never Used Indexes, table t_with_unused_index

```


#### "UNDO" database migration code ####
```
CREATE INDEX CONCURRENTLY i_bloated ON public.bloated USING btree (i); -- table bloated
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
Data collected: 2019-07-01 18:04:36 +0000 UTC  
Current database: dbname  

### Master (`postgres.master.node`) ###


No data


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K001 Globally Aggregated Query Metrics

## Observations ##
Data collected: 2019-07-01 18:05:14 +0000 UTC  
Current database: dbname  



### Master (`postgres.master.node`) ###
Start: 2019-07-01T18:03:49.091338+00:00  
End: 2019-07-01T18:04:36.607804+00:00  
Period seconds: 47.51646  
Period age: 00:00:47.516466  

Error (calls): 7.50 (83.33%)  
Error (total time): 110.79 (103.48%)

| Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|9<br/>0.19/sec<br/>1.00/call<br/>100.00% |107.06&nbsp;ms<br/>2.253&nbsp;ms/sec<br/>11.896&nbsp;ms/call<br/>100.00% |9<br/>0.19/sec<br/>1.00/call<br/>100.00% |25,703&nbsp;blks<br/>540.93&nbsp;blks/sec<br/>2.86K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|




### Replica servers: ###

#### Replica (`postgres.replica.node`) ####

Start: 2019-07-01T18:04:12.922631+00:00  
End: 2019-07-01T18:05:15.21668+00:00  
Period seconds: 62.29405  
Period age: 00:01:02.294049  

| Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|112<br/>1.80/sec<br/>1.00/call<br/>100.00% |47.61&nbsp;ms<br/>0.764&nbsp;ms/sec<br/>0.425&nbsp;ms/call<br/>100.00% |31<br/>0.50/sec<br/>0.28/call<br/>100.00% |135&nbsp;blks<br/>2.17&nbsp;blks/sec<br/>1.21&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K002 Workload Type ("First Word" Analysis)

## Observations ##
Data collected: 2019-07-01 18:05:14 +0000 UTC  
Current database: dbname  



### Master (`postgres.master.node`) ###
Start: 2019-07-01T18:03:49.091338+00:00  
End: 2019-07-01T18:04:36.607804+00:00  
Period seconds: 47.51646  
Period age: 00:00:47.516466  

Error (calls): 7.50 (83.33%)  
Error (total time): 110.79 (103.48%)

|\# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------|
|1 |with |8<br/>0.17/sec<br/>1.00/call<br/>88.89% |106.94&nbsp;ms<br/>2.251&nbsp;ms/sec<br/>13.368&nbsp;ms/call<br/>99.89% |8<br/>0.17/sec<br/>1.00/call<br/>88.89% |25,703&nbsp;blks<br/>540.93&nbsp;blks/sec<br/>3.22K&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|2 |select |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |0.12&nbsp;ms<br/>0.003&nbsp;ms/sec<br/>0.120&nbsp;ms/call<br/>0.11% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|3 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|4 |update |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|5 |vacuum |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|6 |delete |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|7 |alter |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|




### Replica servers: ###

#### Replica (`postgres.replica.node`) ####

Start: 2019-07-01T18:04:12.922631+00:00  
End: 2019-07-01T18:05:15.21668+00:00  
Period seconds: 62.29405  
Period age: 00:01:02.294049  

| \# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------|
|1 |with |9<br/>0.14/sec<br/>1.00/call<br/>8.04% |42.21&nbsp;ms<br/>0.678&nbsp;ms/sec<br/>4.690&nbsp;ms/call<br/>88.66% |9<br/>0.14/sec<br/>1.00/call<br/>29.03% |127&nbsp;blks<br/>2.04&nbsp;blks/sec<br/>14.11&nbsp;blks/call<br/>94.07% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|2 |select |23<br/>0.37/sec<br/>1.00/call<br/>20.54% |5.10&nbsp;ms<br/>0.082&nbsp;ms/sec<br/>0.222&nbsp;ms/call<br/>10.71% |22<br/>0.35/sec<br/>0.96/call<br/>70.97% |8&nbsp;blks<br/>0.13&nbsp;blks/sec<br/>0.35&nbsp;blks/call<br/>5.93% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|3 |begin |38<br/>0.61/sec<br/>1.00/call<br/>33.93% |0.23&nbsp;ms<br/>0.004&nbsp;ms/sec<br/>0.006&nbsp;ms/call<br/>0.48% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|4 |show |4<br/>0.06/sec<br/>1.00/call<br/>3.57% |0.04&nbsp;ms<br/>0.001&nbsp;ms/sec<br/>0.010&nbsp;ms/call<br/>0.08% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|5 |commit |38<br/>0.61/sec<br/>1.00/call<br/>33.93% |0.03&nbsp;ms<br/>0.001&nbsp;ms/sec<br/>0.001&nbsp;ms/call<br/>0.07% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|6 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K003 Top-50 Queries by total_time

## Observations ##
Data collected: 2019-07-01 18:05:14 +0000 UTC  
Current database: dbname  



### Master (`postgres.master.node`) ###
Start: 2019-07-01T18:03:49.091338+00:00  
End: 2019-07-01T18:04:36.607804+00:00  
Period seconds: 47.51646  
Period age: 00:00:47.516466  

Error (calls): 7.50 (83.33%)  
Error (total time): 110.79 (103.48%)

The list is limited to 50 items.  

| \# | Query | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|----------|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|1 |with&nbsp;data&nbsp;as&nbsp;(<br/>&nbsp;with&nbsp;data&nbsp;as&nbsp;(<br/>select&nbsp;s.\*<br/>&nbsp;from&nbsp;pg\_stat\_database&nbsp;<br/>s<br/>&nbsp;where&nbsp;s.datname&nbsp;=&nbsp;current\_database(<br/>)<br/>&nbsp;)<br/>&nbsp;select<br/>&nbsp;$1&nbsp;as&nbsp;metric,<br/>&nbsp;(select&nbsp;<br/>setting&nbsp;from&nbsp;pg\_settings&nbsp;where&nbsp;<br/>name&nbsp;=&nbsp;$2)&nbsp;as&nbsp;value<br/>&nbsp;union&nbsp;all<br/>select<br/>&nbsp;$3&nbsp;as&nbsp;metric,<br/>&nbsp;case<br/>&nbsp;when&nbsp;<br/>pg\_is\_in\_recovery()&nbsp;then&nbsp;$4&nbsp;&#448;&#448;&nbsp;<br/>$5<br/>&nbsp;&#448;&#448;&nbsp;((((case<br/>&nbsp;when&nbsp;pg\_last\_wal\_receive\_lsn(<br/>)&nbsp;=&nbsp;pg\_last\_wal\_replay\_lsn()&nbsp;then&nbsp;<br/>$6<br/>&nbsp;else&nbsp;extract&nbsp;($7&nbsp;from&nbsp;now()&nbsp;<br/>\-&nbsp;pg\_last\_xact\_replay\_timestamp(<br/>))<br/>&nbsp;end)::int)::text&nbsp;&#448;&#448;&nbsp;$8)::interval)::text<br/>&#448;&#448;&nbsp;$9&nbsp;&#448;&#448;&nbsp;pg\_is\_wal\_replay\_paused(<br/>)::text&nbsp;&#448;&#448;&nbsp;$10<br/>&nbsp;else<br/>&nbsp;$11<br/>&nbsp;end&nbsp;<br/>as&nbsp;value<br/>&nbsp;union&nbsp;all<br/>&nbsp;(<br/>&nbsp;with&nbsp;repl\_groups&nbsp;<br/>as&nbsp;(<br/>&nbsp;select&nbsp;sync\_state,&nbsp;state,<br/>&nbsp;string\_agg(host(client\_addr),&nbsp;<br/>$12)&nbsp;as&nbsp;hosts<br/>&nbsp;from&nbsp;pg\_stat\_replication<br/>group&nbsp;by&nbsp;1,&nbsp;2<br/>&nbsp;)<br/>&nbsp;select<br/>&nbsp;$13,<br/>string\_agg(sync\_state&nbsp;&#448;&#448;&nbsp;$14&nbsp;&#448;&#448;&nbsp;<br/>state&nbsp;&#448;&#448;&nbsp;$15&nbsp;&#448;&#448;&nbsp;hosts,&nbsp;$16)<br/>&nbsp;from&nbsp;<br/>repl\_groups<br/>&nbsp;)<br/>&nbsp;union&nbsp;all<br/>&nbsp;select&nbsp;<br/>$17,&nbsp;pg\_postmaster\_start\_time()::timestamptz(<br/>0)::text<br/>&nbsp;union&nbsp;all<br/>&nbsp;select&nbsp;$18,<br/>&nbsp;(now()&nbsp;\-&nbsp;pg\_postmaster\_start\_time(<br/>))::interval(0)::text<br/>&nbsp;union&nbsp;all<br/>select<br/>&nbsp;$19,<br/>&nbsp;(select&nbsp;(checkpoints\_timed&nbsp;<br/>+&nbsp;checkpoints...<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/1_1.sql) |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |26.15&nbsp;ms<br/>0.550&nbsp;ms/sec<br/>26.148&nbsp;ms/call<br/>24.42% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |20&nbsp;blks<br/>0.42&nbsp;blks/sec<br/>20.00&nbsp;blks/call<br/>0.08% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|2 |with&nbsp;data&nbsp;as&nbsp;(<br/>&nbsp;with&nbsp;overrided\_tables&nbsp;<br/>as&nbsp;(<br/>&nbsp;select<br/>&nbsp;pc.oid&nbsp;as&nbsp;table\_id,<br/>&nbsp;pn.nspname&nbsp;as&nbsp;scheme\_name,<br/>&nbsp;pc.relname&nbsp;<br/>as&nbsp;table\_name,<br/>&nbsp;pc.reloptions&nbsp;as&nbsp;<br/>options<br/>&nbsp;from&nbsp;pg\_class&nbsp;pc<br/>&nbsp;join&nbsp;<br/>pg\_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace<br/>where&nbsp;reloptions::text&nbsp;\~&nbsp;$1<br/>&nbsp;),<br/>&nbsp;step0&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;tbl.oid&nbsp;tblid,<br/>&nbsp;nspname,<br/>&nbsp;tbl.relname&nbsp;AS&nbsp;tblname,<br/>&nbsp;idx.relname&nbsp;AS&nbsp;idxname,<br/>&nbsp;idx.reltuples,<br/>&nbsp;idx.relpages,<br/>&nbsp;idx.relam,<br/>&nbsp;indrelid,<br/>&nbsp;indexrelid,<br/>&nbsp;regexp\_split\_to\_table(<br/>indkey::text,&nbsp;$2)::smallint&nbsp;AS&nbsp;<br/>attnum,&nbsp;<br/>&nbsp;coalesce(substring(array\_to\_string(<br/>idx.reloptions,&nbsp;$3)&nbsp;from&nbsp;$4)::smallint,<br/>&nbsp;$5)&nbsp;as&nbsp;fillfactor,<br/>&nbsp;pg\_total\_relation\_size(<br/>tbl.oid)&nbsp;\-&nbsp;pg\_indexes\_size(tbl.oid)&nbsp;<br/>\-&nbsp;coalesce(pg\_total\_relation\_size(<br/>tbl.reltoastrelid),&nbsp;$6)&nbsp;as&nbsp;table\_size\_bytes<br/>from&nbsp;pg\_index<br/>&nbsp;join&nbsp;pg\_class&nbsp;idx&nbsp;<br/>on&nbsp;idx.oid&nbsp;=&nbsp;pg\_index.indexrelid<br/>join&nbsp;pg\_class&nbsp;tbl&nbsp;on&nbsp;tbl.oid&nbsp;=&nbsp;<br/>pg\_index.indrelid<br/>&nbsp;join&nbsp;pg\_namespace&nbsp;<br/>on&nbsp;pg\_namespace.oid&nbsp;=&nbsp;idx.relnamespace<br/>join&nbsp;pg\_am&nbsp;a&nbsp;ON&nbsp;idx.relam&nbsp;=&nbsp;a.oid<br/>where&nbsp;a.amname&nbsp;=&nbsp;$7<br/>&nbsp;AND&nbsp;pg\_index.indisvalid<br/>AND&nbsp;tbl.relkind&nbsp;=&nbsp;$8<br/>&nbsp;AND&nbsp;idx....<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/2_1.sql) |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |17.34&nbsp;ms<br/>0.365&nbsp;ms/sec<br/>17.340&nbsp;ms/call<br/>16.20% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |11,256&nbsp;blks<br/>236.89&nbsp;blks/sec<br/>11.26K&nbsp;blks/call<br/>43.79% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|3 |with&nbsp;fk\_indexes&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;n.nspname&nbsp;<br/>as&nbsp;schema\_name,<br/>&nbsp;ci.relname&nbsp;as&nbsp;<br/>index\_name,<br/>&nbsp;cr.relname&nbsp;as&nbsp;table\_name,<br/>&nbsp;(confrelid::regclass)::text&nbsp;as&nbsp;<br/>fk\_table\_ref,<br/>&nbsp;array\_to\_string(<br/>indclass,&nbsp;$1)&nbsp;as&nbsp;opclasses<br/>&nbsp;from&nbsp;<br/>pg\_index&nbsp;i<br/>&nbsp;join&nbsp;pg\_class&nbsp;ci&nbsp;on&nbsp;<br/>ci.oid&nbsp;=&nbsp;i.indexrelid&nbsp;and&nbsp;ci.relkind&nbsp;<br/>=&nbsp;$2<br/>&nbsp;join&nbsp;pg\_class&nbsp;cr&nbsp;on&nbsp;cr.oid&nbsp;<br/>=&nbsp;i.indrelid&nbsp;and&nbsp;cr.relkind&nbsp;=&nbsp;$3<br/>join&nbsp;pg\_namespace&nbsp;n&nbsp;on&nbsp;n.oid&nbsp;=&nbsp;<br/>ci.relnamespace<br/>&nbsp;join&nbsp;pg\_constraint&nbsp;<br/>cn&nbsp;on&nbsp;cn.conrelid&nbsp;=&nbsp;cr.oid<br/>&nbsp;left&nbsp;<br/>join&nbsp;pg\_stat\_user\_indexes&nbsp;si&nbsp;on&nbsp;<br/>si.indexrelid&nbsp;=&nbsp;i.indexrelid<br/>&nbsp;where<br/>contype&nbsp;=&nbsp;$4<br/>&nbsp;and&nbsp;i.indisunique&nbsp;<br/>is&nbsp;false<br/>&nbsp;and&nbsp;conkey&nbsp;is&nbsp;not&nbsp;null<br/>and&nbsp;ci.relpages&nbsp;>&nbsp;$5<br/>&nbsp;and&nbsp;si.idx\_scan&nbsp;<br/><&nbsp;$6<br/>),&nbsp;table\_scans&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;<br/>relid,<br/>&nbsp;tables.idx\_scan&nbsp;+&nbsp;tables.seq\_scan&nbsp;<br/>as&nbsp;all\_scans,<br/>&nbsp;(&nbsp;tables.n\_tup\_ins&nbsp;<br/>+&nbsp;tables.n\_tup\_upd&nbsp;+&nbsp;tables.n\_tup\_del&nbsp;<br/>)&nbsp;as&nbsp;writes,<br/>&nbsp;pg\_relation\_size(<br/>relid)&nbsp;as&nbsp;table\_size<br/>&nbsp;from&nbsp;pg\_stat\_user\_tables&nbsp;<br/>as&nbsp;tables<br/>&nbsp;join&nbsp;pg\_class&nbsp;c&nbsp;on&nbsp;c.oid&nbsp;<br/>=&nbsp;relid<br/>&nbsp;where&nbsp;c.relpages&nbsp;>&nbsp;$7<br/>),<br/>&nbsp;all\_writes&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;sum(writes)&nbsp;<br/>as&nbsp;total\_writes<br/>&nbsp;from&nbsp;table\_scans<br/>),<br/>&nbsp;indexes&nbsp;as&nbsp;(<br/>&nbsp;se...<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/3_1.sql) |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |13.81&nbsp;ms<br/>0.291&nbsp;ms/sec<br/>13.806&nbsp;ms/call<br/>12.90% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |10,251&nbsp;blks<br/>215.74&nbsp;blks/sec<br/>10.26K&nbsp;blks/call<br/>39.88% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|4 |with&nbsp;timeouts&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;json\_object\_agg(<br/>s.name,s&nbsp;)&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;where&nbsp;<br/>name&nbsp;in&nbsp;($1,&nbsp;$2,&nbsp;$3)<br/>),&nbsp;locks&nbsp;as&nbsp;<br/>(<br/>&nbsp;select&nbsp;json\_object\_agg(s.name,<br/>s&nbsp;)&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;<br/>in&nbsp;($4,&nbsp;$5,&nbsp;$6,&nbsp;$7,&nbsp;$8,&nbsp;$9)<br/>),&nbsp;<br/>databases\_stat&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;\*,<br/>&nbsp;((now()&nbsp;\-&nbsp;sd.stats\_reset)::interval(<br/>0)::text)&nbsp;as&nbsp;stats\_reset\_age<br/>&nbsp;from&nbsp;<br/>pg\_stat\_database&nbsp;sd<br/>&nbsp;where&nbsp;datname&nbsp;<br/>in&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;datistemplate&nbsp;=&nbsp;$10)<br/>&nbsp;order&nbsp;<br/>by&nbsp;deadlocks&nbsp;desc<br/>),&nbsp;num\_dbs\_data&nbsp;<br/>as&nbsp;(<br/>&nbsp;select<br/>&nbsp;row\_number()&nbsp;over&nbsp;<br/>()&nbsp;num,<br/>&nbsp;ds.\*<br/>&nbsp;from&nbsp;databases\_stat&nbsp;<br/>ds<br/>),&nbsp;dbs\_data&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;json\_object\_agg(<br/>sd.datname,&nbsp;sd)&nbsp;from&nbsp;num\_dbs\_data&nbsp;<br/>sd<br/>),&nbsp;db\_specified\_settings&nbsp;as&nbsp;<br/>(<br/>&nbsp;select&nbsp;json\_object\_agg(dbs.database,<br/>&nbsp;dbs)&nbsp;from<br/>&nbsp;(select<br/>&nbsp;(select&nbsp;datname&nbsp;<br/>from&nbsp;pg\_database&nbsp;where&nbsp;oid&nbsp;=&nbsp;pd.setdatabase)&nbsp;<br/>as&nbsp;database,<br/>&nbsp;\*<br/>&nbsp;from&nbsp;pg\_db\_role\_setting&nbsp;<br/>pd<br/>&nbsp;where<br/>&nbsp;setconfig::text&nbsp;\~&nbsp;$11<br/>and&nbsp;setdatabase&nbsp;is&nbsp;not&nbsp;null&nbsp;and&nbsp;<br/>setdatabase&nbsp;<>&nbsp;$12<br/>&nbsp;)&nbsp;dbs<br/>),&nbsp;user\_specified\_settings&nbsp;<br/>as&nbsp;(<br/>&nbsp;select&nbsp;json\_object\_agg(pr.rolname,<br/>&nbsp;pr)&nbsp;from&nbsp;pg\_roles&nbsp;pr&nbsp;where&nbsp;rolconfig::text&nbsp;<br/>\~&nbsp;$13...<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/4_1.sql) |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |12.93&nbsp;ms<br/>0.272&nbsp;ms/sec<br/>12.932&nbsp;ms/call<br/>12.08% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |16&nbsp;blks<br/>0.34&nbsp;blks/sec<br/>16.00&nbsp;blks/call<br/>0.06% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|5 |with&nbsp;overrided\_tables&nbsp;as&nbsp;(<br/>&nbsp;select<br/>pc.oid&nbsp;as&nbsp;table\_id,<br/>&nbsp;pn.nspname&nbsp;<br/>as&nbsp;scheme\_name,<br/>&nbsp;pc.relname&nbsp;as&nbsp;<br/>table\_name,<br/>&nbsp;pc.reloptions&nbsp;as&nbsp;options<br/>from&nbsp;pg\_class&nbsp;pc<br/>&nbsp;join&nbsp;pg\_namespace&nbsp;<br/>pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace<br/>where&nbsp;reloptions::text&nbsp;\~&nbsp;$1<br/>),&nbsp;<br/>data&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;coalesce(nullif(<br/>schemaname&nbsp;&#448;&#448;&nbsp;$2,&nbsp;$3),&nbsp;$4)&nbsp;&#448;&#448;&nbsp;c.relname&nbsp;<br/>as&nbsp;"relation",<br/>&nbsp;c.relkind,<br/>&nbsp;now(<br/>)&nbsp;\-&nbsp;last\_autovacuum&nbsp;as&nbsp;since\_last\_autovacuum,<br/>&nbsp;now()&nbsp;\-&nbsp;last\_vacuum&nbsp;as&nbsp;since\_last\_vacuum,<br/>&nbsp;autovacuum\_count&nbsp;as&nbsp;av\_count,<br/>&nbsp;vacuum\_count&nbsp;as&nbsp;v\_count,<br/>&nbsp;n\_tup\_ins,<br/>&nbsp;n\_tup\_upd,<br/>&nbsp;n\_tup\_del,<br/>&nbsp;reltuples::int8&nbsp;<br/>as&nbsp;pg\_class\_reltuples,<br/>&nbsp;n\_live\_tup,<br/>&nbsp;n\_dead\_tup,<br/>&nbsp;round((n\_dead\_tup::numeric&nbsp;<br/>\*&nbsp;$5&nbsp;/&nbsp;nullif(n\_dead\_tup&nbsp;+&nbsp;n\_live\_tup,<br/>&nbsp;$6))::numeric,&nbsp;$7)&nbsp;as&nbsp;dead\_ratio,<br/>&nbsp;case&nbsp;when&nbsp;ot.table\_id&nbsp;is&nbsp;not&nbsp;<br/>null&nbsp;then&nbsp;$8&nbsp;else&nbsp;$9&nbsp;end&nbsp;as&nbsp;overrided\_settings<br/>from&nbsp;pg\_stat\_all\_tables<br/>&nbsp;join&nbsp;pg\_class&nbsp;<br/>c&nbsp;on&nbsp;c.oid&nbsp;=&nbsp;relid<br/>&nbsp;left&nbsp;join&nbsp;overrided\_tables&nbsp;<br/>ot&nbsp;on&nbsp;ot.table\_id&nbsp;=&nbsp;c.oid<br/>&nbsp;where&nbsp;<br/>reltuples&nbsp;>&nbsp;$10<br/>&nbsp;order&nbsp;by&nbsp;13&nbsp;desc<br/>),<br/>&nbsp;num\_dead\_tuples&nbsp;as&nbsp;(<br/>&nbsp;select<br/>row\_number()&nbsp;over&nbsp;()&nbsp;num,<br/>&nbsp;data.\*<br/>from&nbsp;da...<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/5_1.sql) |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |12.45&nbsp;ms<br/>0.262&nbsp;ms/sec<br/>12.446&nbsp;ms/call<br/>11.62% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |53&nbsp;blks<br/>1.12&nbsp;blks/sec<br/>53.00&nbsp;blks/call<br/>0.21% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|6 |with&nbsp;data&nbsp;as&nbsp;(<br/>&nbsp;with&nbsp;fk\_actions&nbsp;<br/>(&nbsp;code,&nbsp;action&nbsp;)&nbsp;as&nbsp;(<br/>&nbsp;values&nbsp;(<br/>$1,&nbsp;$2),<br/>&nbsp;($3,&nbsp;$4),<br/>&nbsp;($5,&nbsp;$6),<br/>($7,&nbsp;$8),<br/>&nbsp;($9,&nbsp;$10)<br/>&nbsp;),&nbsp;fk\_list&nbsp;<br/>as&nbsp;(<br/>&nbsp;select<br/>&nbsp;pg\_constraint.oid&nbsp;<br/>as&nbsp;fkoid,&nbsp;conrelid,&nbsp;confrelid&nbsp;as&nbsp;<br/>parentid,<br/>&nbsp;conname,<br/>&nbsp;relname,<br/>nspname,<br/>&nbsp;fk\_actions\_update.action&nbsp;<br/>as&nbsp;update\_action,<br/>&nbsp;fk\_actions\_delete.action&nbsp;<br/>as&nbsp;delete\_action,<br/>&nbsp;conkey&nbsp;as&nbsp;key\_cols,<br/>&nbsp;pg\_class.relpages<br/>&nbsp;from&nbsp;pg\_constraint<br/>join&nbsp;pg\_class&nbsp;on&nbsp;conrelid&nbsp;=&nbsp;pg\_class.oid<br/>join&nbsp;pg\_namespace&nbsp;on&nbsp;pg\_class.relnamespace&nbsp;<br/>=&nbsp;pg\_namespace.oid<br/>&nbsp;join&nbsp;fk\_actions&nbsp;<br/>as&nbsp;fk\_actions\_update&nbsp;on&nbsp;confupdtype&nbsp;<br/>=&nbsp;fk\_actions\_update.code<br/>&nbsp;join&nbsp;<br/>fk\_actions&nbsp;as&nbsp;fk\_actions\_delete&nbsp;<br/>on&nbsp;confdeltype&nbsp;=&nbsp;fk\_actions\_delete.code<br/>where&nbsp;contype&nbsp;=&nbsp;$11&nbsp;<br/>&nbsp;),&nbsp;fk\_attributes&nbsp;<br/>as&nbsp;(<br/>&nbsp;select&nbsp;fkoid,&nbsp;conrelid,&nbsp;attname,<br/>&nbsp;attnum<br/>&nbsp;from&nbsp;fk\_list<br/>&nbsp;join&nbsp;pg\_attribute&nbsp;<br/>on&nbsp;conrelid&nbsp;=&nbsp;attrelid&nbsp;and&nbsp;attnum&nbsp;<br/>=&nbsp;any(key\_cols)<br/>&nbsp;order&nbsp;by&nbsp;fkoid,<br/>&nbsp;attnum<br/>&nbsp;),&nbsp;fk\_cols\_list&nbsp;as&nbsp;(<br/>select&nbsp;fkoid,&nbsp;array\_agg(attname)&nbsp;<br/>as&nbsp;cols\_list<br/>&nbsp;from&nbsp;fk\_attributes<br/>group&nbsp;by&nbsp;fkoid<br/>&nbsp;),&nbsp;index\_list&nbsp;as&nbsp;<br/>(<br/>&nbsp;select<br/>&nbsp;indexrelid&nbsp;as&nbsp;indexid,<br/>&nbsp;pg\_cla...<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/6_1.sql) |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |12.15&nbsp;ms<br/>0.256&nbsp;ms/sec<br/>12.152&nbsp;ms/call<br/>11.35% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |60&nbsp;blks<br/>1.26&nbsp;blks/sec<br/>60.00&nbsp;blks/call<br/>0.23% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|7 |with&nbsp;data&nbsp;as&nbsp;(<br/>&nbsp;with&nbsp;overrided\_tables&nbsp;<br/>as&nbsp;(<br/>&nbsp;select<br/>&nbsp;pc.oid&nbsp;as&nbsp;table\_id,<br/>&nbsp;pn.nspname&nbsp;as&nbsp;scheme\_name,<br/>&nbsp;pc.relname&nbsp;<br/>as&nbsp;table\_name,<br/>&nbsp;pc.reloptions&nbsp;as&nbsp;<br/>options<br/>&nbsp;from&nbsp;pg\_class&nbsp;pc<br/>&nbsp;join&nbsp;<br/>pg\_namespace&nbsp;pn&nbsp;on&nbsp;pn.oid&nbsp;=&nbsp;pc.relnamespace<br/>where&nbsp;reloptions::text&nbsp;\~&nbsp;$1<br/>&nbsp;),<br/>&nbsp;step1&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;tbl.oid&nbsp;tblid,<br/>&nbsp;ns.nspname&nbsp;as&nbsp;schema\_name,<br/>&nbsp;tbl.relname&nbsp;<br/>as&nbsp;table\_name,<br/>&nbsp;tbl.reltuples,<br/>tbl.relpages&nbsp;as&nbsp;heappages,<br/>&nbsp;coalesce(<br/>toast.relpages,&nbsp;$2)&nbsp;as&nbsp;toastpages,<br/>&nbsp;coalesce(toast.reltuples,&nbsp;$3)&nbsp;<br/>as&nbsp;toasttuples,<br/>&nbsp;coalesce(substring(<br/>array\_to\_string(tbl.reloptions,<br/>&nbsp;$4)&nbsp;from&nbsp;$5&nbsp;for&nbsp;$6)::int2,&nbsp;$7)&nbsp;<br/>as&nbsp;fillfactor,<br/>&nbsp;current\_setting(<br/>$8)::numeric&nbsp;as&nbsp;bs,<br/>&nbsp;case&nbsp;when&nbsp;<br/>version()&nbsp;\~&nbsp;$9&nbsp;then&nbsp;$10&nbsp;else&nbsp;$11&nbsp;<br/>end&nbsp;as&nbsp;ma,&nbsp;<br/>&nbsp;$12&nbsp;as&nbsp;page\_hdr,<br/>$13&nbsp;+&nbsp;case&nbsp;when&nbsp;max(coalesce(null\_frac,<br/>&nbsp;$14))&nbsp;>&nbsp;$15&nbsp;then&nbsp;($16&nbsp;+&nbsp;count(<br/>\*))&nbsp;/&nbsp;$17&nbsp;else&nbsp;$18::int&nbsp;end<br/>&nbsp;+&nbsp;<br/>case&nbsp;when&nbsp;tbl.relhasoids&nbsp;then&nbsp;$19&nbsp;<br/>else&nbsp;$20&nbsp;end&nbsp;as&nbsp;tpl\_hdr\_size,<br/>sum(($21&nbsp;\-&nbsp;coalesce(s.null\_frac,<br/>&nbsp;$22))&nbsp;\*&nbsp;coalesce(s.avg\_width,&nbsp;<br/>$23))&nbsp;as&nbsp;tpl\_data\_size,<br/>&nbsp;bool\_or(<br/>att.atttypid&nbsp;=&nbsp;$24::regtype)&nbsp;or&nbsp;<br/>count(att.attn...<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/7_1.sql) |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |10.17&nbsp;ms<br/>0.214&nbsp;ms/sec<br/>10.171&nbsp;ms/call<br/>9.50% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |4,041&nbsp;blks<br/>85.04&nbsp;blks/sec<br/>4.05K&nbsp;blks/call<br/>15.72% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|8 |with&nbsp;data&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;ae.name,<br/>&nbsp;installed\_version,<br/>&nbsp;default\_version,<br/>&nbsp;case&nbsp;when&nbsp;installed\_version&nbsp;<>&nbsp;<br/>default\_version&nbsp;then&nbsp;$1&nbsp;end&nbsp;as&nbsp;<br/>is\_old<br/>&nbsp;from&nbsp;pg\_extension&nbsp;e<br/>&nbsp;join&nbsp;<br/>pg\_available\_extensions&nbsp;ae&nbsp;on&nbsp;extname&nbsp;<br/>=&nbsp;ae.name<br/>&nbsp;order&nbsp;by&nbsp;ae.name<br/>&nbsp;),<br/>&nbsp;withsettins&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;data.\*,<br/>&nbsp;(select&nbsp;json\_object\_agg(name,<br/>&nbsp;setting)<br/>&nbsp;from&nbsp;pg\_settings<br/>&nbsp;where&nbsp;<br/>name&nbsp;\~&nbsp;data.name)&nbsp;as&nbsp;settings&nbsp;from&nbsp;<br/>data<br/>&nbsp;order&nbsp;by&nbsp;name<br/>&nbsp;)<br/>&nbsp;select&nbsp;<br/>json\_object\_agg(withsettins.name,<br/>&nbsp;withsettins)&nbsp;as&nbsp;json&nbsp;from&nbsp;withsettins<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/8_1.sql) |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |1.94&nbsp;ms<br/>0.041&nbsp;ms/sec<br/>1.944&nbsp;ms/call<br/>1.82% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |6&nbsp;blks<br/>0.13&nbsp;blks/sec<br/>6.00&nbsp;blks/call<br/>0.02% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|9 |select<br/>&nbsp;json\_build\_object($1,&nbsp;version(<br/>),<br/>&nbsp;$2,&nbsp;current\_setting($3),<br/>&nbsp;$4,<br/>&nbsp;(select&nbsp;regexp\_replace(current\_setting(<br/>$5),&nbsp;$6,&nbsp;$7)),<br/>&nbsp;$8,&nbsp;(select&nbsp;regexp\_replace(<br/>current\_setting($9),&nbsp;$10,&nbsp;$11)))<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/9_1.sql) |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |0.12&nbsp;ms<br/>0.003&nbsp;ms/sec<br/>0.120&nbsp;ms/call<br/>0.11% |1<br/>0.02/sec<br/>1.00/call<br/>11.11% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|10 |select&nbsp;pg\_reload\_conf()<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/10_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|11 |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_kcache<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/11_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|12 |create&nbsp;index&nbsp;concurrently&nbsp;i\_85&nbsp;on&nbsp;<br/>t\_85(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/12_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|13 |create&nbsp;index&nbsp;concurrently&nbsp;i\_unused&nbsp;<br/>on&nbsp;t\_with\_unused\_index(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/13_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|14 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_id&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(id)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/14_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|15 |create&nbsp;index&nbsp;concurrently&nbsp;i\_80&nbsp;on&nbsp;<br/>t\_80(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/15_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|16 |create&nbsp;index&nbsp;t\_with\_redundant\_ref\_idx\_3&nbsp;<br/>on&nbsp;exp\_redundant.t\_with\_redundant\_ref\_idx&nbsp;<br/>using&nbsp;btree&nbsp;(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/16_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|17 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f3\_1&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f3)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/17_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|18 |create&nbsp;table&nbsp;t\_slw\_q&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;<br/>from&nbsp;generate\_series(0,&nbsp;10000000)&nbsp;<br/>\_(id)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/18_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|19 |create&nbsp;index&nbsp;r\_red\_fk\_2\_fk\_idx&nbsp;on&nbsp;<br/>t\_red\_fk\_2(r\_t1\_id)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/19_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|20 |create&nbsp;database&nbsp;dbname<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/20_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|21 |create&nbsp;index&nbsp;concurrently&nbsp;i\_redundant\_1&nbsp;<br/>on&nbsp;t\_with\_redundant\_index(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/21_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|22 |create&nbsp;index&nbsp;concurrently&nbsp;i\_91&nbsp;on&nbsp;<br/>t\_91(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/22_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|23 |create&nbsp;table&nbsp;test\_schema.t\_with\_invalid\_index&nbsp;<br/>as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(<br/>1,&nbsp;1000000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/23_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|24 |create&nbsp;table&nbsp;t\_with\_unused\_index&nbsp;<br/>as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(<br/>1,&nbsp;1000000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/24_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|25 |create&nbsp;index&nbsp;concurrently&nbsp;i\_62&nbsp;on&nbsp;<br/>t\_62(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/25_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|26 |create&nbsp;index&nbsp;t\_rar\_q\_idx&nbsp;on&nbsp;t\_rar\_q(<br/>id)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/26_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|27 |create&nbsp;index&nbsp;concurrently&nbsp;i\_107&nbsp;<br/>on&nbsp;t\_107(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/27_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|28 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f1\_f2&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f1,f2)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/28_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|29 |alter&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;add&nbsp;primary&nbsp;<br/>key&nbsp;(id)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/29_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|30 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f1\_2&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f1)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/30_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|31 |create&nbsp;table&nbsp;public.t\_with\_redundant\_ref\_idx&nbsp;<br/>as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(<br/>1,&nbsp;1000000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/31_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|32 |create&nbsp;index&nbsp;concurrently&nbsp;i\_97&nbsp;on&nbsp;<br/>t\_97(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/32_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|33 |create&nbsp;table&nbsp;t\_rar\_q&nbsp;as&nbsp;select&nbsp;id,<br/>&nbsp;(random()&nbsp;\*&nbsp;1000000)::int8&nbsp;as&nbsp;<br/>t\_dat&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;<br/>\_(id)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/33_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|34 |create&nbsp;index&nbsp;concurrently&nbsp;i\_105&nbsp;<br/>on&nbsp;t\_105(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/34_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|35 |update&nbsp;t\_rar\_q&nbsp;set&nbsp;t\_dat=$1&nbsp;where&nbsp;<br/>t\_dat&nbsp;between&nbsp;$2&nbsp;and&nbsp;$3<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/35_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|36 |create&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;as&nbsp;select&nbsp;<br/>id::int8&nbsp;from&nbsp;generate\_series(0,<br/>&nbsp;1000000)&nbsp;\_(id)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/36_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|37 |create&nbsp;index&nbsp;concurrently&nbsp;i\_90&nbsp;on&nbsp;<br/>t\_90(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/37_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|38 |create&nbsp;index&nbsp;concurrently&nbsp;i\_67&nbsp;on&nbsp;<br/>t\_67(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/38_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|39 |create&nbsp;index&nbsp;concurrently&nbsp;i\_71&nbsp;on&nbsp;<br/>t\_71(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/39_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|40 |delete&nbsp;from&nbsp;bloated&nbsp;where&nbsp;i&nbsp;%&nbsp;$1&nbsp;<br/>=&nbsp;$2<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/40_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|41 |VACUUM&nbsp;ANALYZE<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/41_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|42 |create&nbsp;index&nbsp;concurrently&nbsp;i\_8&nbsp;on&nbsp;<br/>t\_8(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/42_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|43 |create&nbsp;index&nbsp;t\_with\_redundant\_ref\_idx\_2&nbsp;<br/>on&nbsp;public.t\_with\_redundant\_ref\_idx&nbsp;<br/>using&nbsp;btree&nbsp;(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/43_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|44 |create&nbsp;index&nbsp;concurrently&nbsp;i\_98&nbsp;on&nbsp;<br/>t\_98(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/44_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|45 |create&nbsp;index&nbsp;concurrently&nbsp;i\_81&nbsp;on&nbsp;<br/>t\_81(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/45_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|46 |create&nbsp;index&nbsp;concurrently&nbsp;i\_89&nbsp;on&nbsp;<br/>t\_89(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/46_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|47 |create&nbsp;table&nbsp;t\_4&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;<br/>generate\_series(1,&nbsp;1000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/47_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|48 |create&nbsp;index&nbsp;concurrently&nbsp;i\_79&nbsp;on&nbsp;<br/>t\_79(i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/48_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|49 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f1&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f1)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/49_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|50 |create&nbsp;index&nbsp;i\_bloated&nbsp;on&nbsp;bloated(<br/>i)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/50_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |




### Replica servers: ###

#### Replica (`postgres.replica.node`) ####

Start: 2019-07-01T18:04:12.922631+00:00  
End: 2019-07-01T18:05:15.21668+00:00  
Period seconds: 62.29405  
Period age: 00:01:02.294049  

  

| \# | Query | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|----------|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|1 |with&nbsp;data&nbsp;as&nbsp;(<br/>&nbsp;with&nbsp;data&nbsp;as&nbsp;(<br/>select&nbsp;s.\*<br/>&nbsp;from&nbsp;pg\_stat\_database&nbsp;<br/>s<br/>&nbsp;where&nbsp;s.datname&nbsp;=&nbsp;current\_database(<br/>)<br/>&nbsp;)<br/>&nbsp;select<br/>&nbsp;$1&nbsp;as&nbsp;metric,<br/>&nbsp;(select&nbsp;<br/>setting&nbsp;from&nbsp;pg\_settings&nbsp;where&nbsp;<br/>name&nbsp;=&nbsp;$2)&nbsp;as&nbsp;value<br/>&nbsp;union&nbsp;all<br/>select<br/>&nbsp;$3&nbsp;as&nbsp;metric,<br/>&nbsp;case<br/>&nbsp;when&nbsp;<br/>pg\_is\_in\_recovery()&nbsp;then&nbsp;$4&nbsp;&#448;&#448;&nbsp;<br/>$5<br/>&nbsp;&#448;&#448;&nbsp;((((case<br/>&nbsp;when&nbsp;pg\_last\_wal\_receive\_lsn(<br/>)&nbsp;=&nbsp;pg\_last\_wal\_replay\_lsn()&nbsp;then&nbsp;<br/>$6<br/>&nbsp;else&nbsp;extract&nbsp;($7&nbsp;from&nbsp;now()&nbsp;<br/>\-&nbsp;pg\_last\_xact\_replay\_timestamp(<br/>))<br/>&nbsp;end)::int)::text&nbsp;&#448;&#448;&nbsp;$8)::interval)::text<br/>&#448;&#448;&nbsp;$9&nbsp;&#448;&#448;&nbsp;pg\_is\_wal\_replay\_paused(<br/>)::text&nbsp;&#448;&#448;&nbsp;$10<br/>&nbsp;else<br/>&nbsp;$11<br/>&nbsp;end&nbsp;<br/>as&nbsp;value<br/>&nbsp;union&nbsp;all<br/>&nbsp;(<br/>&nbsp;with&nbsp;repl\_groups&nbsp;<br/>as&nbsp;(<br/>&nbsp;select&nbsp;sync\_state,&nbsp;state,<br/>&nbsp;string\_agg(host(client\_addr),&nbsp;<br/>$12)&nbsp;as&nbsp;hosts<br/>&nbsp;from&nbsp;pg\_stat\_replication<br/>group&nbsp;by&nbsp;1,&nbsp;2<br/>&nbsp;)<br/>&nbsp;select<br/>&nbsp;$13,<br/>string\_agg(sync\_state&nbsp;&#448;&#448;&nbsp;$14&nbsp;&#448;&#448;&nbsp;<br/>state&nbsp;&#448;&#448;&nbsp;$15&nbsp;&#448;&#448;&nbsp;hosts,&nbsp;$16)<br/>&nbsp;from&nbsp;<br/>repl\_groups<br/>&nbsp;)<br/>&nbsp;union&nbsp;all<br/>&nbsp;select&nbsp;<br/>$17,&nbsp;pg\_postmaster\_start\_time()::timestamptz(<br/>0)::text<br/>&nbsp;union&nbsp;all<br/>&nbsp;select&nbsp;$18,<br/>&nbsp;(now()&nbsp;\-&nbsp;pg\_postmaster\_start\_time(<br/>))::interval(0)::text<br/>&nbsp;union&nbsp;all<br/>select<br/>&nbsp;$19,<br/>&nbsp;(select&nbsp;(checkpoints\_timed&nbsp;<br/>+&nbsp;checkpoints...<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/1_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |16.76&nbsp;ms<br/>0.269&nbsp;ms/sec<br/>16.763&nbsp;ms/call<br/>35.21% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |18&nbsp;blks<br/>0.29&nbsp;blks/sec<br/>18.00&nbsp;blks/call<br/>13.33% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|2 |with&nbsp;timeouts&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;json\_object\_agg(<br/>s.name,s&nbsp;)&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;where&nbsp;<br/>name&nbsp;in&nbsp;($1,&nbsp;$2,&nbsp;$3)<br/>),&nbsp;locks&nbsp;as&nbsp;<br/>(<br/>&nbsp;select&nbsp;json\_object\_agg(s.name,<br/>s&nbsp;)&nbsp;from&nbsp;pg\_settings&nbsp;s&nbsp;where&nbsp;name&nbsp;<br/>in&nbsp;($4,&nbsp;$5,&nbsp;$6,&nbsp;$7,&nbsp;$8,&nbsp;$9)<br/>),&nbsp;<br/>databases\_stat&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;\*,<br/>&nbsp;((now()&nbsp;\-&nbsp;sd.stats\_reset)::interval(<br/>0)::text)&nbsp;as&nbsp;stats\_reset\_age<br/>&nbsp;from&nbsp;<br/>pg\_stat\_database&nbsp;sd<br/>&nbsp;where&nbsp;datname&nbsp;<br/>in&nbsp;(SELECT&nbsp;datname&nbsp;FROM&nbsp;pg\_database&nbsp;<br/>WHERE&nbsp;datistemplate&nbsp;=&nbsp;$10)<br/>&nbsp;order&nbsp;<br/>by&nbsp;deadlocks&nbsp;desc<br/>),&nbsp;num\_dbs\_data&nbsp;<br/>as&nbsp;(<br/>&nbsp;select<br/>&nbsp;row\_number()&nbsp;over&nbsp;<br/>()&nbsp;num,<br/>&nbsp;ds.\*<br/>&nbsp;from&nbsp;databases\_stat&nbsp;<br/>ds<br/>),&nbsp;dbs\_data&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;json\_object\_agg(<br/>sd.datname,&nbsp;sd)&nbsp;from&nbsp;num\_dbs\_data&nbsp;<br/>sd<br/>),&nbsp;db\_specified\_settings&nbsp;as&nbsp;<br/>(<br/>&nbsp;select&nbsp;json\_object\_agg(dbs.database,<br/>&nbsp;dbs)&nbsp;from<br/>&nbsp;(select<br/>&nbsp;(select&nbsp;datname&nbsp;<br/>from&nbsp;pg\_database&nbsp;where&nbsp;oid&nbsp;=&nbsp;pd.setdatabase)&nbsp;<br/>as&nbsp;database,<br/>&nbsp;\*<br/>&nbsp;from&nbsp;pg\_db\_role\_setting&nbsp;<br/>pd<br/>&nbsp;where<br/>&nbsp;setconfig::text&nbsp;\~&nbsp;$11<br/>and&nbsp;setdatabase&nbsp;is&nbsp;not&nbsp;null&nbsp;and&nbsp;<br/>setdatabase&nbsp;<>&nbsp;$12<br/>&nbsp;)&nbsp;dbs<br/>),&nbsp;user\_specified\_settings&nbsp;<br/>as&nbsp;(<br/>&nbsp;select&nbsp;json\_object\_agg(pr.rolname,<br/>&nbsp;pr)&nbsp;from&nbsp;pg\_roles&nbsp;pr&nbsp;where&nbsp;rolconfig::text&nbsp;<br/>\~&nbsp;$13...<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/2_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |12.33&nbsp;ms<br/>0.198&nbsp;ms/sec<br/>12.326&nbsp;ms/call<br/>25.89% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |7&nbsp;blks<br/>0.11&nbsp;blks/sec<br/>7.00&nbsp;blks/call<br/>5.19% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|3 |with&nbsp;settings&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;json\_object\_agg(<br/>s.name,&nbsp;s)<br/>&nbsp;from&nbsp;(<br/>&nbsp;select&nbsp;\*<br/>&nbsp;from&nbsp;<br/>pg\_settings&nbsp;s<br/>&nbsp;where<br/>&nbsp;name&nbsp;not&nbsp;<br/>in&nbsp;($1,&nbsp;$2,&nbsp;$3)<br/>&nbsp;order&nbsp;by&nbsp;name)&nbsp;<br/>s<br/>),&nbsp;configs&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;json\_object\_agg(<br/>s.name,&nbsp;s)<br/>&nbsp;from&nbsp;(select&nbsp;\*&nbsp;from&nbsp;<br/>pg\_config&nbsp;s&nbsp;order&nbsp;by&nbsp;name)&nbsp;s<br/>)<br/>select&nbsp;<br/>json\_build\_object($4,&nbsp;(select&nbsp;\*&nbsp;<br/>from&nbsp;settings),&nbsp;$5,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;<br/>configs))<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/3_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |3.86&nbsp;ms<br/>0.062&nbsp;ms/sec<br/>3.861&nbsp;ms/call<br/>8.11% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |3&nbsp;blks<br/>0.05&nbsp;blks/sec<br/>3.00&nbsp;blks/call<br/>2.22% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|4 |select&nbsp;json\_object\_agg(s.name,&nbsp;s)&nbsp;<br/>from&nbsp;(select&nbsp;\*&nbsp;from&nbsp;pg\_settings&nbsp;<br/>s&nbsp;order&nbsp;by&nbsp;category,&nbsp;name)&nbsp;s<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/4_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |3.24&nbsp;ms<br/>0.052&nbsp;ms/sec<br/>3.240&nbsp;ms/call<br/>6.81% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |3&nbsp;blks<br/>0.05&nbsp;blks/sec<br/>3.00&nbsp;blks/call<br/>2.22% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|5 |with&nbsp;data&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;ae.name,<br/>&nbsp;installed\_version,<br/>&nbsp;default\_version,<br/>&nbsp;case&nbsp;when&nbsp;installed\_version&nbsp;<>&nbsp;<br/>default\_version&nbsp;then&nbsp;$1&nbsp;end&nbsp;as&nbsp;<br/>is\_old<br/>&nbsp;from&nbsp;pg\_extension&nbsp;e<br/>&nbsp;join&nbsp;<br/>pg\_available\_extensions&nbsp;ae&nbsp;on&nbsp;extname&nbsp;<br/>=&nbsp;ae.name<br/>&nbsp;order&nbsp;by&nbsp;ae.name<br/>&nbsp;),<br/>&nbsp;withsettins&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;data.\*,<br/>&nbsp;(select&nbsp;json\_object\_agg(name,<br/>&nbsp;setting)<br/>&nbsp;from&nbsp;pg\_settings<br/>&nbsp;where&nbsp;<br/>name&nbsp;\~&nbsp;data.name)&nbsp;as&nbsp;settings&nbsp;from&nbsp;<br/>data<br/>&nbsp;order&nbsp;by&nbsp;name<br/>&nbsp;)<br/>&nbsp;select&nbsp;<br/>json\_object\_agg(withsettins.name,<br/>&nbsp;withsettins)&nbsp;as&nbsp;json&nbsp;from&nbsp;withsettins<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/5_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |3.16&nbsp;ms<br/>0.051&nbsp;ms/sec<br/>3.161&nbsp;ms/call<br/>6.64% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |10&nbsp;blks<br/>0.16&nbsp;blks/sec<br/>10.00&nbsp;blks/call<br/>7.41% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|6 |with&nbsp;stat\_statements&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;<br/>json\_object\_agg(pg\_settings.name,<br/>&nbsp;pg\_settings)&nbsp;as&nbsp;json&nbsp;from&nbsp;pg\_settings&nbsp;<br/>where&nbsp;name&nbsp;\~&nbsp;$1<br/>),&nbsp;kcache&nbsp;as&nbsp;(<br/>select&nbsp;json\_object\_agg(pg\_settings.name,<br/>&nbsp;pg\_settings)&nbsp;as&nbsp;json&nbsp;from&nbsp;pg\_settings&nbsp;<br/>where&nbsp;name&nbsp;\~&nbsp;$2<br/>)<br/>select&nbsp;json\_build\_object(<br/>$3,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;stat\_statements),<br/>&nbsp;$4,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;kcache))<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/6_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |2.05&nbsp;ms<br/>0.033&nbsp;ms/sec<br/>2.045&nbsp;ms/call<br/>4.30% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |2&nbsp;blks<br/>0.03&nbsp;blks/sec<br/>2.00&nbsp;blks/call<br/>1.48% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|7 |with&nbsp;settings\_count&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;<br/>json\_object\_agg(coalesce(s.sourcefile,<br/>&nbsp;$1),&nbsp;s.count)<br/>&nbsp;from&nbsp;(select&nbsp;sourcefile,<br/>&nbsp;count(ps.\*)&nbsp;as&nbsp;count&nbsp;from&nbsp;pg\_settings&nbsp;<br/>ps&nbsp;group&nbsp;by&nbsp;1)&nbsp;s<br/>),&nbsp;changes&nbsp;as&nbsp;<br/>(<br/>&nbsp;select<br/>&nbsp;json\_agg(json\_build\_object(<br/>&nbsp;$2,&nbsp;s.sourcefile,<br/>&nbsp;$3,&nbsp;s.count,<br/>&nbsp;$4,&nbsp;s.examples<br/>&nbsp;))<br/>&nbsp;from&nbsp;(<br/>&nbsp;select<br/>sourcefile,<br/>&nbsp;count(ps.\*)&nbsp;as&nbsp;count,<br/>&nbsp;(json\_agg(name&nbsp;order&nbsp;by&nbsp;name)&nbsp;<br/>filter&nbsp;(where&nbsp;sourcefile&nbsp;is&nbsp;not&nbsp;<br/>null))&nbsp;as&nbsp;examples<br/>&nbsp;from&nbsp;pg\_settings&nbsp;<br/>ps&nbsp;group&nbsp;by&nbsp;1<br/>&nbsp;)&nbsp;s<br/>)<br/>select&nbsp;json\_build\_object(<br/>$5,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;settings\_count),<br/>&nbsp;$6,&nbsp;(select&nbsp;\*&nbsp;from&nbsp;changes))<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/7_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |1.82&nbsp;ms<br/>0.029&nbsp;ms/sec<br/>1.823&nbsp;ms/call<br/>3.83% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |3&nbsp;blks<br/>0.05&nbsp;blks/sec<br/>3.00&nbsp;blks/call<br/>2.22% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|8 |with&nbsp;global\_settings&nbsp;as&nbsp;(<br/>&nbsp;select<br/>json\_object\_agg(s.name,&nbsp;s)<br/>&nbsp;from&nbsp;<br/>(<br/>&nbsp;select&nbsp;\*<br/>&nbsp;from&nbsp;pg\_settings<br/>where&nbsp;(<br/>&nbsp;name&nbsp;\~&nbsp;$1<br/>&nbsp;or&nbsp;name&nbsp;in&nbsp;<br/>(<br/>&nbsp;$2,<br/>&nbsp;$3<br/>&nbsp;)<br/>&nbsp;)<br/>&nbsp;order&nbsp;by&nbsp;name<br/>)&nbsp;s<br/>),&nbsp;table\_settings&nbsp;as&nbsp;(<br/>&nbsp;select<br/>json\_object\_agg(s.namespace&nbsp;&#448;&#448;&nbsp;<br/>$4&nbsp;&#448;&#448;&nbsp;s.relname,&nbsp;s)<br/>&nbsp;from<br/>&nbsp;(select<br/>(select&nbsp;nspname&nbsp;from&nbsp;pg\_namespace&nbsp;<br/>where&nbsp;oid&nbsp;=&nbsp;relnamespace)<br/>&nbsp;namespace,<br/>&nbsp;relname,<br/>&nbsp;reloptions<br/>&nbsp;from&nbsp;pg\_class<br/>where&nbsp;reloptions::text&nbsp;\~&nbsp;$5<br/>&nbsp;order&nbsp;<br/>by&nbsp;namespace,&nbsp;relname<br/>&nbsp;)&nbsp;s<br/>)<br/>select&nbsp;<br/>json\_build\_object($6,&nbsp;(select&nbsp;\*&nbsp;<br/>from&nbsp;global\_settings),&nbsp;$7,&nbsp;(select&nbsp;<br/>\*&nbsp;from&nbsp;table\_settings))<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/8_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |1.33&nbsp;ms<br/>0.021&nbsp;ms/sec<br/>1.335&nbsp;ms/call<br/>2.80% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |18&nbsp;blks<br/>0.29&nbsp;blks/sec<br/>18.00&nbsp;blks/call<br/>13.33% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|9 |select&nbsp;json\_object\_agg(s.name,&nbsp;s)<br/>from&nbsp;pg\_settings&nbsp;s<br/>&nbsp;where&nbsp;name&nbsp;<br/>in&nbsp;(<br/>&nbsp;$1,<br/>&nbsp;$2,<br/>&nbsp;$3,<br/>&nbsp;$4,<br/>&nbsp;$5,<br/>$6,<br/>&nbsp;$7,<br/>&nbsp;$8<br/>&nbsp;)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/9_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.74&nbsp;ms<br/>0.012&nbsp;ms/sec<br/>0.743&nbsp;ms/call<br/>1.56% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|10 |with&nbsp;fk\_indexes&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;n.nspname&nbsp;<br/>as&nbsp;schema\_name,<br/>&nbsp;ci.relname&nbsp;as&nbsp;<br/>index\_name,<br/>&nbsp;cr.relname&nbsp;as&nbsp;table\_name,<br/>&nbsp;(confrelid::regclass)::text&nbsp;as&nbsp;<br/>fk\_table\_ref,<br/>&nbsp;array\_to\_string(<br/>indclass,&nbsp;$1)&nbsp;as&nbsp;opclasses<br/>&nbsp;from&nbsp;<br/>pg\_index&nbsp;i<br/>&nbsp;join&nbsp;pg\_class&nbsp;ci&nbsp;on&nbsp;<br/>ci.oid&nbsp;=&nbsp;i.indexrelid&nbsp;and&nbsp;ci.relkind&nbsp;<br/>=&nbsp;$2<br/>&nbsp;join&nbsp;pg\_class&nbsp;cr&nbsp;on&nbsp;cr.oid&nbsp;<br/>=&nbsp;i.indrelid&nbsp;and&nbsp;cr.relkind&nbsp;=&nbsp;$3<br/>join&nbsp;pg\_namespace&nbsp;n&nbsp;on&nbsp;n.oid&nbsp;=&nbsp;<br/>ci.relnamespace<br/>&nbsp;join&nbsp;pg\_constraint&nbsp;<br/>cn&nbsp;on&nbsp;cn.conrelid&nbsp;=&nbsp;cr.oid<br/>&nbsp;left&nbsp;<br/>join&nbsp;pg\_stat\_user\_indexes&nbsp;si&nbsp;on&nbsp;<br/>si.indexrelid&nbsp;=&nbsp;i.indexrelid<br/>&nbsp;where<br/>contype&nbsp;=&nbsp;$4<br/>&nbsp;and&nbsp;i.indisunique&nbsp;<br/>is&nbsp;false<br/>&nbsp;and&nbsp;conkey&nbsp;is&nbsp;not&nbsp;null<br/>and&nbsp;ci.relpages&nbsp;>&nbsp;$5<br/>&nbsp;and&nbsp;si.idx\_scan&nbsp;<br/><&nbsp;$6<br/>),&nbsp;table\_scans&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;<br/>relid,<br/>&nbsp;tables.idx\_scan&nbsp;+&nbsp;tables.seq\_scan&nbsp;<br/>as&nbsp;all\_scans,<br/>&nbsp;(&nbsp;tables.n\_tup\_ins&nbsp;<br/>+&nbsp;tables.n\_tup\_upd&nbsp;+&nbsp;tables.n\_tup\_del&nbsp;<br/>)&nbsp;as&nbsp;writes,<br/>&nbsp;pg\_relation\_size(<br/>relid)&nbsp;as&nbsp;table\_size<br/>&nbsp;from&nbsp;pg\_stat\_user\_tables&nbsp;<br/>as&nbsp;tables<br/>&nbsp;join&nbsp;pg\_class&nbsp;c&nbsp;on&nbsp;c.oid&nbsp;<br/>=&nbsp;relid<br/>&nbsp;where&nbsp;c.relpages&nbsp;>&nbsp;$7<br/>),<br/>&nbsp;all\_writes&nbsp;as&nbsp;(<br/>&nbsp;select&nbsp;sum(writes)&nbsp;<br/>as&nbsp;total\_writes<br/>&nbsp;from&nbsp;table\_scans<br/>),<br/>&nbsp;indexes&nbsp;as&nbsp;(<br/>&nbsp;se...<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/10_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.63&nbsp;ms<br/>0.010&nbsp;ms/sec<br/>0.634&nbsp;ms/call<br/>1.33% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |47&nbsp;blks<br/>0.75&nbsp;blks/sec<br/>47.00&nbsp;blks/call<br/>34.81% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|11 |select&nbsp;setting::integer&nbsp;/&nbsp;$1&nbsp;from&nbsp;<br/>pg\_settings&nbsp;where&nbsp;name&nbsp;=&nbsp;$2<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/11_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.62&nbsp;ms<br/>0.010&nbsp;ms/sec<br/>0.622&nbsp;ms/call<br/>1.31% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|12 |select&nbsp;\*&nbsp;from&nbsp;pg\_is\_in\_recovery(<br/>)<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/12_2.sql) |17<br/>0.27/sec<br/>1.00/call<br/>15.18% |0.32&nbsp;ms<br/>0.005&nbsp;ms/sec<br/>0.019&nbsp;ms/call<br/>0.67% |17<br/>0.27/sec<br/>1.00/call<br/>54.84% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|13 |with&nbsp;data&nbsp;as&nbsp;(<br/>&nbsp;select<br/>&nbsp;coalesce(<br/>usename,&nbsp;$1)&nbsp;as&nbsp;"user",<br/>&nbsp;coalesce(<br/>datname,&nbsp;$2)&nbsp;as&nbsp;"database",<br/>&nbsp;coalesce(<br/>state,&nbsp;$3)&nbsp;as&nbsp;"current\_state",<br/>count(\*)&nbsp;as&nbsp;"count",<br/>&nbsp;count(\*)&nbsp;<br/>filter&nbsp;(where&nbsp;state\_change&nbsp;<&nbsp;now(<br/>)&nbsp;\-&nbsp;interval&nbsp;$4)&nbsp;as&nbsp;"state\_changed\_more\_1m\_ago",<br/>&nbsp;count(\*)&nbsp;filter&nbsp;(where&nbsp;state\_change&nbsp;<br/><&nbsp;now()&nbsp;\-&nbsp;interval&nbsp;$5)&nbsp;as&nbsp;"state\_changed\_more\_1h\_ago",<br/>&nbsp;count(\*)&nbsp;filter&nbsp;(where&nbsp;xact\_start&nbsp;<br/><&nbsp;now()&nbsp;\-&nbsp;interval&nbsp;$6)&nbsp;as&nbsp;"tx\_age\_more\_1m",<br/>&nbsp;count(\*)&nbsp;filter&nbsp;(where&nbsp;xact\_start&nbsp;<br/><&nbsp;now()&nbsp;\-&nbsp;interval&nbsp;$7)&nbsp;as&nbsp;"tx\_age\_more\_1h"<br/>from&nbsp;pg\_stat\_activity<br/>&nbsp;group&nbsp;by&nbsp;<br/>grouping&nbsp;sets&nbsp;((datname,&nbsp;usename,<br/>&nbsp;state),&nbsp;(usename,&nbsp;state),&nbsp;())<br/>order&nbsp;by<br/>&nbsp;usename&nbsp;is&nbsp;null&nbsp;desc,<br/>&nbsp;datname&nbsp;is&nbsp;null&nbsp;desc,<br/>&nbsp;2&nbsp;asc,<br/>&nbsp;3&nbsp;asc,<br/>&nbsp;count(\*)&nbsp;desc<br/>),<br/>num\_data&nbsp;<br/>as&nbsp;(<br/>&nbsp;select&nbsp;row\_number()&nbsp;over&nbsp;<br/>()&nbsp;num,&nbsp;data.\*<br/>&nbsp;from&nbsp;data<br/>)<br/>select&nbsp;<br/>json\_object\_agg(num\_data.num,&nbsp;num\_data)&nbsp;<br/>from&nbsp;num\_data<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/13_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.26&nbsp;ms<br/>0.004&nbsp;ms/sec<br/>0.258&nbsp;ms/call<br/>0.54% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |19&nbsp;blks<br/>0.31&nbsp;blks/sec<br/>19.00&nbsp;blks/call<br/>14.07% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|14 |BEGIN<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/14_2.sql) |38<br/>0.61/sec<br/>1.00/call<br/>33.93% |0.23&nbsp;ms<br/>0.004&nbsp;ms/sec<br/>0.006&nbsp;ms/call<br/>0.48% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|15 |select<br/>&nbsp;json\_build\_object($1,&nbsp;version(<br/>),<br/>&nbsp;$2,&nbsp;current\_setting($3),<br/>&nbsp;$4,<br/>&nbsp;(select&nbsp;regexp\_replace(current\_setting(<br/>$5),&nbsp;$6,&nbsp;$7)),<br/>&nbsp;$8,&nbsp;(select&nbsp;regexp\_replace(<br/>current\_setting($9),&nbsp;$10,&nbsp;$11)))<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/15_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.11&nbsp;ms<br/>0.002&nbsp;ms/sec<br/>0.112&nbsp;ms/call<br/>0.24% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|16 |select<br/>&nbsp;datname<br/>&nbsp;from&nbsp;pg\_database<br/>where&nbsp;datname&nbsp;not&nbsp;in&nbsp;($1,&nbsp;$2,&nbsp;$3)<br/>order&nbsp;by&nbsp;datname<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/16_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.04&nbsp;ms<br/>0.001&nbsp;ms/sec<br/>0.036&nbsp;ms/call<br/>0.08% |1<br/>0.02/sec<br/>1.00/call<br/>3.23% |4&nbsp;blks<br/>0.06&nbsp;blks/sec<br/>4.00&nbsp;blks/call<br/>2.96% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|17 |COMMIT<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/17_2.sql) |38<br/>0.61/sec<br/>1.00/call<br/>33.93% |0.03&nbsp;ms<br/>0.001&nbsp;ms/sec<br/>0.001&nbsp;ms/call<br/>0.07% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|18 |SELECT&nbsp;pg\_catalog.pg\_tablespace\_location(<br/>oid)<br/>&nbsp;FROM&nbsp;pg\_catalog.pg\_tablespace<br/>WHERE&nbsp;pg\_tablespace\_location(oid)&nbsp;<br/>\~&nbsp;$1<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/18_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.02&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.025&nbsp;ms/call<br/>0.05% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |1&nbsp;blks<br/>0.02&nbsp;blks/sec<br/>1.00&nbsp;blks/call<br/>0.74% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|19 |SHOW&nbsp;server\_version<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/19_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.01&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.011&nbsp;ms/call<br/>0.02% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|20 |show&nbsp;stats\_temp\_directory<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/20_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.01&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.010&nbsp;ms/call<br/>0.02% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|21 |show&nbsp;data\_directory<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/21_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.01&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.009&nbsp;ms/call<br/>0.02% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|22 |show&nbsp;log\_directory<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/22_2.sql) |1<br/>0.02/sec<br/>1.00/call<br/>0.89% |0.01&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.009&nbsp;ms/call<br/>0.02% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|23 |create&nbsp;database&nbsp;dbname<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/23_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|24 |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_statements<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/24_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|25 |SELECT&nbsp;version()<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/25_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|26 |show&nbsp;data\_directory<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/26_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|27 |create&nbsp;role&nbsp;username&nbsp;superuser&nbsp;login<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/27_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|28 |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_kcache<br/>[Full query](../../json_reports/1_2019_07_01T18_03_33_+0000/K_query_groups/28_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |


## Conclusions ##
  - [P1] For some query groups, total_time > 30% of overall timing. It was observed on the following node: `postgres.replica.node`. Such a high percentage means that those queries are "major contributors" to resource consumption on those nodes. In other words, if a query group has `total_time` which is 30% of overall timing, it means that during the observation period, 30% of time CPUs were working on that node processing queries from this group.  

  
 


## Recommendations ##
  - [P1] For some query groups, total_time > 30% of overall timing. To reduce `total_time` for particular query group consider the following tactics:  
    - perform query micro-optimization (take particular query examples related to the group, use `EXPLAIN` and `EXPLAIN (BUFFERS, ANALYZE)` to optimize it, also consider using [Joe bot](https://gitlab.com/postgres-ai/joe) and special DB instances) simplifying the process of for query optimization, 
    - if the frequency of execution is high (check the `calls / second` metric), consider reducing this frequency, changing the application code and/or, if it is applicable, applying query results caching.  

  
 


---
<a name="postgres-checkup_L001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# L001 Table Sizes #

## Observations ##
Data collected: 2019-07-01 18:04:53 +0000 UTC  
Current database: dbname  



### Master (`postgres.master.node`) ###
The list is limited to 50 items.  

| \# | Table | Rows | &#9660;&nbsp;Total size | Table size | Index(es) Size | TOAST Size |
|---|---|------|------------|------------|----------------|------------|
|<no value> | =====TOTAL===== | ~20M | 1297 MB (100.00%) | 776 MB (100.00%) | 521 MB (100.00%) | 56 kB (100.00%)|
|1 | `t_slw_q` | ~10M | 346 MB (26.66%) | 346 MB (44.57%) | 0 bytes (0.00%) | <no value>|
|2 | `t_with_redundant_idx` | ~1000k | 243 MB (18.72%) | 50 MB (6.42%) | 193 MB (37.04%) | <no value>|
|3 | `exp_redundant.t_with_redundant_ref_idx` | ~1000k | 99 MB (7.63%) | 35 MB (4.46%) | 64 MB (12.35%) | <no value>|
|4 | `t_red_fk_1` | ~1M | 99 MB (7.63%) | 35 MB (4.46%) | 64 MB (12.35%) | <no value>|
|5 | `t_with_redundant_ref_idx` | ~1000k | 99 MB (7.63%) | 35 MB (4.46%) | 64 MB (12.35%) | <no value>|
|6 | `t_rar_q` | ~1000k | 93 MB (7.15%) | 50 MB (6.44%) | 43 MB (8.22%) | <no value>|
|7 | `t_with_redundant_index` | ~1000k | 78 MB (5.98%) | 35 MB (4.46%) | 43 MB (8.23%) | <no value>|
|8 | `t_with_bloat` | ~1000k | 69 MB (5.33%) | 69 MB (8.92%) | 0 bytes (0.00%) | <no value>|
|9 | `t_red_fk_2` | ~1000k | 64 MB (4.91%) | 42 MB (5.45%) | 21 MB (4.12%) | <no value>|
|10 | `t_with_unused_index` | ~1000k | 56 MB (4.32%) | 35 MB (4.46%) | 21 MB (4.12%) | <no value>|
|11 | `test_schema.t_with_invalid_index` | ~1000k | 35 MB (2.67%) | 35 MB (4.46%) | 0 bytes (0.00%) | <no value>|
|12 | `bloated` | ~50k | 5784 kB (0.44%) | 3576 kB (0.45%) | 2208 kB (0.41%) | <no value>|
|13 | `t_25` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|14 | `t_27` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|15 | `t_29` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|16 | `t_31` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|17 | `t_34` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|18 | `t_100` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|19 | `t_101` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|20 | `t_102` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|21 | `t_103` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|22 | `t_104` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|23 | `t_105` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|24 | `t_106` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|25 | `t_107` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|26 | `t_108` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|27 | `t_5` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|28 | `t_8` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|29 | `t_13` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|30 | `t_18` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|31 | `t_20` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|32 | `t_22` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|33 | `t_24` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|34 | `t_26` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|35 | `t_28` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|36 | `t_30` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|37 | `t_33` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|38 | `t_36` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|39 | `t_45` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|40 | `t_46` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|41 | `t_47` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|42 | `t_48` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|43 | `t_49` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|44 | `t_2` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|45 | `t_11` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|46 | `t_16` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|47 | `t_3` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|48 | `t_6` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|49 | `t_9` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|
|50 | `t_14` | ~1000 | 112 kB (0.01%) | 72 kB (0.01%) | 40 kB (0.01%) | <no value>|


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_L003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# L003 Integer (int2, int4) Out-of-range Risks in PKs #

## Observations ##
Data collected: 2019-07-01 18:04:53 +0000 UTC  
Current database: dbname  



### Master (`postgres.master.node`) ###
| Table | PK | Type | Current max value | &#9660;&nbsp;Capacity used, % |
|------|----|------|-------------------|-------------------------------|
|`test_schema.orders` | `id` | int4 |800,000,000 | 37.25|
|`test_schema."orders_A"` | `id` | int4 |300,000,000 | 13.97|


## Conclusions ##


## Recommendations ##
