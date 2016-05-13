/*
================================================================================
表结构代码:TB_PMTCK
表结构名称:折扣单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCK;
drop index AK_TB_PMTCK;
drop table TB_PMTCK;
create table TB_PMTCK  (
   PMTCK_ID             INTEGER                         not null,    /*折扣不参与规则ID  */
   PMTCK001             INTEGER                         not null,     /*单品折扣单ID      */
   PMTCK002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTCK003             INTEGER,                                        /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCK primary key (PMTCK_ID)
);
create unique index AK_TB_PMTCK on TB_PMTCK (PMTCK001,PMTCK002,PMTCK003);
create sequence SEQ_TB_PMTCK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCK to public;
grant index  on TB_PMTCK to public;
grant update on TB_PMTCK to public; 
grant delete on TB_PMTCK to public;  
grant insert on TB_PMTCK to public; 
grant select on SEQ_TB_PMTCK to public;   