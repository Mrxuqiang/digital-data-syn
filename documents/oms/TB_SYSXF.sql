/*
================================================================================
表结构代码:TB_SYSXF
表结构名称: 流程节点出口
表结构目的:
================================================================================
*/
drop table TB_SYSXF;
create table TB_SYSXF  (
   SYSXF001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSXF002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSXF003        NUMBER(3),                 /*序号             */
   SYSXF004        VARCHAR2(50),              /*连接线名称       */
   SYSXF005        VARCHAR2(50),              /*连接线另一端节点名称 */
   SYSXF091        VARCHAR2(30),                    /*备份流水         */
   SYSXF092        VARCHAR2(20),               /*作业编号         */
   SYSXF093        VARCHAR2(10),               /*库名             */
   SYSXF094        VARCHAR2(30),               /*作业流水号       */   
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSXF primary key (SYSXF001,SYSXF002,SYSXF003,SYSXF091)
);
grant select,index,update,delete,insert on TB_SYSXF to public;
