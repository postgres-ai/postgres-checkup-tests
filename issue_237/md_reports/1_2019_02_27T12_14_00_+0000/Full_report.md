# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-02-27 12:14:45 +0000


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
[PostgreSQL Checkup. Project: 'test'. Database: 'dbname'](#postgres-checkup_Post)  
[G001 Memory-related settings](#postgres-checkup_G001)  
[G002 Connections and current activity](#postgres-checkup_G002)  
[G003 Timeouts, locks, deadlocks](#postgres-checkup_G003)  
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
Data collected: 2019-02-27 12:14:33 +0000 UTC  









## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A002"></a>
[Table of contents](#postgres-checkup_top)
# A002 Version information #

## Observations ##
Data collected: 2019-02-27 12:14:34 +0000 UTC  






## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A003"></a>
[Table of contents](#postgres-checkup_top)
# A003 Postgres settings #

## Observations ##
Data collected: 2019-02-27 12:14:34 +0000 UTC  


No data
  
---
<a name="postgres-checkup_A004"></a>
[Table of contents](#postgres-checkup_top)
# A004 Cluster information #

## Observations ##
Data collected: 2019-02-27 12:14:34 +0000 UTC  



## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A005"></a>
[Table of contents](#postgres-checkup_top)
# A005 Extensions #

## Observations ##
Data collected: 2019-02-27 12:14:35 +0000 UTC  


Extensions information not found



## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A006"></a>
[Table of contents](#postgres-checkup_top)
# A006 Postgres setting deviations #

## Observations ##
Data collected: 2019-02-27 12:14:35 +0000 UTC  

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
Data collected: 2019-02-27 12:14:36 +0000 UTC  






## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_A008"></a>
[Table of contents](#postgres-checkup_top)
# A008 Disk usage and file system type
Output of `df -TPh` (follows symlinks)

## Observations ##
Data collected: 2019-02-27 12:14:36 +0000 UTC  

    




## Conclusions ##

## Recommendations ##
---
<a name="postgres-checkup_D002"></a>
[Table of contents](#postgres-checkup_top)
# D002 Useful Linux tools
## Observations ##
Data collected: 2019-02-27 12:14:36 +0000 UTC  





## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_D004"></a>
[Table of contents](#postgres-checkup_top)
# D004 pg_stat_statements and kcache settings #

## Observations ##
Data collected: 2019-02-27 12:14:37 +0000 UTC  


No data

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F001"></a>
[Table of contents](#postgres-checkup_top)
# F001 Autovacuum: Current settings #

## Observations ##
Data collected: 2019-02-27 12:14:37 +0000 UTC  






## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F002"></a>
[Table of contents](#postgres-checkup_top)
# F002 Autovacuum: Transaction wraparound check #

## Observations ##
Data collected: 2019-02-27 12:14:37 +0000 UTC  
Current database: dbname  


No data


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F003"></a>
[Table of contents](#postgres-checkup_top)
# F003 Autovacuum: Dead tuples #

## Observations ##
Data collected: 2019-02-27 12:14:38 +0000 UTC  
Current database: dbname
No data


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F004"></a>
[Table of contents](#postgres-checkup_top)
# F004 Autovacuum: Heap bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-02-27 12:14:38 +0000 UTC  
Current database: dbname  


### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###
No data

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F005"></a>
[Table of contents](#postgres-checkup_top)
# F005 Autovacuum: Index bloat #
:warning: This report is based on estimations. The errors in bloat estimates may be significant (in some cases, up to 15% and even more). Use it only as an indicator of potential issues.

## Observations ##
Data collected: 2019-02-27 12:14:38 +0000 UTC  
Current database: dbname  


No data

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_F008"></a>
[Table of contents](#postgres-checkup_top)
# F008 Autovacuum: Resource usage #

## Observations ##
Data collected: 2019-02-27 12:14:38 +0000 UTC  
### Settings ###



No data

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_Post"></a>
[Table of contents](#postgres-checkup_top)
# PostgreSQL Checkup. Project: 'test'. Database: 'dbname'
## Epoch number: '1'
NOTICE: while most reports describe the “current database”, some of them may contain cluster-wide information describing all databases in the cluster.

Last modified at:  2019-02-27 12:14:45 +0000


<a name="postgres-checkup_top"></a>
### Table of contents ###
---
<a name="postgres-checkup_G001"></a>
[Table of contents](#postgres-checkup_top)
# G001 Memory-related settings #

## Observations ##
Data collected: 2019-02-27 12:14:39 +0000 UTC  






## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_G002"></a>
[Table of contents](#postgres-checkup_top)
# G002 Connections and current activity #

## Observations ##
Data collected: 2019-02-27 12:14:39 +0000 UTC  




## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_G003"></a>
[Table of contents](#postgres-checkup_top)
# G003 Timeouts, locks, deadlocks #

## Observations ##
Data collected: 2019-02-27 12:14:39 +0000 UTC  


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_H003"></a>
[Table of contents](#postgres-checkup_top)
# H003 Non indexed foreign keys (or with bad indexes) #

## Observations ##
Data collected: 2019-02-27 12:14:40 +0000 UTC  
Current database: dbname  

### Master (`runner-fa6cab46-project-9951336-concurrent-0`) ###

No data


## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K001"></a>
[Table of contents](#postgres-checkup_top)
# K001 Globally aggregated query metrics

## Observations ##
Data collected: 2019-02-27 12:14:40 +0000 UTC  
Current database: dbname  







## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K002"></a>
[Table of contents](#postgres-checkup_top)
# K002 Workload type ("first word" analysis)

## Observations ##
Data collected: 2019-02-27 12:14:40 +0000 UTC  
Current database: dbname  







## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_K003"></a>
[Table of contents](#postgres-checkup_top)
# K003 Top-50 queries by total_time

## Observations ##
Data collected: 2019-02-27 12:14:40 +0000 UTC  
Current database: dbname  







## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L001"></a>
[Table of contents](#postgres-checkup_top)
# L001 Table sizes #

## Observations ##
Data collected: 2019-02-27 12:14:44 +0000 UTC  
Current database: dbname  


No data

## Conclusions ##


## Recommendations ##
---
<a name="postgres-checkup_L003"></a>
[Table of contents](#postgres-checkup_top)
# L003 Integer (int2, int4) out-of-range risks in PKs #

## Observations ##
Data collected: 2019-02-27 12:14:45 +0000 UTC  
Current database: dbname  


No data

## Conclusions ##


## Recommendations ##
