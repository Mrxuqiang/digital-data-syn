/*
================================================================================
表结构代码:TB_SYSYF
表结构名称: 流程节点出口
表结构目的:
================================================================================
*/

drop table TB_SYSYF;
create table TB_SYSYF  (
   SYSYF001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSYF002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSYF003        NUMBER(3),                 /*序号             */
   SYSYF004        VARCHAR2(50),              /*连接线名称       */
   SYSYF005        VARCHAR2(50),              /*连接线另一端节点名称 */
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSYF primary key (SYSYF001,SYSYF002,SYSYF003)
);
grant select,index,update,delete,insert on TB_SYSYF to public;
