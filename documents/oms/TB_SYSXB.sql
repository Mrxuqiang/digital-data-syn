/*
================================================================================
表结构代码:TB_SYSXB
表结构名称:流程节点
表结构目的:
================================================================================
*/
drop table TB_SYSXB;
create table TB_SYSXB  (
   SYSXB001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSXB002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSXB003        VARCHAR2(20),              /*节点类型 18:流程线; 19任务; 20流程开始; 21流程结束; 22会签开始; 23会签结束; 24条件 */
   SYSXB004        NUMBER(2),                 /*会签结束方式     */
   SYSXB005        NUMBER(5),                 /*会签结束的入口数 */
   SYSXB006        VARCHAR2(50),              /*流程线的开始端连接的节点名 */
   SYSXB007        VARCHAR2(50),              /*流程线的结束端连接的节点名 */
   SYSXB008        Integer,                  /*审批状态 0 默认 1 待审批 2 审批通过 3.审批打回     */
   SYSXB009        date,                      /*审批通过时间     */
   SYSXB010        VARCHAR2(30),                 /*审批人编号     */         
   SYSXB091        VARCHAR2(30),                    /*备份流水         */
   SYSXB092        VARCHAR2(20),               /*作业编号         */
   SYSXB093        VARCHAR2(10),               /*库名             */
   SYSXB094        VARCHAR2(30),               /*作业流水号             */   
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER     default 0,                   /*资料状态         */
   constraint PK_TB_SYSXB primary key (SYSXB001,SYSXB002,SYSXB091)
);
grant select,index,update,delete,insert on TB_SYSXB to public;
