/*
================================================================================
表结构代码:TB_OMSZZ
表结构名称:接口下传日志表
表结构目的:局部表
================================================================================
*/


drop table TB_OMSZZ;
create table TB_OMSZZ  (
   OMSZZ_ID			INTEGER                         not null,  /*主键 ID			*/
   OMSZZ001			VARCHAR2(50)                     not null,  /*接口简称			*/
   OMSZZ002			VARCHAR2(60),                               /*接口中文名		*/
   OMSZZ003			VARCHAR2(1),	                            /*成功与否 N：失败 Y：成功  */   
   OMSZZ004			INTEGER,                                   /* 成功行数			*/ 
   OMSZZ005			VARCHAR2(150),	                           /* 异常原因			*/  
   OMSZZ006			DATE		                           /* 时间			*/
   OMSZZ007		        VARCHAR2(100),				   /* 异常描述		        */ 
);

