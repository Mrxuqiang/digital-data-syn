/*
================================================================================
表结构代码:TB_BILKA
表结构名称:日结预收款单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILKA;
drop index AK_TB_BILKA;
drop table TB_BILKA;
create table TB_BILKA  (
   BILKA_ID             INTEGER                         not null,  /*日结预收款表ID             */
   BILKA001             DATE                            not null,  /*日结日期                   */
   BILKA002             INTEGER,                                   /*营运组织ID                 */
   BILKA003             INTEGER,                                   /*来源单ID                   */
   BILKA004             VARCHAR2(30),                              /*来源单号                   */ 
   BILKA005             INTEGER                                 ,  /*交款退款单ID               */
   BILKA006             INTEGER                                 ,  /*交款单交退款明细ID         */
   BILKA007             DATE                            not null,  /*收款日期                   */
   BILKA008             INTEGER                         not null,  /*客户                       */
   BILKA009             INTEGER                         not null,  /*收款客户                   */
   BILKA010             INTEGER,                                   /*部门                       */
   BILKA011             INTEGER,                                   /*人员                       */
   BILKA012             INTEGER                         not null,  /*结算方式                   */
   BILKA013             INTEGER,                                   /*刷卡卡号                   */
   BILKA014             NUMBER(18,3),                              /*原币收款金额（若是销退是负数）*/
   BILKA015             INTEGER,                                   /*手续费率                   */
   BILKA016             NUMBER(18,3),                              /*手续费 （若是销退是负数）  */
   BILKA017             VARCHAR2(255),                             /*备注                       */
   BILKA018             VARCHAR2(30),                              /*预收款单号                 */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门               */                               
   CREATE_DATE          DATE,                                      /*建立日期                   */
   MODIFIER             VARCHAR2(12),                              /*修改人员                   */
   MODI_DATE            DATE,                                      /*修改日期                   */
   FLAG                 NUMBER(1),                                 /*资料状态                   */
   constraint PK_TB_BILKA primary key (BILKA_ID)
);
create sequence SEQ_TB_BILKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILKA to public;
grant index  on TB_BILKA to public;
grant update on TB_BILKA to public; 
grant delete on TB_BILKA to public;  
grant insert on TB_BILKA to public; 
grant select on SEQ_TB_BILKA to public;   