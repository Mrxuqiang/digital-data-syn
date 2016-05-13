/*
================================================================================
表结构代码:TB_SYSYE
表结构名称: 流程节点入口
表结构目的:
================================================================================
*/

drop table TB_SYSYE;
create table TB_SYSYE  (
   SYSYE001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSYE002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSYE003        NUMBER(3),                 /*序号             */
   SYSYE004        VARCHAR2(50),              /*连接线名称       */
   SYSYE005        VARCHAR2(50),              /*连接线另一端节点名称 */
   SYSYE006        VARCHAR2(1),               /*是否送达         */
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSYE primary key (SYSYE001,SYSYE002,SYSYE003)
);
grant select,index,update,delete,insert on TB_SYSYE to public;
