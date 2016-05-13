/*
================================================================================
表结构代码:TB_SYSYG
表结构名称: 条件判断节点的分支
表结构目的:
================================================================================
*/

drop table TB_SYSYG;
create table TB_SYSYG  (
   SYSYG001        VARCHAR2(50)    not null,  /*流程线编号       */
   SYSYG002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSYG003        NUMBER(3),                 /*条件序号         */
   SYSYG004        VARCHAR2(30),              /*左括号           */
   SYSYG005        VARCHAR2(30),              /*字段名           */
   SYSYG006        VARCHAR2(10),              /*比较关系         */
   SYSYG007        VARCHAR2(300),             /*值               */
   SYSYG008        VARCHAR2(30),              /*右括号           */
   SYSYG009        VARCHAR2(10),              /*与或             */
   SYSYG010        NUMBER(2),                 /*字段类型         */
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSYG primary key (SYSYG001,SYSYG002,SYSYG003)
);
grant select,index,update,delete,insert on TB_SYSYG to public;
