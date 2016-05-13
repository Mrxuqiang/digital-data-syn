/*
================================================================================
表结构代码:TB_PMTBE
表结构名称:单品特价单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTBE;
drop index AK_TB_PMTBE;
drop table TB_PMTBE;
create table TB_PMTBE  (
   PMTBE_ID             INTEGER                         not null,  /*折扣生效时间ID    */
   PMTBE001             INTEGER                         not null,  /*单品特价单ID      */
   PMTBE002             DATE                            not null,  /*开始日期          */
   PMTBE003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTBE004             DATE                            not null,  /*结束日期          */
   PMTBE005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTBE primary key (PMTBE_ID)
);
create unique index AK_TB_PMTBE on TB_PMTBE (PMTBE001,PMTBE002,PMTBE003);
create sequence SEQ_TB_PMTBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBE to public;
grant index  on TB_PMTBE to public;
grant update on TB_PMTBE to public; 
grant delete on TB_PMTBE to public;  
grant insert on TB_PMTBE to public; 
grant select on SEQ_TB_PMTBE to public;   