/*
================================================================================
表结构代码:TB_SYSXK
表结构名称: 任务审批员工表
表结构目的:
================================================================================
*/

drop table TB_SYSXK;
create table TB_SYSXK  (
   SYSXK001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSXK002        VARCHAR2(30)    not null,  /*作业流水编号     */
   SYSXK003        VARCHAR2(20)    not null,  /*流程编号         */
   SYSXK004        VARCHAR2(30),              /*用户编号         */
   SYSXK005        VARCHAR2(30),              /*发起角色         */
   SYSXK006        VARCHAR2(30),              /*发起用户         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSXK primary key (SYSXK001,SYSXK002,SYSXK003,SYSXK004)
);
grant select,index,update,delete,insert on TB_SYSXK to public;