/*
================================================================================
表结构代码:TB_PMTUB
表结构名称:促销变更单变更时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTUB;
drop index AK_TB_PMTUB;
drop table TB_PMTUB;
create table TB_PMTUB  (
   PMTUB_ID             INTEGER                         not null,  /*促销变更时间ID    */
   PMTUB001             INTEGER                         not null,  /*促销变更单ID      */
   PMTUB002             DATE                            not null,  /*开始日期          */
   PMTUB003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTUB004             DATE                            not null,  /*结束日期          */
   PMTUB005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTUB primary key (PMTUB_ID)
);
create unique index AK_TB_PMTUB on TB_PMTUB (PMTUB001,PMTUB002,PMTUB003);
create sequence SEQ_TB_PMTUB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTUB to public;
grant index  on TB_PMTUB to public;
grant update on TB_PMTUB to public; 
grant delete on TB_PMTUB to public;  
grant insert on TB_PMTUB to public; 
grant select on SEQ_TB_PMTUB to public;   