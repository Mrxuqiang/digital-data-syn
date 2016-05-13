/*
================================================================================
表结构代码:TB_SYSYk
表结构名称: 审批轨迹表
表结构目的:
================================================================================
*/
drop table TB_SYSYk;
create table TB_SYSYk  (
   sysyk001        varchar2(100)    not null,    /*作业唯一编号 */
   sysyk002        varchar2(20)     not null,    /*作业编号     */
   sysyk003        varchar2(20)     not null,     /*发起员工编号 */
   Sysyk004        varchar2(250)    not null,    /*节点编号     */
   Sysyk005        VARCHAR2(30)      null,    /*审批角色  */
   Sysyk006        VARCHAR2(99)     not null,    /*审批步骤    */
   Sysyk007        VARCHAR2(99)     not null,    /*审批分支    */
   Sysyk008        VARCHAR2(99)     not null,    /*审批分支序号*/
   Sysyk009        VARCHAR2(20),                 /*审批时间     */
   Sysyk010        Char(1)          default 0,   /*审批人是否通过 0默认状态  W待审批 Y审批通过 Z 审批打回*/ 
   Sysyk011        Char(1),                      /*步骤是否通过  */ 
   Sysyk012        VARCHAR2(16)    not null,     /*归属机构编码  */  
   Sysyk013        Integer         not null,     /*会签序号  */  
   Sysyk014        VARCHAR2(10)    not null,     /*节点类型  */           
   FLAG            INTEGER          default 0,   /*资料状态      */
   constraint PK_TB_SYSYK primary key (Sysyk001,Sysyk002,Sysyk003,Sysyk004,Sysyk005,Sysyk006,Sysyk007,Sysyk008)
);
grant select,index,update,delete,insert on TB_SYSYk to public;

