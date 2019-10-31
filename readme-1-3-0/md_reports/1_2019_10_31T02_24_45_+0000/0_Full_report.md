# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-10-31 02:26:13 +0000


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
[F005 Autovacuum: Btree Index Bloat (Estimated)](#postgres-checkup_F005)  
[F008 Autovacuum: Resource Usage](#postgres-checkup_F008)  
[G001 Memory-related Settings](#postgres-checkup_G001)  
[G002 Connections and Current Activity](#postgres-checkup_G002)  
[G003 Timeouts, Locks, Deadlocks](#postgres-checkup_G003)  
[H001 Invalid Indexes](#postgres-checkup_H001)  
[H002 Unused Indexes](#postgres-checkup_H002)  
[H003 Non-indexed Foreign Keys](#postgres-checkup_H003)  
[H004 Redundant Indexes](#postgres-checkup_H004)  
[K001 Globally Aggregated Query Metrics](#postgres-checkup_K001)  
[K002 Workload Type ("The First Word" Analysis)](#postgres-checkup_K002)  
[K003 Top-50 Queries by total_time](#postgres-checkup_K003)  
[L001 Table Sizes](#postgres-checkup_L001)  
[L003 Integer (int2, int4) Out-of-range Risks in PKs](#postgres-checkup_L003)  

---
### Issues found ###

The empty lines represent reports for which Conclusions and Recommendations are not yet implemented.

|Report|P1|P2|P3|
|-----|---|---|---|
|[A001 System Information](#postgres-checkup_A001)||||
|[A002 Version Information](#postgres-checkup_A002)|0|0|1|
|[A003 Postgres Settings](#postgres-checkup_A003)||||
|[A004 Cluster Information](#postgres-checkup_A004)||||
|[A005 Extensions](#postgres-checkup_A005)||||
|[A006 Postgres Setting Deviations](#postgres-checkup_A006)||||
|[A007 Altered Settings](#postgres-checkup_A007)||||
|[A008 Disk Usage and File System Type](#postgres-checkup_A008)|0|0|0|
|[D002 Useful Linux Tools](#postgres-checkup_D002)||||
|[D004 pg_stat_statements and pg_stat_kcache Settings](#postgres-checkup_D004)||||
|[F001 Autovacuum: Current Settings](#postgres-checkup_F001)|1|0|0|
|[F002 Autovacuum: Transaction ID Wraparound Check](#postgres-checkup_F002)|0|0|0|
|[F003 Autovacuum: Dead Tuples](#postgres-checkup_F003)||||
|[F004 Autovacuum: Heap Bloat (Estimated)](#postgres-checkup_F004)|0|1|0|
|[F005 Autovacuum: Btree Index Bloat (Estimated)](#postgres-checkup_F005)|0|1|0|
|[F008 Autovacuum: Resource Usage](#postgres-checkup_F008)|1|0|0|
|[G001 Memory-related Settings](#postgres-checkup_G001)|1|0|0|
|[G002 Connections and Current Activity](#postgres-checkup_G002)|0|0|0|
|[G003 Timeouts, Locks, Deadlocks](#postgres-checkup_G003)||||
|[H001 Invalid Indexes](#postgres-checkup_H001)||||
|[H002 Unused Indexes](#postgres-checkup_H002)|0|1|0|
|[H003 Non-indexed Foreign Keys](#postgres-checkup_H003)||||
|[H004 Redundant Indexes](#postgres-checkup_H004)|0|1|0|
|[K001 Globally Aggregated Query Metrics](#postgres-checkup_K001)||||
|[K002 Workload Type ("The First Word" Analysis)](#postgres-checkup_K002)||||
|[K003 Top-50 Queries by total_time](#postgres-checkup_K003)|1|0|0|
|[L001 Table Sizes](#postgres-checkup_L001)||||
|[L003 Integer (int2, int4) Out-of-range Risks in PKs](#postgres-checkup_L003)|1|0|0|





---
<a name="postgres-checkup_A001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A001 System Information #

## Observations ##
Data collected: 2019-10-31 02:25:14 +0000 UTC  

 
### Operating System by hosts ###

| Host| Operating System | Kernel |
|-----|------------------|--------|
|postgres.test3.node|Linux|4.19.23-coreos-r1|
|postgres.test1.node|Linux|4.19.23-coreos-r1|
|postgres.test2.node|Linux|4.19.23-coreos-r1|






### Master (`postgres.test3.node`) ###

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
MemTotal:        3783520 kB
MemFree:          210600 kB
MemAvailable:    2632124 kB
Buffers:           81540 kB
Cached:          2871128 kB
SwapCached:          216 kB
Active:          1465492 kB
Inactive:        1902916 kB
Active(anon):     445136 kB
Inactive(anon):   347776 kB
Active(file):    1020356 kB
Inactive(file):  1555140 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2091004 kB
Dirty:              7696 kB
Writeback:             0 kB
AnonPages:        413576 kB
Mapped:           302696 kB
Shmem:            378320 kB
Slab:             127212 kB
SReclaimable:      97896 kB
SUnreclaim:        29316 kB
KernelStack:        3104 kB
PageTables:        11080 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988908 kB
Committed_AS:    1892356 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              440 kB
HardwareCorrupted:     0 kB
AnonHugePages:    124928 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      100340 kB
DirectMap2M:     2783232 kB
DirectMap1G:     1048576 kB
```







### Replica servers: ###
    
#### Replica (`postgres.test1.node`) ####
        

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
MemTotal:        3783520 kB
MemFree:          220176 kB
MemAvailable:    2635160 kB
Buffers:           81520 kB
Cached:          2864648 kB
SwapCached:          216 kB
Active:          1459852 kB
Inactive:        1901884 kB
Active(anon):     441476 kB
Inactive(anon):   349392 kB
Active(file):    1018376 kB
Inactive(file):  1552492 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2091004 kB
Dirty:              6976 kB
Writeback:             0 kB
AnonPages:        415492 kB
Mapped:           302856 kB
Shmem:            376416 kB
Slab:             123404 kB
SReclaimable:      94072 kB
SUnreclaim:        29332 kB
KernelStack:        3100 kB
PageTables:        11048 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988908 kB
Committed_AS:    1892100 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              440 kB
HardwareCorrupted:     0 kB
AnonHugePages:    131072 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      100340 kB
DirectMap2M:     2783232 kB
DirectMap1G:     1048576 kB
```


        
#### Replica (`postgres.test2.node`) ####
        

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
MemTotal:        3783520 kB
MemFree:          215424 kB
MemAvailable:    2633864 kB
Buffers:           81532 kB
Cached:          2868220 kB
SwapCached:          216 kB
Active:          1462880 kB
Inactive:        1902520 kB
Active(anon):     443268 kB
Inactive(anon):   348600 kB
Active(file):    1019612 kB
Inactive(file):  1553920 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2091004 kB
Dirty:              7328 kB
Writeback:             0 kB
AnonPages:        415536 kB
Mapped:           302784 kB
Shmem:            377368 kB
Slab:             124912 kB
SReclaimable:      95656 kB
SUnreclaim:        29256 kB
KernelStack:        3104 kB
PageTables:        11052 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988908 kB
Committed_AS:    1892256 kB
VmallocTotal:   34359738367 kB
VmallocUsed:           0 kB
VmallocChunk:          0 kB
Percpu:              440 kB
HardwareCorrupted:     0 kB
AnonHugePages:    131072 kB
ShmemHugePages:        0 kB
ShmemPmdMapped:        0 kB
HugePages_Total:       0
HugePages_Free:        0
HugePages_Rsvd:        0
HugePages_Surp:        0
Hugepagesize:       2048 kB
Hugetlb:               0 kB
DirectMap4k:      100340 kB
DirectMap2M:     2783232 kB
DirectMap1G:     1048576 kB
```


        

## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A002 Version Information #

## Observations ##
Data collected: 2019-10-31 02:25:15 +0000 UTC  



### Master (`postgres.test3.node`) ###

```
PostgreSQL 11.5 (Ubuntu 11.5-3.pgdg16.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609, 64-bit
```





### Replica servers: ###

#### Replica (`postgres.test1.node`) ####


```
PostgreSQL 11.5 (Ubuntu 11.5-3.pgdg16.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609, 64-bit
```

#### Replica (`postgres.test2.node`) ####


```
PostgreSQL 11.5 (Ubuntu 11.5-3.pgdg16.04+1) on x86_64-pc-linux-gnu, compiled by gcc (Ubuntu 5.4.0-6ubuntu1~16.04.11) 5.4.0 20160609, 64-bit
```


## Conclusions ##
  - All nodes have the same Postgres version (`11.5`).  

  - Postgres major version being used is `11` and it is currently supported by PostgreSQL Global Development Group. End of life is scheduled 2023-11-09. It means that in case of bugs and security issues, updates (new minor versions) with fixes will be released and available for use. Read more: [Versioning Policy](https://www.postgresql.org/support/versioning/).  

  - `11.5` is the most up-to-date Postgres minor version in the branch `11`.  

  
 


## Recommendations ##
  - [P3] Consider upgrading to the newest major version: 12. It has a lot of new features and improvements.  

  - For more information about minor and major upgrades see:  
    - Official documentation: https://www.postgresql.org/docs/current/upgrading.html  
    - [Major-version upgrading with minimal downtime](https://www.depesz.com/2016/11/08/major-version-upgrading-with-minimal-downtime/) (depesz.com)  
    - [Upgrading PostgreSQL on AWS RDS with minimum or zero downtime](https://medium.com/preply-engineering/postgres-multimaster-34f2446d5e14)  
    - [Near-Zero Downtime Automated Upgrades of PostgreSQL Clusters in Cloud](https://www.2ndquadrant.com/en/blog/near-zero-downtime-automated-upgrades-postgresql-clusters-cloud/) (2ndQuadrant.com)  
    - [Updating a 50 terabyte PostgreSQL database](https://medium.com/adyen/updating-a-50-terabyte-postgresql-database-f64384b799e7)  

  
 


---
<a name="postgres-checkup_A003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A003 Postgres Settings #

## Observations ##
Data collected: 2019-10-31 02:25:15 +0000 UTC  



### Master (`postgres.test3.node`) ###  
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
| Customized Options|[pg_stat_kcache.linux_hz](https://postgresqlco.nf/en/doc/param/pg_stat_kcache.linux_hz) | 500000 |  |  |
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
| Preset Options|[server_version](https://postgresqlco.nf/en/doc/param/server_version) | 11.5 (Ubuntu 11.5-3.pgdg16.04+1) |  |  |
| Preset Options|[server_version_num](https://postgresqlco.nf/en/doc/param/server_version_num) | 110005 |  |  |
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
Data collected: 2019-10-31 02:25:15 +0000 UTC  

|&#9660;&nbsp;Indicator | postgres.test3.node | postgres.test1.node | postgres.test2.node |
|--------|-------|-------- |-------- |
|Config file |/etc/postgresql/11/main/postgresql.conf|/var/lib/postgresql/11/data1/postgresql.conf|/var/lib/postgresql/11/data2/postgresql.conf|
|Role |Master|<no value>|<no value>|
|Replicas ||<no value>|<no value>|
|Started At |2019-10-31&nbsp;02:21:08+00|2019-10-31 02:21:16+00|2019-10-31 02:21:20+00|
|Uptime |00:04:08|00:03:43|00:03:47|
|Checkpoints |7|0|0|
|Forced Checkpoints |100.0%|<no value>|<no value>|
|Checkpoint MB/sec |0.591874|<no value>|<no value>|
|Database Name |dbname|dbname|dbname|
|Database Size |1509&nbsp;MB|7701 kB|7717 kB|
|Stats Since |2019-10-31&nbsp;02:21:11+00|2019-10-31 02:21:39+00|2019-10-31 02:21:39+00|
|Stats Age |00:04:05|00:03:19|00:03:28|
|Cache Effectiveness |87.46%|92.64%|92.64%|
|Successful Commits |99.79%|100.00%|100.00%|
|Conflicts |0|0|0|
|Temp Files: total size |869&nbsp;MB|0 bytes|0 bytes|
|Temp Files: total number of files |84|0|0|
|Temp Files: total number of files per day |84|0|0|
|Temp Files: avg file size |10&nbsp;MB|<no value>|<no value>|
|Deadlocks |0|0|0|
|Deadlocks per day |0|0|0|


### Databases sizes ###

| Database | &#9660;&nbsp;Size |
|----------|--------|
| `dbname` | 1.48&nbsp;GiB |
| `postgres` | 7.50&nbsp;MiB |
| `template1` | 7.50&nbsp;MiB |
| `checkup_test_db` | 7.50&nbsp;MiB |
| `template0` | 7.36&nbsp;MiB |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A005">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A005 Extensions #

## Observations ##
Data collected: 2019-10-31 02:25:16 +0000 UTC  



### Master (`postgres.test3.node`) ###
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
Data collected: 2019-10-31 02:25:16 +0000 UTC  

### Settings (pg_settings) that Differ ###

&#9660;&nbsp;Setting | postgres.test3.node | postgres.test1.node | postgres.test2.node |
|--------|-------|--------|--------|
| [archive_command](https://postgresqlco.nf/en/doc/param/archive_command) |cp %p /path_to/archive/%f |(disabled) |(disabled) |
| [archive_mode](https://postgresqlco.nf/en/doc/param/archive_mode) |on |off |off |
| [client_encoding](https://postgresqlco.nf/en/doc/param/client_encoding) |UTF8 |SQL_ASCII |SQL_ASCII |
| [cluster_name](https://postgresqlco.nf/en/doc/param/cluster_name) |11/main | | |
| [config_file](https://postgresqlco.nf/en/doc/param/config_file) |/etc/postgresql/11/main/postgresql.conf |/var/lib/postgresql/11/data1/postgresql.conf |/var/lib/postgresql/11/data2/postgresql.conf |
| [data_directory](https://postgresqlco.nf/en/doc/param/data_directory) |/var/lib/postgresql/11/main |/var/lib/postgresql/11/data1 |/var/lib/postgresql/11/data2 |
| [external_pid_file](https://postgresqlco.nf/en/doc/param/external_pid_file) |/var/run/postgresql/11-main.pid | | |
| [hba_file](https://postgresqlco.nf/en/doc/param/hba_file) |/etc/postgresql/11/main/pg_hba.conf |/var/lib/postgresql/11/data1/pg_hba.conf |/var/lib/postgresql/11/data2/pg_hba.conf |
| [ident_file](https://postgresqlco.nf/en/doc/param/ident_file) |/etc/postgresql/11/main/pg_ident.conf |/var/lib/postgresql/11/data1/pg_ident.conf |/var/lib/postgresql/11/data2/pg_ident.conf |
| [lc_collate](https://postgresqlco.nf/en/doc/param/lc_collate) |C.UTF-8 |C |C |
| [lc_ctype](https://postgresqlco.nf/en/doc/param/lc_ctype) |C.UTF-8 |C |C |
| [lc_messages](https://postgresqlco.nf/en/doc/param/lc_messages) |C.UTF-8 |C |C |
| [lc_monetary](https://postgresqlco.nf/en/doc/param/lc_monetary) |C.UTF-8 |C |C |
| [lc_numeric](https://postgresqlco.nf/en/doc/param/lc_numeric) |C.UTF-8 |C |C |
| [lc_time](https://postgresqlco.nf/en/doc/param/lc_time) |C.UTF-8 |C |C |
| [log_filename](https://postgresqlco.nf/en/doc/param/log_filename) |postgresql-11-main.log |postgresql-%Y-%m-%d_%H%M%S.log |postgresql-%Y-%m-%d_%H%M%S.log |
| [log_line_prefix](https://postgresqlco.nf/en/doc/param/log_line_prefix) |%m [%p] %q%u@%d  |%m [%p]  |%m [%p]  |
| [max_wal_senders](https://postgresqlco.nf/en/doc/param/max_wal_senders) |5 |10 |10 |
| [port](https://postgresqlco.nf/en/doc/param/port) |5432 |5433 |5434 |
| [random_page_cost](https://postgresqlco.nf/en/doc/param/random_page_cost) |2.22 |4 |4 |
| [server_encoding](https://postgresqlco.nf/en/doc/param/server_encoding) |UTF8 |SQL_ASCII |SQL_ASCII |
| [ssl](https://postgresqlco.nf/en/doc/param/ssl) |on |off |off |
| [ssl_cert_file](https://postgresqlco.nf/en/doc/param/ssl_cert_file) |/etc/ssl/certs/ssl-cert-snakeoil.pem |server.crt |server.crt |
| [ssl_key_file](https://postgresqlco.nf/en/doc/param/ssl_key_file) |/etc/ssl/private/ssl-cert-snakeoil.key |server.key |server.key |
| [stats_temp_directory](https://postgresqlco.nf/en/doc/param/stats_temp_directory) |/var/run/postgresql/11-main.pg_stat_tmp |pg_stat_tmp |pg_stat_tmp |
| [wal_keep_segments](https://postgresqlco.nf/en/doc/param/wal_keep_segments) |32 |0 |0 |


### Configs(pg_config) that differ ###

No differences in `pg_config` are found.



## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A007">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A007 Altered Settings #

## Observations ##
Data collected: 2019-10-31 02:25:17 +0000 UTC  



### Master (`postgres.test3.node`) ###
| Source | Settings count | Changed settings |
|-------|----------------|-----------------|
| /etc/postgresql/11/main/postgresql.conf | 30 |  DateStyle TimeZone archive_command archive_mode cluster_name default_text_search_config dynamic_shared_memory_type external_pid_file lc_messages lc_monetary lc_numeric lc_time listen_addresses log_filename log_line_prefix log_timezone max_connections max_wal_senders max_wal_size min_wal_size port shared_buffers shared_preload_libraries ssl ssl_cert_file ssl_key_file stats_temp_directory unix_socket_directories wal_keep_segments wal_level |
| /var/lib/postgresql/11/main/postgresql.auto.conf | 1 |  random_page_cost |
| default | 273 | |







### Replica servers: ###
  
#### Replica (`postgres.test1.node`) ####
    
| Source | Settings count | Changed settings |
|-------|----------------|-----------------|
|/var/lib/postgresql/11/data1/postgresql.conf | 17 |  DateStyle TimeZone default_text_search_config dynamic_shared_memory_type hot_standby lc_messages lc_monetary lc_numeric lc_time listen_addresses log_timezone max_connections max_wal_size min_wal_size port shared_buffers shared_preload_libraries |
|default | 287 | |


#### Replica (`postgres.test2.node`) ####
    
| Source | Settings count | Changed settings |
|-------|----------------|-----------------|
|/var/lib/postgresql/11/data2/postgresql.conf | 17 |  DateStyle TimeZone default_text_search_config dynamic_shared_memory_type hot_standby lc_messages lc_monetary lc_numeric lc_time listen_addresses log_timezone max_connections max_wal_size min_wal_size port shared_buffers shared_preload_libraries |
|default | 287 | |



## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A008">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A008 Disk Usage and File System Type

## Observations ##
Data collected: 2019-10-31 02:25:17 +0000 UTC  
Output of `df -TPh` (follows symlinks)  


    
        
### Master (`postgres.test3.node`) ###

#### System directories ####
| Device | FS Type | Size | Available | Usage | Used | Mount Point |
|-------|---------|------|-----------|-----|------|-------------|
| overlay|overlay|22G|12G|47%|9.8G|/ |
| tmpfs|tmpfs|64M|64M|0%|0|/dev |
| tmpfs|tmpfs|1.9G|1.9G|0%|0|/sys/fs/cgroup |
| /dev/sda9|ext4|22G|12G|47%|9.8G|/builds |
| shm|tmpfs|64M|64M|1%|24K|/dev/shm |


#### Database directories ####
| Name | FS Type | Size | Available | Usage | Used | Mount Point | Path | Device |
|-----|---------|------|-----------|-----|------|-------------|------|-------|
| PGDATA |overlay |22G |12G |47% |9.8G |/ |/var/lib/postgresql/11/main |overlay |
| WAL directory |overlay |22G |12G |47% |9.8G |/ |/var/lib/postgresql/11/main/pg_wal |overlay |
| stats_temp_directory |overlay |22G |12G |47% |9.8G |/ |/var/run/postgresql/11-main.pg_stat_tmp |overlay |


        
    



### Replica servers: ###
    
#### Replica (`postgres.test1.node`) ####

#### System directories ####
| Device | FS Type | Size | Available | Usage | Used | Mount Point |
|-------|---------|------|-----------|-----|------|-------------|
| overlay |overlay |22G |12G |47% |9.8G |/ |
| tmpfs |tmpfs |64M |64M |0% |0 |/dev |
| tmpfs |tmpfs |1.9G |1.9G |0% |0 |/sys/fs/cgroup |
| /dev/sda9 |ext4 |22G |12G |47% |9.8G |/builds |
| shm |tmpfs |64M |64M |1% |24K |/dev/shm |


#### Database directories ####
| Name | FS Type | Size | Available | Usage | Used | Mount Point | Path | Device |
|-----|---------|------|-----------|-----|------|-------------|------|-------|
| PGDATA |overlay |22G |12G |47% |9.8G |/ |/var/lib/postgresql/11/data1 |overlay |
| WAL directory |overlay |22G |12G |47% |9.8G |/ |/var/lib/postgresql/11/data1/pg_wal |overlay |
| stats_temp_directory |overlay |22G |12G |47% |9.8G |/ |/var/lib/postgresql/11/data1/pg_stat_tmp |overlay |


        
    
#### Replica (`postgres.test2.node`) ####

#### System directories ####
| Device | FS Type | Size | Available | Usage | Used | Mount Point |
|-------|---------|------|-----------|-----|------|-------------|
| overlay |overlay |22G |12G |47% |9.8G |/ |
| tmpfs |tmpfs |64M |64M |0% |0 |/dev |
| tmpfs |tmpfs |1.9G |1.9G |0% |0 |/sys/fs/cgroup |
| /dev/sda9 |ext4 |22G |12G |47% |9.8G |/builds |
| shm |tmpfs |64M |64M |1% |24K |/dev/shm |


#### Database directories ####
| Name | FS Type | Size | Available | Usage | Used | Mount Point | Path | Device |
|-----|---------|------|-----------|-----|------|-------------|------|-------|
| PGDATA |overlay |22G |12G |47% |9.8G |/ |/var/lib/postgresql/11/data2 |overlay |
| WAL directory |overlay |22G |12G |47% |9.8G |/ |/var/lib/postgresql/11/data2/pg_wal |overlay |
| stats_temp_directory |overlay |22G |12G |47% |9.8G |/ |/var/lib/postgresql/11/data2/pg_stat_tmp |overlay |


        
    


## Conclusions ##
  - Risks of running out of free disk space in the nearest future are low.
  
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_D002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# D002 Useful Linux Tools
## Observations ##
Data collected: 2019-10-31 02:25:17 +0000 UTC  



### Master (`postgres.test3.node`) ###
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

#### Replica (`postgres.test1.node`)  

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




#### Replica (`postgres.test2.node`)  

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
Data collected: 2019-10-31 02:25:18 +0000 UTC  



### Master (`postgres.test3.node`) ###

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
| [pg_stat_kcache.linux_hz](https://postgresqlco.nf/en/doc/param/pg_stat_kcache.linux_hz)|500000||integer|-1 |2147483647  |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_F001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F001 Autovacuum: Current Settings #

## Observations ##
Data collected: 2019-10-31 02:25:18 +0000 UTC  



### Master (`postgres.test3.node`) ###


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
|public |t_f004_empty | autovacuum_enabled=off<br/> |
|public |t_with_bloat | autovacuum_vacuum_scale_factor=0.01<br/> |






### Replicas settings ###
| Setting | postgres.test1.node | postgres.test2.node  |
|--------|-------- |-------- |
|[hot_standby_feedback](https://postgresqlco.nf/en/doc/param/hot_standby_feedback)|off|off|


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
- Data collected: 2019-10-31 02:25:18 +0000 UTC
- Current database: dbname




### Master (`postgres.test3.node`) ###


#### Databases ####


| \# | Database | &#9660;&nbsp;Age | Capacity used, % | Warning | datfrozenxid |
|--|--------|-----|------------------|---------|--------------|
| 1 |`postgres`|652 |0 |  |561 |
| 2 |`dbname`|652 |0 |  |561 |
| 3 |`template1`|652 |0 |  |561 |
| 4 |`template0`|652 |0 |  |561 |
| 5 |`checkup_test_db`|652 |0 |  |561 |


#### Tables in the observed database ####
The list is limited to 10 items. Total: 127.

| \# | Relation | Age | &#9660;&nbsp;Capacity used, % | Warning |rel_relfrozenxid | toast_relfrozenxid |
|---|-------|-----|------------------|---------|-----------------|--------------------|
| 1 |`test_schema.orders` |505 |0 |  |708 |0 |
| 2 |`test_schema.orders_A` |502 |0 |  |711 |0 |
| 3 |`t_6` |483 |0 |  |730 |0 |
| 4 |`t_11` |468 |0 |  |745 |0 |
| 5 |`t_14` |459 |0 |  |754 |0 |
| 6 |`t_17` |450 |0 |  |763 |0 |
| 7 |`t_19` |444 |0 |  |769 |0 |
| 8 |`t_21` |438 |0 |  |775 |0 |
| 9 |`t_23` |432 |0 |  |781 |0 |
| 10 |`t_25` |426 |0 |  |787 |0 |


\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_F003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead Tuples #

## Observations ##
Data collected: 2019-10-31 02:25:19 +0000 UTC  
Current database: dbname  
Stats reset: 00:04:00 ago (2019-10-31 02:21:11 +0000 UTC)  
### Master (`postgres.test3.node`) ###
  
  
| \#|  Relation | reltype | Since last autovacuum | Since last vacuum | Autovacuum Count | Vacuum Count | n_tup_ins | n_tup_upd | n_tup_del | pg_class.reltuples | n_live_tup | n_dead_tup | &#9660;Dead Tuples Ratio, % |
|---|-------|------|-----------------------|-------------------|----------|---------|-----------|-----------|-----------|--------------------|------------|------------|-----------|
| 1 |`t_red_fk_2` |r |<no value> |00:00:57.029299 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 2 |`test_schema.t_with_invalid_index` |r |<no value> |00:00:58.104114 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 3 |`exp_redundant.t_with_redundant_ref_idx` |r |<no value> |00:00:58.201598 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 4 |`bloated` |r |<no value> |00:00:57.883242 |0 |2 |100000 |0 |50000 |50000 |50000 |0 | 0  |
| 5 |`t_red_fk_1` |r |<no value> |00:00:57.571096 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0  |
| 6 |`t_slw_q` |r |<no value> |00:00:56.592168 |0 |2 |10000001 |0 |0 |10000048 |10000048 |0 | 0  |
| 7 |`t_with_bloat`\* |r |<no value> |00:00:55.152279 |0 |2 |1000000 |1000000 |0 |1000000 |1000000 |0 | 0  |
| 8 |`t_rar_q` |r |00:01:20.226638 |00:00:58.870981 |1 |2 |1000000 |745116 |0 |1000000 |1000000 |0 | 0  |
| 9 |`ctnr` |r |<no value> |00:00:58.606917 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 10 |`t_with_redundant_idx` |r |<no value> |00:00:58.483245 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 11 |`t_with_redundant_ref_idx` |r |<no value> |00:00:58.303295 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 12 |`t_with_redundant_index` |r |<no value> |00:00:58.685043 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 13 |`t_with_unused_index` |r |<no value> |00:00:58.763072 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |

\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##

## Recommendations ##


---
<a name="postgres-checkup_F004">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap Bloat (Estimated) #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-10-31 02:25:19 +0000 UTC  
Current database: dbname  



### Master (`postgres.test3.node`) ###


The list is limited to 50 items. Total: 165.  

| \# | Table | Real Size | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat factor | Est. bloat level, % | Live Data Size | Last vacuum | Fillfactor |
|----|-------|------|------------------------------|-------------------|-------------------|---------------------|----------------|-------------|------------|
|&nbsp;|===== TOTAL ===== |825.23&nbsp;MiB |46.45&nbsp;MiB |48,701,440 |1.06 |5.63 | ~778.79&nbsp;MiB |||
|1 |`t_with_bloat`\* |69.15&nbsp;MiB |34.71&nbsp;MiB |36,388,864 |2.01 | **50.19** |~34.44&nbsp;MiB | 2019-10-31 02:24:24  |100 |
|2 |`t_rar_q` |49.72&nbsp;MiB |7.63&nbsp;MiB |7,995,392 |1.18 |15.34 |~42.09&nbsp;MiB | 2019-10-31 02:24:20  |100 |
|3 |`bloated` |3.47&nbsp;MiB |1.74&nbsp;MiB |1,818,624 |2.00 | **50.11** |~1.73&nbsp;MiB | 2019-10-31 02:24:21  |100 |
|4 |`t_slw_q` |345.69&nbsp;MiB |1.36&nbsp;MiB |1,417,216 |1.00 |0.39 |~344.34&nbsp;MiB | 2019-10-31 02:24:23  |100 |
|5 |`t_red_fk_2` |42.24&nbsp;MiB |152.00&nbsp;KiB |155,648 |1.00 |0.35 |~42.09&nbsp;MiB | 2019-10-31 02:24:22  |100 |
|6 |`test_schema.t_with_invalid_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-10-31 02:24:21  |100 |
|7 |`exp_redundant.t_with_redundant_ref_idx` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-10-31 02:24:21  |100 |
|8 |`t_red_fk_1` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-10-31 02:24:22  |100 |
|9 |`t_with_redundant_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-10-31 02:24:21  |100 |
|10 |`t_with_redundant_ref_idx` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-10-31 02:24:21  |100 |
|11 |`t_with_unused_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-10-31 02:24:20  |100 |
|12 |`ctnr` |49.77&nbsp;MiB |24.00&nbsp;KiB |24,576 |1.00 |0.05 |~49.75&nbsp;MiB | 2019-10-31 02:24:21  |100 |
|13 |`t_with_redundant_idx` |49.77&nbsp;MiB |24.00&nbsp;KiB |24,576 |1.00 |0.05 |~49.75&nbsp;MiB | 2019-10-31 02:24:21  |100 |
|14 |`pg_catalog.pg_proc` |608.00&nbsp;KiB |16.00&nbsp;KiB |16,384 |1.03 |2.63 |~592.00&nbsp;KiB | |100 |
|15 |`pg_catalog.pg_description` |320.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.03 |2.50 |~312.00&nbsp;KiB | |100 |
|16 |`pg_catalog.pg_class` |144.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.06 |5.56 |~136.00&nbsp;KiB | |100 |
|17 |`pg_catalog.pg_attribute` |560.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.01 |1.43 |~552.00&nbsp;KiB | |100 |
|18 |`pg_catalog.pg_init_privs` |16.00&nbsp;KiB | | |1.00 |0.00 |~16.00&nbsp;KiB | |100 |
|19 |`pg_catalog.pg_language` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|20 |`pg_catalog.pg_namespace` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|21 |`pg_catalog.pg_opclass` |24.00&nbsp;KiB | | |1.00 |0.00 |~24.00&nbsp;KiB | |100 |
|22 |`pg_catalog.pg_operator` |120.00&nbsp;KiB | | |1.00 |0.00 |~120.00&nbsp;KiB | |100 |
|23 |`pg_catalog.pg_opfamily` |16.00&nbsp;KiB | | |1.00 |0.00 |~16.00&nbsp;KiB | |100 |
|24 |`pg_catalog.pg_pltemplate` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|25 |`pg_catalog.pg_range` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|26 |`pg_catalog.pg_rewrite` |520.00&nbsp;KiB | | |1.00 |0.00 |~520.00&nbsp;KiB | |100 |
|27 |`pg_catalog.pg_sequence` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|28 |`pg_catalog.pg_shdepend` |16.00&nbsp;KiB | | |1.00 |0.00 |~16.00&nbsp;KiB | |100 |
|29 |`pg_catalog.pg_shdescription` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|30 |`pg_catalog.pg_statistic` |336.00&nbsp;KiB | | |1.00 |0.00 |~336.00&nbsp;KiB | |100 |
|31 |`pg_catalog.pg_tablespace` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|32 |`pg_catalog.pg_trigger` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|33 |`pg_catalog.pg_ts_config` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|34 |`pg_catalog.pg_ts_config_map` |16.00&nbsp;KiB | | |1.00 |0.00 |~16.00&nbsp;KiB | |100 |
|35 |`pg_catalog.pg_ts_dict` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|36 |`pg_catalog.pg_ts_parser` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|37 |`pg_catalog.pg_ts_template` |8.00&nbsp;KiB | | |1.00 |0.00 |~8.00&nbsp;KiB | |100 |
|38 |`pg_catalog.pg_type` |120.00&nbsp;KiB | | |1.00 |0.00 |~120.00&nbsp;KiB | |100 |
|39 |`t_1` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:20  |100 |
|40 |`t_10` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|41 |`t_100` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|42 |`t_101` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|43 |`t_102` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|44 |`t_103` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|45 |`t_104` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|46 |`t_105` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|47 |`t_106` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|48 |`t_107` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|49 |`t_108` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |
|50 |`t_109` |40.00&nbsp;KiB | | |1.00 |0.00 |~40.00&nbsp;KiB | 2019-10-31 02:24:25  |100 |

\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'

## Conclusions ##
  - The estimated table (heap) bloat in this DB is low, just ~5.63% (~46.45 MiB). No action is needed now. Keep watching it though.

  - [P2] There are 2 tables with size > 1 MiB and table bloat estimate >= 40.00% and < 90.00%:  
    - `t_with_bloat`: size 69.15 MiB, can be reduced 2.01 times, by ~34.71 MiB (~50.19%)  
    - `bloated`: size 3.47 MiB, can be reduced 2.00 times, by ~1.74 MiB (~50.11%)  
  

  
 


## Recommendations ##
  - [P2] Consider the following:
    - to prevent a high level of bloat in the future, tune autovacuum: consider more aggressive autovacuum settings (see F001);
    - eliminate or reduce the current table bloat using one of the approaches listed below.

  - The following tables have size > 1 MiB and table bloat estimate > 40.00%. Use this list to reduce the bloat applying one of the approaches described below. Here are these tables: `t_with_bloat`, `bloated`.
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
# F005 Autovacuum: Btree Index Bloat (Estimated) #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-10-31 02:25:19 +0000 UTC  
Current database: dbname  
:information_source: This report considers only btree indexes.  





### Master (`postgres.test3.node`) ###
The list is limited to 50 items. Total: 303.   

| \# | Index (Table) | Index Size | Table Size | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat factor |Est. bloat level, % | Live Data Size | Fillfactor  |
|----|---------------|------------|------------|------------------------------|-------------------|-------------------|--------------------|----------------|-------------|
|&nbsp;|===== TOTAL ===== |677.67&nbsp;MiB |380.20&nbsp;MiB |26.49&nbsp;MiB |27,770,880|1.04 |3.91|651.18&nbsp;MiB ||
|1 | `t_rar_q_idx` (`t_rar_q`) |42.73&nbsp;MiB |49.75&nbsp;MiB |21.37&nbsp;MiB |22,405,120 |2.00 | **50.01** |~21.36&nbsp;MiB |90 |
|2 | `i_bloated` (`bloated`) |2.16&nbsp;MiB |3.50&nbsp;MiB |1.08&nbsp;MiB |1,130,496 |2.00 | **50.00** |~1.08&nbsp;MiB |90 |
|3 | `t_red_fk_1_pkey` (`t_red_fk_1`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|4 | `r_red_fk_1_x_idx` (`t_red_fk_1`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|5 | `r_red_fk_1_id_idx` (`t_red_fk_1`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|6 | `t_with_redundant_ref_idx_3` (`exp_redundant.t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|7 | `t_with_redundant_ref_idx_2` (`exp_redundant.t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|8 | `t_with_redundant_ref_idx_1` (`exp_redundant.t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|9 | `t_with_redundant_ref_idx_3` (`t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|10 | `t_with_redundant_ref_idx_2` (`t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|11 | `t_with_redundant_ref_idx_1` (`t_with_redundant_ref_idx`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|12 | `t_with_redundant_idx_pkey` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|13 | `t_with_redundant_idx_id` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|14 | `t_with_redundant_idx_f3_2` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|15 | `t_with_redundant_idx_f3_1` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|16 | `t_with_redundant_idx_f2` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|17 | `t_with_redundant_idx_f1_uniq` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|18 | `t_with_redundant_idx_f1_2` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|19 | `t_with_redundant_idx_f1` (`t_with_redundant_idx`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|20 | `ctnr_pkey` (`ctnr`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|21 | `ctnr_idx06` (`ctnr`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|22 | `ctnr_idx04` (`ctnr`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|23 | `ctnr_idx03` (`ctnr`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|24 | `ctnr_idx02` (`ctnr`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|25 | `ctnr_idx01` (`ctnr`) |21.45&nbsp;MiB |49.81&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|26 | `i_redundant_2` (`t_with_redundant_index`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|27 | `i_redundant_1` (`t_with_redundant_index`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|28 | `i_unused` (`t_with_unused_index`) |21.45&nbsp;MiB |34.61&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|29 | `r_red_fk_2_fk_idx` (`t_red_fk_2`) |21.45&nbsp;MiB |42.28&nbsp;MiB |88.00&nbsp;KiB |90,112 |1.00 |0.40 |~21.36&nbsp;MiB |90 |
|30 | `pg_class_tblspc_relfilenode_index` (`pg_catalog.pg_class`) |48.00&nbsp;KiB |176.00&nbsp;KiB |16.00&nbsp;KiB |16,384 |1.50 |33.33 |~32.00&nbsp;KiB |90 |
|31 | `i_u_109` (`t_109`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|32 | `i_r_82` (`t_82`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|33 | `i_u_82` (`t_82`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|34 | `i_r_83` (`t_83`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|35 | `i_u_83` (`t_83`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|36 | `i_r_84` (`t_84`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|37 | `i_u_84` (`t_84`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|38 | `i_r_85` (`t_85`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|39 | `i_u_85` (`t_85`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|40 | `i_r_86` (`t_86`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|41 | `i_u_86` (`t_86`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|42 | `i_r_87` (`t_87`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|43 | `i_u_87` (`t_87`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|44 | `i_r_88` (`t_88`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|45 | `i_u_88` (`t_88`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|46 | `i_r_89` (`t_89`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|47 | `i_u_89` (`t_89`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|48 | `i_r_90` (`t_90`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|49 | `i_u_90` (`t_90`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |
|50 | `i_r_91` (`t_91`) |40.00&nbsp;KiB |72.00&nbsp;KiB |8.00&nbsp;KiB |8,192 |1.25 |20.00 |~32.00&nbsp;KiB |90 |



## Conclusions ##
  - The estimated index (btree only) bloat in this DB is low, just ~3.91% (~26.49 MiB). No action is needed now. Keep watching it though.

  - [P2] There are 2 indexes with size > 1 MiB and index bloat estimate >= 40.00% and < 90.00%:  
    - `t_rar_q_idx`: size 42.73 MiB, can be reduced 2.00 times, by ~23.52 MiB (~50.01%)
    - `i_bloated`: size 2.16 MiB, can be reduced 2.00 times, by ~1.19 MiB (~50.00%)
  

  
 


## Recommendations ##
  - [P2] Consider the following:
    - to prevent a high level of bloat in the future, tune autovacuum: consider more aggressive autovacuum settings (see F001);
    - eliminate or reduce the current index bloat using one of the approaches listed below.

  - The following indexes have size > 1 MiB and index bloat estimate > 40.00%. Use this list to reduce the bloat applying one of the approaches described below. Here are these indexes: `t_rar_q_idx`.
  - And the following indexes also have size > 1 MiB and index bloat estimate > 40.00%. However, they belong to the highly bloated tables (see F004), so if you plan to process those tables you may not need to use this additional list. Here are these indexes: `i_bloated`.
  - If you want to get exact bloat numbers, clone the database, get index sizes, then apply database-wide `VACUUM FULL` (it eliminates all the bloat), and get new table sizes. Then compare old and new numbers.

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
Data collected: 2019-10-31 02:25:20 +0000 UTC  
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
  - [P1] Autovacuum cost delay and limit are not tuned. In Postgres versions prior to version 12, the effective values of `autovacuum_vacuum_cost_limit` and `autovacuum_vacuum_cost_delay` are too conservative, so autovacuum is overly throttled. Roughly speaking, the default settings mean, that all autovacuum workers (except which currently processing tables with individual, per-table settings) can read data with combined read throughput only up to ~8 MiB/s. This is extremely low for modern disk systems, and with growing sizes of tables and indexes it might lead to cases when some objects are processed by autovacuum during many hours: for example, it will take ~30 hours to read 1 TiB of data if the allowed throughput is just 8 MiB/s. In some cases, it might lead to serious issues such as performance degradation due to inability to process big tables in timed fashion and growing bloat, and even to such critical issues as transaction ID wraparound. At the same time, if disk system is powerful enough these risks can be easily mitigated by reducing throttling for autovacuum. In Postgres 12, it was decided to decrease `autovacuum_vacuum_cost_delay` 10 times (from 20 ms to 2 ms).
  
 


## Recommendations ##
  - [P1] Autovacuum cost delay and limit are not tuned. Consider raising `autovacuum_vacuum_cost_limit` or decreasing `autovacuum_vacuum_cost_delay`: for example, consider decreasing `autovacuum_vacuum_cost_delay` to 2 milliseconds, as it was done in default  values in Postgres 12. For more fine-grained tuning, analyze disk capabilities (first of all, random read and random write troughput) and observe logs with `log_autovacuum_min_duration = 0`, and perform several iterations of tuning.
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
Data collected: 2019-10-31 02:25:20 +0000 UTC  



### Master (`postgres.test3.node`) ###

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

#### Replica (`postgres.test1.node`) ####

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

#### Replica (`postgres.test2.node`) ####

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
  - [P1] Buffer pool size (`shared_buffers`) is far from optimal:
    - server `postgres.test1.node` has 3.61 GiB of RAM, while `shared_buffers` is set to 128.00 MiB, or 3.46% of RAM – it is too low, so it is very likely that Postgres performance is now sub-optimal.,  
    - server `postgres.test2.node` has 3.61 GiB of RAM, while `shared_buffers` is set to 128.00 MiB, or 3.46% of RAM – it is too low, so it is very likely that Postgres performance is now sub-optimal.,  
    - server `postgres.test3.node` has 3.61 GiB of RAM, while `shared_buffers` is set to 128.00 MiB, or 3.46% of RAM – it is too low, so it is very likely that Postgres performance is now sub-optimal..

  
 


## Recommendations ##
  - [P1] Buffer pool size (`shared_buffers`) is far from optimal:
    - server `postgres.test1.node`: 923.72 MiB (25%) or a value between 738.97 MiB (20%) and 2.89 GiB (80%),  
    - server `postgres.test2.node`: 923.72 MiB (25%) or a value between 738.97 MiB (20%) and 2.89 GiB (80%),  
    - server `postgres.test3.node`: 923.72 MiB (25%) or a value between 738.97 MiB (20%) and 2.89 GiB (80%).

  - Useful links related to buffer pool tuning:
    - [PostgreSQL documentation. 19.4. Resource Consumption](https://www.postgresql.org/docs/current/runtime-config-resource.html)
    - [Tuning Your PostgreSQL Server](https://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server#shared_buffers) (PostgreSQL Wiki)
    - [annotated.conf](https://github.com/jberkus/annotated.conf) (Josh Berkus, 2018)

  
 


---
<a name="postgres-checkup_G002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# G002 Connections and Current Activity #

## Observations ##
Data collected: 2019-10-31 02:25:20 +0000 UTC  



### Master (`postgres.test3.node`) ###
  

 \# | User | DB | Current state | Count | State changed >1m ago | State changed >1h ago | Tx age >1m | Tx age >1h
|----|------|----|---------------|-------|-----------------------|-----------------------|------------|-----------
| 1 |ALL users|ALL databases| ALL states | 6 | 0 | 0 | 0 | 0 | 
| 2 |ALL users|ALL databases| ALL states | 4 | 0 | 0 | 0 | 0 | 
| 3 |ALL users|ALL databases| ALL states | 4 | 0 | 0 | 0 | 0 | 
| 4 |`postgres`|ALL databases| ALL states | 1 | 0 | 0 | 0 | 0 | 
| 5 |`postgres`|ALL databases| ALL states | 1 | 0 | 0 | 0 | 0 | 
| 6 |`test_user`|ALL databases| active | 1 | 0 | 0 | 0 | 0 | 
| 7 |`test_user`|`dbname`| active | 1 | 0 | 0 | 0 | 0 | 



### Replica servers: ###

#### Replica (`postgres.test1.node`) ####

  

| \# | User | DB | Current state | Count | State changed >1m ago | State changed >1h ago | Tx age >1m | Tx age >1h |
|----|------|----|---------------|-------|-----------------------|-----------------------|------------|------------|
| 1 |ALL users|ALL databases| ALL states | 4 | 0 | 0 | 0 | 0 |
| 2 |ALL users|ALL databases| ALL states | 3 | 0 | 0 | 0 | 0 |
| 3 |ALL users|ALL databases| ALL states | 3 | 0 | 0 | 0 | 0 |
| 4 |`test_user`|ALL databases| active | 1 | 0 | 0 | 0 | 0 |
| 5 |`test_user`|`dbname`| active | 1 | 0 | 0 | 0 | 0 |

#### Replica (`postgres.test2.node`) ####

  

| \# | User | DB | Current state | Count | State changed >1m ago | State changed >1h ago | Tx age >1m | Tx age >1h |
|----|------|----|---------------|-------|-----------------------|-----------------------|------------|------------|
| 1 |ALL users|ALL databases| ALL states | 4 | 0 | 0 | 0 | 0 |
| 2 |ALL users|ALL databases| ALL states | 3 | 0 | 0 | 0 | 0 |
| 3 |ALL users|ALL databases| ALL states | 3 | 0 | 0 | 0 | 0 |
| 4 |`test_user`|ALL databases| active | 1 | 0 | 0 | 0 | 0 |
| 5 |`test_user`|`dbname`| active | 1 | 0 | 0 | 0 | 0 |


## Conclusions ##
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_G003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# G003 Timeouts, Locks, Deadlocks #

## Observations ##
Data collected: 2019-10-31 02:25:20 +0000 UTC  



### Master (`postgres.test3.node`) ###
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
| 1| `postgres` | 0 | 0 | 2019-10-31T02:21:10.367281+00:00|00:04:11 |
| 2| `dbname` | 0 | 0 | 2019-10-31T02:21:11.280413+00:00|00:04:10 |
| 3| `checkup_test_db` | 0 | 0 | 2019-10-31T02:25:16.539063+00:00|00:00:04 |


### Replica servers: ###

#### Replica (`postgres.test1.node`) ####

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
| `postgres` | 0 | 0 | 2019-10-31T02:21:20.304424+00:00 | 00:03:42 |
| `dbname` | 0 | 0 | 2019-10-31T02:21:39.325118+00:00 | 00:03:23 |




#### Replica (`postgres.test2.node`) ####

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
| `postgres` | 0 | 0 | 2019-10-31T02:21:20.361793+00:00 | 00:03:50 |
| `dbname` | 0 | 0 | 2019-10-31T02:21:39.389361+00:00 | 00:03:31 |




## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_H001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# H001 Invalid Indexes #

## Observations ##
Data collected: 2019-10-31 02:25:20 +0000 UTC  
Current database: dbname  


### Master (`postgres.test3.node`) ###


  

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
# H002 Unused Indexes #
## Observations ##
Data collected: 2019-10-31 02:25:21 +0000 UTC  
Current database: dbname  

  
Stats reset: 00:04:00 ago (2019-10-31 02:21:11 +0000 UTC)  
  
:warning: Statistics age is less than 30 days. Make decisions on index cleanup with caution!  

### Never Used Indexes ###

The list is limited to 50 items. Total: 243.  

| \#| Table | Index | postgres.test3.node usage | postgres.test1.node usage | postgres.test2.node usage | &#9660;&nbsp;Index size | Table size | Supports FK |
|--|-------|-------|----|--------|--------|-----|-----|-----|
|&nbsp;|=====TOTAL=====|||||525.36&nbsp;MiB|1.01&nbsp;GiB||
|1|`t_with_redundant_idx`|`t_with_redundant_idx_f3_1`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|2|`t_with_redundant_idx`|`t_with_redundant_idx_f2`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|3|`t_with_redundant_idx`|`t_with_redundant_idx_f1_f2`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|4|`t_with_redundant_idx`|`t_with_redundant_idx_f1_2`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|5|`t_with_redundant_idx`|`t_with_redundant_idx_f1`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|6|`t_with_redundant_idx`|`t_with_redundant_idx_id`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|7|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_3`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|8|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_2`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|9|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_1`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|10|`exp_redundant.t_with_redundant_ref_idx`|`exp_redundant.t_with_redundant_ref_idx_3`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|11|`exp_redundant.t_with_redundant_ref_idx`|`exp_redundant.t_with_redundant_ref_idx_2`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|12|`exp_redundant.t_with_redundant_ref_idx`|`exp_redundant.t_with_redundant_ref_idx_1`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|13|`t_with_redundant_idx`|`t_with_redundant_idx_f3_2`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|14|`t_red_fk_1`|`r_red_fk_1_x_idx`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|15|`t_red_fk_1`|`r_red_fk_1_id_idx`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|16|`t_red_fk_2`|`r_red_fk_2_fk_idx`|0|||21.45&nbsp;MiB|42.24&nbsp;MiB||
|17|`t_with_unused_index`|`i_unused`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|18|`t_with_redundant_index`|`i_redundant_2`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|19|`t_with_redundant_index`|`i_redundant_1`|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|20|`ctnr`|`ctnr_idx06`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|21|`ctnr`|`ctnr_idx04`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|22|`ctnr`|`ctnr_idx03`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|23|`ctnr`|`ctnr_idx02`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|24|`ctnr`|`ctnr_idx01`|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|25|`bloated`|`i_bloated`|0|||2.16&nbsp;MiB|3.47&nbsp;MiB||
|26|`t_1`|`i_u_1`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|27|`t_7`|`i_r_7`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|28|`t_7`|`i_u_7`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|29|`t_12`|`i_r_12`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|30|`t_12`|`i_u_12`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|31|`t_15`|`i_r_15`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|32|`t_15`|`i_u_15`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|33|`t_18`|`i_r_18`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|34|`t_18`|`i_u_18`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|35|`t_2`|`i_r_2`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|36|`t_2`|`i_u_2`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|37|`t_8`|`i_r_8`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|38|`t_8`|`i_u_8`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|39|`t_3`|`i_r_3`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|40|`t_3`|`i_u_3`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|41|`t_9`|`i_r_9`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|42|`t_9`|`i_u_9`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|43|`t_4`|`i_r_4`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|44|`t_4`|`i_u_4`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|45|`t_5`|`i_r_5`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|46|`t_5`|`i_u_5`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|47|`t_10`|`i_r_10`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|48|`t_10`|`i_u_10`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|49|`t_13`|`i_r_13`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|50|`t_13`|`i_u_13`|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||



### Rarely Used Indexes ###



|\#| Table | Index | postgres.test3.node usage | postgres.test1.node usage | postgres.test2.node usage | &#9660;&nbsp;Index size | Table size | Comment | Supports FK|
|--|-------|-------|-----|--------|--------|-----|-----|----|-----|
|&nbsp;|=====TOTAL=====|||||42.73&nbsp;MiB|49.72&nbsp;MiB|||
|1|`t_rar_q`|`t_rar_q_idx`|scans: 1\/hour, writes: 1,745,116\/hour|||42.73&nbsp;MiB|49.72&nbsp;MiB|Low Scans, High Writes||



## Conclusions ##
  - [P2] 243 unused index(es) have been found and their total size exceeds 5.00% of the database size.
  
 


## Recommendations ##
  - [P2] Use the database migration provided below to drop the unused indexes. Keep in mind, that under load, it is recommended to use `DROP INDEX CONCURRENTLY` (and `CREATE INDEX CONCURRENTLY` if reverting is needed) to avoid blocking issues.
  - Be careful dropping the indexes. If you have multiple setups of your software, the analysis of just a single setup might be not enough. Some indexes might be used (and therefore, needed) only on a limited number of setups. Also, in some cases, developers prepare indexes for new features in advance – in such cases, dropping those indexes is not a good idea.
  - If there are some doubts, consider a more careful approach. Before actualdropping, indexes disable listed in this report. For this, use queries like `UPDATE pg_index SET indisvalid = false WHERE indexrelid::regclass = (select oid from pg_class where relname = 'u_users_email');. Indexes will continue to get updates. In case of some performance degradations, re-enable the corresponding indexes, setting indisvalid to true. If everything looks fine, after a significant period of observations, proceed with DROP INDEX CONCURRENTLY.
  - "DO" database migrations  
```  
DROP INDEX CONCURRENTLY i_bloated; -- 2208 kB, Never Used Indexes, table bloated  
DROP INDEX CONCURRENTLY ctnr_idx01; -- 21 MB, Never Used Indexes, table ctnr  
DROP INDEX CONCURRENTLY ctnr_idx02; -- 21 MB, Never Used Indexes, table ctnr  
DROP INDEX CONCURRENTLY ctnr_idx03; -- 21 MB, Never Used Indexes, table ctnr  
DROP INDEX CONCURRENTLY ctnr_idx04; -- 21 MB, Never Used Indexes, table ctnr  
DROP INDEX CONCURRENTLY ctnr_idx06; -- 21 MB, Never Used Indexes, table ctnr  
DROP INDEX CONCURRENTLY i_r_1; -- 40 kB, Never Used Indexes, table t_1  
DROP INDEX CONCURRENTLY i_u_1; -- 40 kB, Never Used Indexes, table t_1  
DROP INDEX CONCURRENTLY i_r_10; -- 40 kB, Never Used Indexes, table t_10  
DROP INDEX CONCURRENTLY i_u_10; -- 40 kB, Never Used Indexes, table t_10  
DROP INDEX CONCURRENTLY i_r_100; -- 40 kB, Never Used Indexes, table t_100  
DROP INDEX CONCURRENTLY i_u_100; -- 40 kB, Never Used Indexes, table t_100  
DROP INDEX CONCURRENTLY i_r_101; -- 40 kB, Never Used Indexes, table t_101  
DROP INDEX CONCURRENTLY i_u_101; -- 40 kB, Never Used Indexes, table t_101  
DROP INDEX CONCURRENTLY i_r_102; -- 40 kB, Never Used Indexes, table t_102  
DROP INDEX CONCURRENTLY i_u_102; -- 40 kB, Never Used Indexes, table t_102  
DROP INDEX CONCURRENTLY i_r_103; -- 40 kB, Never Used Indexes, table t_103  
DROP INDEX CONCURRENTLY i_u_103; -- 40 kB, Never Used Indexes, table t_103  
DROP INDEX CONCURRENTLY i_r_104; -- 40 kB, Never Used Indexes, table t_104  
DROP INDEX CONCURRENTLY i_u_104; -- 40 kB, Never Used Indexes, table t_104  
DROP INDEX CONCURRENTLY i_r_105; -- 40 kB, Never Used Indexes, table t_105  
DROP INDEX CONCURRENTLY i_u_105; -- 40 kB, Never Used Indexes, table t_105  
DROP INDEX CONCURRENTLY i_r_106; -- 40 kB, Never Used Indexes, table t_106  
DROP INDEX CONCURRENTLY i_u_106; -- 40 kB, Never Used Indexes, table t_106  
DROP INDEX CONCURRENTLY i_r_107; -- 40 kB, Never Used Indexes, table t_107  
DROP INDEX CONCURRENTLY i_u_107; -- 40 kB, Never Used Indexes, table t_107  
DROP INDEX CONCURRENTLY i_r_108; -- 40 kB, Never Used Indexes, table t_108  
DROP INDEX CONCURRENTLY i_u_108; -- 40 kB, Never Used Indexes, table t_108  
DROP INDEX CONCURRENTLY i_r_109; -- 40 kB, Never Used Indexes, table t_109  
DROP INDEX CONCURRENTLY i_u_109; -- 40 kB, Never Used Indexes, table t_109  
DROP INDEX CONCURRENTLY i_r_11; -- 40 kB, Never Used Indexes, table t_11  
DROP INDEX CONCURRENTLY i_u_11; -- 40 kB, Never Used Indexes, table t_11  
DROP INDEX CONCURRENTLY i_r_12; -- 40 kB, Never Used Indexes, table t_12  
DROP INDEX CONCURRENTLY i_u_12; -- 40 kB, Never Used Indexes, table t_12  
DROP INDEX CONCURRENTLY i_r_13; -- 40 kB, Never Used Indexes, table t_13  
DROP INDEX CONCURRENTLY i_u_13; -- 40 kB, Never Used Indexes, table t_13  
DROP INDEX CONCURRENTLY i_r_14; -- 40 kB, Never Used Indexes, table t_14  
DROP INDEX CONCURRENTLY i_u_14; -- 40 kB, Never Used Indexes, table t_14  
DROP INDEX CONCURRENTLY i_r_15; -- 40 kB, Never Used Indexes, table t_15  
DROP INDEX CONCURRENTLY i_u_15; -- 40 kB, Never Used Indexes, table t_15  
DROP INDEX CONCURRENTLY i_r_16; -- 40 kB, Never Used Indexes, table t_16  
DROP INDEX CONCURRENTLY i_u_16; -- 40 kB, Never Used Indexes, table t_16  
DROP INDEX CONCURRENTLY i_r_17; -- 40 kB, Never Used Indexes, table t_17  
DROP INDEX CONCURRENTLY i_u_17; -- 40 kB, Never Used Indexes, table t_17  
DROP INDEX CONCURRENTLY i_r_18; -- 40 kB, Never Used Indexes, table t_18  
DROP INDEX CONCURRENTLY i_u_18; -- 40 kB, Never Used Indexes, table t_18  
DROP INDEX CONCURRENTLY i_r_19; -- 40 kB, Never Used Indexes, table t_19  
DROP INDEX CONCURRENTLY i_u_19; -- 40 kB, Never Used Indexes, table t_19  
DROP INDEX CONCURRENTLY i_r_2; -- 40 kB, Never Used Indexes, table t_2  
DROP INDEX CONCURRENTLY i_u_2; -- 40 kB, Never Used Indexes, table t_2  
DROP INDEX CONCURRENTLY i_r_20; -- 40 kB, Never Used Indexes, table t_20  
DROP INDEX CONCURRENTLY i_u_20; -- 40 kB, Never Used Indexes, table t_20  
DROP INDEX CONCURRENTLY i_r_21; -- 40 kB, Never Used Indexes, table t_21  
DROP INDEX CONCURRENTLY i_u_21; -- 40 kB, Never Used Indexes, table t_21  
DROP INDEX CONCURRENTLY i_r_22; -- 40 kB, Never Used Indexes, table t_22  
DROP INDEX CONCURRENTLY i_u_22; -- 40 kB, Never Used Indexes, table t_22  
DROP INDEX CONCURRENTLY i_r_23; -- 40 kB, Never Used Indexes, table t_23  
DROP INDEX CONCURRENTLY i_u_23; -- 40 kB, Never Used Indexes, table t_23  
DROP INDEX CONCURRENTLY i_r_24; -- 40 kB, Never Used Indexes, table t_24  
DROP INDEX CONCURRENTLY i_u_24; -- 40 kB, Never Used Indexes, table t_24  
DROP INDEX CONCURRENTLY i_r_25; -- 40 kB, Never Used Indexes, table t_25  
DROP INDEX CONCURRENTLY i_u_25; -- 40 kB, Never Used Indexes, table t_25  
DROP INDEX CONCURRENTLY i_r_26; -- 40 kB, Never Used Indexes, table t_26  
DROP INDEX CONCURRENTLY i_u_26; -- 40 kB, Never Used Indexes, table t_26  
DROP INDEX CONCURRENTLY i_r_27; -- 40 kB, Never Used Indexes, table t_27  
DROP INDEX CONCURRENTLY i_u_27; -- 40 kB, Never Used Indexes, table t_27  
DROP INDEX CONCURRENTLY i_r_28; -- 40 kB, Never Used Indexes, table t_28  
DROP INDEX CONCURRENTLY i_u_28; -- 40 kB, Never Used Indexes, table t_28  
DROP INDEX CONCURRENTLY i_r_29; -- 40 kB, Never Used Indexes, table t_29  
DROP INDEX CONCURRENTLY i_u_29; -- 40 kB, Never Used Indexes, table t_29  
DROP INDEX CONCURRENTLY i_r_3; -- 40 kB, Never Used Indexes, table t_3  
DROP INDEX CONCURRENTLY i_u_3; -- 40 kB, Never Used Indexes, table t_3  
DROP INDEX CONCURRENTLY i_r_30; -- 40 kB, Never Used Indexes, table t_30  
DROP INDEX CONCURRENTLY i_u_30; -- 40 kB, Never Used Indexes, table t_30  
DROP INDEX CONCURRENTLY i_r_31; -- 40 kB, Never Used Indexes, table t_31  
DROP INDEX CONCURRENTLY i_u_31; -- 40 kB, Never Used Indexes, table t_31  
DROP INDEX CONCURRENTLY i_r_32; -- 40 kB, Never Used Indexes, table t_32  
DROP INDEX CONCURRENTLY i_u_32; -- 40 kB, Never Used Indexes, table t_32  
DROP INDEX CONCURRENTLY i_r_33; -- 40 kB, Never Used Indexes, table t_33  
DROP INDEX CONCURRENTLY i_u_33; -- 40 kB, Never Used Indexes, table t_33  
DROP INDEX CONCURRENTLY i_r_34; -- 40 kB, Never Used Indexes, table t_34  
DROP INDEX CONCURRENTLY i_u_34; -- 40 kB, Never Used Indexes, table t_34  
DROP INDEX CONCURRENTLY i_r_35; -- 40 kB, Never Used Indexes, table t_35  
DROP INDEX CONCURRENTLY i_u_35; -- 40 kB, Never Used Indexes, table t_35  
DROP INDEX CONCURRENTLY i_r_36; -- 40 kB, Never Used Indexes, table t_36  
DROP INDEX CONCURRENTLY i_u_36; -- 40 kB, Never Used Indexes, table t_36  
DROP INDEX CONCURRENTLY i_r_37; -- 40 kB, Never Used Indexes, table t_37  
DROP INDEX CONCURRENTLY i_u_37; -- 40 kB, Never Used Indexes, table t_37  
DROP INDEX CONCURRENTLY i_r_38; -- 40 kB, Never Used Indexes, table t_38  
DROP INDEX CONCURRENTLY i_u_38; -- 40 kB, Never Used Indexes, table t_38  
DROP INDEX CONCURRENTLY i_r_39; -- 40 kB, Never Used Indexes, table t_39  
DROP INDEX CONCURRENTLY i_u_39; -- 40 kB, Never Used Indexes, table t_39  
DROP INDEX CONCURRENTLY i_r_4; -- 40 kB, Never Used Indexes, table t_4  
DROP INDEX CONCURRENTLY i_u_4; -- 40 kB, Never Used Indexes, table t_4  
DROP INDEX CONCURRENTLY i_r_40; -- 40 kB, Never Used Indexes, table t_40  
DROP INDEX CONCURRENTLY i_u_40; -- 40 kB, Never Used Indexes, table t_40  
DROP INDEX CONCURRENTLY i_r_41; -- 40 kB, Never Used Indexes, table t_41  
DROP INDEX CONCURRENTLY i_u_41; -- 40 kB, Never Used Indexes, table t_41  
DROP INDEX CONCURRENTLY i_r_42; -- 40 kB, Never Used Indexes, table t_42  
DROP INDEX CONCURRENTLY i_u_42; -- 40 kB, Never Used Indexes, table t_42  
DROP INDEX CONCURRENTLY i_r_43; -- 40 kB, Never Used Indexes, table t_43  
DROP INDEX CONCURRENTLY i_u_43; -- 40 kB, Never Used Indexes, table t_43  
DROP INDEX CONCURRENTLY i_r_44; -- 40 kB, Never Used Indexes, table t_44  
DROP INDEX CONCURRENTLY i_u_44; -- 40 kB, Never Used Indexes, table t_44  
DROP INDEX CONCURRENTLY i_r_45; -- 40 kB, Never Used Indexes, table t_45  
DROP INDEX CONCURRENTLY i_u_45; -- 40 kB, Never Used Indexes, table t_45  
DROP INDEX CONCURRENTLY i_r_46; -- 40 kB, Never Used Indexes, table t_46  
DROP INDEX CONCURRENTLY i_u_46; -- 40 kB, Never Used Indexes, table t_46  
DROP INDEX CONCURRENTLY i_r_47; -- 40 kB, Never Used Indexes, table t_47  
DROP INDEX CONCURRENTLY i_u_47; -- 40 kB, Never Used Indexes, table t_47  
DROP INDEX CONCURRENTLY i_r_48; -- 40 kB, Never Used Indexes, table t_48  
DROP INDEX CONCURRENTLY i_u_48; -- 40 kB, Never Used Indexes, table t_48  
DROP INDEX CONCURRENTLY i_r_49; -- 40 kB, Never Used Indexes, table t_49  
DROP INDEX CONCURRENTLY i_u_49; -- 40 kB, Never Used Indexes, table t_49  
DROP INDEX CONCURRENTLY i_r_5; -- 40 kB, Never Used Indexes, table t_5  
DROP INDEX CONCURRENTLY i_u_5; -- 40 kB, Never Used Indexes, table t_5  
DROP INDEX CONCURRENTLY i_r_50; -- 40 kB, Never Used Indexes, table t_50  
DROP INDEX CONCURRENTLY i_u_50; -- 40 kB, Never Used Indexes, table t_50  
DROP INDEX CONCURRENTLY i_r_51; -- 40 kB, Never Used Indexes, table t_51  
DROP INDEX CONCURRENTLY i_u_51; -- 40 kB, Never Used Indexes, table t_51  
DROP INDEX CONCURRENTLY i_r_52; -- 40 kB, Never Used Indexes, table t_52  
DROP INDEX CONCURRENTLY i_u_52; -- 40 kB, Never Used Indexes, table t_52  
DROP INDEX CONCURRENTLY i_r_53; -- 40 kB, Never Used Indexes, table t_53  
DROP INDEX CONCURRENTLY i_u_53; -- 40 kB, Never Used Indexes, table t_53  
DROP INDEX CONCURRENTLY i_r_54; -- 40 kB, Never Used Indexes, table t_54  
DROP INDEX CONCURRENTLY i_u_54; -- 40 kB, Never Used Indexes, table t_54  
DROP INDEX CONCURRENTLY i_r_55; -- 40 kB, Never Used Indexes, table t_55  
DROP INDEX CONCURRENTLY i_u_55; -- 40 kB, Never Used Indexes, table t_55  
DROP INDEX CONCURRENTLY i_r_56; -- 40 kB, Never Used Indexes, table t_56  
DROP INDEX CONCURRENTLY i_u_56; -- 40 kB, Never Used Indexes, table t_56  
DROP INDEX CONCURRENTLY i_r_57; -- 40 kB, Never Used Indexes, table t_57  
DROP INDEX CONCURRENTLY i_u_57; -- 40 kB, Never Used Indexes, table t_57  
DROP INDEX CONCURRENTLY i_r_58; -- 40 kB, Never Used Indexes, table t_58  
DROP INDEX CONCURRENTLY i_u_58; -- 40 kB, Never Used Indexes, table t_58  
DROP INDEX CONCURRENTLY i_r_59; -- 40 kB, Never Used Indexes, table t_59  
DROP INDEX CONCURRENTLY i_u_59; -- 40 kB, Never Used Indexes, table t_59  
DROP INDEX CONCURRENTLY i_r_6; -- 40 kB, Never Used Indexes, table t_6  
DROP INDEX CONCURRENTLY i_u_6; -- 40 kB, Never Used Indexes, table t_6  
DROP INDEX CONCURRENTLY i_r_60; -- 40 kB, Never Used Indexes, table t_60  
DROP INDEX CONCURRENTLY i_u_60; -- 40 kB, Never Used Indexes, table t_60  
DROP INDEX CONCURRENTLY i_r_61; -- 40 kB, Never Used Indexes, table t_61  
DROP INDEX CONCURRENTLY i_u_61; -- 40 kB, Never Used Indexes, table t_61  
DROP INDEX CONCURRENTLY i_r_62; -- 40 kB, Never Used Indexes, table t_62  
DROP INDEX CONCURRENTLY i_u_62; -- 40 kB, Never Used Indexes, table t_62  
DROP INDEX CONCURRENTLY i_r_63; -- 40 kB, Never Used Indexes, table t_63  
DROP INDEX CONCURRENTLY i_u_63; -- 40 kB, Never Used Indexes, table t_63  
DROP INDEX CONCURRENTLY i_r_64; -- 40 kB, Never Used Indexes, table t_64  
DROP INDEX CONCURRENTLY i_u_64; -- 40 kB, Never Used Indexes, table t_64  
DROP INDEX CONCURRENTLY i_r_65; -- 40 kB, Never Used Indexes, table t_65  
DROP INDEX CONCURRENTLY i_u_65; -- 40 kB, Never Used Indexes, table t_65  
DROP INDEX CONCURRENTLY i_r_66; -- 40 kB, Never Used Indexes, table t_66  
DROP INDEX CONCURRENTLY i_u_66; -- 40 kB, Never Used Indexes, table t_66  
DROP INDEX CONCURRENTLY i_r_67; -- 40 kB, Never Used Indexes, table t_67  
DROP INDEX CONCURRENTLY i_u_67; -- 40 kB, Never Used Indexes, table t_67  
DROP INDEX CONCURRENTLY i_r_68; -- 40 kB, Never Used Indexes, table t_68  
DROP INDEX CONCURRENTLY i_u_68; -- 40 kB, Never Used Indexes, table t_68  
DROP INDEX CONCURRENTLY i_r_69; -- 40 kB, Never Used Indexes, table t_69  
DROP INDEX CONCURRENTLY i_u_69; -- 40 kB, Never Used Indexes, table t_69  
DROP INDEX CONCURRENTLY i_r_7; -- 40 kB, Never Used Indexes, table t_7  
DROP INDEX CONCURRENTLY i_u_7; -- 40 kB, Never Used Indexes, table t_7  
DROP INDEX CONCURRENTLY i_r_70; -- 40 kB, Never Used Indexes, table t_70  
DROP INDEX CONCURRENTLY i_u_70; -- 40 kB, Never Used Indexes, table t_70  
DROP INDEX CONCURRENTLY i_r_71; -- 40 kB, Never Used Indexes, table t_71  
DROP INDEX CONCURRENTLY i_u_71; -- 40 kB, Never Used Indexes, table t_71  
DROP INDEX CONCURRENTLY i_r_72; -- 40 kB, Never Used Indexes, table t_72  
DROP INDEX CONCURRENTLY i_u_72; -- 40 kB, Never Used Indexes, table t_72  
DROP INDEX CONCURRENTLY i_r_73; -- 40 kB, Never Used Indexes, table t_73  
DROP INDEX CONCURRENTLY i_u_73; -- 40 kB, Never Used Indexes, table t_73  
DROP INDEX CONCURRENTLY i_r_74; -- 40 kB, Never Used Indexes, table t_74  
DROP INDEX CONCURRENTLY i_u_74; -- 40 kB, Never Used Indexes, table t_74  
DROP INDEX CONCURRENTLY i_r_75; -- 40 kB, Never Used Indexes, table t_75  
DROP INDEX CONCURRENTLY i_u_75; -- 40 kB, Never Used Indexes, table t_75  
DROP INDEX CONCURRENTLY i_r_76; -- 40 kB, Never Used Indexes, table t_76  
DROP INDEX CONCURRENTLY i_u_76; -- 40 kB, Never Used Indexes, table t_76  
DROP INDEX CONCURRENTLY i_r_77; -- 40 kB, Never Used Indexes, table t_77  
DROP INDEX CONCURRENTLY i_u_77; -- 40 kB, Never Used Indexes, table t_77  
DROP INDEX CONCURRENTLY i_r_78; -- 40 kB, Never Used Indexes, table t_78  
DROP INDEX CONCURRENTLY i_u_78; -- 40 kB, Never Used Indexes, table t_78  
DROP INDEX CONCURRENTLY i_r_79; -- 40 kB, Never Used Indexes, table t_79  
DROP INDEX CONCURRENTLY i_u_79; -- 40 kB, Never Used Indexes, table t_79  
DROP INDEX CONCURRENTLY i_r_8; -- 40 kB, Never Used Indexes, table t_8  
DROP INDEX CONCURRENTLY i_u_8; -- 40 kB, Never Used Indexes, table t_8  
DROP INDEX CONCURRENTLY i_r_80; -- 40 kB, Never Used Indexes, table t_80  
DROP INDEX CONCURRENTLY i_u_80; -- 40 kB, Never Used Indexes, table t_80  
DROP INDEX CONCURRENTLY i_r_81; -- 40 kB, Never Used Indexes, table t_81  
DROP INDEX CONCURRENTLY i_u_81; -- 40 kB, Never Used Indexes, table t_81  
DROP INDEX CONCURRENTLY i_r_82; -- 40 kB, Never Used Indexes, table t_82  
DROP INDEX CONCURRENTLY i_u_82; -- 40 kB, Never Used Indexes, table t_82  
DROP INDEX CONCURRENTLY i_r_83; -- 40 kB, Never Used Indexes, table t_83  
DROP INDEX CONCURRENTLY i_u_83; -- 40 kB, Never Used Indexes, table t_83  
DROP INDEX CONCURRENTLY i_r_84; -- 40 kB, Never Used Indexes, table t_84  
DROP INDEX CONCURRENTLY i_u_84; -- 40 kB, Never Used Indexes, table t_84  
DROP INDEX CONCURRENTLY i_r_85; -- 40 kB, Never Used Indexes, table t_85  
DROP INDEX CONCURRENTLY i_u_85; -- 40 kB, Never Used Indexes, table t_85  
DROP INDEX CONCURRENTLY i_r_86; -- 40 kB, Never Used Indexes, table t_86  
DROP INDEX CONCURRENTLY i_u_86; -- 40 kB, Never Used Indexes, table t_86  
DROP INDEX CONCURRENTLY i_r_87; -- 40 kB, Never Used Indexes, table t_87  
DROP INDEX CONCURRENTLY i_u_87; -- 40 kB, Never Used Indexes, table t_87  
DROP INDEX CONCURRENTLY i_r_88; -- 40 kB, Never Used Indexes, table t_88  
DROP INDEX CONCURRENTLY i_u_88; -- 40 kB, Never Used Indexes, table t_88  
DROP INDEX CONCURRENTLY i_r_89; -- 40 kB, Never Used Indexes, table t_89  
DROP INDEX CONCURRENTLY i_u_89; -- 40 kB, Never Used Indexes, table t_89  
DROP INDEX CONCURRENTLY i_r_9; -- 40 kB, Never Used Indexes, table t_9  
DROP INDEX CONCURRENTLY i_u_9; -- 40 kB, Never Used Indexes, table t_9  
DROP INDEX CONCURRENTLY i_r_90; -- 40 kB, Never Used Indexes, table t_90  
DROP INDEX CONCURRENTLY i_u_90; -- 40 kB, Never Used Indexes, table t_90  
DROP INDEX CONCURRENTLY i_r_91; -- 40 kB, Never Used Indexes, table t_91  
DROP INDEX CONCURRENTLY i_u_91; -- 40 kB, Never Used Indexes, table t_91  
DROP INDEX CONCURRENTLY i_r_92; -- 40 kB, Never Used Indexes, table t_92  
DROP INDEX CONCURRENTLY i_u_92; -- 40 kB, Never Used Indexes, table t_92  
DROP INDEX CONCURRENTLY i_r_93; -- 40 kB, Never Used Indexes, table t_93  
DROP INDEX CONCURRENTLY i_u_93; -- 40 kB, Never Used Indexes, table t_93  
DROP INDEX CONCURRENTLY i_r_94; -- 40 kB, Never Used Indexes, table t_94  
DROP INDEX CONCURRENTLY i_u_94; -- 40 kB, Never Used Indexes, table t_94  
DROP INDEX CONCURRENTLY i_r_95; -- 40 kB, Never Used Indexes, table t_95  
DROP INDEX CONCURRENTLY i_u_95; -- 40 kB, Never Used Indexes, table t_95  
DROP INDEX CONCURRENTLY i_r_96; -- 40 kB, Never Used Indexes, table t_96  
DROP INDEX CONCURRENTLY i_u_96; -- 40 kB, Never Used Indexes, table t_96  
DROP INDEX CONCURRENTLY i_r_97; -- 40 kB, Never Used Indexes, table t_97  
DROP INDEX CONCURRENTLY i_u_97; -- 40 kB, Never Used Indexes, table t_97  
DROP INDEX CONCURRENTLY i_r_98; -- 40 kB, Never Used Indexes, table t_98  
DROP INDEX CONCURRENTLY i_u_98; -- 40 kB, Never Used Indexes, table t_98  
DROP INDEX CONCURRENTLY i_r_99; -- 40 kB, Never Used Indexes, table t_99  
DROP INDEX CONCURRENTLY i_u_99; -- 40 kB, Never Used Indexes, table t_99  
DROP INDEX CONCURRENTLY r_red_fk_1_id_idx; -- 21 MB, Never Used Indexes, table t_red_fk_1  
DROP INDEX CONCURRENTLY r_red_fk_1_x_idx; -- 21 MB, Never Used Indexes, table t_red_fk_1  
DROP INDEX CONCURRENTLY r_red_fk_2_fk_idx; -- 21 MB, Never Used Indexes, table t_red_fk_2  
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1; -- 21 MB, Never Used Indexes, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1_2; -- 21 MB, Never Used Indexes, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1_f2; -- 21 MB, Never Used Indexes, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY t_with_redundant_idx_f2; -- 21 MB, Never Used Indexes, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY t_with_redundant_idx_f3_1; -- 21 MB, Never Used Indexes, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY t_with_redundant_idx_f3_2; -- 21 MB, Never Used Indexes, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY t_with_redundant_idx_id; -- 21 MB, Never Used Indexes, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY i_redundant_1; -- 21 MB, Never Used Indexes, table t_with_redundant_index  
DROP INDEX CONCURRENTLY i_redundant_2; -- 21 MB, Never Used Indexes, table t_with_redundant_index  
DROP INDEX CONCURRENTLY exp_redundant.t_with_redundant_ref_idx_1; -- 21 MB, Never Used Indexes, table exp_redundant.t_with_redundant_ref_idx  
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_1; -- 21 MB, Never Used Indexes, table t_with_redundant_ref_idx  
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_2; -- 21 MB, Never Used Indexes, table t_with_redundant_ref_idx  
DROP INDEX CONCURRENTLY exp_redundant.t_with_redundant_ref_idx_2; -- 21 MB, Never Used Indexes, table exp_redundant.t_with_redundant_ref_idx  
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_3; -- 21 MB, Never Used Indexes, table t_with_redundant_ref_idx  
DROP INDEX CONCURRENTLY exp_redundant.t_with_redundant_ref_idx_3; -- 21 MB, Never Used Indexes, table exp_redundant.t_with_redundant_ref_idx  
DROP INDEX CONCURRENTLY i_unused; -- 21 MB, Never Used Indexes, table t_with_unused_index  
```
  - "UNDO" database migrations  
```  
CREATE INDEX CONCURRENTLY i_bloated ON public.bloated USING btree (i); -- table bloated  
CREATE INDEX CONCURRENTLY ctnr_idx01 ON public.ctnr USING btree (pnum); -- table ctnr  
CREATE INDEX CONCURRENTLY ctnr_idx02 ON public.ctnr USING btree (type_id); -- table ctnr  
CREATE INDEX CONCURRENTLY ctnr_idx03 ON public.ctnr USING btree (b); -- table ctnr  
CREATE INDEX CONCURRENTLY ctnr_idx04 ON public.ctnr USING btree (b) WHERE (pnum > 0); -- table ctnr  
CREATE INDEX CONCURRENTLY ctnr_idx06 ON public.ctnr USING btree (todel); -- table ctnr  
CREATE INDEX CONCURRENTLY i_r_1 ON public.t_1 USING btree (i); -- table t_1  
CREATE INDEX CONCURRENTLY i_u_1 ON public.t_1 USING btree (i); -- table t_1  
CREATE INDEX CONCURRENTLY i_r_10 ON public.t_10 USING btree (i); -- table t_10  
CREATE INDEX CONCURRENTLY i_u_10 ON public.t_10 USING btree (i); -- table t_10  
CREATE INDEX CONCURRENTLY i_r_100 ON public.t_100 USING btree (i); -- table t_100  
CREATE INDEX CONCURRENTLY i_u_100 ON public.t_100 USING btree (i); -- table t_100  
CREATE INDEX CONCURRENTLY i_r_101 ON public.t_101 USING btree (i); -- table t_101  
CREATE INDEX CONCURRENTLY i_u_101 ON public.t_101 USING btree (i); -- table t_101  
CREATE INDEX CONCURRENTLY i_r_102 ON public.t_102 USING btree (i); -- table t_102  
CREATE INDEX CONCURRENTLY i_u_102 ON public.t_102 USING btree (i); -- table t_102  
CREATE INDEX CONCURRENTLY i_r_103 ON public.t_103 USING btree (i); -- table t_103  
CREATE INDEX CONCURRENTLY i_u_103 ON public.t_103 USING btree (i); -- table t_103  
CREATE INDEX CONCURRENTLY i_r_104 ON public.t_104 USING btree (i); -- table t_104  
CREATE INDEX CONCURRENTLY i_u_104 ON public.t_104 USING btree (i); -- table t_104  
CREATE INDEX CONCURRENTLY i_r_105 ON public.t_105 USING btree (i); -- table t_105  
CREATE INDEX CONCURRENTLY i_u_105 ON public.t_105 USING btree (i); -- table t_105  
CREATE INDEX CONCURRENTLY i_r_106 ON public.t_106 USING btree (i); -- table t_106  
CREATE INDEX CONCURRENTLY i_u_106 ON public.t_106 USING btree (i); -- table t_106  
CREATE INDEX CONCURRENTLY i_r_107 ON public.t_107 USING btree (i); -- table t_107  
CREATE INDEX CONCURRENTLY i_u_107 ON public.t_107 USING btree (i); -- table t_107  
CREATE INDEX CONCURRENTLY i_r_108 ON public.t_108 USING btree (i); -- table t_108  
CREATE INDEX CONCURRENTLY i_u_108 ON public.t_108 USING btree (i); -- table t_108  
CREATE INDEX CONCURRENTLY i_r_109 ON public.t_109 USING btree (i); -- table t_109  
CREATE INDEX CONCURRENTLY i_u_109 ON public.t_109 USING btree (i); -- table t_109  
CREATE INDEX CONCURRENTLY i_r_11 ON public.t_11 USING btree (i); -- table t_11  
CREATE INDEX CONCURRENTLY i_u_11 ON public.t_11 USING btree (i); -- table t_11  
CREATE INDEX CONCURRENTLY i_r_12 ON public.t_12 USING btree (i); -- table t_12  
CREATE INDEX CONCURRENTLY i_u_12 ON public.t_12 USING btree (i); -- table t_12  
CREATE INDEX CONCURRENTLY i_r_13 ON public.t_13 USING btree (i); -- table t_13  
CREATE INDEX CONCURRENTLY i_u_13 ON public.t_13 USING btree (i); -- table t_13  
CREATE INDEX CONCURRENTLY i_r_14 ON public.t_14 USING btree (i); -- table t_14  
CREATE INDEX CONCURRENTLY i_u_14 ON public.t_14 USING btree (i); -- table t_14  
CREATE INDEX CONCURRENTLY i_r_15 ON public.t_15 USING btree (i); -- table t_15  
CREATE INDEX CONCURRENTLY i_u_15 ON public.t_15 USING btree (i); -- table t_15  
CREATE INDEX CONCURRENTLY i_r_16 ON public.t_16 USING btree (i); -- table t_16  
CREATE INDEX CONCURRENTLY i_u_16 ON public.t_16 USING btree (i); -- table t_16  
CREATE INDEX CONCURRENTLY i_r_17 ON public.t_17 USING btree (i); -- table t_17  
CREATE INDEX CONCURRENTLY i_u_17 ON public.t_17 USING btree (i); -- table t_17  
CREATE INDEX CONCURRENTLY i_r_18 ON public.t_18 USING btree (i); -- table t_18  
CREATE INDEX CONCURRENTLY i_u_18 ON public.t_18 USING btree (i); -- table t_18  
CREATE INDEX CONCURRENTLY i_r_19 ON public.t_19 USING btree (i); -- table t_19  
CREATE INDEX CONCURRENTLY i_u_19 ON public.t_19 USING btree (i); -- table t_19  
CREATE INDEX CONCURRENTLY i_r_2 ON public.t_2 USING btree (i); -- table t_2  
CREATE INDEX CONCURRENTLY i_u_2 ON public.t_2 USING btree (i); -- table t_2  
CREATE INDEX CONCURRENTLY i_r_20 ON public.t_20 USING btree (i); -- table t_20  
CREATE INDEX CONCURRENTLY i_u_20 ON public.t_20 USING btree (i); -- table t_20  
CREATE INDEX CONCURRENTLY i_r_21 ON public.t_21 USING btree (i); -- table t_21  
CREATE INDEX CONCURRENTLY i_u_21 ON public.t_21 USING btree (i); -- table t_21  
CREATE INDEX CONCURRENTLY i_r_22 ON public.t_22 USING btree (i); -- table t_22  
CREATE INDEX CONCURRENTLY i_u_22 ON public.t_22 USING btree (i); -- table t_22  
CREATE INDEX CONCURRENTLY i_r_23 ON public.t_23 USING btree (i); -- table t_23  
CREATE INDEX CONCURRENTLY i_u_23 ON public.t_23 USING btree (i); -- table t_23  
CREATE INDEX CONCURRENTLY i_r_24 ON public.t_24 USING btree (i); -- table t_24  
CREATE INDEX CONCURRENTLY i_u_24 ON public.t_24 USING btree (i); -- table t_24  
CREATE INDEX CONCURRENTLY i_r_25 ON public.t_25 USING btree (i); -- table t_25  
CREATE INDEX CONCURRENTLY i_u_25 ON public.t_25 USING btree (i); -- table t_25  
CREATE INDEX CONCURRENTLY i_r_26 ON public.t_26 USING btree (i); -- table t_26  
CREATE INDEX CONCURRENTLY i_u_26 ON public.t_26 USING btree (i); -- table t_26  
CREATE INDEX CONCURRENTLY i_r_27 ON public.t_27 USING btree (i); -- table t_27  
CREATE INDEX CONCURRENTLY i_u_27 ON public.t_27 USING btree (i); -- table t_27  
CREATE INDEX CONCURRENTLY i_r_28 ON public.t_28 USING btree (i); -- table t_28  
CREATE INDEX CONCURRENTLY i_u_28 ON public.t_28 USING btree (i); -- table t_28  
CREATE INDEX CONCURRENTLY i_r_29 ON public.t_29 USING btree (i); -- table t_29  
CREATE INDEX CONCURRENTLY i_u_29 ON public.t_29 USING btree (i); -- table t_29  
CREATE INDEX CONCURRENTLY i_r_3 ON public.t_3 USING btree (i); -- table t_3  
CREATE INDEX CONCURRENTLY i_u_3 ON public.t_3 USING btree (i); -- table t_3  
CREATE INDEX CONCURRENTLY i_r_30 ON public.t_30 USING btree (i); -- table t_30  
CREATE INDEX CONCURRENTLY i_u_30 ON public.t_30 USING btree (i); -- table t_30  
CREATE INDEX CONCURRENTLY i_r_31 ON public.t_31 USING btree (i); -- table t_31  
CREATE INDEX CONCURRENTLY i_u_31 ON public.t_31 USING btree (i); -- table t_31  
CREATE INDEX CONCURRENTLY i_r_32 ON public.t_32 USING btree (i); -- table t_32  
CREATE INDEX CONCURRENTLY i_u_32 ON public.t_32 USING btree (i); -- table t_32  
CREATE INDEX CONCURRENTLY i_r_33 ON public.t_33 USING btree (i); -- table t_33  
CREATE INDEX CONCURRENTLY i_u_33 ON public.t_33 USING btree (i); -- table t_33  
CREATE INDEX CONCURRENTLY i_r_34 ON public.t_34 USING btree (i); -- table t_34  
CREATE INDEX CONCURRENTLY i_u_34 ON public.t_34 USING btree (i); -- table t_34  
CREATE INDEX CONCURRENTLY i_r_35 ON public.t_35 USING btree (i); -- table t_35  
CREATE INDEX CONCURRENTLY i_u_35 ON public.t_35 USING btree (i); -- table t_35  
CREATE INDEX CONCURRENTLY i_r_36 ON public.t_36 USING btree (i); -- table t_36  
CREATE INDEX CONCURRENTLY i_u_36 ON public.t_36 USING btree (i); -- table t_36  
CREATE INDEX CONCURRENTLY i_r_37 ON public.t_37 USING btree (i); -- table t_37  
CREATE INDEX CONCURRENTLY i_u_37 ON public.t_37 USING btree (i); -- table t_37  
CREATE INDEX CONCURRENTLY i_r_38 ON public.t_38 USING btree (i); -- table t_38  
CREATE INDEX CONCURRENTLY i_u_38 ON public.t_38 USING btree (i); -- table t_38  
CREATE INDEX CONCURRENTLY i_r_39 ON public.t_39 USING btree (i); -- table t_39  
CREATE INDEX CONCURRENTLY i_u_39 ON public.t_39 USING btree (i); -- table t_39  
CREATE INDEX CONCURRENTLY i_r_4 ON public.t_4 USING btree (i); -- table t_4  
CREATE INDEX CONCURRENTLY i_u_4 ON public.t_4 USING btree (i); -- table t_4  
CREATE INDEX CONCURRENTLY i_r_40 ON public.t_40 USING btree (i); -- table t_40  
CREATE INDEX CONCURRENTLY i_u_40 ON public.t_40 USING btree (i); -- table t_40  
CREATE INDEX CONCURRENTLY i_r_41 ON public.t_41 USING btree (i); -- table t_41  
CREATE INDEX CONCURRENTLY i_u_41 ON public.t_41 USING btree (i); -- table t_41  
CREATE INDEX CONCURRENTLY i_r_42 ON public.t_42 USING btree (i); -- table t_42  
CREATE INDEX CONCURRENTLY i_u_42 ON public.t_42 USING btree (i); -- table t_42  
CREATE INDEX CONCURRENTLY i_r_43 ON public.t_43 USING btree (i); -- table t_43  
CREATE INDEX CONCURRENTLY i_u_43 ON public.t_43 USING btree (i); -- table t_43  
CREATE INDEX CONCURRENTLY i_r_44 ON public.t_44 USING btree (i); -- table t_44  
CREATE INDEX CONCURRENTLY i_u_44 ON public.t_44 USING btree (i); -- table t_44  
CREATE INDEX CONCURRENTLY i_r_45 ON public.t_45 USING btree (i); -- table t_45  
CREATE INDEX CONCURRENTLY i_u_45 ON public.t_45 USING btree (i); -- table t_45  
CREATE INDEX CONCURRENTLY i_r_46 ON public.t_46 USING btree (i); -- table t_46  
CREATE INDEX CONCURRENTLY i_u_46 ON public.t_46 USING btree (i); -- table t_46  
CREATE INDEX CONCURRENTLY i_r_47 ON public.t_47 USING btree (i); -- table t_47  
CREATE INDEX CONCURRENTLY i_u_47 ON public.t_47 USING btree (i); -- table t_47  
CREATE INDEX CONCURRENTLY i_r_48 ON public.t_48 USING btree (i); -- table t_48  
CREATE INDEX CONCURRENTLY i_u_48 ON public.t_48 USING btree (i); -- table t_48  
CREATE INDEX CONCURRENTLY i_r_49 ON public.t_49 USING btree (i); -- table t_49  
CREATE INDEX CONCURRENTLY i_u_49 ON public.t_49 USING btree (i); -- table t_49  
CREATE INDEX CONCURRENTLY i_r_5 ON public.t_5 USING btree (i); -- table t_5  
CREATE INDEX CONCURRENTLY i_u_5 ON public.t_5 USING btree (i); -- table t_5  
CREATE INDEX CONCURRENTLY i_r_50 ON public.t_50 USING btree (i); -- table t_50  
CREATE INDEX CONCURRENTLY i_u_50 ON public.t_50 USING btree (i); -- table t_50  
CREATE INDEX CONCURRENTLY i_r_51 ON public.t_51 USING btree (i); -- table t_51  
CREATE INDEX CONCURRENTLY i_u_51 ON public.t_51 USING btree (i); -- table t_51  
CREATE INDEX CONCURRENTLY i_r_52 ON public.t_52 USING btree (i); -- table t_52  
CREATE INDEX CONCURRENTLY i_u_52 ON public.t_52 USING btree (i); -- table t_52  
CREATE INDEX CONCURRENTLY i_r_53 ON public.t_53 USING btree (i); -- table t_53  
CREATE INDEX CONCURRENTLY i_u_53 ON public.t_53 USING btree (i); -- table t_53  
CREATE INDEX CONCURRENTLY i_r_54 ON public.t_54 USING btree (i); -- table t_54  
CREATE INDEX CONCURRENTLY i_u_54 ON public.t_54 USING btree (i); -- table t_54  
CREATE INDEX CONCURRENTLY i_r_55 ON public.t_55 USING btree (i); -- table t_55  
CREATE INDEX CONCURRENTLY i_u_55 ON public.t_55 USING btree (i); -- table t_55  
CREATE INDEX CONCURRENTLY i_r_56 ON public.t_56 USING btree (i); -- table t_56  
CREATE INDEX CONCURRENTLY i_u_56 ON public.t_56 USING btree (i); -- table t_56  
CREATE INDEX CONCURRENTLY i_r_57 ON public.t_57 USING btree (i); -- table t_57  
CREATE INDEX CONCURRENTLY i_u_57 ON public.t_57 USING btree (i); -- table t_57  
CREATE INDEX CONCURRENTLY i_r_58 ON public.t_58 USING btree (i); -- table t_58  
CREATE INDEX CONCURRENTLY i_u_58 ON public.t_58 USING btree (i); -- table t_58  
CREATE INDEX CONCURRENTLY i_r_59 ON public.t_59 USING btree (i); -- table t_59  
CREATE INDEX CONCURRENTLY i_u_59 ON public.t_59 USING btree (i); -- table t_59  
CREATE INDEX CONCURRENTLY i_r_6 ON public.t_6 USING btree (i); -- table t_6  
CREATE INDEX CONCURRENTLY i_u_6 ON public.t_6 USING btree (i); -- table t_6  
CREATE INDEX CONCURRENTLY i_r_60 ON public.t_60 USING btree (i); -- table t_60  
CREATE INDEX CONCURRENTLY i_u_60 ON public.t_60 USING btree (i); -- table t_60  
CREATE INDEX CONCURRENTLY i_r_61 ON public.t_61 USING btree (i); -- table t_61  
CREATE INDEX CONCURRENTLY i_u_61 ON public.t_61 USING btree (i); -- table t_61  
CREATE INDEX CONCURRENTLY i_r_62 ON public.t_62 USING btree (i); -- table t_62  
CREATE INDEX CONCURRENTLY i_u_62 ON public.t_62 USING btree (i); -- table t_62  
CREATE INDEX CONCURRENTLY i_r_63 ON public.t_63 USING btree (i); -- table t_63  
CREATE INDEX CONCURRENTLY i_u_63 ON public.t_63 USING btree (i); -- table t_63  
CREATE INDEX CONCURRENTLY i_r_64 ON public.t_64 USING btree (i); -- table t_64  
CREATE INDEX CONCURRENTLY i_u_64 ON public.t_64 USING btree (i); -- table t_64  
CREATE INDEX CONCURRENTLY i_r_65 ON public.t_65 USING btree (i); -- table t_65  
CREATE INDEX CONCURRENTLY i_u_65 ON public.t_65 USING btree (i); -- table t_65  
CREATE INDEX CONCURRENTLY i_r_66 ON public.t_66 USING btree (i); -- table t_66  
CREATE INDEX CONCURRENTLY i_u_66 ON public.t_66 USING btree (i); -- table t_66  
CREATE INDEX CONCURRENTLY i_r_67 ON public.t_67 USING btree (i); -- table t_67  
CREATE INDEX CONCURRENTLY i_u_67 ON public.t_67 USING btree (i); -- table t_67  
CREATE INDEX CONCURRENTLY i_r_68 ON public.t_68 USING btree (i); -- table t_68  
CREATE INDEX CONCURRENTLY i_u_68 ON public.t_68 USING btree (i); -- table t_68  
CREATE INDEX CONCURRENTLY i_r_69 ON public.t_69 USING btree (i); -- table t_69  
CREATE INDEX CONCURRENTLY i_u_69 ON public.t_69 USING btree (i); -- table t_69  
CREATE INDEX CONCURRENTLY i_r_7 ON public.t_7 USING btree (i); -- table t_7  
CREATE INDEX CONCURRENTLY i_u_7 ON public.t_7 USING btree (i); -- table t_7  
CREATE INDEX CONCURRENTLY i_r_70 ON public.t_70 USING btree (i); -- table t_70  
CREATE INDEX CONCURRENTLY i_u_70 ON public.t_70 USING btree (i); -- table t_70  
CREATE INDEX CONCURRENTLY i_r_71 ON public.t_71 USING btree (i); -- table t_71  
CREATE INDEX CONCURRENTLY i_u_71 ON public.t_71 USING btree (i); -- table t_71  
CREATE INDEX CONCURRENTLY i_r_72 ON public.t_72 USING btree (i); -- table t_72  
CREATE INDEX CONCURRENTLY i_u_72 ON public.t_72 USING btree (i); -- table t_72  
CREATE INDEX CONCURRENTLY i_r_73 ON public.t_73 USING btree (i); -- table t_73  
CREATE INDEX CONCURRENTLY i_u_73 ON public.t_73 USING btree (i); -- table t_73  
CREATE INDEX CONCURRENTLY i_r_74 ON public.t_74 USING btree (i); -- table t_74  
CREATE INDEX CONCURRENTLY i_u_74 ON public.t_74 USING btree (i); -- table t_74  
CREATE INDEX CONCURRENTLY i_r_75 ON public.t_75 USING btree (i); -- table t_75  
CREATE INDEX CONCURRENTLY i_u_75 ON public.t_75 USING btree (i); -- table t_75  
CREATE INDEX CONCURRENTLY i_r_76 ON public.t_76 USING btree (i); -- table t_76  
CREATE INDEX CONCURRENTLY i_u_76 ON public.t_76 USING btree (i); -- table t_76  
CREATE INDEX CONCURRENTLY i_r_77 ON public.t_77 USING btree (i); -- table t_77  
CREATE INDEX CONCURRENTLY i_u_77 ON public.t_77 USING btree (i); -- table t_77  
CREATE INDEX CONCURRENTLY i_r_78 ON public.t_78 USING btree (i); -- table t_78  
CREATE INDEX CONCURRENTLY i_u_78 ON public.t_78 USING btree (i); -- table t_78  
CREATE INDEX CONCURRENTLY i_r_79 ON public.t_79 USING btree (i); -- table t_79  
CREATE INDEX CONCURRENTLY i_u_79 ON public.t_79 USING btree (i); -- table t_79  
CREATE INDEX CONCURRENTLY i_r_8 ON public.t_8 USING btree (i); -- table t_8  
CREATE INDEX CONCURRENTLY i_u_8 ON public.t_8 USING btree (i); -- table t_8  
CREATE INDEX CONCURRENTLY i_r_80 ON public.t_80 USING btree (i); -- table t_80  
CREATE INDEX CONCURRENTLY i_u_80 ON public.t_80 USING btree (i); -- table t_80  
CREATE INDEX CONCURRENTLY i_r_81 ON public.t_81 USING btree (i); -- table t_81  
CREATE INDEX CONCURRENTLY i_u_81 ON public.t_81 USING btree (i); -- table t_81  
CREATE INDEX CONCURRENTLY i_r_82 ON public.t_82 USING btree (i); -- table t_82  
CREATE INDEX CONCURRENTLY i_u_82 ON public.t_82 USING btree (i); -- table t_82  
CREATE INDEX CONCURRENTLY i_r_83 ON public.t_83 USING btree (i); -- table t_83  
CREATE INDEX CONCURRENTLY i_u_83 ON public.t_83 USING btree (i); -- table t_83  
CREATE INDEX CONCURRENTLY i_r_84 ON public.t_84 USING btree (i); -- table t_84  
CREATE INDEX CONCURRENTLY i_u_84 ON public.t_84 USING btree (i); -- table t_84  
CREATE INDEX CONCURRENTLY i_r_85 ON public.t_85 USING btree (i); -- table t_85  
CREATE INDEX CONCURRENTLY i_u_85 ON public.t_85 USING btree (i); -- table t_85  
CREATE INDEX CONCURRENTLY i_r_86 ON public.t_86 USING btree (i); -- table t_86  
CREATE INDEX CONCURRENTLY i_u_86 ON public.t_86 USING btree (i); -- table t_86  
CREATE INDEX CONCURRENTLY i_r_87 ON public.t_87 USING btree (i); -- table t_87  
CREATE INDEX CONCURRENTLY i_u_87 ON public.t_87 USING btree (i); -- table t_87  
CREATE INDEX CONCURRENTLY i_r_88 ON public.t_88 USING btree (i); -- table t_88  
CREATE INDEX CONCURRENTLY i_u_88 ON public.t_88 USING btree (i); -- table t_88  
CREATE INDEX CONCURRENTLY i_r_89 ON public.t_89 USING btree (i); -- table t_89  
CREATE INDEX CONCURRENTLY i_u_89 ON public.t_89 USING btree (i); -- table t_89  
CREATE INDEX CONCURRENTLY i_r_9 ON public.t_9 USING btree (i); -- table t_9  
CREATE INDEX CONCURRENTLY i_u_9 ON public.t_9 USING btree (i); -- table t_9  
CREATE INDEX CONCURRENTLY i_r_90 ON public.t_90 USING btree (i); -- table t_90  
CREATE INDEX CONCURRENTLY i_u_90 ON public.t_90 USING btree (i); -- table t_90  
CREATE INDEX CONCURRENTLY i_r_91 ON public.t_91 USING btree (i); -- table t_91  
CREATE INDEX CONCURRENTLY i_u_91 ON public.t_91 USING btree (i); -- table t_91  
CREATE INDEX CONCURRENTLY i_r_92 ON public.t_92 USING btree (i); -- table t_92  
CREATE INDEX CONCURRENTLY i_u_92 ON public.t_92 USING btree (i); -- table t_92  
CREATE INDEX CONCURRENTLY i_r_93 ON public.t_93 USING btree (i); -- table t_93  
CREATE INDEX CONCURRENTLY i_u_93 ON public.t_93 USING btree (i); -- table t_93  
CREATE INDEX CONCURRENTLY i_r_94 ON public.t_94 USING btree (i); -- table t_94  
CREATE INDEX CONCURRENTLY i_u_94 ON public.t_94 USING btree (i); -- table t_94  
CREATE INDEX CONCURRENTLY i_r_95 ON public.t_95 USING btree (i); -- table t_95  
CREATE INDEX CONCURRENTLY i_u_95 ON public.t_95 USING btree (i); -- table t_95  
CREATE INDEX CONCURRENTLY i_r_96 ON public.t_96 USING btree (i); -- table t_96  
CREATE INDEX CONCURRENTLY i_u_96 ON public.t_96 USING btree (i); -- table t_96  
CREATE INDEX CONCURRENTLY i_r_97 ON public.t_97 USING btree (i); -- table t_97  
CREATE INDEX CONCURRENTLY i_u_97 ON public.t_97 USING btree (i); -- table t_97  
CREATE INDEX CONCURRENTLY i_r_98 ON public.t_98 USING btree (i); -- table t_98  
CREATE INDEX CONCURRENTLY i_u_98 ON public.t_98 USING btree (i); -- table t_98  
CREATE INDEX CONCURRENTLY i_r_99 ON public.t_99 USING btree (i); -- table t_99  
CREATE INDEX CONCURRENTLY i_u_99 ON public.t_99 USING btree (i); -- table t_99  
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
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_1 ON exp_redundant.t_with_redundant_ref_idx USING btree (i); -- table exp_redundant.t_with_redundant_ref_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_1 ON public.t_with_redundant_ref_idx USING btree (i); -- table t_with_redundant_ref_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_2 ON public.t_with_redundant_ref_idx USING btree (i); -- table t_with_redundant_ref_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_2 ON exp_redundant.t_with_redundant_ref_idx USING btree (i); -- table exp_redundant.t_with_redundant_ref_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_3 ON public.t_with_redundant_ref_idx USING btree (i); -- table t_with_redundant_ref_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_3 ON exp_redundant.t_with_redundant_ref_idx USING btree (i); -- table exp_redundant.t_with_redundant_ref_idx  
CREATE INDEX CONCURRENTLY i_unused ON public.t_with_unused_index USING btree (i); -- table t_with_unused_index  
```
  
 


---
<a name="postgres-checkup_H003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# H003 Non-indexed Foreign Keys #

## Observations ##
Data collected: 2019-10-31 02:25:21 +0000 UTC  
Current database: dbname  


### Master (`postgres.test3.node`) ###



Nothing found



## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_H004">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# H004 Redundant Indexes #
## Observations ##
Data collected: 2019-10-31 02:25:21 +0000 UTC  
Current database: dbname  


Stats reset: 00:04:00 ago (2019-10-31 02:21:11 +0000 UTC)  

:warning: Statistics age is less than 30 days. Make decisions on index cleanup with caution!  
The list is limited to 50 items. Total: 121.

|\#| Table | Index | Redundant to |postgres.test3.node usage | postgres.test1.node usage | postgres.test2.node usage | &#9660;&nbsp;Index size | Table size | Supports FK |
|--|-------|-------|--------------|--|--------|--------|-----|-----|-----|
|&nbsp;|=====TOTAL=====||||||261.61&nbsp;MiB|495.08&nbsp;MiB||
|1|`t_with_redundant_index`|`i_redundant_2`|`i_redundant_1`<br/>|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|2|`ctnr`|`ctnr_idx01`|`ctnr_uk01`<br/>|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|3|`t_with_redundant_idx`|`t_with_redundant_idx_id`|`t_with_redundant_idx_pkey`<br/>|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|4|`t_with_redundant_idx`|`t_with_redundant_idx_f1`|`t_with_redundant_idx_f1_f2`<br/>`t_with_redundant_idx_f1_uniq`<br/>|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|5|`t_with_redundant_idx`|`t_with_redundant_idx_f1_2`|`t_with_redundant_idx_f1`<br/>`t_with_redundant_idx_f1_f2`<br/>`t_with_redundant_idx_f1_uniq`<br/>|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|6|`t_with_redundant_idx`|`t_with_redundant_idx_f3_2`|`t_with_redundant_idx_f3_1`<br/>|0|||21.45&nbsp;MiB|49.77&nbsp;MiB||
|7|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_2`|`t_with_redundant_ref_idx_1`<br/>|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|8|`t_with_redundant_ref_idx`|`t_with_redundant_ref_idx_3`|`t_with_redundant_ref_idx_1`<br/>`t_with_redundant_ref_idx_2`<br/>|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|9|`exp_redundant.t_with_redundant_ref_idx`|`exp_redundant.t_with_redundant_ref_idx_2`|`exp_redundant.t_with_redundant_ref_idx_1`<br/>|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|10|`exp_redundant.t_with_redundant_ref_idx`|`exp_redundant.t_with_redundant_ref_idx_3`|`exp_redundant.t_with_redundant_ref_idx_1`<br/>`exp_redundant.t_with_redundant_ref_idx_2`<br/>|0|||21.45&nbsp;MiB|34.58&nbsp;MiB||
|11|`t_red_fk_1`|`r_red_fk_1_id_idx`|`t_red_fk_1_pkey`<br/>|0|||21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|12|`t_red_fk_1`|`r_red_fk_1_x_idx`|`r_red_fk_1_id_idx`<br/>`t_red_fk_1_pkey`<br/>|0|||21.45&nbsp;MiB|34.58&nbsp;MiB|Yes|
|13|`t_1`|`i_r_1`|`i_u_1`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|14|`t_2`|`i_r_2`|`i_u_2`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|15|`t_3`|`i_r_3`|`i_u_3`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|16|`t_4`|`i_r_4`|`i_u_4`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|17|`t_5`|`i_r_5`|`i_u_5`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|18|`t_6`|`i_r_6`|`i_u_6`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|19|`t_7`|`i_r_7`|`i_u_7`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|20|`t_8`|`i_r_8`|`i_u_8`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|21|`t_9`|`i_r_9`|`i_u_9`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|22|`t_10`|`i_r_10`|`i_u_10`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|23|`t_11`|`i_r_11`|`i_u_11`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|24|`t_12`|`i_r_12`|`i_u_12`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|25|`t_13`|`i_r_13`|`i_u_13`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|26|`t_14`|`i_r_14`|`i_u_14`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|27|`t_15`|`i_r_15`|`i_u_15`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|28|`t_16`|`i_r_16`|`i_u_16`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|29|`t_17`|`i_r_17`|`i_u_17`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|30|`t_18`|`i_r_18`|`i_u_18`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|31|`t_19`|`i_r_19`|`i_u_19`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|32|`t_20`|`i_r_20`|`i_u_20`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|33|`t_21`|`i_r_21`|`i_u_21`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|34|`t_22`|`i_r_22`|`i_u_22`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|35|`t_23`|`i_r_23`|`i_u_23`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|36|`t_24`|`i_r_24`|`i_u_24`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|37|`t_25`|`i_r_25`|`i_u_25`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|38|`t_26`|`i_r_26`|`i_u_26`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|39|`t_27`|`i_r_27`|`i_u_27`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|40|`t_28`|`i_r_28`|`i_u_28`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|41|`t_29`|`i_r_29`|`i_u_29`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|42|`t_30`|`i_r_30`|`i_u_30`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|43|`t_31`|`i_r_31`|`i_u_31`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|44|`t_32`|`i_r_32`|`i_u_32`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|45|`t_33`|`i_r_33`|`i_u_33`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|46|`t_34`|`i_r_34`|`i_u_34`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|47|`t_35`|`i_r_35`|`i_u_35`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|48|`t_36`|`i_r_36`|`i_u_36`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|49|`t_37`|`i_r_37`|`i_u_37`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||
|50|`t_38`|`i_r_38`|`i_u_38`<br/>|0|||40.00&nbsp;KiB|40.00&nbsp;KiB||



## Conclusions ##
  - [P2] 121 redundant index(es) have been found and their total size exceeds 5.00% of the database size.
  
 


## Recommendations ##
  - [P2] Use the database migration provided below to drop the redundant indexes. Keep in mind, that under load, it is recommended to use `DROP INDEX CONCURRENTLY` (and `CREATE INDEX CONCURRENTLY` if reverting is needed) to avoid blocking issues.
  - Be careful dropping the indexes. If you have multiple setups of your software, the analysis of just a single setup might be not enough. Some indexes might be used (and therefore, needed) only on a limited number of setups. Also, in some cases, developers prepare indexes for new features in advance – in such cases, dropping those indexes is not a good idea.
  - If there are some doubts, consider a more careful approach. Before actualdropping, indexes disable listed in this report. For this, use queries like `UPDATE pg_index SET indisvalid = false WHERE indexrelid::regclass = (select oid from pg_class where relname = 'u_users_email');. Indexes will continue to get updates. In case of some performance degradations, re-enable the corresponding indexes, setting indisvalid to true. If everything looks fine, after a significant period of observations, proceed with DROP INDEX CONCURRENTLY.
  - "DO" database migrations  
```  
DROP INDEX CONCURRENTLY ctnr_idx01; -- 21 MB, ctnr_uk01, table ctnr  
DROP INDEX CONCURRENTLY i_r_1; -- 40 kB, i_u_1, table t_1  
DROP INDEX CONCURRENTLY i_r_10; -- 40 kB, i_u_10, table t_10  
DROP INDEX CONCURRENTLY i_r_100; -- 40 kB, i_u_100, table t_100  
DROP INDEX CONCURRENTLY i_r_101; -- 40 kB, i_u_101, table t_101  
DROP INDEX CONCURRENTLY i_r_102; -- 40 kB, i_u_102, table t_102  
DROP INDEX CONCURRENTLY i_r_103; -- 40 kB, i_u_103, table t_103  
DROP INDEX CONCURRENTLY i_r_104; -- 40 kB, i_u_104, table t_104  
DROP INDEX CONCURRENTLY i_r_105; -- 40 kB, i_u_105, table t_105  
DROP INDEX CONCURRENTLY i_r_106; -- 40 kB, i_u_106, table t_106  
DROP INDEX CONCURRENTLY i_r_107; -- 40 kB, i_u_107, table t_107  
DROP INDEX CONCURRENTLY i_r_108; -- 40 kB, i_u_108, table t_108  
DROP INDEX CONCURRENTLY i_r_109; -- 40 kB, i_u_109, table t_109  
DROP INDEX CONCURRENTLY i_r_11; -- 40 kB, i_u_11, table t_11  
DROP INDEX CONCURRENTLY i_r_12; -- 40 kB, i_u_12, table t_12  
DROP INDEX CONCURRENTLY i_r_13; -- 40 kB, i_u_13, table t_13  
DROP INDEX CONCURRENTLY i_r_14; -- 40 kB, i_u_14, table t_14  
DROP INDEX CONCURRENTLY i_r_15; -- 40 kB, i_u_15, table t_15  
DROP INDEX CONCURRENTLY i_r_16; -- 40 kB, i_u_16, table t_16  
DROP INDEX CONCURRENTLY i_r_17; -- 40 kB, i_u_17, table t_17  
DROP INDEX CONCURRENTLY i_r_18; -- 40 kB, i_u_18, table t_18  
DROP INDEX CONCURRENTLY i_r_19; -- 40 kB, i_u_19, table t_19  
DROP INDEX CONCURRENTLY i_r_2; -- 40 kB, i_u_2, table t_2  
DROP INDEX CONCURRENTLY i_r_20; -- 40 kB, i_u_20, table t_20  
DROP INDEX CONCURRENTLY i_r_21; -- 40 kB, i_u_21, table t_21  
DROP INDEX CONCURRENTLY i_r_22; -- 40 kB, i_u_22, table t_22  
DROP INDEX CONCURRENTLY i_r_23; -- 40 kB, i_u_23, table t_23  
DROP INDEX CONCURRENTLY i_r_24; -- 40 kB, i_u_24, table t_24  
DROP INDEX CONCURRENTLY i_r_25; -- 40 kB, i_u_25, table t_25  
DROP INDEX CONCURRENTLY i_r_26; -- 40 kB, i_u_26, table t_26  
DROP INDEX CONCURRENTLY i_r_27; -- 40 kB, i_u_27, table t_27  
DROP INDEX CONCURRENTLY i_r_28; -- 40 kB, i_u_28, table t_28  
DROP INDEX CONCURRENTLY i_r_29; -- 40 kB, i_u_29, table t_29  
DROP INDEX CONCURRENTLY i_r_3; -- 40 kB, i_u_3, table t_3  
DROP INDEX CONCURRENTLY i_r_30; -- 40 kB, i_u_30, table t_30  
DROP INDEX CONCURRENTLY i_r_31; -- 40 kB, i_u_31, table t_31  
DROP INDEX CONCURRENTLY i_r_32; -- 40 kB, i_u_32, table t_32  
DROP INDEX CONCURRENTLY i_r_33; -- 40 kB, i_u_33, table t_33  
DROP INDEX CONCURRENTLY i_r_34; -- 40 kB, i_u_34, table t_34  
DROP INDEX CONCURRENTLY i_r_35; -- 40 kB, i_u_35, table t_35  
DROP INDEX CONCURRENTLY i_r_36; -- 40 kB, i_u_36, table t_36  
DROP INDEX CONCURRENTLY i_r_37; -- 40 kB, i_u_37, table t_37  
DROP INDEX CONCURRENTLY i_r_38; -- 40 kB, i_u_38, table t_38  
DROP INDEX CONCURRENTLY i_r_39; -- 40 kB, i_u_39, table t_39  
DROP INDEX CONCURRENTLY i_r_4; -- 40 kB, i_u_4, table t_4  
DROP INDEX CONCURRENTLY i_r_40; -- 40 kB, i_u_40, table t_40  
DROP INDEX CONCURRENTLY i_r_41; -- 40 kB, i_u_41, table t_41  
DROP INDEX CONCURRENTLY i_r_42; -- 40 kB, i_u_42, table t_42  
DROP INDEX CONCURRENTLY i_r_43; -- 40 kB, i_u_43, table t_43  
DROP INDEX CONCURRENTLY i_r_44; -- 40 kB, i_u_44, table t_44  
DROP INDEX CONCURRENTLY i_r_45; -- 40 kB, i_u_45, table t_45  
DROP INDEX CONCURRENTLY i_r_46; -- 40 kB, i_u_46, table t_46  
DROP INDEX CONCURRENTLY i_r_47; -- 40 kB, i_u_47, table t_47  
DROP INDEX CONCURRENTLY i_r_48; -- 40 kB, i_u_48, table t_48  
DROP INDEX CONCURRENTLY i_r_49; -- 40 kB, i_u_49, table t_49  
DROP INDEX CONCURRENTLY i_r_5; -- 40 kB, i_u_5, table t_5  
DROP INDEX CONCURRENTLY i_r_50; -- 40 kB, i_u_50, table t_50  
DROP INDEX CONCURRENTLY i_r_51; -- 40 kB, i_u_51, table t_51  
DROP INDEX CONCURRENTLY i_r_52; -- 40 kB, i_u_52, table t_52  
DROP INDEX CONCURRENTLY i_r_53; -- 40 kB, i_u_53, table t_53  
DROP INDEX CONCURRENTLY i_r_54; -- 40 kB, i_u_54, table t_54  
DROP INDEX CONCURRENTLY i_r_55; -- 40 kB, i_u_55, table t_55  
DROP INDEX CONCURRENTLY i_r_56; -- 40 kB, i_u_56, table t_56  
DROP INDEX CONCURRENTLY i_r_57; -- 40 kB, i_u_57, table t_57  
DROP INDEX CONCURRENTLY i_r_58; -- 40 kB, i_u_58, table t_58  
DROP INDEX CONCURRENTLY i_r_59; -- 40 kB, i_u_59, table t_59  
DROP INDEX CONCURRENTLY i_r_6; -- 40 kB, i_u_6, table t_6  
DROP INDEX CONCURRENTLY i_r_60; -- 40 kB, i_u_60, table t_60  
DROP INDEX CONCURRENTLY i_r_61; -- 40 kB, i_u_61, table t_61  
DROP INDEX CONCURRENTLY i_r_62; -- 40 kB, i_u_62, table t_62  
DROP INDEX CONCURRENTLY i_r_63; -- 40 kB, i_u_63, table t_63  
DROP INDEX CONCURRENTLY i_r_64; -- 40 kB, i_u_64, table t_64  
DROP INDEX CONCURRENTLY i_r_65; -- 40 kB, i_u_65, table t_65  
DROP INDEX CONCURRENTLY i_r_66; -- 40 kB, i_u_66, table t_66  
DROP INDEX CONCURRENTLY i_r_67; -- 40 kB, i_u_67, table t_67  
DROP INDEX CONCURRENTLY i_r_68; -- 40 kB, i_u_68, table t_68  
DROP INDEX CONCURRENTLY i_r_69; -- 40 kB, i_u_69, table t_69  
DROP INDEX CONCURRENTLY i_r_7; -- 40 kB, i_u_7, table t_7  
DROP INDEX CONCURRENTLY i_r_70; -- 40 kB, i_u_70, table t_70  
DROP INDEX CONCURRENTLY i_r_71; -- 40 kB, i_u_71, table t_71  
DROP INDEX CONCURRENTLY i_r_72; -- 40 kB, i_u_72, table t_72  
DROP INDEX CONCURRENTLY i_r_73; -- 40 kB, i_u_73, table t_73  
DROP INDEX CONCURRENTLY i_r_74; -- 40 kB, i_u_74, table t_74  
DROP INDEX CONCURRENTLY i_r_75; -- 40 kB, i_u_75, table t_75  
DROP INDEX CONCURRENTLY i_r_76; -- 40 kB, i_u_76, table t_76  
DROP INDEX CONCURRENTLY i_r_77; -- 40 kB, i_u_77, table t_77  
DROP INDEX CONCURRENTLY i_r_78; -- 40 kB, i_u_78, table t_78  
DROP INDEX CONCURRENTLY i_r_79; -- 40 kB, i_u_79, table t_79  
DROP INDEX CONCURRENTLY i_r_8; -- 40 kB, i_u_8, table t_8  
DROP INDEX CONCURRENTLY i_r_80; -- 40 kB, i_u_80, table t_80  
DROP INDEX CONCURRENTLY i_r_81; -- 40 kB, i_u_81, table t_81  
DROP INDEX CONCURRENTLY i_r_82; -- 40 kB, i_u_82, table t_82  
DROP INDEX CONCURRENTLY i_r_83; -- 40 kB, i_u_83, table t_83  
DROP INDEX CONCURRENTLY i_r_84; -- 40 kB, i_u_84, table t_84  
DROP INDEX CONCURRENTLY i_r_85; -- 40 kB, i_u_85, table t_85  
DROP INDEX CONCURRENTLY i_r_86; -- 40 kB, i_u_86, table t_86  
DROP INDEX CONCURRENTLY i_r_87; -- 40 kB, i_u_87, table t_87  
DROP INDEX CONCURRENTLY i_r_88; -- 40 kB, i_u_88, table t_88  
DROP INDEX CONCURRENTLY i_r_89; -- 40 kB, i_u_89, table t_89  
DROP INDEX CONCURRENTLY i_r_9; -- 40 kB, i_u_9, table t_9  
DROP INDEX CONCURRENTLY i_r_90; -- 40 kB, i_u_90, table t_90  
DROP INDEX CONCURRENTLY i_r_91; -- 40 kB, i_u_91, table t_91  
DROP INDEX CONCURRENTLY i_r_92; -- 40 kB, i_u_92, table t_92  
DROP INDEX CONCURRENTLY i_r_93; -- 40 kB, i_u_93, table t_93  
DROP INDEX CONCURRENTLY i_r_94; -- 40 kB, i_u_94, table t_94  
DROP INDEX CONCURRENTLY i_r_95; -- 40 kB, i_u_95, table t_95  
DROP INDEX CONCURRENTLY i_r_96; -- 40 kB, i_u_96, table t_96  
DROP INDEX CONCURRENTLY i_r_97; -- 40 kB, i_u_97, table t_97  
DROP INDEX CONCURRENTLY i_r_98; -- 40 kB, i_u_98, table t_98  
DROP INDEX CONCURRENTLY i_r_99; -- 40 kB, i_u_99, table t_99  
DROP INDEX CONCURRENTLY r_red_fk_1_id_idx; -- 21 MB, t_red_fk_1_pkey, table t_red_fk_1  
DROP INDEX CONCURRENTLY r_red_fk_1_x_idx; -- 21 MB, r_red_fk_1_id_idx, t_red_fk_1_pkey, table t_red_fk_1  
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1; -- 21 MB, t_with_redundant_idx_f1_f2, t_with_redundant_idx_f1_uniq, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY t_with_redundant_idx_f1_2; -- 21 MB, t_with_redundant_idx_f1, t_with_redundant_idx_f1_f2, t_with_redundant_idx_f1_uniq, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY t_with_redundant_idx_f3_2; -- 21 MB, t_with_redundant_idx_f3_1, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY t_with_redundant_idx_id; -- 21 MB, t_with_redundant_idx_pkey, table t_with_redundant_idx  
DROP INDEX CONCURRENTLY i_redundant_2; -- 21 MB, i_redundant_1, table t_with_redundant_index  
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_2; -- 21 MB, t_with_redundant_ref_idx_1, table t_with_redundant_ref_idx  
DROP INDEX CONCURRENTLY exp_redundant.t_with_redundant_ref_idx_2; -- 21 MB, exp_redundant.t_with_redundant_ref_idx_1, table exp_redundant.t_with_redundant_ref_idx  
DROP INDEX CONCURRENTLY t_with_redundant_ref_idx_3; -- 21 MB, t_with_redundant_ref_idx_1, t_with_redundant_ref_idx_2, table t_with_redundant_ref_idx  
DROP INDEX CONCURRENTLY exp_redundant.t_with_redundant_ref_idx_3; -- 21 MB, exp_redundant.t_with_redundant_ref_idx_1, exp_redundant.t_with_redundant_ref_idx_2, table exp_redundant.t_with_redundant_ref_idx  
```
  - "UNDO" database migrations  
```  
CREATE INDEX CONCURRENTLY ctnr_idx01 ON public.ctnr USING btree (pnum); -- table ctnr  
CREATE INDEX CONCURRENTLY i_r_1 ON public.t_1 USING btree (i); -- table t_1  
CREATE INDEX CONCURRENTLY i_r_10 ON public.t_10 USING btree (i); -- table t_10  
CREATE INDEX CONCURRENTLY i_r_100 ON public.t_100 USING btree (i); -- table t_100  
CREATE INDEX CONCURRENTLY i_r_101 ON public.t_101 USING btree (i); -- table t_101  
CREATE INDEX CONCURRENTLY i_r_102 ON public.t_102 USING btree (i); -- table t_102  
CREATE INDEX CONCURRENTLY i_r_103 ON public.t_103 USING btree (i); -- table t_103  
CREATE INDEX CONCURRENTLY i_r_104 ON public.t_104 USING btree (i); -- table t_104  
CREATE INDEX CONCURRENTLY i_r_105 ON public.t_105 USING btree (i); -- table t_105  
CREATE INDEX CONCURRENTLY i_r_106 ON public.t_106 USING btree (i); -- table t_106  
CREATE INDEX CONCURRENTLY i_r_107 ON public.t_107 USING btree (i); -- table t_107  
CREATE INDEX CONCURRENTLY i_r_108 ON public.t_108 USING btree (i); -- table t_108  
CREATE INDEX CONCURRENTLY i_r_109 ON public.t_109 USING btree (i); -- table t_109  
CREATE INDEX CONCURRENTLY i_r_11 ON public.t_11 USING btree (i); -- table t_11  
CREATE INDEX CONCURRENTLY i_r_12 ON public.t_12 USING btree (i); -- table t_12  
CREATE INDEX CONCURRENTLY i_r_13 ON public.t_13 USING btree (i); -- table t_13  
CREATE INDEX CONCURRENTLY i_r_14 ON public.t_14 USING btree (i); -- table t_14  
CREATE INDEX CONCURRENTLY i_r_15 ON public.t_15 USING btree (i); -- table t_15  
CREATE INDEX CONCURRENTLY i_r_16 ON public.t_16 USING btree (i); -- table t_16  
CREATE INDEX CONCURRENTLY i_r_17 ON public.t_17 USING btree (i); -- table t_17  
CREATE INDEX CONCURRENTLY i_r_18 ON public.t_18 USING btree (i); -- table t_18  
CREATE INDEX CONCURRENTLY i_r_19 ON public.t_19 USING btree (i); -- table t_19  
CREATE INDEX CONCURRENTLY i_r_2 ON public.t_2 USING btree (i); -- table t_2  
CREATE INDEX CONCURRENTLY i_r_20 ON public.t_20 USING btree (i); -- table t_20  
CREATE INDEX CONCURRENTLY i_r_21 ON public.t_21 USING btree (i); -- table t_21  
CREATE INDEX CONCURRENTLY i_r_22 ON public.t_22 USING btree (i); -- table t_22  
CREATE INDEX CONCURRENTLY i_r_23 ON public.t_23 USING btree (i); -- table t_23  
CREATE INDEX CONCURRENTLY i_r_24 ON public.t_24 USING btree (i); -- table t_24  
CREATE INDEX CONCURRENTLY i_r_25 ON public.t_25 USING btree (i); -- table t_25  
CREATE INDEX CONCURRENTLY i_r_26 ON public.t_26 USING btree (i); -- table t_26  
CREATE INDEX CONCURRENTLY i_r_27 ON public.t_27 USING btree (i); -- table t_27  
CREATE INDEX CONCURRENTLY i_r_28 ON public.t_28 USING btree (i); -- table t_28  
CREATE INDEX CONCURRENTLY i_r_29 ON public.t_29 USING btree (i); -- table t_29  
CREATE INDEX CONCURRENTLY i_r_3 ON public.t_3 USING btree (i); -- table t_3  
CREATE INDEX CONCURRENTLY i_r_30 ON public.t_30 USING btree (i); -- table t_30  
CREATE INDEX CONCURRENTLY i_r_31 ON public.t_31 USING btree (i); -- table t_31  
CREATE INDEX CONCURRENTLY i_r_32 ON public.t_32 USING btree (i); -- table t_32  
CREATE INDEX CONCURRENTLY i_r_33 ON public.t_33 USING btree (i); -- table t_33  
CREATE INDEX CONCURRENTLY i_r_34 ON public.t_34 USING btree (i); -- table t_34  
CREATE INDEX CONCURRENTLY i_r_35 ON public.t_35 USING btree (i); -- table t_35  
CREATE INDEX CONCURRENTLY i_r_36 ON public.t_36 USING btree (i); -- table t_36  
CREATE INDEX CONCURRENTLY i_r_37 ON public.t_37 USING btree (i); -- table t_37  
CREATE INDEX CONCURRENTLY i_r_38 ON public.t_38 USING btree (i); -- table t_38  
CREATE INDEX CONCURRENTLY i_r_39 ON public.t_39 USING btree (i); -- table t_39  
CREATE INDEX CONCURRENTLY i_r_4 ON public.t_4 USING btree (i); -- table t_4  
CREATE INDEX CONCURRENTLY i_r_40 ON public.t_40 USING btree (i); -- table t_40  
CREATE INDEX CONCURRENTLY i_r_41 ON public.t_41 USING btree (i); -- table t_41  
CREATE INDEX CONCURRENTLY i_r_42 ON public.t_42 USING btree (i); -- table t_42  
CREATE INDEX CONCURRENTLY i_r_43 ON public.t_43 USING btree (i); -- table t_43  
CREATE INDEX CONCURRENTLY i_r_44 ON public.t_44 USING btree (i); -- table t_44  
CREATE INDEX CONCURRENTLY i_r_45 ON public.t_45 USING btree (i); -- table t_45  
CREATE INDEX CONCURRENTLY i_r_46 ON public.t_46 USING btree (i); -- table t_46  
CREATE INDEX CONCURRENTLY i_r_47 ON public.t_47 USING btree (i); -- table t_47  
CREATE INDEX CONCURRENTLY i_r_48 ON public.t_48 USING btree (i); -- table t_48  
CREATE INDEX CONCURRENTLY i_r_49 ON public.t_49 USING btree (i); -- table t_49  
CREATE INDEX CONCURRENTLY i_r_5 ON public.t_5 USING btree (i); -- table t_5  
CREATE INDEX CONCURRENTLY i_r_50 ON public.t_50 USING btree (i); -- table t_50  
CREATE INDEX CONCURRENTLY i_r_51 ON public.t_51 USING btree (i); -- table t_51  
CREATE INDEX CONCURRENTLY i_r_52 ON public.t_52 USING btree (i); -- table t_52  
CREATE INDEX CONCURRENTLY i_r_53 ON public.t_53 USING btree (i); -- table t_53  
CREATE INDEX CONCURRENTLY i_r_54 ON public.t_54 USING btree (i); -- table t_54  
CREATE INDEX CONCURRENTLY i_r_55 ON public.t_55 USING btree (i); -- table t_55  
CREATE INDEX CONCURRENTLY i_r_56 ON public.t_56 USING btree (i); -- table t_56  
CREATE INDEX CONCURRENTLY i_r_57 ON public.t_57 USING btree (i); -- table t_57  
CREATE INDEX CONCURRENTLY i_r_58 ON public.t_58 USING btree (i); -- table t_58  
CREATE INDEX CONCURRENTLY i_r_59 ON public.t_59 USING btree (i); -- table t_59  
CREATE INDEX CONCURRENTLY i_r_6 ON public.t_6 USING btree (i); -- table t_6  
CREATE INDEX CONCURRENTLY i_r_60 ON public.t_60 USING btree (i); -- table t_60  
CREATE INDEX CONCURRENTLY i_r_61 ON public.t_61 USING btree (i); -- table t_61  
CREATE INDEX CONCURRENTLY i_r_62 ON public.t_62 USING btree (i); -- table t_62  
CREATE INDEX CONCURRENTLY i_r_63 ON public.t_63 USING btree (i); -- table t_63  
CREATE INDEX CONCURRENTLY i_r_64 ON public.t_64 USING btree (i); -- table t_64  
CREATE INDEX CONCURRENTLY i_r_65 ON public.t_65 USING btree (i); -- table t_65  
CREATE INDEX CONCURRENTLY i_r_66 ON public.t_66 USING btree (i); -- table t_66  
CREATE INDEX CONCURRENTLY i_r_67 ON public.t_67 USING btree (i); -- table t_67  
CREATE INDEX CONCURRENTLY i_r_68 ON public.t_68 USING btree (i); -- table t_68  
CREATE INDEX CONCURRENTLY i_r_69 ON public.t_69 USING btree (i); -- table t_69  
CREATE INDEX CONCURRENTLY i_r_7 ON public.t_7 USING btree (i); -- table t_7  
CREATE INDEX CONCURRENTLY i_r_70 ON public.t_70 USING btree (i); -- table t_70  
CREATE INDEX CONCURRENTLY i_r_71 ON public.t_71 USING btree (i); -- table t_71  
CREATE INDEX CONCURRENTLY i_r_72 ON public.t_72 USING btree (i); -- table t_72  
CREATE INDEX CONCURRENTLY i_r_73 ON public.t_73 USING btree (i); -- table t_73  
CREATE INDEX CONCURRENTLY i_r_74 ON public.t_74 USING btree (i); -- table t_74  
CREATE INDEX CONCURRENTLY i_r_75 ON public.t_75 USING btree (i); -- table t_75  
CREATE INDEX CONCURRENTLY i_r_76 ON public.t_76 USING btree (i); -- table t_76  
CREATE INDEX CONCURRENTLY i_r_77 ON public.t_77 USING btree (i); -- table t_77  
CREATE INDEX CONCURRENTLY i_r_78 ON public.t_78 USING btree (i); -- table t_78  
CREATE INDEX CONCURRENTLY i_r_79 ON public.t_79 USING btree (i); -- table t_79  
CREATE INDEX CONCURRENTLY i_r_8 ON public.t_8 USING btree (i); -- table t_8  
CREATE INDEX CONCURRENTLY i_r_80 ON public.t_80 USING btree (i); -- table t_80  
CREATE INDEX CONCURRENTLY i_r_81 ON public.t_81 USING btree (i); -- table t_81  
CREATE INDEX CONCURRENTLY i_r_82 ON public.t_82 USING btree (i); -- table t_82  
CREATE INDEX CONCURRENTLY i_r_83 ON public.t_83 USING btree (i); -- table t_83  
CREATE INDEX CONCURRENTLY i_r_84 ON public.t_84 USING btree (i); -- table t_84  
CREATE INDEX CONCURRENTLY i_r_85 ON public.t_85 USING btree (i); -- table t_85  
CREATE INDEX CONCURRENTLY i_r_86 ON public.t_86 USING btree (i); -- table t_86  
CREATE INDEX CONCURRENTLY i_r_87 ON public.t_87 USING btree (i); -- table t_87  
CREATE INDEX CONCURRENTLY i_r_88 ON public.t_88 USING btree (i); -- table t_88  
CREATE INDEX CONCURRENTLY i_r_89 ON public.t_89 USING btree (i); -- table t_89  
CREATE INDEX CONCURRENTLY i_r_9 ON public.t_9 USING btree (i); -- table t_9  
CREATE INDEX CONCURRENTLY i_r_90 ON public.t_90 USING btree (i); -- table t_90  
CREATE INDEX CONCURRENTLY i_r_91 ON public.t_91 USING btree (i); -- table t_91  
CREATE INDEX CONCURRENTLY i_r_92 ON public.t_92 USING btree (i); -- table t_92  
CREATE INDEX CONCURRENTLY i_r_93 ON public.t_93 USING btree (i); -- table t_93  
CREATE INDEX CONCURRENTLY i_r_94 ON public.t_94 USING btree (i); -- table t_94  
CREATE INDEX CONCURRENTLY i_r_95 ON public.t_95 USING btree (i); -- table t_95  
CREATE INDEX CONCURRENTLY i_r_96 ON public.t_96 USING btree (i); -- table t_96  
CREATE INDEX CONCURRENTLY i_r_97 ON public.t_97 USING btree (i); -- table t_97  
CREATE INDEX CONCURRENTLY i_r_98 ON public.t_98 USING btree (i); -- table t_98  
CREATE INDEX CONCURRENTLY i_r_99 ON public.t_99 USING btree (i); -- table t_99  
CREATE INDEX CONCURRENTLY r_red_fk_1_id_idx ON public.t_red_fk_1 USING btree (id); -- table t_red_fk_1  
CREATE INDEX CONCURRENTLY r_red_fk_1_x_idx ON public.t_red_fk_1 USING btree (id); -- table t_red_fk_1  
CREATE INDEX CONCURRENTLY t_with_redundant_idx_f1 ON public.t_with_redundant_idx USING btree (f1); -- table t_with_redundant_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_idx_f1_2 ON public.t_with_redundant_idx USING btree (f1); -- table t_with_redundant_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_idx_f3_2 ON public.t_with_redundant_idx USING btree (f3); -- table t_with_redundant_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_idx_id ON public.t_with_redundant_idx USING btree (id); -- table t_with_redundant_idx  
CREATE INDEX CONCURRENTLY i_redundant_2 ON public.t_with_redundant_index USING btree (i); -- table t_with_redundant_index  
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_2 ON public.t_with_redundant_ref_idx USING btree (i); -- table t_with_redundant_ref_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_2 ON exp_redundant.t_with_redundant_ref_idx USING btree (i); -- table exp_redundant.t_with_redundant_ref_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_3 ON public.t_with_redundant_ref_idx USING btree (i); -- table t_with_redundant_ref_idx  
CREATE INDEX CONCURRENTLY t_with_redundant_ref_idx_3 ON exp_redundant.t_with_redundant_ref_idx USING btree (i); -- table exp_redundant.t_with_redundant_ref_idx  
```
  
 


---
<a name="postgres-checkup_K001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K001 Globally Aggregated Query Metrics

## Observations ##
Data collected: 2019-10-31 02:25:22 +0000 UTC  
Current database: dbname  



### Master (`postgres.test3.node`) ###
Start: 2019-10-31T02:24:54.59833+00:00  
End: 2019-10-31T02:25:22.324801+00:00  
Period seconds: 27.72647  
Period age: 00:00:27.726471  

Error (calls): 9.00 (0.00%)  
Error (total time): 328.51 (0.00%)

| Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|




### Replica servers: ###

#### Replica (`postgres.test1.node`) ####

Start: 2019-10-31T02:24:45.875447+00:00  
End: 2019-10-31T02:25:03.247256+00:00  
Period seconds: 17.37181  
Period age: 00:00:17.371809  

| Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|103<br/>5.93/sec<br/>1.00/call<br/>100.00% |0.70&nbsp;ms<br/>0.040&nbsp;ms/sec<br/>0.007&nbsp;ms/call<br/>100.00% |19<br/>1.09/sec<br/>0.18/call<br/>100.00% |12&nbsp;blks<br/>0.69&nbsp;blks/sec<br/>0.12&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|

#### Replica (`postgres.test2.node`) ####

Start: 2019-10-31T02:24:51.354187+00:00  
End: 2019-10-31T02:25:11.73571+00:00  
Period seconds: 20.38152  
Period age: 00:00:20.381523  

| Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|103<br/>5.05/sec<br/>1.00/call<br/>100.00% |0.71&nbsp;ms<br/>0.035&nbsp;ms/sec<br/>0.007&nbsp;ms/call<br/>100.00% |19<br/>0.93/sec<br/>0.18/call<br/>100.00% |12&nbsp;blks<br/>0.59&nbsp;blks/sec<br/>0.12&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K002 Workload Type ("The First Word" Analysis)

## Observations ##
Data collected: 2019-10-31 02:25:22 +0000 UTC  
Current database: dbname  



### Master (`postgres.test3.node`) ###
Start: 2019-10-31T02:24:54.59833+00:00  
End: 2019-10-31T02:25:22.324801+00:00  
Period seconds: 27.72647  
Period age: 00:00:27.726471  

Error (calls): 9.00 (0.00%)  
Error (total time): 328.51 (0.00%)

|\# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------|
|1 |analyze |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|2 |select |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|3 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|4 |update |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|5 |vacuum |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|6 |delete |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|7 |alter |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|




### Replica servers: ###

#### Replica (`postgres.test1.node`) ####

Start: 2019-10-31T02:24:45.875447+00:00  
End: 2019-10-31T02:25:03.247256+00:00  
Period seconds: 17.37181  
Period age: 00:00:17.371809  

| \# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------|
|1 |select |19<br/>1.09/sec<br/>1.00/call<br/>18.45% |0.40&nbsp;ms<br/>0.023&nbsp;ms/sec<br/>0.021&nbsp;ms/call<br/>57.01% |19<br/>1.09/sec<br/>1.00/call<br/>100.00% |12&nbsp;blks<br/>0.69&nbsp;blks/sec<br/>0.63&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|2 |begin |42<br/>2.42/sec<br/>1.00/call<br/>40.78% |0.26&nbsp;ms<br/>0.015&nbsp;ms/sec<br/>0.006&nbsp;ms/call<br/>37.28% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|3 |commit |42<br/>2.42/sec<br/>1.00/call<br/>40.78% |0.04&nbsp;ms<br/>0.002&nbsp;ms/sec<br/>0.001&nbsp;ms/call<br/>5.71% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|4 |show |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|5 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|

#### Replica (`postgres.test2.node`) ####

Start: 2019-10-31T02:24:51.354187+00:00  
End: 2019-10-31T02:25:11.73571+00:00  
Period seconds: 20.38152  
Period age: 00:00:20.381523  

| \# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------|
|1 |select |19<br/>0.93/sec<br/>1.00/call<br/>18.45% |0.40&nbsp;ms<br/>0.020&nbsp;ms/sec<br/>0.021&nbsp;ms/call<br/>56.38% |19<br/>0.93/sec<br/>1.00/call<br/>100.00% |12&nbsp;blks<br/>0.59&nbsp;blks/sec<br/>0.63&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|2 |begin |42<br/>2.06/sec<br/>1.00/call<br/>40.78% |0.27&nbsp;ms<br/>0.013&nbsp;ms/sec<br/>0.006&nbsp;ms/call<br/>37.71% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|3 |commit |42<br/>2.06/sec<br/>1.00/call<br/>40.78% |0.04&nbsp;ms<br/>0.002&nbsp;ms/sec<br/>0.001&nbsp;ms/call<br/>5.91% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|4 |show |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|
|5 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K003 Top-50 Queries by total_time

## Observations ##
Data collected: 2019-10-31 02:25:22 +0000 UTC  
Current database: dbname  



### Master (`postgres.test3.node`) ###
Start: 2019-10-31T02:24:54.59833+00:00  
End: 2019-10-31T02:25:22.324801+00:00  
Period seconds: 27.72647  
Period age: 00:00:27.726471  

Error (calls): 9.00 (0.00%)  
Error (total time): 328.51 (0.00%)

The list is limited to 50 items.  

| \# | Query | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|----------|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|1 |create&nbsp;index&nbsp;ctnr\_idx01&nbsp;on&nbsp;ctnr&nbsp;<br/>using&nbsp;btree(pnum)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/1_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|2 |VACUUM&nbsp;ANALYZE<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/2_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|3 |create&nbsp;database&nbsp;checkup\_test\_db<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/3_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|4 |create&nbsp;index&nbsp;t\_with\_redundant\_ref\_idx\_3&nbsp;<br/>on&nbsp;exp\_redundant.t\_with\_redundant\_ref\_idx&nbsp;<br/>using&nbsp;btree&nbsp;(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/4_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|5 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_72&nbsp;<br/>on&nbsp;t\_72(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/5_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|6 |alter&nbsp;table&nbsp;ctnr&nbsp;add&nbsp;primary&nbsp;key&nbsp;<br/>(id)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/6_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|7 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_60&nbsp;<br/>on&nbsp;t\_60(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/7_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|8 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_52&nbsp;<br/>on&nbsp;t\_52(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/8_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|9 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_108&nbsp;<br/>on&nbsp;t\_108(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/9_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|10 |create&nbsp;index&nbsp;t\_with\_redundant\_ref\_idx\_3&nbsp;<br/>on&nbsp;public.t\_with\_redundant\_ref\_idx&nbsp;<br/>using&nbsp;btree&nbsp;(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/10_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|11 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_70&nbsp;<br/>on&nbsp;t\_70(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/11_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|12 |update&nbsp;t\_rar\_q&nbsp;set&nbsp;t\_dat=$1&nbsp;where&nbsp;<br/>t\_dat&nbsp;between&nbsp;$2&nbsp;and&nbsp;$3<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/12_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|13 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_61&nbsp;<br/>on&nbsp;t\_61(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/13_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|14 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_45&nbsp;<br/>on&nbsp;t\_45(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/14_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|15 |CREATE&nbsp;TABLE&nbsp;test\_schema.orders<br/>(<br/>&nbsp;id&nbsp;serial,<br/>&nbsp;cnt&nbsp;integer,<br/>&nbsp;CONSTRAINT&nbsp;<br/>orders\_pk&nbsp;PRIMARY&nbsp;KEY&nbsp;(id)<br/>)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/15_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|16 |create&nbsp;table&nbsp;t\_slw\_q&nbsp;as&nbsp;select&nbsp;id::int8&nbsp;<br/>from&nbsp;generate\_series(0,&nbsp;10000000)&nbsp;<br/>\_(id)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/16_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|17 |create&nbsp;index&nbsp;r\_red\_fk\_2\_fk\_idx&nbsp;on&nbsp;<br/>t\_red\_fk\_2(r\_t1\_id)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/17_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|18 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_26&nbsp;<br/>on&nbsp;t\_26(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/18_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|19 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f1\_2&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f1)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/19_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|20 |VACUUM&nbsp;(ANALYZE)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/20_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|21 |create&nbsp;table&nbsp;t\_33&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;<br/>generate\_series(1,&nbsp;1000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/21_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|22 |create&nbsp;index&nbsp;ctnr\_idx02&nbsp;on&nbsp;ctnr&nbsp;<br/>using&nbsp;btree(type\_id)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/22_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|23 |create&nbsp;index&nbsp;t\_rar\_q\_idx&nbsp;on&nbsp;t\_rar\_q(<br/>id)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/23_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|24 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_20&nbsp;<br/>on&nbsp;t\_20(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/24_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|25 |create&nbsp;table&nbsp;t\_with\_unused\_index&nbsp;<br/>as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(<br/>1,&nbsp;1000000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/25_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|26 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f1\_f2&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f1,f2)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/26_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|27 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f3\_1&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f3)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/27_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|28 |alter&nbsp;table&nbsp;t\_red\_fk\_1&nbsp;add&nbsp;primary&nbsp;<br/>key&nbsp;(id)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/28_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|29 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f1&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f1)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/29_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|30 |update&nbsp;t\_with\_bloat&nbsp;set&nbsp;i&nbsp;=&nbsp;i<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/30_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|31 |create&nbsp;index&nbsp;concurrently&nbsp;i\_r\_49&nbsp;<br/>on&nbsp;t\_49(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/31_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|32 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_74&nbsp;<br/>on&nbsp;t\_74(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/32_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|33 |create&nbsp;index&nbsp;concurrently&nbsp;i\_r\_80&nbsp;<br/>on&nbsp;t\_80(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/33_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|34 |create&nbsp;table&nbsp;t\_8&nbsp;as&nbsp;select&nbsp;i&nbsp;from&nbsp;<br/>generate\_series(1,&nbsp;1000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/34_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|35 |create&nbsp;index&nbsp;i\_bloated&nbsp;on&nbsp;bloated(<br/>i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/35_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|36 |create&nbsp;table&nbsp;public.t\_with\_redundant\_ref\_idx&nbsp;<br/>as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(<br/>1,&nbsp;1000000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/36_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|37 |create&nbsp;index&nbsp;concurrently&nbsp;i\_unused&nbsp;<br/>on&nbsp;t\_with\_unused\_index(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/37_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|38 |create&nbsp;table&nbsp;t\_rar\_q&nbsp;as&nbsp;select&nbsp;id,<br/>&nbsp;(random()&nbsp;\*&nbsp;1000000)::int8&nbsp;as&nbsp;<br/>t\_dat&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;<br/>\_(id)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/38_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|39 |select&nbsp;count(\*)&nbsp;from&nbsp;t\_slw\_q<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/39_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|40 |create&nbsp;table&nbsp;t\_with\_redundant\_index&nbsp;<br/>as&nbsp;select&nbsp;i&nbsp;from&nbsp;generate\_series(<br/>1,&nbsp;1000000)&nbsp;\_(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/40_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|41 |create&nbsp;index&nbsp;concurrently&nbsp;i\_redundant\_2&nbsp;<br/>on&nbsp;t\_with\_redundant\_index(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/41_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|42 |analyze&nbsp;t\_f004\_empty<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/42_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|43 |select&nbsp;pg\_reload\_conf()<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/43_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|44 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_53&nbsp;<br/>on&nbsp;t\_53(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/44_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|45 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_87&nbsp;<br/>on&nbsp;t\_87(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/45_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|46 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_15&nbsp;<br/>on&nbsp;t\_15(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/46_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|47 |create&nbsp;index&nbsp;concurrently&nbsp;t\_with\_redundant\_idx\_f3\_2&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx(f3)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/47_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|48 |create&nbsp;unique&nbsp;index&nbsp;t\_with\_redundant\_idx\_f1\_uniq&nbsp;<br/>on&nbsp;t\_with\_redundant\_idx&nbsp;(f1)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/48_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|49 |create&nbsp;index&nbsp;concurrently&nbsp;i\_u\_62&nbsp;<br/>on&nbsp;t\_62(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/49_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|50 |create&nbsp;table&nbsp;t\_f004\_empty&nbsp;as&nbsp;select&nbsp;<br/>i&nbsp;from&nbsp;generate\_series(1,&nbsp;1000000)&nbsp;<br/>\_(i)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/50_3.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |




### Replica servers: ###

#### Replica (`postgres.test1.node`) ####

Start: 2019-10-31T02:24:45.875447+00:00  
End: 2019-10-31T02:25:03.247256+00:00  
Period seconds: 17.37181  
Period age: 00:00:17.371809  

  

| \# | Query | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|----------|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|1 |select&nbsp;\*&nbsp;from&nbsp;pg\_is\_in\_recovery(<br/>)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/1_1.sql) |18<br/>1.04/sec<br/>1.00/call<br/>17.48% |0.32&nbsp;ms<br/>0.019&nbsp;ms/sec<br/>0.018&nbsp;ms/call<br/>46.16% |18<br/>1.04/sec<br/>1.00/call<br/>94.74% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|2 |BEGIN<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/2_1.sql) |42<br/>2.42/sec<br/>1.00/call<br/>40.78% |0.26&nbsp;ms<br/>0.015&nbsp;ms/sec<br/>0.006&nbsp;ms/call<br/>37.28% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|3 |select&nbsp;count(\*)&nbsp;from&nbsp;pg\_class<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/3_1.sql) |1<br/>0.06/sec<br/>1.00/call<br/>0.97% |0.08&nbsp;ms<br/>0.004&nbsp;ms/sec<br/>0.076&nbsp;ms/call<br/>10.85% |1<br/>0.06/sec<br/>1.00/call<br/>5.26% |12&nbsp;blks<br/>0.69&nbsp;blks/sec<br/>12.00&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|4 |COMMIT<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/4_1.sql) |42<br/>2.42/sec<br/>1.00/call<br/>40.78% |0.04&nbsp;ms<br/>0.002&nbsp;ms/sec<br/>0.001&nbsp;ms/call<br/>5.71% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|5 |SELECT&nbsp;version()<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/5_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|6 |create&nbsp;database&nbsp;dbname<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/6_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|7 |show&nbsp;data\_directory<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/7_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|8 |create&nbsp;role&nbsp;test\_user&nbsp;superuser&nbsp;<br/>login<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/8_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|9 |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_kcache<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/9_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|10 |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_statements<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/10_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |

#### Replica (`postgres.test2.node`) ####

Start: 2019-10-31T02:24:51.354187+00:00  
End: 2019-10-31T02:25:11.73571+00:00  
Period seconds: 20.38152  
Period age: 00:00:20.381523  

  

| \# | Query | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|----------|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|1 |select&nbsp;\*&nbsp;from&nbsp;pg\_is\_in\_recovery(<br/>)<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/1_2.sql) |18<br/>0.88/sec<br/>1.00/call<br/>17.48% |0.31&nbsp;ms<br/>0.015&nbsp;ms/sec<br/>0.017&nbsp;ms/call<br/>44.26% |18<br/>0.88/sec<br/>1.00/call<br/>94.74% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|2 |BEGIN<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/2_2.sql) |42<br/>2.06/sec<br/>1.00/call<br/>40.78% |0.27&nbsp;ms<br/>0.013&nbsp;ms/sec<br/>0.006&nbsp;ms/call<br/>37.71% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|3 |select&nbsp;count(\*)&nbsp;from&nbsp;pg\_class<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/3_2.sql) |1<br/>0.05/sec<br/>1.00/call<br/>0.97% |0.09&nbsp;ms<br/>0.004&nbsp;ms/sec<br/>0.086&nbsp;ms/call<br/>12.12% |1<br/>0.05/sec<br/>1.00/call<br/>5.26% |12&nbsp;blks<br/>0.59&nbsp;blks/sec<br/>12.00&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|4 |COMMIT<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/4_2.sql) |42<br/>2.06/sec<br/>1.00/call<br/>40.78% |0.04&nbsp;ms<br/>0.002&nbsp;ms/sec<br/>0.001&nbsp;ms/call<br/>5.91% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|5 |SELECT&nbsp;version()<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/5_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|6 |create&nbsp;database&nbsp;dbname<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/6_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|7 |show&nbsp;data\_directory<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/7_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|8 |create&nbsp;role&nbsp;test\_user&nbsp;superuser&nbsp;<br/>login<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/8_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|9 |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_kcache<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/9_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |
|10 |create&nbsp;extension&nbsp;if&nbsp;not&nbsp;exists&nbsp;pg\_stat\_statements<br/>[Full query](../../json_reports/1_2019_10_31T02_24_45_+0000/K_query_groups/10_2.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |


## Conclusions ##
  - [P1] For some query groups, `total_time` > 30.00% of overall timing, observed on: nodes: `postgres.test1.node` and `postgres.test2.node`. Such a high percentage means that those queries are "major contributors" to resource consumption on those nodes. In other words, if a query group has `total_time` which is 30.00% of overall timing, it means that during the observation period, 30.00% of time CPUs were working on that node processing queries from this group.

  
 


## Recommendations ##
  - [P1] For some query groups, `total_time` > 30.00% of overall timing. To reduce `total_time` for particular query group consider the following tactics:  
    - perform query micro-optimization (take particular query examples related to the group, use `EXPLAIN` and `EXPLAIN (BUFFERS, ANALYZE)` to optimize it; consider using [Joe](https://gitlab.com/postgres-ai/joe) to boost the optimization process);
    - if the frequency of execution is high (check the `calls / second` metric), try to find a way to reduce the frequency, changing the application code and/or, if applicable, applying caching.

  
 


---
<a name="postgres-checkup_L001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# L001 Table Sizes #

## Observations ##
Data collected: 2019-10-31 02:25:25 +0000 UTC  
Current database: dbname  



### Master (`postgres.test3.node`) ###
The list is limited to 50 items. Total: 188.  

| \# | Table | Rows | &#9660;&nbsp;Total size | Table size | Index(es) Size | TOAST Size |
|---|---|------|------------|------------|----------------|------------|
|&nbsp;|===== TOTAL ===== |~22M |1.48&nbsp;GiB |830.14&nbsp;MiB |678.65&nbsp;MiB |632.00&nbsp;KiB |
|1 |`t_slw_q` | ~10M |345.81&nbsp;MiB (22.91%) |345.81&nbsp;MiB (41.66%) |0.00&nbsp;bytes (0.00%) | |
|2 |`t_with_redundant_idx` | ~1M |242.82&nbsp;MiB (16.09%) |49.81&nbsp;MiB (6.00%) |193.01&nbsp;MiB (28.44%) | |
|3 |`ctnr` | ~1M |199.93&nbsp;MiB (13.25%) |49.81&nbsp;MiB (6.00%) |150.12&nbsp;MiB (22.12%) | |
|4 |`t_with_redundant_ref_idx` | ~1M |98.95&nbsp;MiB (6.56%) |34.61&nbsp;MiB (4.17%) |64.34&nbsp;MiB (9.48%) | |
|5 |`exp_redundant.t_with_redundant_ref_idx` | ~1M |98.95&nbsp;MiB (6.56%) |34.61&nbsp;MiB (4.17%) |64.34&nbsp;MiB (9.48%) | |
|6 |`t_red_fk_1` | ~1M |98.95&nbsp;MiB (6.56%) |34.61&nbsp;MiB (4.17%) |64.34&nbsp;MiB (9.48%) | |
|7 |`t_rar_q` | ~1M |92.48&nbsp;MiB (6.13%) |49.75&nbsp;MiB (5.99%) |42.73&nbsp;MiB (6.30%) | |
|8 |`t_with_redundant_index` | ~1M |77.50&nbsp;MiB (5.13%) |34.61&nbsp;MiB (4.17%) |42.90&nbsp;MiB (6.32%) | |
|9 |`t_with_bloat` | ~1M |69.19&nbsp;MiB (4.58%) |69.19&nbsp;MiB (8.33%) |0.00&nbsp;bytes (0.00%) | |
|10 |`t_red_fk_2` | ~1M |63.72&nbsp;MiB (4.22%) |42.28&nbsp;MiB (5.09%) |21.45&nbsp;MiB (3.16%) | |
|11 |`t_with_unused_index` | ~1M |56.06&nbsp;MiB (3.71%) |34.61&nbsp;MiB (4.17%) |21.45&nbsp;MiB (3.16%) | |
|12 |`test_schema.t_with_invalid_index` | ~1M |34.61&nbsp;MiB (2.29%) |34.61&nbsp;MiB (4.17%) |0.00&nbsp;bytes (0.00%) | |
|13 |`bloated` | ~50K |5.65&nbsp;MiB (0.37%) |3.50&nbsp;MiB (0.42%) |2.16&nbsp;MiB (0.32%) | |
|14 |`pg_catalog.pg_depend` | ~9K |1.26&nbsp;MiB (0.08%) |520.00&nbsp;KiB (0.06%) |768.00&nbsp;KiB (0.11%) | |
|15 |`pg_catalog.pg_proc` | ~3K |0.97&nbsp;MiB (0.06%) |640.00&nbsp;KiB (0.08%) |344.00&nbsp;KiB (0.05%) |8.00&nbsp;KiB (1.27%) |
|16 |`pg_catalog.pg_attribute` | ~4K |840.00&nbsp;KiB (0.05%) |592.00&nbsp;KiB (0.07%) |248.00&nbsp;KiB (0.04%) | |
|17 |`pg_catalog.pg_rewrite` | ~124 |632.00&nbsp;KiB (0.04%) |136.00&nbsp;KiB (0.02%) |32.00&nbsp;KiB (0.00%) |464.00&nbsp;KiB (73.42%) |
|18 |`pg_catalog.pg_description` | ~5K |544.00&nbsp;KiB (0.04%) |352.00&nbsp;KiB (0.04%) |184.00&nbsp;KiB (0.03%) |8.00&nbsp;KiB (1.27%) |
|19 |`pg_catalog.pg_statistic` | ~568 |456.00&nbsp;KiB (0.03%) |328.00&nbsp;KiB (0.04%) |40.00&nbsp;KiB (0.01%) |88.00&nbsp;KiB (13.92%) |
|20 |`pg_catalog.pg_class` | ~725 |320.00&nbsp;KiB (0.02%) |176.00&nbsp;KiB (0.02%) |144.00&nbsp;KiB (0.02%) | |
|21 |`pg_catalog.pg_collation` | ~689 |288.00&nbsp;KiB (0.02%) |208.00&nbsp;KiB (0.02%) |80.00&nbsp;KiB (0.01%) | |
|22 |`pg_catalog.pg_operator` | ~788 |240.00&nbsp;KiB (0.02%) |152.00&nbsp;KiB (0.02%) |88.00&nbsp;KiB (0.01%) | |
|23 |`pg_catalog.pg_type` | ~640 |232.00&nbsp;KiB (0.02%) |152.00&nbsp;KiB (0.02%) |80.00&nbsp;KiB (0.01%) | |
|24 |`pg_catalog.pg_amop` | ~722 |200.00&nbsp;KiB (0.01%) |88.00&nbsp;KiB (0.01%) |112.00&nbsp;KiB (0.02%) | |
|25 |`t_71` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|26 |`t_8` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|27 |`t_106` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|28 |`t_105` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|29 |`t_3` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|30 |`t_9` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|31 |`t_104` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|32 |`t_11` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|33 |`t_14` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|34 |`t_103` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|35 |`t_17` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|36 |`t_19` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|37 |`t_102` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|38 |`t_101` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|39 |`t_21` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|40 |`t_100` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|41 |`t_64` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|42 |`t_66` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|43 |`t_67` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|44 |`t_68` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|45 |`t_69` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|46 |`t_70` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|47 |`t_29` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|48 |`t_30` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|49 |`t_1` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |
|50 |`t_7` | ~1K |152.00&nbsp;KiB (0.01%) |72.00&nbsp;KiB (0.01%) |80.00&nbsp;KiB (0.01%) | |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_L003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# L003 Integer (int2, int4) Out-of-range Risks in PKs #

## Observations ##
Data collected: 2019-10-31 02:25:25 +0000 UTC  
Current database: dbname

### Master (`postgres.test3.node`) ###
  

| Table | PK | Type | Current max value | &#9660;&nbsp;Capacity used, % |
|------|----|------|-------------------|-------------------------------|
|`test_schema.orders` | `id` | int4 |800,000,000 | 37.25|
|`test_schema."orders_A"` | `id` | int4 |300,000,000 | 13.97|


## Conclusions ##
  - [P1] High risks of out-of-range errors for an integer column. The columns listed below, being part of a primary key, have high risks to reach 100% of the integer capacity (`2^31-1`, or `2147483647` for `int4` columns, and `2^15-1`, or `32767` for `int2` columns; see [the documentation](https://www.postgresql.org/docs/current/datatype-numeric.html). If it happens, INSERTs of new rows will not be possible (unless they use some non-incremental values, such as some negative values) and fixing it will require a long downtime. 2 such columns are found:
    - `test_schema.orders`: reached value 800000000, or 37.25% of `int4` capacity
    - `test_schema."orders_A"`: reached value 300000000, or 13.97% of `int4` capacity

  
 


## Recommendations ##
  - [P1] High risks of out-of-range errors for an integer column. Consider using `int8` in all PK columns,  always. To convert existing columns to `int8`, consider the  following approaches:
    1. Blocking `ALTER TABLE .. ALTER COLUMN`: a straightforward solution requiring significant downtime (a maintenance window).
    1. "New column": create a new column, update it in batches (running not longer than a few seconds, to avoid blocking issues), and then switch to using it, redefining all the constraints. Notice, that to redefine a primary key constraint, `ALTER TABLE .. ALTER COLUMN .. SET NOT NULL` will be needed. It is a blocking operation in all Postgres versions up to 12 (where it might be lightweight if a proper `CHECK` constraint is defined first; such constraint can be defined in a non-blocking way). Since Postgres 11, it is possible to use a trick: when adding a column, use `DEFAULT` with `NOT NULL`, it will be a non-blocking operation. For all Postgres versions prior to 11, a specific downtime (maintenance window) will be needed anyway.
    1. "New table": create a new table with the same schema as the existing one, capture all ongoing changes to an additional "log" table, copy existing data from the old table to the new one, and switch. This method, as the previous one, is non-trivial and requires careful development and testing under load (consider using [Nancy](https://gitlab.com/postgres-ai/nancy) for database experiments developing this solution). This approach is non-blocking regardless of Postgres version, but it requires significantly more efforts to implement.
  
 