/*
================================================================================
表结构代码:TB_EMAIL
表结构名称:接口配置邮件定时提醒
表结构目的:局部表
================================================================================
*/


drop table TB_EMAIL;
create table TB_EMAIL  (
   ID			INTEGER                         not null,  /*主键 ID        */
   INTNAME		VARCHAR2(30)                     not null,  /*接口名           */
   EMAIL		VARCHAR2(80),                               /*收件地址          */
   SENDERR	        INTEGER,	                           /*错误记录数          */   
   MAXERR               INTEGER,                                   /*允许最大错误记录数 */ 
   LAST_TIME            DATE,		                           /*上次邮件发送时间   */  
   SEND_INTER           INTEGER,	                           /*发送间隔（天）     */
   SEND_COUNTS          INTEGER					   /*抛送 SAP 次数      */ 
);

