/*
================================================================================
表结构代码:TB_DRPDA
表结构名称:指标内容表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPDA;
drop table TB_DRPDA;
create table TB_DRPDA  (
   DRPDA_ID             INTEGER                            NOT NULL,   /*指标内容ID               */   
   DRPDA001             VARCHAR2(20),                                  /*报表编号                 */   
   DRPDA002             VARCHAR2(20),                                  /*指标ID                   */   
   DRPDA003             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA004             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA005             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA006             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA007             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA008             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA009             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA010             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA011             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA012             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA013             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA014             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA015             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA016             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA017             VARCHAR2(64),                                  /*关键字内容               */
   DRPDA018             NUMBER(16,2),                                  /*金额                     */
   DRPDA019             VARCHAR2(1),                                   /*报表类型                 */   
   CREATE_USER          VARCHAR2(12),                                  /*建立人员                 */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门             */                               
   CREATE_DATE          DATE,                                          /*建立日期                 */
   MODIFIER             VARCHAR2(12),                                  /*修改人员                 */
   MODI_DATE            DATE,                                          /*修改日期                 */
   FLAG                 NUMBER(1),                                     /*资料状态                 */  
   constraint PK_TB_DRPDA primary key (DRPDA_ID)
);
create sequence SEQ_TB_DRPDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPDA to public;
grant index  on TB_DRPDA to public;
grant update on TB_DRPDA to public; 
grant delete on TB_DRPDA to public;  
grant insert on TB_DRPDA to public; 
grant select on SEQ_TB_DRPDA to public; 