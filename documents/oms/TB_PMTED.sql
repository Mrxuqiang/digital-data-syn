/*
================================================================================
表结构代码:TB_PMTED
表结构名称:交款折扣单不参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTED;
drop index AK_TB_PMTED;
drop table TB_PMTED;
create table TB_PMTED  (
   PMTED_ID             INTEGER                         not null,  /*折扣不参与规则ID  */
   PMTED001             INTEGER                         not null,  /*交款折扣单ID      */
   PMTED002             VARCHAR2(1)                     not null,  /*不参与对象类型    */
   PMTED003             INTEGER,                                   /*不参与对象ID      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTED primary key (PMTED_ID)
);
create unique index AK_TB_PMTED on TB_PMTED (PMTED001,PMTED002,PMTED003);
create sequence SEQ_TB_PMTED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTED to public;
grant index  on TB_PMTED to public;
grant update on TB_PMTED to public; 
grant delete on TB_PMTED to public;  
grant insert on TB_PMTED to public; 
grant select on SEQ_TB_PMTED to public;   