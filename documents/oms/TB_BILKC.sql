/*
================================================================================
表结构代码:TB_BILKC
表结构名称:日结预收退款单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILKC;
drop index AK_TB_BILKC;
drop table TB_BILKC;
create table TB_BILKC  (
   BILKC_ID             INTEGER                         not null,  /*日结预收退款单表ID         */
   BILKC001             DATE                            not null,  /*日结日期                   */
   BILKC002             INTEGER,                                   /*营运组织ID                 */
   BILKC003             INTEGER,                                   /*销退单ID                   */
   BILKC004             INTEGER,                                   /*销售单ID                   */ 
   BILKC005             INTEGER,                                   /*退款单ID                   */
   BILKC006             INTEGER,                                   /*退款单明细ID               */
   BILKC007             INTEGER,                                   /*项目编号                   */
   BILKC008             DATE                            not null,  /*退款日期                   */
   BILKC009             INTEGER                         not null,  /*客户                       */
   BILKC010             INTEGER                         not null,  /*收款客户                   */
   BILKC011             INTEGER,                                   /*部门                       */
   BILKC012             INTEGER,                                   /*人员                       */
   BILKC013             INTEGER                         not null,  /*退款方式                   */
   BILKC014             VARCHAR2(30),                              /*刷卡卡号                   */
   BILKC015             NUMBER(18,3),                              /*退款金额                   */
   BILKC016             NUMBER(18,3),                              /*手续费率                   */
   BILKC017             NUMBER(18,3),                              /*手续费                     */   
   BILKC018             VARCHAR2(255),                             /*备注                       */   
   BILKC019             VARCHAR2(30),                              /*预收退款号                 */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门               */                               
   CREATE_DATE          DATE,                                      /*建立日期                   */
   MODIFIER             VARCHAR2(12),                              /*修改人员                   */
   MODI_DATE            DATE,                                      /*修改日期                   */
   FLAG                 NUMBER(1),                                 /*资料状态                   */
   constraint PK_TB_BILKC primary key (BILKC_ID)
);
create sequence SEQ_TB_BILKC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILKC to public;
grant index  on TB_BILKC to public;
grant update on TB_BILKC to public; 
grant delete on TB_BILKC to public;  
grant insert on TB_BILKC to public; 
grant select on SEQ_TB_BILKC to public;   