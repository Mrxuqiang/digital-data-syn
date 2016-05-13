/*
================================================================================
表结构代码:TB_EXPAD
表结构名称:报销明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_EXPAD;
drop index AK_TB_EXPAD;
drop table TB_EXPAD;
create table TB_EXPAD  (
   EXPAD_ID             INTEGER                         not null,  /*报销明细ID           */
   EXPAD001             INTEGER                         not null,  /*报销主表ID       */
   EXPAD002             VARCHAR2(255)                   not null,  /*摘要                */
   EXPAD003             INTEGER                         not null,  /*收支异动项           */
   EXPAD004             INTEGER                         not null,  /*会计科目           */
   EXPAD005             NUMBER(16,2),                              /*报销金额       */
   EXPAD006             NUMBER(16,2),                              /*本币报销金额   */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_EXPAD primary key (EXPAD_ID)
);
create sequence SEQ_TB_EXPAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAD to public;
grant index  on TB_EXPAD to public;
grant update on TB_EXPAD to public; 
grant delete on TB_EXPAD to public;  
grant insert on TB_EXPAD to public; 
grant select on SEQ_TB_EXPAD to public;   