/*
================================================================================
表结构代码:TB_SYSXA
表结构名称:审批流程定义备份表
表结构目的:
================================================================================
*/
drop sequence SEQ_TB_SYSXA; 
drop table TB_SYSXA;
create table TB_SYSXA  (
   SYSXA001             VARCHAR2(20)                    not null,  /*流程编号         */
   SYSXA002             VARCHAR2(255)                   not null,  /*流程名称         */
   SYSXA003             VARCHAR2(30),                              /*作业编号         */
   SYSXA004             CLOB,                                      /*流程图           */
   SYSXA005             VARCHAR2(16),                              /*营运组织代码     */--add 2011-10-31 
   SYSXA006             VARCHAR2(16),                              /*公司代码         */--add 2011-10-31  
   SYSXA007             VARCHAR2(15),                              /*主表名           */--add 2011-10-31  
   SYSXA008             VARCHAR2(20),                              /*主表名别名       */--add 2011-10-31 
   SYSXA009             VARCHAR2(20),                             /*主键              */--add 2011-10-31
   SYSXA010             VARCHAR2(30),                              /*发起人编号            */--add 2011-10-31   
   SYSXA091             VARCHAR2(30),                               /*备份流水         */
   SYSXA092             VARCHAR2(20),                               /*作业编号         */
   SYSXA093             VARCHAR2(10),                               /*库名             */
   SYSXA094             VARCHAR2(30),                               /**作业编号流水号             */ 
   SYSXA095             VARCHAR2(30),                               /**提示字段数据             */        
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER,                                    /*资料状态         */
   constraint PK_TB_SYSXA primary key (SYSXA001,SYSXA091,SYSXA094)
);
create sequence SEQ_TB_SYSXA
minvalue 1
maxvalue 9999999999            
start with 1
increment by 1
nocache
cycle;
grant select,index,update,delete,insert on TB_SYSXA to public;
grant select on SEQ_TB_SYSXA to public ;