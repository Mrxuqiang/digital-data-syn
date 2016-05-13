/*
================================================================================
表结构代码:TB_GRTDA
表结构名称:指标内容表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTDA;
drop table TB_GRTDA;
create table TB_GRTDA  (
   GRTDA_ID             INTEGER                            NOT NULL,   /*指标内容ID               */   
   GRTDA001             VARCHAR2(20),                                  /*报表编号                 */   
   GRTDA002             VARCHAR2(20),                                  /*指标ID                   */   
   GRTDA003             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA004             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA005             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA006             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA007             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA008             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA009             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA010             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA011             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA012             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA013             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA014             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA015             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA016             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA017             VARCHAR2(64),                                  /*关键字内容               */
   GRTDA018             NUMBER(16,2),                                  /*金额                     */
   GRTDA019             VARCHAR2(1),                                   /*报表类型                 */   
   CREATE_USER          VARCHAR2(12),                                  /*建立人员                 */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门             */                               
   CREATE_DATE          DATE,                                          /*建立日期                 */
   MODIFIER             VARCHAR2(12),                                  /*修改人员                 */
   MODI_DATE            DATE,                                          /*修改日期                 */
   FLAG                 NUMBER(1),                                     /*资料状态                 */  
   constraint PK_TB_GRTDA primary key (GRTDA_ID)
);
create sequence SEQ_TB_GRTDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTDA to public;
grant index  on TB_GRTDA to public;
grant update on TB_GRTDA to public; 
grant delete on TB_GRTDA to public;  
grant insert on TB_GRTDA to public; 
grant select on SEQ_TB_GRTDA to public; 