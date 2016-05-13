/*
================================================================================
表结构代码:TB_SYSXH
表结构名称: 会签结束入口的判断条件
表结构目的:
================================================================================
*/
drop table TB_SYSXH;
create table TB_SYSXH  (
   SYSXH001        VARCHAR2(50)    not null,  /*会签结束流程编号 */
   SYSXH002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSXH003        NUMBER(3),                 /*条件序号         */
   SYSXH004        VARCHAR2(30),              /*左括号           */
   SYSXH005        VARCHAR2(50),              /*流程线名         */
   SYSXH006        VARCHAR2(30),              /*右括号           */
   SYSXH007        VARCHAR2(10),              /*与或             */
   SYSXH091        VARCHAR2(30),                    /*备份流水         */
   SYSXH092        VARCHAR2(20),               /*作业编号         */
   SYSXH093        VARCHAR2(10),               /*库名             */
   SYSXH094        VARCHAR2(10),               /*作业流水编号     */   
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSXH primary key (SYSXH001,SYSXH002,SYSXH003,SYSXH091)
);
grant select,index,update,delete,insert on TB_SYSXH to public;
