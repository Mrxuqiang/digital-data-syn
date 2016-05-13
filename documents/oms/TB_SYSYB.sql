/*
================================================================================
表结构代码:TB_SYSYB
表结构名称:流程节点
表结构目的:
================================================================================
*/

drop table TB_SYSYB;
create table TB_SYSYB  (
   SYSYB001        VARCHAR2(50)    not null,  /*流程节点编号     */
   SYSYB002        VARCHAR2(20)    not null,  /*流程编号         */
   SYSYB003        VARCHAR2(20),              /*节点类型 18:流程线; 19任务; 20流程开始; 21流程结束; 22会签开始; 23会签结束; 24条件 */
   SYSYB004        NUMBER(2),                 /*会签结束方式     */
   SYSYB005        NUMBER(5),                 /*会签结束的入口数 */
   SYSYB006        VARCHAR2(50),              /*流程线的开始端连接的节点名 */
   SYSYB007        VARCHAR2(50),              /*流程线的结束端连接的节点名 */
   CREATE_USER     VARCHAR2(12),              /*建立人员         */
   USER_GROUP      VARCHAR2(12),              /*建立人员部门     */                               
   CREATE_DATE     DATE,                      /*建立日期         */
   MODIFIER        VARCHAR2(12),              /*修改人员         */
   MODI_DATE       DATE,                      /*修改日期         */
   FLAG            INTEGER,                   /*资料状态         */
   constraint PK_TB_SYSYB primary key (SYSYB001,SYSYB002)
);
grant select,index,update,delete,insert on TB_SYSYB to public;
