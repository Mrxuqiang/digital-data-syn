/*
================================================================================
表结构代码:TB_PMTGG
表结构名称:累计返券单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGG;
drop index AK_TB_PMTGG;
drop table TB_PMTGG;
create table TB_PMTGG  (
   PMTGG_ID             INTEGER                         not null,  /*累计返券生效时间ID*/
   PMTGG001             INTEGER                         not null,  /*累计返券单ID      */
   PMTGG002             DATE                            not null,  /*开始日期          */
   PMTGG003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTGG004             DATE                            not null,  /*结束日期          */
   PMTGG005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGG primary key (PMTGG_ID)
);
create unique index AK_TB_PMTGG on TB_PMTGG (PMTGG001,PMTGG002,PMTGG003);
create sequence SEQ_TB_PMTGG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGG to public;
grant index  on TB_PMTGG to public;
grant update on TB_PMTGG to public; 
grant delete on TB_PMTGG to public;  
grant insert on TB_PMTGG to public; 
grant select on SEQ_TB_PMTGG to public;   