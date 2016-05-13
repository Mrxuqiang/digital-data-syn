/*
================================================================================
表结构代码:TB_DRPAD
表结构名称:抵消方案主表  
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPAD;
drop index AK_TB_DRPAD;
drop table TB_DRPAD;
create table TB_DRPAD  (
   DRPAD_ID             INTEGER                         not null,  /*抵消方案主ID          */
   DRPAD001             VARCHAR2(10)                    not null,  /*方案编码              */   
   DRPAD002             VARCHAR2(30)                    not null,  /*方案名称              */
   DRPAD003             INTEGER                         not null,  /*创建公司ID            */
   DRPAD004             VARCHAR2(255),                             /*备注                  */             
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_DRPAD primary key (DRPAD_ID)
);
create unique index AK_TB_DRPAD on TB_DRPAD (DRPAD001);
create sequence SEQ_TB_DRPAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAD to public;
grant index  on TB_DRPAD to public;
grant update on TB_DRPAD to public; 
grant delete on TB_DRPAD to public;  
grant insert on TB_DRPAD to public; 
grant select on SEQ_TB_DRPAD to public;   