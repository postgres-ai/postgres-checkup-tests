-- queryid: 8328282946743440000
-- NOTICE: the first 50k characters
-- NOTICE: current query size (bytes): '40919'
with snap1(j) as (
 select $1::json
 ), snap2(j) as (
 select $2::json
 ), delta(seconds) as (
 select
 (select j->>$3 from snap2)::numeric
 - (select j->>$4 from snap1)::numeric
 ), s1(md5, obj) as (
 select _.*
 from snap1, lateral json_each(j->$5) as _
 ), s2(md5, obj) as (
 select _.*
 from snap2, lateral json_each(j->$6) as _
 ), si as ( 
 select s1.md5
 from s1
 intersect
 select s2.md5
 from s2
 ), sum_si_s1 as ( 
 select
 sum((s1.obj->>$7)::numeric) as sum_calls,
 sum((s1.obj->>$8)::numeric) as sum_total_time,
 $9 as key
 from s1
 where s1.md5 in (select md5 from si)
 ), sum_si_s2 as ( 
 select
 sum((s2.obj->>$10)::numeric) as sum_calls,
 sum((s2.obj->>$11)::numeric) as sum_total_time,
 $12 as key
 from s2
 where s2.md5 in (select md5 from si)
 ), sum_s1 as (
 select
 
 sum((s1.obj->>$13)::numeric) as sum_calls,
 sum((s1.obj->>$14)::numeric) as sum_total_time,
 sum((s1.obj->>$15)::numeric) as sum_rows,
 sum((s1.obj->>$16)::numeric) as sum_shared_blks_hit,
 sum((s1.obj->>$17)::numeric) as sum_shared_blks_read,
 sum((s1.obj->>$18)::numeric) as sum_shared_blks_dirtied,
 sum((s1.obj->>$19)::numeric) as sum_shared_blks_written,
 sum((s1.obj->>$20)::numeric) as sum_local_blks_hit,
 sum((s1.obj->>$21)::numeric) as sum_local_blks_read,
 sum((s1.obj->>$22)::numeric) as sum_local_blks_dirtied,
 sum((s1.obj->>$23)::numeric) as sum_local_blks_written,
 sum((s1.obj->>$24)::numeric) as sum_temp_blks_read,
 sum((s1.obj->>$25)::numeric) as sum_temp_blks_written,
 sum((s1.obj->>$26)::numeric) as sum_blk_read_time,
 sum((s1.obj->>$27)::numeric) as sum_blk_write_time,
 sum((s1.obj->>$28)::numeric) as sum_kcache_reads,
 sum((s1.obj->>$29)::numeric) as sum_kcache_writes,
 sum((s1.obj->>$30)::numeric) as sum_kcache_user_time_ms,
 sum((s1.obj->>$31)::numeric) as sum_kcache_system_time_ms,
 $32 as key
 from s1
 ), sum_s2 as (
 select
 
 sum((s2.obj->>$33)::numeric) as sum_calls,
 sum((s2.obj->>$34)::numeric) as sum_total_time,
 sum((s2.obj->>$35)::numeric) as sum_rows,
 sum((s2.obj->>$36)::numeric) as sum_shared_blks_hit,
 sum((s2.obj->>$37)::numeric) as sum_shared_blks_read,
 sum((s2.obj->>$38)::numeric) as sum_shared_blks_dirtied,
 sum((s2.obj->>$39)::numeric) as sum_shared_blks_written,
 sum((s2.obj->>$40)::numeric) as sum_local_blks_hit,
 sum((s2.obj->>$41)::numeric) as sum_local_blks_read,
 sum((s2.obj->>$42)::numeric) as sum_local_blks_dirtied,
 sum((s2.obj->>$43)::numeric) as sum_local_blks_written,
 sum((s2.obj->>$44)::numeric) as sum_temp_blks_read,
 sum((s2.obj->>$45)::numeric) as sum_temp_blks_written,
 sum((s2.obj->>$46)::numeric) as sum_blk_read_time,
 sum((s2.obj->>$47)::numeric) as sum_blk_write_time,
 sum((s2.obj->>$48)::numeric) as sum_kcache_reads,
 sum((s2.obj->>$49)::numeric) as sum_kcache_writes,
 sum((s2.obj->>$50)::numeric) as sum_kcache_user_time_ms,
 sum((s2.obj->>$51)::numeric) as sum_kcache_system_time_ms,
 $52 as key
 from s2
 ), diff1 as ( 
 select
 abs(sum_s1.sum_calls - sum_si_s1.sum_calls) as sum_calls,
 abs(sum_s1.sum_total_time - sum_si_s1.sum_total_time) as sum_total_time,
 key
 from sum_s1
 join sum_si_s1 using (key)
 ), diff2 as ( 
 select
 abs(sum_s2.sum_calls - sum_si_s2.sum_calls) as sum_calls,
 abs(sum_s2.sum_total_time - sum_si_s2.sum_total_time) as sum_total_time,
 key
 from sum_s2
 join sum_si_s2 using (key)
 ), diff_calc_rel_err as (
 select
 abs(sum_si_s2.sum_calls - sum_si_s1.sum_calls) as sum_calls,
 abs(sum_si_s2.sum_total_time - sum_si_s1.sum_total_time) as sum_total_time,
 key
 from sum_si_s2
 join sum_si_s1 using (key)
 ), calc_error as ( 
 select
 (diff1.sum_calls + diff2.sum_calls)::numeric / $53 as absolute_error_calls,
 (diff1.sum_total_time + diff2.sum_total_time)::numeric / $54 as absolute_error_total_time,
 case when (select sum_calls from diff_calc_rel_err) = $55 then $56 else
 (((diff1.sum_calls + diff2.sum_calls) / $57) * $58) / (select sum_calls from diff_calc_rel_err)
 end as relative_error_calls,
 case when (select sum_total_time from diff_calc_rel_err) = $59 then $60 else
 (((diff1.sum_total_time + diff2.sum_total_time) / $61) * $62) / (select sum_total_time from diff_calc_rel_err)
 end as relative_error_total_time
 from diff1
 join diff2 using (key)
 ), sum_delta as (
 select
 
 sum((s2.obj->>$63)::numeric - (s1.obj->>$64)::numeric) as sum_delta_calls,
 sum((s2.obj->>$65)::numeric - (s1.obj->>$66)::numeric) as sum_delta_total_time,
 sum((s2.obj->>$67)::numeric - (s1.obj->>$68)::numeric) as sum_delta_rows,
 sum((s2.obj->>$69)::numeric - (s1.obj->>$70)::numeric) as sum_delta_shared_blks_hit,
 sum((s2.obj->>$71)::numeric - (s1.obj->>$72)::numeric) as sum_delta_shared_blks_read,
 sum((s2.obj->>$73)::numeric - (s1.obj->>$74)::numeric) as sum_delta_shared_blks_dirtied,
 sum((s2.obj->>$75)::numeric - (s1.obj->>$76)::numeric) as sum_delta_shared_blks_written,
 sum((s2.obj->>$77)::numeric - (s1.obj->>$78)::numeric) as sum_delta_local_blks_hit,
 sum((s2.obj->>$79)::numeric - (s1.obj->>$80)::numeric) as sum_delta_local_blks_read,
 sum((s2.obj->>$81)::numeric - (s1.obj->>$82)::numeric) as sum_delta_local_blks_dirtied,
 sum((s2.obj->>$83)::numeric - (s1.obj->>$84)::numeric) as sum_delta_local_blks_written,
 sum((s2.obj->>$85)::numeric - (s1.obj->>$86)::numeric) as sum_delta_temp_blks_read,
 sum((s2.obj->>$87)::numeric - (s1.obj->>$88)::numeric) as sum_delta_temp_blks_written,
 sum((s2.obj->>$89)::numeric - (s1.obj->>$90)::numeric) as sum_delta_blk_read_time,
 sum((s2.obj->>$91)::numeric - (s1.obj->>$92)::numeric) as sum_delta_blk_write_time,
 sum((s2.obj->>$93)::numeric - (s1.obj->>$94)::numeric) as sum_delta_kcache_reads,
 sum((s2.obj->>$95)::numeric - (s1.obj->>$96)::numeric) as sum_delta_kcache_writes,
 sum((s2.obj->>$97)::numeric - (s1.obj->>$98)::numeric) as sum_delta_kcache_user_time_ms,
 sum((s2.obj->>$99)::numeric - (s1.obj->>$100)::numeric) as sum_delta_kcache_system_time_ms,
 $101 as _
 from s1
 join s2 using(md5)
 ), queries_pre as (
 select
 
 sum((s2.obj->>$102)::numeric) - sum((s1.obj->>$103)::numeric) as diff_calls,
 (sum((s2.obj->>$104)::numeric) - sum((s1.obj->>$105)::numeric)) / nullif((select seconds from delta ), $106) as per_sec_calls,
 (sum((s2.obj->>$107)::numeric) - sum((s1.obj->>$108)::numeric)) / nullif((sum((s2.obj->>$109)::numeric) - sum((s1.obj->>$110)::numeric)), $111) as per_call_calls,
 round($112 * (sum((s2.obj->>$113)::numeric) - sum((s1.obj->>$114)::numeric))::numeric / nullif((select sum_delta_calls from sum_delta), $115), $116) as ratio_calls,
 
 sum((s2.obj->>$117)::numeric) - sum((s1.obj->>$118)::numeric) as diff_total_time,
 (sum((s2.obj->>$119)::numeric) - sum((s1.obj->>$120)::numeric)) / nullif((select seconds from delta ), $121) as per_sec_total_time,
 (sum((s2.obj->>$122)::numeric) - sum((s1.obj->>$123)::numeric)) / nullif((sum((s2.obj->>$124)::numeric) - sum((s1.obj->>$125)::numeric)), $126) as per_call_total_time,
 round($127 * (sum((s2.obj->>$128)::numeric) - sum((s1.obj->>$129)::numeric))::numeric / nullif((select sum_delta_total_time from sum_delta), $130), $131) as ratio_total_time,
 
 sum((s2.obj->>$132)::numeric) - sum((s1.obj->>$133)::numeric) as diff_rows,
 (sum((s2.obj->>$134)::numeric) - sum((s1.obj->>$135)::numeric)) / nullif((select seconds from delta ), $136) as per_sec_rows,
 (sum((s2.obj->>$137)::numeric) - sum((s1.obj->>$138)::numeric)) / nullif((sum((s2.obj->>$139)::numeric) - sum((s1.obj->>$140)::numeric)), $141) as per_call_rows,
 round($142 * (sum((s2.obj->>$143)::numeric) - sum((s1.obj->>$144)::numeric))::numeric / nullif((select sum_delta_rows from sum_delta), $145), $146) as ratio_rows,
 
 sum((s2.obj->>$147)::numeric) - sum((s1.obj->>$148)::numeric) as diff_shared_blks_hit,
 (sum((s2.obj->>$149)::numeric) - sum((s1.obj->>$150)::numeric)) / nullif((select seconds from delta ), $151) as per_sec_shared_blks_hit,
 (sum((s2.obj->>$152)::numeric) - sum((s1.obj->>$153)::numeric)) / nullif((sum((s2.obj->>$154)::numeric) - sum((s1.obj->>$155)::numeric)), $156) as per_call_shared_blks_hit,
 round($157 * (sum((s2.obj->>$158)::numeric) - sum((s1.obj->>$159)::numeric))::numeric / nullif((select sum_delta_shared_blks_hit from sum_delta), $160), $161) as ratio_shared_blks_hit,
 
 sum((s2.obj->>$162)::numeric) - sum((s1.obj->>$163)::numeric) as diff_shared_blks_read,
 (sum((s2.obj->>$164)::numeric) - sum((s1.obj->>$165)::numeric)) / nullif((select seconds from delta ), $166) as per_sec_shared_blks_read,
 (sum((s2.obj->>$167)::numeric) - sum((s1.obj->>$168)::numeric)) / nullif((sum((s2.obj->>$169)::numeric) - sum((s1.obj->>$170)::numeric)), $171) as per_call_shared_blks_read,
 round($172 * (sum((s2.obj->>$173)::numeric) - sum((s1.obj->>$174)::numeric))::numeric / nullif((select sum_delta_shared_blks_read from sum_delta), $175), $176) as ratio_shared_blks_read,
 
 sum((s2.obj->>$177)::numeric) - sum((s1.obj->>$178)::numeric) as diff_shared_blks_dirtied,
 (sum((s2.obj->>$179)::numeric) - sum((s1.obj->>$180)::numeric)) / nullif((select seconds from delta ), $181) as per_sec_shared_blks_dirtied,
 (sum((s2.obj->>$182)::numeric) - sum((s1.obj->>$183)::numeric)) / nullif((sum((s2.obj->>$184)::numeric) - sum((s1.obj->>$185)::numeric)), $186) as per_call_shared_blks_dirtied,
 round($187 * (sum((s2.obj->>$188)::numeric) - sum((s1.obj->>$189)::numeric))::numeric / nullif((select sum_delta_shared_blks_dirtied from sum_delta), $190), $191) as ratio_shared_blks_dirtied,
 
 sum((s2.obj->>$192)::numeric) - sum((s1.obj->>$193)::numeric) as diff_shared_blks_written,
 (sum((s2.obj->>$194)::numeric) - sum((s1.obj->>$195)::numeric)) / nullif((select seconds from delta ), $196) as per_sec_shared_blks_written,
 (sum((s2.obj->>$197)::numeric) - sum((s1.obj->>$198)::numeric)) / nullif((sum((s2.obj->>$199)::numeric) - sum((s1.obj->>$200)::numeric)), $201) as per_call_shared_blks_written,
 round($202 * (sum((s2.obj->>$203)::numeric) - sum((s1.obj->>$204)::numeric))::numeric / nullif((select sum_delta_shared_blks_written from sum_delta), $205), $206) as ratio_shared_blks_written,
 
 sum((s2.obj->>$207)::numeric) - sum((s1.obj->>$208)::numeric) as diff_local_blks_hit,
 (sum((s2.obj->>$209)::numeric) - sum((s1.obj->>$210)::numeric)) / nullif((select seconds from delta ), $211) as per_sec_local_blks_hit,
 (sum((s2.obj->>$212)::numeric) - sum((s1.obj->>$213)::numeric)) / nullif((sum((s2.obj->>$214)::numeric) - sum((s1.obj->>$215)::numeric)), $216) as per_call_local_blks_hit,
 round($217 * (sum((s2.obj->>$218)::numeric) - sum((s1.obj->>$219)::numeric))::numeric / nullif((select sum_delta_local_blks_hit from sum_delta), $220), $221) as ratio_local_blks_hit,
 
 sum((s2.obj->>$222)::numeric) - sum((s1.obj->>$223)::numeric) as diff_local_blks_read,
 (sum((s2.obj->>$224)::numeric) - sum((s1.obj->>$225)::numeric)) / nullif((select seconds from delta ), $226) as per_sec_local_blks_read,
 (sum((s2.obj->>$227)::numeric) - sum((s1.obj->>$228)::numeric)) / nullif((sum((s2.obj->>$229)::numeric) - sum((s1.obj->>$230)::numeric)), $231) as per_call_local_blks_read,
 round($232 * (sum((s2.obj->>$233)::numeric) - sum((s1.obj->>$234)::numeric))::numeric / nullif((select sum_delta_local_blks_read from sum_delta), $235), $236) as ratio_local_blks_read,
 
 sum((s2.obj->>$237)::numeric) - sum((s1.obj->>$238)::numeric) as diff_local_blks_dirtied,
 (sum((s2.obj->>$239)::numeric) - sum((s1.obj->>$240)::numeric)) / nullif((select seconds from delta ), $241) as per_sec_local_blks_dirtied,
 (sum((s2.obj->>$242)::numeric) - sum((s1.obj->>$243)::numeric)) / nullif((sum((s2.obj->>$244)::numeric) - sum((s1.obj->>$245)::numeric)), $246) as per_call_local_blks_dirtied,
 round($247 * (sum((s2.obj->>$248)::numeric) - sum((s1.obj->>$249)::numeric))::numeric / nullif((select sum_delta_local_blks_dirtied from sum_delta), $250), $251) as ratio_local_blks_dirtied,
 
 sum((s2.obj->>$252)::numeric) - sum((s1.obj->>$253)::numeric) as diff_local_blks_written,
 (sum((s2.obj->>$254)::numeric) - sum((s1.obj->>$255)::numeric)) / nullif((select seconds from delta ), $256) as per_sec_local_blks_written,
 (sum((s2.obj->>$257)::numeric) - sum((s1.obj->>$258)::numeric)) / nullif((sum((s2.obj->>$259)::numeric) - sum((s1.obj->>$260)::numeric)), $261) as per_call_local_blks_written,
 round($262 * (sum((s2.obj->>$263)::numeric) - sum((s1.obj->>$264)::numeric))::numeric / nullif((select sum_delta_local_blks_written from sum_delta), $265), $266) as ratio_local_blks_written,
 
 sum((s2.obj->>$267)::numeric) - sum((s1.obj->>$268)::numeric) as diff_temp_blks_read,
 (sum((s2.obj->>$269)::numeric) - sum((s1.obj->>$270)::numeric)) / nullif((select seconds from delta ), $271) as per_sec_temp_blks_read,
 (sum((s2.obj->>$272)::numeric) - sum((s1.obj->>$273)::numeric)) / nullif((sum((s2.obj->>$274)::numeric) - sum((s1.obj->>$275)::numeric)), $276) as per_call_temp_blks_read,
 round($277 * (sum((s2.obj->>$278)::numeric) - sum((s1.obj->>$279)::numeric))::numeric / nullif((select sum_delta_temp_blks_read from sum_delta), $280), $281) as ratio_temp_blks_read,
 
 sum((s2.obj->>$282)::numeric) - sum((s1.obj->>$283)::numeric) as diff_temp_blks_written,
 (sum((s2.obj->>$284)::numeric) - sum((s1.obj->>$285)::numeric)) / nullif((select seconds from delta ), $286) as per_sec_temp_blks_written,
 (sum((s2.obj->>$287)::numeric) - sum((s1.obj->>$288)::numeric)) / nullif((sum((s2.obj->>$289)::numeric) - sum((s1.obj->>$290)::numeric)), $291) as per_call_temp_blks_written,
 round($292 * (sum((s2.obj->>$293)::numeric) - sum((s1.obj->>$294)::numeric))::numeric / nullif((select sum_delta_temp_blks_written from sum_delta), $295), $296) as ratio_temp_blks_written,
 
 sum((s2.obj->>$297)::numeric) - sum((s1.obj->>$298)::numeric) as diff_blk_read_time,
 (sum((s2.obj->>$299)::numeric) - sum((s1.obj->>$300)::numeric)) / nullif((select seconds from delta ), $301) as per_sec_blk_read_time,
 (sum((s2.obj->>$302)::numeric) - sum((s1.obj->>$303)::numeric)) / nullif((sum((s2.obj->>$304)::numeric) - sum((s1.obj->>$305)::numeric)), $306) as per_call_blk_read_time,
 round($307 * (sum((s2.obj->>$308)::numeric) - sum((s1.obj->>$309)::numeric))::numeric / nullif((select sum_delta_blk_read_time from sum_delta), $310), $311) as ratio_blk_read_time,
 
 sum((s2.obj->>$312)::numeric) - sum((s1.obj->>$313)::numeric) as diff_blk_write_time,
 (sum((s2.obj->>$314)::numeric) - sum((s1.obj->>$315)::numeric)) / nullif((select seconds from delta ), $316) as per_sec_blk_write_time,
 (sum((s2.obj->>$317)::numeric) - sum((s1.obj->>$318)::numeric)) / nullif((sum((s2.obj->>$319)::numeric) - sum((s1.obj->>$320)::numeric)), $321) as per_call_blk_write_time,
 round($322 * (sum((s2.obj->>$323)::numeric) - sum((s1.obj->>$324)::numeric))::numeric / nullif((select sum_delta_blk_write_time from sum_delta), $325), $326) as ratio_blk_write_time,
 
 sum((s2.obj->>$327)::numeric) - sum((s1.obj->>$328)::numeric) as diff_kcache_reads,
 (sum((s2.obj->>$329)::numeric) - sum((s1.obj->>$330)::numeric)) / nullif((select seconds from delta ), $331) as per_sec_kcache_reads,
 (sum((s2.obj->>$332)::numeric) - sum((s1.obj->>$333)::numeric)) / nullif((sum((s2.obj->>$334)::numeric) - sum((s1.obj->>$335)::numeric)), $336) as per_call_kcache_reads,
 round($337 * (sum((s2.obj->>$338)::numeric) - sum((s1.obj->>$339)::numeric))::numeric / nullif((select sum_delta_kcache_reads from sum_delta), $340), $341) as ratio_kcache_reads,
 
 sum((s2.obj->>$342)::numeric) - sum((s1.obj->>$343)::numeric) as diff_kcache_writes,
 (sum((s2.obj->>$344)::numeric) - sum((s1.obj->>$345)::numeric)) / nullif((select seconds from delta ), $346) as per_sec_kcache_writes,
 (sum((s2.obj->>$347)::numeric) - sum((s1.obj->>$348)::numeric)) / nullif((sum((s2.obj->>$349)::numeric) - sum((s1.obj->>$350)::numeric)), $351) as per_call_kcache_writes,
 round($352 * (sum((s2.obj->>$353)::numeric) - sum((s1.obj->>$354)::numeric))::numeric / nullif((select sum_delta_kcache_writes from sum_delta), $355), $356) as ratio_kcache_writes,
 
 sum((s2.obj->>$357)::numeric) - sum((s1.obj->>$358)::numeric) as diff_kcache_user_time_ms,
 (sum((s2.obj->>$359)::numeric) - sum((s1.obj->>$360)::numeric)) / nullif((select seconds from delta ), $361) as per_sec_kcache_user_time_ms,
 (sum((s2.obj->>$362)::numeric) - sum((s1.obj->>$363)::numeric)) / nullif((sum((s2.obj->>$364)::numeric) - sum((s1.obj->>$365)::numeric)), $366) as per_call_kcache_user_time_ms,
 round($367 * (sum((s2.obj->>$368)::numeric) - sum((s1.obj->>$369)::numeric))::numeric / nullif((select sum_delta_kcache_user_time_ms from sum_delta), $370), $371) as ratio_kcache_user_time_ms,
 
 sum((s2.obj->>$372)::numeric) - sum((s1.obj->>$373)::numeric) as diff_kcache_system_time_ms,
 (sum((s2.obj->>$374)::numeric) - sum((s1.obj->>$375)::numeric)) / nullif((select seconds from delta ), $376) as per_sec_kcache_system_time_ms,
 (sum((s2.obj->>$377)::numeric) - sum((s1.obj->>$378)::numeric)) / nullif((sum((s2.obj->>$379)::numeric) - sum((s1.obj->>$380)::numeric)), $381) as per_call_kcache_system_time_ms,
 round($382 * (sum((s2.obj->>$383)::numeric) - sum((s1.obj->>$384)::numeric))::numeric / nullif((select sum_delta_kcache_system_time_ms from sum_delta), $385), $386) as ratio_kcache_system_time_ms,
 
 s1.md5 as md5,
 s1.obj->>$387 as queryid,
 s1.obj->>$388 as query
 from s1
 join s2 using(md5)
 group by s1.md5, s1.obj->>'queryid', s1.obj->>'query'
 ), queries as (
 
 select
 row_number() over(order by diff_total_time desc) as rownum,
 *
 from queries_pre
 order by diff_total_time desc
 ), aggregated as (
 
 select
 
 sum((s2.obj->>$389)::numeric) - sum((s1.obj->>$390)::numeric) as diff_calls,
 (sum((s2.obj->>$391)::numeric) - sum((s1.obj->>$392)::numeric)) / nullif((select seconds from delta ), $393) as per_sec_calls,
 (sum((s2.obj->>$394)::numeric) - sum((s1.obj->>$395)::numeric)) / nullif((sum((s2.obj->>$396)::numeric) - sum((s1.obj->>$397)::numeric)), $398) as per_call_calls,
 round($399 * (sum((s2.obj->>$400)::numeric) - sum((s1.obj->>$401)::numeric))::numeric / nullif((select sum_delta_calls from sum_delta), $402), $403) as ratio_calls,
 
 sum((s2.obj->>$404)::numeric) - sum((s1.obj->>$405)::numeric) as diff_total_time,
 (sum((s2.obj->>$406)::numeric) - sum((s1.obj->>$407)::numeric)) / nullif((select seconds from delta ), $408) as per_sec_total_time,
 (sum((s2.obj->>$409)::numeric) - sum((s1.obj->>$410)::numeric)) / nullif((sum((s2.obj->>$411)::numeric) - sum((s1.obj->>$412)::numeric)), $413) as per_call_total_time,
 round($414 * (sum((s2.obj->>$415)::numeric) - sum((s1.obj->>$416)::numeric))::numeric / nullif((select sum_delta_total_time from sum_delta), $417), $418) as ratio_total_time,
 
 sum((s2.obj->>$419)::numeric) - sum((s1.obj->>$420)::numeric) as diff_rows,
 (sum((s2.obj->>$421)::numeric) - sum((s1.obj->>$422)::numeric)) / nullif((select seconds from delta ), $423) as per_sec_rows,
 (sum((s2.obj->>$424)::numeric) - sum((s1.obj->>$425)::numeric)) / nullif((sum((s2.obj->>$426)::numeric) - sum((s1.obj->>$427)::numeric)), $428) as per_call_rows,
 round($429 * (sum((s2.obj->>$430)::numeric) - sum((s1.obj->>$431)::numeric))::numeric / nullif((select sum_delta_rows from sum_delta), $432), $433) as ratio_rows,
 
 sum((s2.obj->>$434)::numeric) - sum((s1.obj->>$435)::numeric) as diff_shared_blks_hit,
 (sum((s2.obj->>$436)::numeric) - sum((s1.obj->>$437)::numeric)) / nullif((select seconds from delta ), $438) as per_sec_shared_blks_hit,
 (sum((s2.obj->>$439)::numeric) - sum((s1.obj->>$440)::numeric)) / nullif((sum((s2.obj->>$441)::numeric) - sum((s1.obj->>$442)::numeric)), $443) as per_call_shared_blks_hit,
 round($444 * (sum((s2.obj->>$445)::numeric) - sum((s1.obj->>$446)::numeric))::numeric / nullif((select sum_delta_shared_blks_hit from sum_delta), $447), $448) as ratio_shared_blks_hit,
 
 sum((s2.obj->>$449)::numeric) - sum((s1.obj->>$450)::numeric) as diff_shared_blks_read,
 (sum((s2.obj->>$451)::numeric) - sum((s1.obj->>$452)::numeric)) / nullif((select seconds from delta ), $453) as per_sec_shared_blks_read,
 (sum((s2.obj->>$454)::numeric) - sum((s1.obj->>$455)::numeric)) / nullif((sum((s2.obj->>$456)::numeric) - sum((s1.obj->>$457)::numeric)), $458) as per_call_shared_blks_read,
 round($459 * (sum((s2.obj->>$460)::numeric) - sum((s1.obj->>$461)::numeric))::numeric / nullif((select sum_delta_shared_blks_read from sum_delta), $462), $463) as ratio_shared_blks_read,
 
 sum((s2.obj->>$464)::numeric) - sum((s1.obj->>$465)::numeric) as diff_shared_blks_dirtied,
 (sum((s2.obj->>$466)::numeric) - sum((s1.obj->>$467)::numeric)) / nullif((select seconds from delta ), $468) as per_sec_shared_blks_dirtied,
 (sum((s2.obj->>$469)::numeric) - sum((s1.obj->>$470)::numeric)) / nullif((sum((s2.obj->>$471)::numeric) - sum((s1.obj->>$472)::numeric)), $473) as per_call_shared_blks_dirtied,
 round($474 * (sum((s2.obj->>$475)::numeric) - sum((s1.obj->>$476)::numeric))::numeric / nullif((select sum_delta_shared_blks_dirtied from sum_delta), $477), $478) as ratio_shared_blks_dirtied,
 
 sum((s2.obj->>$479)::numeric) - sum((s1.obj->>$480)::numeric) as diff_shared_blks_written,
 (sum((s2.obj->>$481)::numeric) - sum((s1.obj->>$482)::numeric)) / nullif((select seconds from delta ), $483) as per_sec_shared_blks_written,
 (sum((s2.obj->>$484)::numeric) - sum((s1.obj->>$485)::numeric)) / nullif((sum((s2.obj->>$486)::numeric) - sum((s1.obj->>$487)::numeric)), $488) as per_call_shared_blks_written,
 round($489 * (sum((s2.obj->>$490)::numeric) - sum((s1.obj->>$491)::numeric))::numeric / nullif((select sum_delta_shared_blks_written from sum_delta), $492), $493) as ratio_shared_blks_written,
 
 sum((s2.obj->>$494)::numeric) - sum((s1.obj->>$495)::numeric) as diff_local_blks_hit,
 (sum((s2.obj->>$496)::numeric) - sum((s1.obj->>$497)::numeric)) / nullif((select seconds from delta ), $498) as per_sec_local_blks_hit,
 (sum((s2.obj->>$499)::numeric) - sum((s1.obj->>$500)::numeric)) / nullif((sum((s2.obj->>$501)::numeric) - sum((s1.obj->>$502)::numeric)), $503) as per_call_local_blks_hit,
 round($504 * (sum((s2.obj->>$505)::numeric) - sum((s1.obj->>$506)::numeric))::numeric / nullif((select sum_delta_local_blks_hit from sum_delta), $507), $508) as ratio_local_blks_hit,
 
 sum((s2.obj->>$509)::numeric) - sum((s1.obj->>$510)::numeric) as diff_local_blks_read,
 (sum((s2.obj->>$511)::numeric) - sum((s1.obj->>$512)::numeric)) / nullif((select seconds from delta ), $513) as per_sec_local_blks_read,
 (sum((s2.obj->>$514)::numeric) - sum((s1.obj->>$515)::numeric)) / nullif((sum((s2.obj->>$516)::numeric) - sum((s1.obj->>$517)::numeric)), $518) as per_call_local_blks_read,
 round($519 * (sum((s2.obj->>$520)::numeric) - sum((s1.obj->>$521)::numeric))::numeric / nullif((select sum_delta_local_blks_read from sum_delta), $522), $523) as ratio_local_blks_read,
 
 sum((s2.obj->>$524)::numeric) - sum((s1.obj->>$525)::numeric) as diff_local_blks_dirtied,
 (sum((s2.obj->>$526)::numeric) - sum((s1.obj->>$527)::numeric)) / nullif((select seconds from delta ), $528) as per_sec_local_blks_dirtied,
 (sum((s2.obj->>$529)::numeric) - sum((s1.obj->>$530)::numeric)) / nullif((sum((s2.obj->>$531)::numeric) - sum((s1.obj->>$532)::numeric)), $533) as per_call_local_blks_dirtied,
 round($534 * (sum((s2.obj->>$535)::numeric) - sum((s1.obj->>$536)::numeric))::numeric / nullif((select sum_delta_local_blks_dirtied from sum_delta), $537), $538) as ratio_local_blks_dirtied,
 
 sum((s2.obj->>$539)::numeric) - sum((s1.obj->>$540)::numeric) as diff_local_blks_written,
 (sum((s2.obj->>$541)::numeric) - sum((s1.obj->>$542)::numeric)) / nullif((select seconds from delta ), $543) as per_sec_local_blks_written,
 (sum((s2.obj->>$544)::numeric) - sum((s1.obj->>$545)::numeric)) / nullif((sum((s2.obj->>$546)::numeric) - sum((s1.obj->>$547)::numeric)), $548) as per_call_local_blks_written,
 round($549 * (sum((s2.obj->>$550)::numeric) - sum((s1.obj->>$551)::numeric))::numeric / nullif((select sum_delta_local_blks_written from sum_delta), $552), $553) as ratio_local_blks_written,
 
 sum((s2.obj->>$554)::numeric) - sum((s1.obj->>$555)::numeric) as diff_temp_blks_read,
 (sum((s2.obj->>$556)::numeric) - sum((s1.obj->>$557)::numeric)) / nullif((select seconds from delta ), $558) as per_sec_temp_blks_read,
 (sum((s2.obj->>$559)::numeric) - sum((s1.obj->>$560)::numeric)) / nullif((sum((s2.obj->>$561)::numeric) - sum((s1.obj->>$562)::numeric)), $563) as per_call_temp_blks_read,
 round($564 * (sum((s2.obj->>$565)::numeric) - sum((s1.obj->>$566)::numeric))::numeric / nullif((select sum_delta_temp_blks_read from sum_delta), $567), $568) as ratio_temp_blks_read,
 
 sum((s2.obj->>$569)::numeric) - sum((s1.obj->>$570)::numeric) as diff_temp_blks_written,
 (sum((s2.obj->>$571)::numeric) - sum((s1.obj->>$572)::numeric)) / nullif((select seconds from delta ), $573) as per_sec_temp_blks_written,
 (sum((s2.obj->>$574)::numeric) - sum((s1.obj->>$575)::numeric)) / nullif((sum((s2.obj->>$576)::numeric) - sum((s1.obj->>$577)::numeric)), $578) as per_call_temp_blks_written,
 round($579 * (sum((s2.obj->>$580)::numeric) - sum((s1.obj->>$581)::numeric))::numeric / nullif((select sum_delta_temp_blks_written from sum_delta), $582), $583) as ratio_temp_blks_written,
 
 sum((s2.obj->>$584)::numeric) - sum((s1.obj->>$585)::numeric) as diff_blk_read_time,
 (sum((s2.obj->>$586)::numeric) - sum((s1.obj->>$587)::numeric)) / nullif((select seconds from delta ), $588) as per_sec_blk_read_time,
 (sum((s2.obj->>$589)::numeric) - sum((s1.obj->>$590)::numeric)) / nullif((sum((s2.obj->>$591)::numeric) - sum((s1.obj->>$592)::numeric)), $593) as per_call_blk_read_time,
 round($594 * (sum((s2.obj->>$595)::numeric) - sum((s1.obj->>$596)::numeric))::numeric / nullif((select sum_delta_blk_read_time from sum_delta), $597), $598) as ratio_blk_read_time,
 
 sum((s2.obj->>$599)::numeric) - sum((s1.obj->>$600)::numeric) as diff_blk_write_time,
 (sum((s2.obj->>$601)::numeric) - sum((s1.obj->>$602)::numeric)) / nullif((select seconds from delta ), $603) as per_sec_blk_write_time,
 (sum((s2.obj->>$604)::numeric) - sum((s1.obj->>$605)::numeric)) / nullif((sum((s2.obj->>$606)::numeric) - sum((s1.obj->>$607)::numeric)), $608) as per_call_blk_write_time,
 round($609 * (sum((s2.obj->>$610)::numeric) - sum((s1.obj->>$611)::numeric))::numeric / nullif((select sum_delta_blk_write_time from sum_delta), $612), $613) as ratio_blk_write_time,
 
 sum((s2.obj->>$614)::numeric) - sum((s1.obj->>$615)::numeric) as diff_kcache_reads,
 (sum((s2.obj->>$616)::numeric) - sum((s1.obj->>$617)::numeric)) / nullif((select seconds from delta ), $618) as per_sec_kcache_reads,
 (sum((s2.obj->>$619)::numeric) - sum((s1.obj->>$620)::numeric)) / nullif((sum((s2.obj->>$621)::numeric) - sum((s1.obj->>$622)::numeric)), $623) as per_call_kcache_reads,
 round($624 * (sum((s2.obj->>$625)::numeric) - sum((s1.obj->>$626)::numeric))::numeric / nullif((select sum_delta_kcache_reads from sum_delta), $627), $628) as ratio_kcache_reads,
 
 sum((s2.obj->>$629)::numeric) - sum((s1.obj->>$630)::numeric) as diff_kcache_writes,
 (sum((s2.obj->>$631)::numeric) - sum((s1.obj->>$632)::numeric)) / nullif((select seconds from delta ), $633) as per_sec_kcache_writes,
 (sum((s2.obj->>$634)::numeric) - sum((s1.obj->>$635)::numeric)) / nullif((sum((s2.obj->>$636)::numeric) - sum((s1.obj->>$637)::numeric)), $638) as per_call_kcache_writes,
 round($639 * (sum((s2.obj->>$640)::numeric) - sum((s1.obj->>$641)::numeric))::numeric / nullif((select sum_delta_kcache_writes from sum_delta), $642), $643) as ratio_kcache_writes,
 
 sum((s2.obj->>$644)::numeric) - sum((s1.obj->>$645)::numeric) as diff_kcache_user_time_ms,
 (sum((s2.obj->>$646)::numeric) - sum((s1.obj->>$647)::numeric)) / nullif((select seconds from delta ), $648) as per_sec_kcache_user_time_ms,
 (sum((s2.obj->>$649)::numeric) - sum((s1.obj->>$650)::numeric)) / nullif((sum((s2.obj->>$651)::numeric) - sum((s1.obj->>$652)::numeric)), $653) as per_call_kcache_user_time_ms,
 round($654 * (sum((s2.obj->>$655)::numeric) - sum((s1.obj->>$656)::numeric))::numeric / nullif((select sum_delta_kcache_user_time_ms from sum_delta), $657), $658) as ratio_kcache_user_time_ms,
 
 sum((s2.obj->>$659)::numeric) - sum((s1.obj->>$660)::numeric) as diff_kcache_system_time_ms,
 (sum((s2.obj->>$661)::numeric) - sum((s1.obj->>$662)::numeric)) / nullif((select seconds from delta ), $663) as per_sec_kcache_system_time_ms,
 (sum((s2.obj->>$664)::numeric) - sum((s1.obj->>$665)::numeric)) / nullif((sum((s2.obj->>$666)::numeric) - sum((s1.obj->>$667)::numeric)), $668) as per_call_kcache_system_time_ms,
 round($669 * (sum((s2.obj->>$670)::numeric) - sum((s1.obj->>$671)::numeric))::numeric / nullif((select sum_delta_kcache_system_time_ms from sum_delta), $672), $673) as ratio_kcache_system_time_ms,
 
 $674 as _
 from s1
 join s2 using(md5)
 ), workload_type_pre as (
 
 select
 case lower(regexp_replace(s1.obj->>$675, $676, $677))
 when $678 then
 case
 when s1.obj->>$679 ~* $680 then $681
 when s1.obj->>$682 ~* $683 then $684
 else $685
 end
 else lower(regexp_replace(s1.obj->>$686, $687, $688))
 end as word,
 
 sum((s2.obj->>$689)::numeric) - sum((s1.obj->>$690)::numeric) as diff_calls,
 (sum((s2.obj->>$691)::numeric) - sum((s1.obj->>$692)::numeric)) / nullif((select seconds from delta ), $693) as per_sec_calls,
 (sum((s2.obj->>$694)::numeric) - sum((s1.obj->>$695)::numeric)) / nullif((sum((s2.obj->>$696)::numeric) - sum((s1.obj->>$697)::numeric)), $698) as per_call_calls,
 round($699 * (sum((s2.obj->>$700)::numeric) - sum((s1.obj->>$701)::numeric))::numeric / nullif((select sum_delta_calls from sum_delta), $702), $703) as ratio_calls,
 
 sum((s2.obj->>$704)::numeric) - sum((s1.obj->>$705)::numeric) as diff_total_time,
 (sum((s2.obj->>$706)::numeric) - sum((s1.obj->>$707)::numeric)) / nullif((select seconds from delta ), $708) as per_sec_total_time,
 (sum((s2.obj->>$709)::numeric) - sum((s1.obj->>$710)::numeric)) / nullif((sum((s2.obj->>$711)::numeric) - sum((s1.obj->>$712)::numeric)), $713) as per_call_total_time,
 round($714 * (sum((s2.obj->>$715)::numeric) - sum((s1.obj->>$716)::numeric))::numeric / nullif((select sum_delta_total_time from sum_delta), $717), $718) as ratio_total_time,
 
 sum((s2.obj->>$719)::numeric) - sum((s1.obj->>$720)::numeric) as diff_rows,
 (sum((s2.obj->>$721)::numeric) - sum((s1.obj->>$722)::numeric)) / nullif((select seconds from delta ), $723) as per_sec_rows,
 (sum((s2.obj->>$724)::numeric) - sum((s1.obj->>$725)::numeric)) / nullif((sum((s2.obj->>$726)::numeric) - sum((s1.obj->>$727)::numeric)), $728) as per_call_rows,
 round($729 * (sum((s2.obj->>$730)::numeric) - sum((s1.obj->>$731)::numeric))::numeric / nullif((select sum_delta_rows from sum_delta), $732), $733) as ratio_rows,
 
 sum((s2.obj->>$734)::numeric) - sum((s1.obj->>$735)::numeric) as diff_shared_blks_hit,
 (sum((s2.obj->>$736)::numeric) - sum((s1.obj->>$737)::numeric)) / nullif((select seconds from delta ), $738) as per_sec_shared_blks_hit,
 (sum((s2.obj->>$739)::numeric) - sum((s1.obj->>$740)::numeric)) / nullif((sum((s2.obj->>$741)::numeric) - sum((s1.obj->>$742)::numeric)), $743) as per_call_shared_blks_hit,
 round($744 * (sum((s2.obj->>$745)::numeric) - sum((s1.obj->>$746)::numeric))::numeric / nullif((select sum_delta_shared_blks_hit from sum_delta), $747), $748) as ratio_shared_blks_hit,
 
 sum((s2.obj->>$749)::numeric) - sum((s1.obj->>$750)::numeric) as diff_shared_blks_read,
 (sum((s2.obj->>$751)::numeric) - sum((s1.obj->>$752)::numeric)) / nullif((select seconds from delta ), $753) as per_sec_shared_blks_read,
 (sum((s2.obj->>$754)::numeric) - sum((s1.obj->>$755)::numeric)) / nullif((sum((s2.obj->>$756)::numeric) - sum((s1.obj->>$757)::numeric)), $758) as per_call_shared_blks_read,
 round($759 * (sum((s2.obj->>$760)::numeric) - sum((s1.obj->>$761)::numeric))::numeric / nullif((select sum_delta_shared_blks_read from sum_delta), $762), $763) as ratio_shared_blks_read,
 
 sum((s2.obj->>$764)::numeric) - sum((s1.obj->>$765)::numeric) as diff_shared_blks_dirtied,
 (sum((s2.obj->>$766)::numeric) - sum((s1.obj->>$767)::numeric)) / nullif((select seconds from delta ), $768) as per_sec_shared_blks_dirtied,
 (sum((s2.obj->>$769)::numeric) - sum((s1.obj->>$770)::numeric)) / nullif((sum((s2.obj->>$771)::numeric) - sum((s1.obj->>$772)::numeric)), $773) as per_call_shared_blks_dirtied,
 round($774 * (sum((s2.obj->>$775)::numeric) - sum((s1.obj->>$776)::numeric))::numeric / nullif((select sum_delta_shared_blks_dirtied from sum_delta), $777), $778) as ratio_shared_blks_dirtied,
 
 sum((s2.obj->>$779)::numeric) - sum((s1.obj->>$780)::numeric) as diff_shared_blks_written,
 (sum((s2.obj->>$781)::numeric) - sum((s1.obj->>$782)::numeric)) / nullif((select seconds from delta ), $783) as per_sec_shared_blks_written,
 (sum((s2.obj->>$784)::numeric) - sum((s1.obj->>$785)::numeric)) / nullif((sum((s2.obj->>$786)::numeric) - sum((s1.obj->>$787)::numeric)), $788) as per_call_shared_blks_written,
 round($789 * (sum((s2.obj->>$790)::numeric) - sum((s1.obj->>$791)::numeric))::numeric / nullif((select sum_delta_shared_blks_written from sum_delta), $792), $793) as ratio_shared_blks_written,
 
 sum((s2.obj->>$794)::numeric) - sum((s1.obj->>$795)::numeric) as diff_local_blks_hit,
 (sum((s2.obj->>$796)::numeric) - sum((s1.obj->>$797)::numeric)) / nullif((select seconds from delta ), $798) as per_sec_local_blks_hit,
 (sum((s2.obj->>$799)::numeric) - sum((s1.obj->>$800)::numeric)) / nullif((sum((s2.obj->>$801)::numeric) - sum((s1.obj->>$802)::numeric)), $803) as per_call_local_blks_hit,
 round($804 * (sum((s2.obj->>$805)::numeric) - sum((s1.obj->>$806)::numeric))::numeric / nullif((select sum_delta_local_blks_hit from sum_delta), $807), $808) as ratio_local_blks_hit,
 
 sum((s2.obj->>$809)::numeric) - sum((s1.obj->>$810)::numeric) as diff_local_blks_read,
 (sum((s2.obj->>$811)::numeric) - sum((s1.obj->>$812)::numeric)) / nullif((select seconds from delta ), $813) as per_sec_local_blks_read,
 (sum((s2.obj->>$814)::numeric) - sum((s1.obj->>$815)::numeric)) / nullif((sum((s2.obj->>$816)::numeric) - sum((s1.obj->>$817)::numeric)), $818) as per_call_local_blks_read,
 round($819 * (sum((s2.obj->>$820)::numeric) - sum((s1.obj->>$821)::numeric))::numeric / nullif((select sum_delta_local_blks_read from sum_delta), $822), $823) as ratio_local_blks_read,
 
 sum((s2.obj->>$824)::numeric) - sum((s1.obj->>$825)::numeric) as diff_local_blks_dirtied,
 (sum((s2.obj->>$826)::numeric) - sum((s1.obj->>$827)::numeric)) / nullif((select seconds from delta ), $828) as per_sec_local_blks_dirtied,
 (sum((s2.obj->>$829)::numeric) - sum((s1.obj->>$830)::numeric)) / nullif((sum((s2.obj->>$831)::numeric) - sum((s1.obj->>$832)::numeric)), $833) as per_call_local_blks_dirtied,
 round($834 * (sum((s2.obj->>$835)::numeric) - sum((s1.obj->>$836)::numeric))::numeric / nullif((select sum_delta_local_blks_dirtied from sum_delta), $837), $838) as ratio_local_blks_dirtied,
 
 sum((s2.obj->>$839)::numeric) - sum((s1.obj->>$840)::numeric) as diff_local_blks_written,
 (sum((s2.obj->>$841)::numeric) - sum((s1.obj->>$842)::numeric)) / nullif((select seconds from delta ), $843) as per_sec_local_blks_written,
 (sum((s2.obj->>$844)::numeric) - sum((s1.obj->>$845)::numeric)) / nullif((sum((s2.obj->>$846)::numeric) - sum((s1.obj->>$847)::numeric)), $848) as per_call_local_blks_written,
 round($849 * (sum((s2.obj->>$850)::numeric) - sum((s1.obj->>$851)::numeric))::numeric / nullif((select sum_delta_local_blks_written from sum_delta), $852), $853) as ratio_local_blks_written,
 
 sum((s2.obj->>$854)::numeric) - sum((s1.obj->>$855)::numeric) as diff_temp_blks_read,
 (sum((s2.obj->>$856)::numeric) - sum((s1.obj->>$857)::numeric)) / nullif((select seconds from delta ), $858) as per_sec_temp_blks_read,
 (sum((s2.obj->>$859)::numeric) - sum((s1.obj->>$860)::numeric)) / nullif((sum((s2.obj->>$861)::numeric) - sum((s1.obj->>$862)::numeric)), $863) as per_call_temp_blks_read,
 round($864 * (sum((s2.obj->>$865)::numeric) - sum((s1.obj->>$866)::numeric))::numeric / nullif((select sum_delta_temp_blks_read from sum_delta), $867), $868) as ratio_temp_blks_read,
 
 sum((s2.obj->>$869)::numeric) - sum((s1.obj->>$870)::numeric) as diff_temp_blks_written,
 (sum((s2.obj->>$871)::numeric) - sum((s1.obj->>$872)::numeric)) / nullif((select seconds from delta ), $873) as per_sec_temp_blks_written,
 (sum((s2.obj->>$874)::numeric) - sum((s1.obj->>$875)::numeric)) / nullif((sum((s2.obj->>$876)::numeric) - sum((s1.obj->>$877)::numeric)), $878) as per_call_temp_blks_written,
 round($879 * (sum((s2.obj->>$880)::numeric) - sum((s1.obj->>$881)::numeric))::numeric / nullif((select sum_delta_temp_blks_written from sum_delta), $882), $883) as ratio_temp_blks_written,
 
 sum((s2.obj->>$884)::numeric) - sum((s1.obj->>$885)::numeric) as diff_blk_read_time,
 (sum((s2.obj->>$886)::numeric) - sum((s1.obj->>$887)::numeric)) / nullif((select seconds from delta ), $888) as per_sec_blk_read_time,
 (sum((s2.obj->>$889)::numeric) - sum((s1.obj->>$890)::numeric)) / nullif((sum((s2.obj->>$891)::numeric) - sum((s1.obj->>$892)::numeric)), $893) as per_call_blk_read_time,
 round($894 * (sum((s2.obj->>$895)::numeric) - sum((s1.obj->>$896)::numeric))::numeric / nullif((select sum_delta_blk_read_time from sum_delta), $897), $898) as ratio_blk_read_time,
 
 sum((s2.obj->>$899)::numeric) - sum((s1.obj->>$900)::numeric) as diff_blk_write_time,
 (sum((s2.obj->>$901)::numeric) - sum((s1.obj->>$902)::numeric)) / nullif((select seconds from delta ), $903) as per_sec_blk_write_time,
 (sum((s2.obj->>$904)::numeric) - sum((s1.obj->>$905)::numeric)) / nullif((sum((s2.obj->>$906)::numeric) - sum((s1.obj->>$907)::numeric)), $908) as per_call_blk_write_time,
 round($909 * (sum((s2.obj->>$910)::numeric) - sum((s1.obj->>$911)::numeric))::numeric / nullif((select sum_delta_blk_write_time from sum_delta), $912), $913) as ratio_blk_write_time,
 
 sum((s2.obj->>$914)::numeric) - sum((s1.obj->>$915)::numeric) as diff_kcache_reads,
 (sum((s2.obj->>$916)::numeric) - sum((s1.obj->>$917)::numeric)) / nullif((select seconds from delta ), $918) as per_sec_kcache_reads,
 (sum((s2.obj->>$919)::numeric) - sum((s1.obj->>$920)::numeric)) / nullif((sum((s2.obj->>$921)::numeric) - sum((s1.obj->>$922)::numeric)), $923) as per_call_kcache_reads,
 round($924 * (sum((s2.obj->>$925)::numeric) - sum((s1.obj->>$926)::numeric))::numeric / nullif((select sum_delta_kcache_reads from sum_delta), $927), $928) as ratio_kcache_reads,
 
 sum((s2.obj->>$929)::numeric) - sum((s1.obj->>$930)::numeric) as diff_kcache_writes,
 (sum((s2.obj->>$931)::numeric) - sum((s1.obj->>$932)::numeric)) / nullif((select seconds from delta ), $933) as per_sec_kcache_writes,
 (sum((s2.obj->>$934)::numeric) - sum((s1.obj->>$935)::numeric)) / nullif((sum((s2.obj->>$936)::numeric) - sum((s1.obj->>$937)::numeric)), $938) as per_call_kcache_writes,
 round($939 * (sum((s2.obj->>$940)::numeric) - sum((s1.obj->>$941)::numeric))::numeric / nullif((select sum_delta_kcache_writes from sum_delta), $942), $943) as ratio_kcache_writes,
 
 sum((s2.obj->>$944)::numeric) - sum((s1.obj->>$945)::numeric) as diff_kcache_user_time_ms,
 (sum((s2.obj->>$946)::numeric) - sum((s1.obj->>$947)::numeric)) / nullif((select seconds from delta ), $948) as per_sec_kcache_user_time_ms,
 (sum((s2.obj->>$949)::numeric) - sum((s1.obj->>$950)::numeric)) / nullif((sum((s2.obj->>$951)::numeric) - sum((s1.obj->>$952)::numeric)), $953) as per_call_kcache_user_time_ms,
 round($954 * (sum((s2.obj->>$955)::numeric) - sum((s1.obj->>$956)::numeric))::numeric / nullif((select sum_delta_kcache_user_time_ms from sum_delta), $957), $958) as ratio_kcache_user_time_ms,
 
 sum((s2.obj->>$959)::numeric) - sum((s1.obj->>$960)::numeric) as diff_kcache_system_time_ms,
 (sum((s2.obj->>$961)::numeric) - sum((s1.obj->>$962)::numeric)) / nullif((select seconds from delta ), $963) as per_sec_kcache_system_time_ms,
 (sum((s2.obj->>$964)::numeric) - sum((s1.obj->>$965)::numeric)) / nullif((sum((s2.obj->>$966)::numeric) - sum((s1.obj->>$967)::numeric)), $968) as per_call_kcache_system_time_ms,
 round($969 * (sum((s2.obj->>$970)::numeric) - sum((s1.obj->>$971)::numeric))::numeric / nullif((select sum_delta_kcache_system_time_ms from sum_delta), $972), $973) as ratio_kcache_system_time_ms,
 
 $974 as _
 from s1
 join s2 using(md5)
 group by 1
 ), workload_type as (
 select
 row_number() over(order by diff_total_time desc) as rownum,
 *
 from workload_type_pre
 order by diff_total_time desc
 )
 select json_build_object(
 $975::text, (select j->$976 from snap1),
 $977::text, (select j->$978 from snap2),
 $979::text, ( select (snap2.j->>$980)::numeric - (snap1.j->>$981)::numeric from snap1, snap2 ),
 $982::text, ( select (snap2.j->>$983)::timestamptz - (snap1.j->>$984)::timestamptz from snap1, snap2 ),
 $985::text, (select absolute_error_calls from calc_error),
 $986::text, (select absolute_error_total_time from calc_error),
 $987::text, (select relative_error_calls from calc_error),
 $988::text, (select relative_error_total_time from calc_error),
 $989, json_object_agg(queries.rownum, queries.*),
 $990, (select json_object_agg($991, aggregated.*) from aggregated),
 $992, (select json_object_agg(workload_type.rownum, workload_type.*) from workload_type)
 )
 from queries
