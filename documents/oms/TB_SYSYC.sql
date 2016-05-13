/*
================================================================================
表结构代码:TB_SYSYC
表结构名称: 流程任务审批角色
表结构目的:
================================================================================
*/

drop table TB_SYSYC;
create table TB_SYSYC  (
   SYSYC001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSYC002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSYC003        VARCHAR2(30)    not null,  /*角色编号         */
   SYSYC004        VARCHAR2(50),              /*角色名称         */
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSYC primary key (SYSYC001,SYSYC002,SYSYC003)
);
grant select,index,update,delete,insert on TB_SYSYC to public;
