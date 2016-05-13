/*
================================================================================
表结构代码:TB_SYSYH
表结构名称: 会签结束入口的判断条件
表结构目的:
================================================================================
*/

drop table TB_SYSYH;
create table TB_SYSYH  (
   SYSYH001        VARCHAR2(50)    not null,  /*会签结束流程编号 */
   SYSYH002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSYH003        NUMBER(3),                 /*条件序号         */
   SYSYH004        VARCHAR2(30),              /*左括号           */
   SYSYH005        VARCHAR2(50),              /*流程线名         */
   SYSYH006        VARCHAR2(30),              /*右括号           */
   SYSYH007        VARCHAR2(10),              /*与或             */
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSYH primary key (SYSYH001,SYSYH002,SYSYH003)
);
grant select,index,update,delete,insert on TB_SYSYH to public;
