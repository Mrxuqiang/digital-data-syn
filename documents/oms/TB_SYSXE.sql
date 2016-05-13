/*
================================================================================
表结构代码:TB_SYSXE
表结构名称: 流程节点入口
表结构目的:
================================================================================
*/
drop table TB_SYSXE;
create table TB_SYSXE  (
   SYSXE001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSXE002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSXE003        NUMBER(3),                 /*序号             */
   SYSXE004        VARCHAR2(50),              /*连接线名称       */
   SYSXE005        VARCHAR2(50),              /*连接线另一端节点名称 */
   SYSXE006        VARCHAR2(1),               /*是否送达         */
   SYSXE091        VARCHAR2(30),                    /*备份流水         */
   SYSXE092        VARCHAR2(20),               /*作业编号         */
   SYSXE093        VARCHAR2(10),               /*库名             */
   SYSXE094        VARCHAR2(30),               /*作业流水号        */   
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSXE primary key (SYSXE001,SYSXE002,SYSXE003,SYSXE091)
);
grant select,index,update,delete,insert on TB_SYSXE to public;
