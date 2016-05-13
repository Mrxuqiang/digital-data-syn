/*
================================================================================
表结构代码:TB_SYSDF
表结构名称:用户角色表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSDF;
drop index AK_TB_SYSDF;
drop table TB_SYSDF;
create table TB_SYSDF  (
   SYSDF_ID             INTEGER                         not null,  /*用户角色ID       */
   SYSDF001             INTEGER                         not null,  /*用户权限ID       */
   SYSDF002             INTEGER                         not null,  /*角色ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDF primary key (SYSDF_ID)
);
create unique index AK_TB_SYSDF on TB_SYSDF (SYSDF001,SYSDF002);
create sequence SEQ_TB_SYSDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDF to public;
grant index  on TB_SYSDF to public;
grant update on TB_SYSDF to public; 
grant delete on TB_SYSDF to public;  
grant insert on TB_SYSDF to public; 
grant select on SEQ_TB_SYSDF to public;   