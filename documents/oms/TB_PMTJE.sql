/*
================================================================================
表结构代码:TB_PMTJE
表结构名称:单品组合单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTJE;
drop index AK_TB_PMTJE;
drop table TB_PMTJE;
create table TB_PMTJE  (
   PMTJE_ID             INTEGER                         not null,  /*单品组合生效时间ID*/
   PMTJE001             INTEGER                         not null,  /*单品组合单ID      */
   PMTJE002             DATE                            not null,  /*开始日期          */
   PMTJE003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTJE004             DATE                            not null,  /*结束日期          */
   PMTJE005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTJE primary key (PMTJE_ID)
);
create unique index AK_TB_PMTJE on TB_PMTJE (PMTJE001,PMTJE002,PMTJE003);
create sequence SEQ_TB_PMTJE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJE to public;
grant index  on TB_PMTJE to public;
grant update on TB_PMTJE to public; 
grant delete on TB_PMTJE to public;  
grant insert on TB_PMTJE to public; 
grant select on SEQ_TB_PMTJE to public;   