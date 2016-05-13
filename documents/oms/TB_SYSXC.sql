/*
================================================================================
表结构代码:TB_SYSXC
表结构名称: 流程任务审批角色-备份表
表结构目的:
================================================================================
*/
drop table TB_SYSXC;
create table TB_SYSXC  (
   SYSXC001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSXC002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSXC003        VARCHAR2(30)    not null,  /*角色编号         */
   SYSXC004        VARCHAR2(50),              /*角色名称         */
   SYSXC091        VARCHAR2(30),              /*备份流水         */
   SYSXC092        VARCHAR2(20),               /*作业编号         */
   SYSXC093        VARCHAR2(10),               /*库名             */
   SYSXC094        VARCHAR2(30),               /*流水编号         */   
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSXC primary key (SYSXC001,SYSXC002,SYSXC091)
);
grant select,index,update,delete,insert on TB_SYSXC to public;