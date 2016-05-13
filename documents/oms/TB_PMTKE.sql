/*
================================================================================
表结构代码:TB_PMTKE
表结构名称:抽奖活动单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTKE;
drop index AK_TB_PMTKE;
drop table TB_PMTKE;
create table TB_PMTKE  (
   PMTKE_ID             INTEGER                         not null,  /*生效时间ID        */
   PMTKE001             INTEGER                         not null,  /*抽奖活动单ID      */
   PMTKE002             DATE                            not null,  /*开始日期          */
   PMTKE003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTKE004             DATE                            not null,  /*结束日期          */
   PMTKE005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTKE primary key (PMTKE_ID)
);
create unique index AK_TB_PMTKE on TB_PMTKE (PMTKE001,PMTKE002,PMTKE003);
create sequence SEQ_TB_PMTKE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKE to public;
grant index  on TB_PMTKE to public;
grant update on TB_PMTKE to public; 
grant delete on TB_PMTKE to public;  
grant insert on TB_PMTKE to public; 
grant select on SEQ_TB_PMTKE to public;   