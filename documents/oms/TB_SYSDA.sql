/*
================================================================================
表结构代码:TB_SYSDA
表结构名称:角色表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSDA;
drop index AK_TB_SYSDA;
drop table TB_SYSDA;
create table TB_SYSDA  (
   SYSDA_ID             INTEGER                         not null,  /*角色ID           */
   SYSDA001             VARCHAR2(10)                    not null,  /*角色代码         */
   SYSDA002             VARCHAR2(40)                    not null,  /*角色名称         */
   SYSDA003             VARCHAR2(1),                               /*是否有效         */
   SYSDA004             VARCHAR2(30),                              /*流程图代码       */
   SYSDA005             VARCHAR2(2),                               /*角色属性        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDA primary key (SYSDA_ID)
);
create unique index AK_TB_SYSDA on TB_SYSDA (SYSDA001);
create sequence SEQ_TB_SYSDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDA to public;
grant index  on TB_SYSDA to public;
grant update on TB_SYSDA to public; 
grant delete on TB_SYSDA to public;  
grant insert on TB_SYSDA to public; 
grant select on SEQ_TB_SYSDA to public;   