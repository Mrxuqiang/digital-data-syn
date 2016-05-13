/*
================================================================================
表结构代码:TB_SYSYD
表结构名称: 流程任务审批角色
表结构目的:
================================================================================
*/

drop table TB_SYSYD;
create table TB_SYSYD  (
   SYSYD001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSYD002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSYD003        VARCHAR2(30)    not null,  /*角色编号         */
   SYSYD004        VARCHAR2(30),              /*用户账号         */
   SYSYD005        VARCHAR2(50),              /*用户名称         */
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSYD primary key (SYSYD001,SYSYD002,SYSYD003,SYSYD004)
);
grant select,index,update,delete,insert on TB_SYSYD to public;
