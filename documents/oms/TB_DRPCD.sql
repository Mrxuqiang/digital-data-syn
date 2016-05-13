/*
================================================================================
表结构代码:TB_DRPCD
表结构名称:报表关键字组合表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPCD;
drop table TB_DRPCD;
create table TB_DRPCD  (
   DRPCD_ID             INTEGER         NOT NULL,  /*关键字组合ID       */   
   DRPCD001             VARCHAR2(20),              /*关键字编号         */   
   DRPCD002             VARCHAR2(20),              /*关键字编号         */   
   DRPCD003             VARCHAR2(20),              /*关键字编号         */
   DRPCD004             VARCHAR2(20),              /*关键字编号         */
   DRPCD005             VARCHAR2(20),              /*关键字编号         */
   DRPCD006             VARCHAR2(20),              /*关键字编号         */
   DRPCD007             VARCHAR2(20),              /*关键字编号         */    
   DRPCD008             VARCHAR2(20),              /*关键字编号         */ 
   DRPCD009             VARCHAR2(20),              /*关键字编号         */
   DRPCD010             VARCHAR2(20),              /*关键字编号         */
   DRPCD011             VARCHAR2(20),              /*关键字编号         */
   DRPCD012             VARCHAR2(20),              /*关键字编号         */
   DRPCD013             VARCHAR2(20),              /*关键字编号         */
   DRPCD014             VARCHAR2(20),              /*关键字编号         */
   DRPCD015             VARCHAR2(20),              /*关键字编号         */
   CREATE_USER          VARCHAR2(12),              /*建立人员           */
   USER_GROUP           VARCHAR2(12),              /*建立人员部门       */                               
   CREATE_DATE          DATE,                      /*建立日期           */
   MODIFIER             VARCHAR2(12),              /*修改人员           */
   MODI_DATE            DATE,                      /*修改日期           */
   FLAG                 NUMBER(1),                 /*资料状态           */   
   constraint PK_TB_DRPCD primary key (DRPCD_ID)
);
create sequence SEQ_TB_DRPCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPCD to public;
grant index  on TB_DRPCD to public;
grant update on TB_DRPCD to public; 
grant delete on TB_DRPCD to public;  
grant insert on TB_DRPCD to public; 
grant select on SEQ_TB_DRPCD to public; 