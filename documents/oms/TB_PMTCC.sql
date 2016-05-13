/*
================================================================================
表结构代码:TB_PMTCC
表结构名称:单品折扣单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCC;
drop index AK_TB_PMTCC;
drop table TB_PMTCC;
create table TB_PMTCC  (
   PMTCC_ID             INTEGER                         not null,  /*折扣不参与规则ID  */
   PMTCC001             INTEGER                         not null,  /*单品折扣单ID      */
   PMTCC002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTCC003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCC primary key (PMTCC_ID)
);
create unique index AK_TB_PMTCC on TB_PMTCC (PMTCC001,PMTCC002,PMTCC003);
create sequence SEQ_TB_PMTCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCC to public;
grant index  on TB_PMTCC to public;
grant update on TB_PMTCC to public; 
grant delete on TB_PMTCC to public;  
grant insert on TB_PMTCC to public; 
grant select on SEQ_TB_PMTCC to public;   