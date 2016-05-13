/*
================================================================================
表结构代码:TB_SYSAB
表结构名称:系统模块表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAB;
drop index AK_TB_SYSAB;
drop table TB_SYSAB;
create table TB_SYSAB  (
   SYSAB_ID             INTEGER                         not null,  /*模块ID           */
   SYSAB001             INTEGER                         not null,  /*语言ID           */
   SYSAB002             VARCHAR2(4)                     not null,  /*模块代码         */
   SYSAB003             VARCHAR2(60)                    not null,  /*模块名称         */
   SYSAB004             VARCHAR2(255),                             /*模块运行路径     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAB primary key (SYSAB_ID)
);
create unique index AK_TB_SYSAB on TB_SYSAB (SYSAB001,SYSAB002);
create sequence SEQ_TB_SYSAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAB to public;
grant index  on TB_SYSAB to public;
grant update on TB_SYSAB to public; 
grant delete on TB_SYSAB to public;  
grant insert on TB_SYSAB to public; 
grant select on SEQ_TB_SYSAB to public;   