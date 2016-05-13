/*
================================================================================
表结构代码:TB_GRTCD
表结构名称:报表关键字组合表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTCD;
drop table TB_GRTCD;
create table TB_GRTCD  (
   GRTCD_ID             INTEGER         NOT NULL,  /*关键字组合ID       */   
   GRTCD001             VARCHAR2(20),              /*关键字编号         */   
   GRTCD002             VARCHAR2(20),              /*关键字编号         */   
   GRTCD003             VARCHAR2(20),              /*关键字编号         */
   GRTCD004             VARCHAR2(20),              /*关键字编号         */
   GRTCD005             VARCHAR2(20),              /*关键字编号         */
   GRTCD006             VARCHAR2(20),              /*关键字编号         */
   GRTCD007             VARCHAR2(20),              /*关键字编号         */    
   GRTCD008             VARCHAR2(20),              /*关键字编号         */ 
   GRTCD009             VARCHAR2(20),              /*关键字编号         */
   GRTCD010             VARCHAR2(20),              /*关键字编号         */
   GRTCD011             VARCHAR2(20),              /*关键字编号         */
   GRTCD012             VARCHAR2(20),              /*关键字编号         */
   GRTCD013             VARCHAR2(20),              /*关键字编号         */
   GRTCD014             VARCHAR2(20),              /*关键字编号         */
   GRTCD015             VARCHAR2(20),              /*关键字编号         */
   CREATE_USER          VARCHAR2(12),              /*建立人员           */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门       */                               
   CREATE_DATE          DATE,                      /*建立日期           */
   MODIFIER             VARCHAR2(12),              /*修改人员           */
   MODI_DATE            DATE,                      /*修改日期           */
   FLAG                 NUMBER(1),                 /*资料状态           */   
   constraint PK_TB_GRTCD primary key (GRTCD_ID)
);
create sequence SEQ_TB_GRTCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTCD to public;
grant index  on TB_GRTCD to public;
grant update on TB_GRTCD to public; 
grant delete on TB_GRTCD to public;  
grant insert on TB_GRTCD to public; 
grant select on SEQ_TB_GRTCD to public; 