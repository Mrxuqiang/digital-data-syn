/*
================================================================================
表结构代码:TB_PMTCE
表结构名称:单品折扣单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCE;
drop index AK_TB_PMTCE;
drop table TB_PMTCE;
create table TB_PMTCE  (
   PMTCE_ID             INTEGER                         not null,  /*折扣生效时间ID    */
   PMTCE001             INTEGER                         not null,  /*单品折扣单ID      */
   PMTCE002             DATE                            not null,  /*开始日期          */
   PMTCE003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTCE004             DATE                            not null,  /*结束日期          */
   PMTCE005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCE primary key (PMTCE_ID)
);
create unique index AK_TB_PMTCE on TB_PMTCE (PMTCE001,PMTCE002,PMTCE003);
create sequence SEQ_TB_PMTCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCE to public;
grant index  on TB_PMTCE to public;
grant update on TB_PMTCE to public; 
grant delete on TB_PMTCE to public;  
grant insert on TB_PMTCE to public; 
grant select on SEQ_TB_PMTCE to public;   