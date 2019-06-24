# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-06-24 22:21:48 +0000


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
Data collected: 2019-06-24 22:21:36 +0000 UTC  






### Replica servers: ###
    
#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`) ####
        

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
MemFree:          219736 kB
MemAvailable:    2651460 kB
Buffers:           79164 kB
Cached:          2865056 kB
SwapCached:          272 kB
Active:          1361324 kB
Inactive:        1996756 kB
Active(anon):     431700 kB
Inactive(anon):   344776 kB
Active(file):     929624 kB
Inactive(file):  1651980 kB
Unevictable:           0 kB
Mlocked:               0 kB
SwapTotal:       2097148 kB
SwapFree:        2092528 kB
Dirty:             17424 kB
Writeback:             0 kB
AnonPages:        413772 kB
Mapped:           294760 kB
Shmem:            362620 kB
Slab:             135248 kB
SReclaimable:     106544 kB
SUnreclaim:        28704 kB
KernelStack:        3008 kB
PageTables:         9548 kB
NFS_Unstable:          0 kB
Bounce:                0 kB
WritebackTmp:          0 kB
CommitLimit:     3988900 kB
Committed_AS:    1659668 kB
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
DirectMap4k:       88052 kB
DirectMap2M:     3844096 kB
DirectMap1G:           0 kB
```


        

## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A002 Version Information #

## Observations ##
Data collected: 2019-06-24 22:21:36 +0000 UTC  



### Replica servers: ###

#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`) ####


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
Data collected: 2019-06-24 22:21:37 +0000 UTC  

Nothing found  

  


---
<a name="postgres-checkup_A004">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A004 Cluster Information #

## Observations ##
Data collected: 2019-06-24 22:21:40 +0000 UTC  

|&#9660;&nbsp;Indicator | runner-fa6cab46-project-9951336-concurrent-0 |
|--------|-------|
|Config file |/var/lib/postgresql/11/secondary/postgresql.conf|
|Role ||
|Replicas ||
|Started At |2019-06-24&nbsp;22:17:43+00|
|Uptime |00:03:58|
|Checkpoints |0|
|Forced Checkpoints ||
|Checkpoint MB/sec ||
|Database Name |dbname|
|Database Size |7701&nbsp;kB|
|Stats Since |2019-06-24&nbsp;22:17:52+00|
|Stats Age |00:03:49|
|Cache Effectiveness |97.48%|
|Successful Commits |100.00%|
|Conflicts |0|
|Temp Files: total size |0&nbsp;bytes|
|Temp Files: total number of files |0|
|Temp Files: total number of files per day |0|
|Temp Files: avg file size ||
|Deadlocks |0|
|Deadlocks per day |0|


### Databases sizes ###

| Database | &#9660;&nbsp;Size |
|----------|--------|
| `dbname` | 7.53&nbsp;MiB |
| `postgres` | 7.36&nbsp;MiB |
| `template1` | 7.36&nbsp;MiB |
| `template0` | 7.36&nbsp;MiB |


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A005">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A005 Extensions #

## Observations ##
Data collected: 2019-06-24 22:21:41 +0000 UTC  

Extensions information not found


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_A006">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# A006 Postgres Setting Deviations #

## Observations ##
Data collected: 2019-06-24 22:21:41 +0000 UTC  

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
Data collected: 2019-06-24 22:21:44 +0000 UTC  



### Replica servers: ###
  
#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`) ####
    
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
Data collected: 2019-06-24 22:21:45 +0000 UTC  
Output of `df -TPh` (follows symlinks)  




### Replica servers: ###
    
#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`) ####

#### System directories ####
| Device | FS Type | Size | Available | Usage | Used | Mount Point |
|-------|---------|------|-----------|-----|------|-------------|
| overlay |overlay |22G |12G |44% |9.2G |/ |
| tmpfs |tmpfs |64M |64M |0% |0 |/dev |
| tmpfs |tmpfs |1.9G |1.9G |0% |0 |/sys/fs/cgroup |
| /dev/sda9 |ext4 |22G |12G |44% |9.2G |/builds |
| shm |tmpfs |64M |64M |1% |16K |/dev/shm |


#### Database directories ####
| Name | FS Type | Size | Available | Usage | Used | Mount Point | Path | Device |
|-----|---------|------|-----------|-----|------|-------------|------|-------|
| PGDATA |overlay |22G |12G |44% |9.2G |/ |/var/lib/postgresql/11/secondary |overlay |
| WAL directory |overlay |22G |12G |44% |9.2G |/ |/var/lib/postgresql/11/secondary/pg_wal |overlay |
| stats_temp_directory |overlay |22G |12G |44% |9.2G |/ |/var/lib/postgresql/11/secondary/pg_stat_tmp |overlay |


        
    


## Conclusions ##
  - No significant risks of out-of-disk-space problem have been detected.
  
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_D002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# D002 Useful Linux Tools
## Observations ##
Data collected: 2019-06-24 22:21:45 +0000 UTC  


### Replica servers:  

#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`)  

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
Data collected: 2019-06-24 22:21:46 +0000 UTC  

Nothing found


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_F001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F001 Autovacuum: Current Settings #

## Observations ##
Data collected: 2019-06-24 22:21:46 +0000 UTC  



### Replicas settings ###
| Setting | runner-fa6cab46-project-9951336-concurrent-0  |
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
- Data collected: 2019-06-24 22:21:29 +0000 UTC
- Current database: dbname




### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###


#### Databases ####


| \# | Database | &#9660;&nbsp;Age | Capacity used, % | Warning | datfrozenxid |
|--|--------|-----|------------------|---------|--------------|
| 1 |`postgres`|617 |0 |  |561 |
| 2 |`dbname`|617 |0 |  |561 |
| 3 |`template1`|617 |0 |  |561 |
| 4 |`template0`|617 |0 |  |561 |
| 5 |`checkup_test_db`|617 |0 |  |561 |


#### Tables in the observed database ####
The list is limited to 10 items.

| \# | Relation | Age | &#9660;&nbsp;Capacity used, % | Warning |rel_relfrozenxid | toast_relfrozenxid |
|---|-------|-----|------------------|---------|-----------------|--------------------|
| 1 |`exp_redundant.t_with_redundant_ref_idx` |577 |0 |  |601 |0 |
| 2 |`test_schema.t_with_invalid_index` |572 |0 |  |606 |0 |
| 3 |`bloated` |570 |0 |  |608 |0 |
| 4 |`t_red_fk_1` |566 |0 |  |612 |0 |
| 5 |`t_red_fk_2` |562 |0 |  |616 |0 |
| 6 |`t_slw_q` |559 |0 |  |619 |0 |
| 7 |`t_with_bloat`\* |567 |0 |  |611 |0 |
| 8 |`test_schema.orders` |491 |0 |  |687 |0 |
| 9 |`test_schema.orders_A` |488 |0 |  |690 |0 |
| 10 |`t_4` |479 |0 |  |699 |0 |


\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##
 


## Recommendations ##
  All good, no recommendations here.
 


---
<a name="postgres-checkup_F003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead Tuples #

## Observations ##
Data collected: 2019-06-24 22:21:29 +0000 UTC  
Current database: dbname  
Stats reset: 00:04:00 ago (2019-06-24 22:17:38 +0000 UTC)  
### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
  
  
| \#|  Relation | reltype | Since last autovacuum | Since last vacuum | Autovacuum Count | Vacuum Count | n_tup_ins | n_tup_upd | n_tup_del | pg_class.reltuples | n_live_tup | n_dead_tup | &#9660;Dead Tuples Ratio, % |
|---|-------|------|-----------------------|-------------------|----------|---------|-----------|-----------|-----------|--------------------|------------|------------|-----------|
| 1 |`t_with_redundant_idx` |r |<no value> |00:01:04.443114 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 2 |`t_with_redundant_ref_idx` |r |<no value> |00:01:04.334443 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 3 |`exp_redundant.t_with_redundant_ref_idx` |r |<no value> |00:01:10.457735 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 4 |`bloated` |r |<no value> |00:01:09.650143 |0 |2 |100000 |0 |50000 |50000 |50000 |0 | 0  |
| 5 |`t_rar_q` |r |<no value> |00:01:04.752862 |0 |2 |1000000 |745348 |0 |1000000 |1000000 |0 | 0  |
| 6 |`t_red_fk_2` |r |<no value> |00:01:09.568342 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 7 |`t_with_bloat`\* |r |<no value> |00:01:08.727218 |0 |2 |1000000 |1000000 |0 |1000000 |1000000 |0 | 0  |
| 8 |`t_with_redundant_index` |r |<no value> |00:01:04.547624 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 9 |`t_with_unused_index` |r |<no value> |00:01:04.633531 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 10 |`t_red_fk_1` |r |<no value> |00:01:09.635476 |0 |2 |1000001 |0 |0 |1000001 |1000001 |0 | 0  |
| 11 |`test_schema.t_with_invalid_index` |r |<no value> |00:01:09.899727 |0 |2 |1000000 |0 |0 |1000000 |1000000 |0 | 0  |
| 12 |`t_slw_q` |r |<no value> |00:01:09.484705 |0 |2 |10000001 |0 |0 |10000048 |10000048 |0 | 0  |

\* This table has specific autovacuum settings. See 'F001 Autovacuum: Current settings'


## Conclusions ##

## Recommendations ##


---
<a name="postgres-checkup_F004">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap Bloat (Estimated) #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-06-24 22:21:30 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###


  

| \# | Table | Real Size | &#9660;&nbsp;Estimated bloat | Est. bloat, bytes | Est. bloat factor | Est. bloat level, % | Live Data Size | Last vacuum | Fillfactor |
|----|-------|------|------------------------------|-------------------|-------------------|---------------------|----------------|-------------|------------|
|&nbsp;|===== TOTAL ===== |767.61&nbsp;MiB |46.57&nbsp;MiB |48,824,320 |1.06 |6.07 | ~721.04&nbsp;MiB ||||
|1 |`t_with_bloat`\* |69.15&nbsp;MiB |34.71&nbsp;MiB |36,388,864 |2.01 | **50.19** |~34.44&nbsp;MiB | 2019-06-24 22:20:21  |100 |
|2 |`t_rar_q` |49.90&nbsp;MiB |7.81&nbsp;MiB |8,183,808 |1.19 |15.64 |~42.09&nbsp;MiB | 2019-06-24 22:20:25  |100 |
|3 |`bloated` |3.47&nbsp;MiB |1.74&nbsp;MiB |1,818,624 |2.00 | **50.11** |~1.73&nbsp;MiB | 2019-06-24 22:20:21  |100 |
|4 |`t_slw_q` |345.69&nbsp;MiB |1.36&nbsp;MiB |1,417,216 |1.00 |0.39 |~344.34&nbsp;MiB | 2019-06-24 22:20:21  |100 |
|5 |`t_red_fk_2` |42.24&nbsp;MiB |152.00&nbsp;KiB |155,648 |1.00 |0.35 |~42.09&nbsp;MiB | 2019-06-24 22:20:21  |100 |
|6 |`t_with_redundant_ref_idx` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-06-24 22:20:26  |100 |
|7 |`t_with_redundant_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-06-24 22:20:26  |100 |
|8 |`t_with_unused_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-06-24 22:20:26  |100 |
|9 |`t_red_fk_1` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-06-24 22:20:21  |100 |
|10 |`test_schema.t_with_invalid_index` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-06-24 22:20:20  |100 |
|11 |`exp_redundant.t_with_redundant_ref_idx` |34.58&nbsp;MiB |136.00&nbsp;KiB |139,264 |1.00 |0.38 |~34.44&nbsp;MiB | 2019-06-24 22:20:20  |100 |
|12 |`t_with_redundant_idx` |49.77&nbsp;MiB |24.00&nbsp;KiB |24,576 |1.00 |0.05 |~49.75&nbsp;MiB | 2019-06-24 22:20:26  |100 |

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
Data collected: 2019-06-24 22:21:30 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
  

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
Data collected: 2019-06-24 22:21:30 +0000 UTC  
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
Data collected: 2019-06-24 22:21:46 +0000 UTC  



### Replica servers: ###

#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`) ####

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
    - server `runner-fa6cab46-project-9951336-concurrent-0` has 3.61 GiB of RAM, while `shared_buffers` is set to 128.00 MiB, or 0% of RAM – it is too low, so Postgres performance on this server is sub-optimal.  

  
 


## Recommendations ##
  - [P1] shared_buffers value is far from optimal:  
    - server `runner-fa6cab46-project-9951336-concurrent-0`: 923.71 MiB (25%) or a value between 738.97 MiB (20%) and 2.89 GiB (80%).  

  - Useful links related to `shared_buffers` tuning:  
    - [PostgreSQL documentation. 19.4. Resource Consumption](https://www.postgresql.org/docs/current/runtime-config-resource.html)  
    - [Tuning Your PostgreSQL Server](https://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server#shared_buffers) (PostgreSQL Wiki)  
    - [annotated.conf](https://github.com/jberkus/annotated.conf) (Josh Berkus, 2018)  

  
 


---
<a name="postgres-checkup_G002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# G002 Connections and Current Activity #

## Observations ##
Data collected: 2019-06-24 22:21:46 +0000 UTC  
### Replica servers: ###

#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`) ####

  

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
Data collected: 2019-06-24 22:21:47 +0000 UTC  

## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_H001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# H001 Invalid Indexes #

## Observations ##
Data collected: 2019-06-24 22:21:31 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###


  

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
Data collected: 2019-06-24 22:21:47 +0000 UTC  
Current database: dbname  
Stats reset: 00:04:00 ago (2019-06-24 22:17:52 +0000 UTC)  
:warning: Statistics age is less than 30 days. Make decisions on index cleanup with caution!
### Never Used Indexes ###

Nothing found.


### Rarely Used Indexes ###

Nothing found.


### Redundant Indexes ###

Nothing found.


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_H003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# H003 Non-indexed Foreign Keys #

## Observations ##
Data collected: 2019-06-24 22:21:32 +0000 UTC  
Current database: dbname  

### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###


No data


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K001 Globally Aggregated Query Metrics

## Observations ##
Data collected: 2019-06-24 22:21:47 +0000 UTC  
Current database: dbname  



### Replica servers: ###

#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`) ####

Start: 2019-06-24T22:21:32.821437+00:00  
End: 2019-06-24T22:21:47.942234+00:00  
Period seconds: 15.12079  
Period age: 00:00:15.120797  

| Calls | Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|0<br/>0.00/sec<br/>0.00/call<br/>0.00% |68.27&nbsp;ms<br/>4.515&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>100.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |-3&nbsp;blks<br/>-0.20&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>100.00% |3&nbsp;blks<br/>0.20&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K002">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K002 Workload Type ("First Word" Analysis)

## Observations ##
Data collected: 2019-06-24 22:21:47 +0000 UTC  
Current database: dbname  



### Replica servers: ###

#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`) ####

Start: 2019-06-24T22:21:32.821437+00:00  
End: 2019-06-24T22:21:47.942234+00:00  
Period seconds: 15.12079  
Period age: 00:00:15.120797  

| \# | Workload type | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|-------|
|1 |create |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |68.27&nbsp;ms<br/>4.515&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>100.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |-3&nbsp;blks<br/>-0.20&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>100.00% |3&nbsp;blks<br/>0.20&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00%|


## Conclusions ##


## Recommendations ##


---
<a name="postgres-checkup_K003">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# K003 Top-50 Queries by total_time

## Observations ##
Data collected: 2019-06-24 22:21:47 +0000 UTC  
Current database: dbname  



### Replica servers: ###

#### Replica (`runner-fa6cab46-project-9951336-concurrent-0`) ####

Start: 2019-06-24T22:21:32.821437+00:00  
End: 2019-06-24T22:21:47.942234+00:00  
Period seconds: 15.12079  
Period age: 00:00:15.120797  

  

| \# | Query | Calls | &#9660;&nbsp;Total&nbsp;time | Rows | shared_blks_hit | shared_blks_read | shared_blks_dirtied | shared_blks_written | blk_read_time | blk_write_time | kcache_reads | kcache_writes | kcache_user_time_ms | kcache_system_time |
|----|----------|-------|------------|------|-----------------|------------------|---------------------|---------------------|---------------|----------------|--------------|---------------|---------------------|--------------------|
|1 |create&nbsp;database&nbsp;dbname<br/>[Full query](../../json_reports/1_2019_06_24T22_20_43_+0000/K_query_groups/1_1.sql) |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |68.27&nbsp;ms<br/>4.515&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>100.00% |0<br/>0.00/sec<br/>0.00/call<br/>0.00% |-3&nbsp;blks<br/>-0.20&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>100.00% |3&nbsp;blks<br/>0.20&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>100.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0&nbsp;blks<br/>0.00&nbsp;blks/sec<br/>0.00&nbsp;blks/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;bytes<br/>0.00&nbsp;bytes/sec<br/>0.00&nbsp;bytes/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |0.00&nbsp;ms<br/>0.000&nbsp;ms/sec<br/>0.000&nbsp;ms/call<br/>0.00% |


## Conclusions ##
  - [P1] For some query groups, total_time > 30% of overall timing. It was observed on the following node: `runner-fa6cab46-project-9951336-concurrent-0`. Such a high percentage means that those queries are "major contributors" to resource consumption on those nodes. In other words, if a query group has `total_time` which is 30% of overall timing, it means that during the observation period, 30% of time CPUs were working on that node processing queries from this group.  

  
 


## Recommendations ##
  - [P1] For some query groups, total_time > 30% of overall timing. To reduce `total_time` for particular query group consider the following tactics:  
    - perform query micro-optimization (take particular query examples related to the group, use `EXPLAIN` and `EXPLAIN (BUFFERS, ANALYZE)` to optimize it, also consider using [Joe bot](https://gitlab.com/postgres-ai/joe) and special DB instances) simplifying the process of for query optimization, 
    - if the frequency of execution is high (check the `calls / second` metric), consider reducing this frequency, changing the application code and/or, if it is applicable, applying query results caching.  

  
 


---
<a name="postgres-checkup_L001">&nbsp;</a>
[Table of contents](#postgres-checkup_top)
# L001 Table Sizes #

## Observations ##
Data collected: 2019-06-24 22:21:33 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
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
Data collected: 2019-06-24 22:21:33 +0000 UTC  
Current database: dbname  



### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
| Table | PK | Type | Current max value | &#9660;&nbsp;Capacity used, % |
|------|----|------|-------------------|-------------------------------|
|`test_schema.orders` | `id` | int4 |800,000,000 | 37.25|
|`test_schema."orders_A"` | `id` | int4 |300,000,000 | 13.97|


## Conclusions ##


## Recommendations ##
