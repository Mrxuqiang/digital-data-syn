/*
================================================================================
表结构代码:TB_PMTGL
表结构名称:累计返券单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGL;
drop index AK_TB_PMTGL;
drop table TB_PMTGL;
create table TB_PMTGL  (
   PMTGL_ID             INTEGER                         not null,  /*返券不参与规则ID  */
   PMTGL001             INTEGER                         not null,  /*累计返券单ID      */
   PMTGL002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTGL003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGL primary key (PMTGL_ID)
);
create unique index AK_TB_PMTGL on TB_PMTGL (PMTGL001,PMTGL002,PMTGL003);
create sequence SEQ_TB_PMTGL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGL to public;
grant index  on TB_PMTGL to public;
grant update on TB_PMTGL to public; 
grant delete on TB_PMTGL to public;  
grant insert on TB_PMTGL to public; 
grant select on SEQ_TB_PMTGL to public;   