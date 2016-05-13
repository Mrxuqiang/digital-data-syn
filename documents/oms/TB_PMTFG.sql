/*
================================================================================
表结构代码:TB_PMTFG
表结构名称:交款返券单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFG;
drop index AK_TB_PMTFG;
drop table TB_PMTFG;
create table TB_PMTFG  (
   PMTFG_ID             INTEGER                         not null,  /*交款返券生效时间ID*/
   PMTFG001             INTEGER                         not null,  /*交款返券单ID      */
   PMTFG002             DATE                            not null,  /*开始日期          */
   PMTFG003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTFG004             DATE                            not null,  /*结束日期          */
   PMTFG005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFG primary key (PMTFG_ID)
);
create unique index AK_TB_PMTFG on TB_PMTFG (PMTFG001,PMTFG002,PMTFG003);
create sequence SEQ_TB_PMTFG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFG to public;
grant index  on TB_PMTFG to public;
grant update on TB_PMTFG to public; 
grant delete on TB_PMTFG to public;  
grant insert on TB_PMTFG to public; 
grant select on SEQ_TB_PMTFG to public;   