/*
================================================================================
表结构代码:TB_SYSXM
表结构名称:审批轨迹表
表结构目的:
================================================================================
*/
drop table TB_SYSXM;
create table TB_SYSXM  (
   SYSXM001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSXM002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSXM003        VARCHAR2(30),              /*流水号*/
   SYSXM004        integer,                /*审批状态  审批状态 0 默认 1 待审批 2 审批通过 3审批打回     */
   SYSXM005        VARCHAR2(500),             /*备注*/
   SYSXM006        VARCHAR2(30),              /*审批人编号 */
   SYSXM007        DATE,                      /*审批时间 */
   SYSXM008        VARCHAR2(30),              /*作业号*/   
   SYSXM009        VARCHAR2(30),              /*作业主键号*/      
   SYSXM010        VARCHAR2(30),              /*数据名*/ 
   SYSXM011        integer,                   /*审批序号*/          
   flag            integer,                    
   constraint PK_TB_SYSXM primary key (SYSXM001,SYSXM002,SYSXM003,SYSXM004,SYSXM006,SYSXM007)
);
grant select,index,update,delete,insert on TB_SYSXM to public;


