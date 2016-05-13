/*
================================================================================
表结构代码:TB_SYSXG
表结构名称: 条件判断节点的分支
表结构目的:
================================================================================
*/
drop table TB_SYSXG;
create table TB_SYSXG  (
   SYSXG001        VARCHAR2(50)    not null,  /*流程线编号       */
   SYSXG002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSXG003        NUMBER(3),                 /*条件序号         */
   SYSXG004        VARCHAR2(30),              /*左括号           */
   SYSXG005        VARCHAR2(30),              /*字段名           */
   SYSXG006        VARCHAR2(10),              /*比较关系         */
   SYSXG007        VARCHAR2(3000),             /*值               */
   SYSXG008        VARCHAR2(30),              /*右括号           */
   SYSXG009        VARCHAR2(10),              /*与或             */
   SYSXG010        NUMBER(2),                 /*字段类型         */
   SYSXG091        VARCHAR2(30),                    /*备份流水         */
   SYSXG092        VARCHAR2(20),               /*作业编号         */
   SYSXG093        VARCHAR2(10),               /*库名             */
   SYSXG094        VARCHAR2(30),               /*作业流程编号     */   
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSXG primary key (SYSXG001,SYSXG002,SYSXG003,SYSXG091)
);
grant select,index,update,delete,insert on TB_SYSXG to public;
