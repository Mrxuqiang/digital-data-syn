/*
================================================================================
表结构代码:TB_INVFM
表结构名称:盘点损溢单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFM;
drop index AK_TB_INVFM;
drop table TB_INVFM;
create table TB_INVFM  (
   INVFM_ID         INTEGER               not null,       /*盘差损溢单ID     */
   INVFM001         INTEGER               not null,       /*单别             */
   INVFM002         VARCHAR2(30)          not null,       /*盘差损溢单号     */
   INVFM003         INTEGER               not null,       /*盘点汇总单ID     */--201113 modify by xiechun
   INVFM004         DATE                  not null,       /*盘点日期         */
   INVFM005         INTEGER               not null,       /*营运组织         */
   INVFM006         INTEGER               not null,       /*仓库             */
   INVFM007         INTEGER               not null,       /*货区             */--20111013 mark by xiechun
   INVFM008         INTEGER               not null,       /*货道             */--20111013 mark by xiechun
   INVFM009         INTEGER               not null,       /*货架             */--20111013 mark by xiechun
   INVFM010         INTEGER               not null,       /*货位             */--20111013 mark by xiechun
   INVFM011         INTEGER,                              /*制表人           */
   INVFM012         DATE,                                 /*汇总日期         */
   INVFM013         VARCHAR2(1),                          /*审核状态         */
   INVFM014         INTEGER,                              /*录入人           */
   INVFM015         DATE,                                 /*录入时间         */
   INVFM016         INTEGER,                              /*审核人           */
   INVFM017         DATE,                                 /*审核时间         */
   CREATE_USER      VARCHAR2(12),                         /*建立人员         */
   USER_GROUP       VARCHAR2(12),                         /*建立人员部门     */                               
   CREATE_DATE      DATE,                                 /*建立日期         */
   MODIFIER         VARCHAR2(12),                         /*修改人员         */
   MODI_DATE        DATE,                                 /*修改日期         */
   FLAG             NUMBER(1),                            /*资料状态         */
   constraint PK_TB_INVFM primary key (INVFM_ID)
);
create unique index AK_TB_INVFM on TB_INVFM (INVFM002, INVFM005);
create sequence SEQ_TB_INVFM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFM to public;
grant index  on TB_INVFM to public;
grant update on TB_INVFM to public; 
grant delete on TB_INVFM to public;  
grant insert on TB_INVFM to public; 
grant select on SEQ_TB_INVFM to public;   