/*
================================================================================
表结构代码:TB_PMTWC
表结构名称:拼单折扣单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTWC;
drop index AK_TB_PMTWC;
drop table TB_PMTWC;
create table TB_PMTWC  (
   PMTWC_ID             INTEGER                         not null,  /*拼单折扣生效时间ID*/
   PMTWC001             INTEGER                         not null,  /*拼单折扣单ID      */
   PMTWC002             DATE                            not null,  /*开始日期          */
   PMTWC003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTWC004             DATE                            not null,  /*结束日期          */
   PMTWC005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTWC primary key (PMTWC_ID)
);
create unique index AK_TB_PMTWC on TB_PMTWC (PMTWC001,PMTWC002,PMTWC003);
create sequence SEQ_TB_PMTWC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTWC to public;
grant index  on TB_PMTWC to public;
grant update on TB_PMTWC to public; 
grant delete on TB_PMTWC to public;  
grant insert on TB_PMTWC to public; 
grant select on SEQ_TB_PMTWC to public;   