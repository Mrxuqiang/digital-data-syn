/*
================================================================================
表结构代码:TB_SYSDB
表结构名称:角色程序表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSDB;
drop index AK_TB_SYSDB;
drop table TB_SYSDB;
create table TB_SYSDB  (
   SYSDB_ID             INTEGER                         not null,  /*角色程序ID       */
   SYSDB001             INTEGER                         not null,  /*角色ID           */
   SYSDB002             INTEGER                         not null,  /*菜单ID           */
   SYSDB003             VARCHAR2(500)                   not null,  /*允许运行功能     */
   SYSDB004             VARCHAR2(1)                     not null,  /*非用户本身资料处理 */
   SYSDB005             VARCHAR2(1)                     not null,  /*非用户部门资料处理 */
   SYSDB006             VARCHAR2(1),                               /*单身处理        */
   SYSDB008             VARCHAR2(1),                               /*在树形菜单上可见   */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDB primary key (SYSDB_ID)
);
create unique index AK_TB_SYSDB on TB_SYSDB (SYSDB001,SYSDB002);
create sequence SEQ_TB_SYSDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDB to public;
grant index  on TB_SYSDB to public;
grant update on TB_SYSDB to public; 
grant delete on TB_SYSDB to public;  
grant insert on TB_SYSDB to public; 
grant select on SEQ_TB_SYSDB to public;   