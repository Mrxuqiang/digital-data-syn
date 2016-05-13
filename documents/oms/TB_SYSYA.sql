/*
================================================================================
表结构代码:TB_SYSYA
表结构名称:审批流程定义
表结构目的:
================================================================================
*/

drop table TB_SYSYA;
create table TB_SYSYA  (
   SYSYA001             VARCHAR2(20)                    not null,  /*流程编号         */
   SYSYA002             VARCHAR2(255)                   not null,  /*流程名称         */
   SYSYA003             VARCHAR2(30),                              /*作业编号         */
   SYSYA004             CLOB,                                      /*流程图           */
   SYSYA005             VARCHAR2(16),                              /*营运组织代码     */--add 2011-10-31 
   SYSYA006             VARCHAR2(16),                              /*公司代码         */--add 2011-10-31  
   SYSYA007             VARCHAR2(15),                              /*主表名           */--add 2011-10-31  
   SYSYA008             VARCHAR2(20),                              /*主表名别名       */--add 2011-10-31 
   SYSYA009             VARCHAR2(20),                              /***字段名       */--add 2011-10-31                  
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER                  default  0      ,  /*资料状态         */
   constraint PK_TB_SYSYA primary key (SYSYA001)
);
grant select,index,update,delete,insert on TB_SYSYA to public;
