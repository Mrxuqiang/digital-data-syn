/*
================================================================================
表结构代码:TB_PMTEG
表结构名称:交款折扣单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTEG;
drop index AK_TB_PMTEG;
drop table TB_PMTEG;
create table TB_PMTEG  (
   PMTEG_ID             INTEGER                         not null,  /*交款折扣生效时间ID*/
   PMTEG001             INTEGER                         not null,  /*交款折扣单ID      */
   PMTEG002             DATE                            not null,  /*开始日期          */
   PMTEG003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTEG004             DATE                            not null,  /*结束日期          */
   PMTEG005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTEG primary key (PMTEG_ID)
);
create unique index AK_TB_PMTEG on TB_PMTEG (PMTEG001,PMTEG002,PMTEG003);
create sequence SEQ_TB_PMTEG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEG to public;
grant index  on TB_PMTEG to public;
grant update on TB_PMTEG to public; 
grant delete on TB_PMTEG to public;  
grant insert on TB_PMTEG to public; 
grant select on SEQ_TB_PMTEG to public;   