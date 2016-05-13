/*
================================================================================
表结构代码:TB_SYSXD
表结构名称: 流程任务审批角色-备份表
表结构目的:
================================================================================
*/
drop table TB_SYSXD;
create table TB_SYSXD  (
   SYSXD001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSXD002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSXD003        VARCHAR2(30)    not null,  /*角色编号         */
   SYSXD004        VARCHAR2(30),              /*用户账号         */
   SYSXD005        VARCHAR2(50),              /*用户名称         */
   SYSXD091        VARCHAR2(30),              /*备份流水         */
   SYSXD092        VARCHAR2(20),              /*作业编号         */
   SYSXD093        VARCHAR2(10),              /*库名             */
   SYSXD094        VARCHAR2(30),              /*作业流水号       */   
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSXD primary key (SYSXD001,SYSXD002,SYSXD003,SYSXD004,SYSXD091)
);
grant select,index,update,delete,insert on TB_SYSXD to public;
