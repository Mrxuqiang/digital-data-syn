/*
================================================================================
表结构代码:TB_SALCS
表结构名称:通汇卡交易明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALCS;
drop index AK_TB_SALCS;
drop table TB_SALCS;
create table TB_SALCS  (
   SALCS_ID               INTEGER                                   ,/*主键ID         */
   SALCS001               INTEGER                                   ,/*交款单主ID             */
   SALCS002               INTEGER                                   ,/*交款单明细ID             */
   tradeTime              VARCHAR2(100)                            ,/*交易时间         */
   terminalNo             VARCHAR2(100)                           ,/*POS机号         */
   status                 VARCHAR2(100)                               ,/*交易状态码         */
   cardNo                 VARCHAR2(100)                               ,/*卡号         */
   subsidyAMT1            VARCHAR2(100)                          ,/*商户承担促销成本    */
   subsidyAMT2            VARCHAR2(100)                          ,/*商场承担促销成本    */
   subsidyAMT3            VARCHAR2(100)                          ,/*星易通汇承担促销成本    */
   serviceFee            VARCHAR2(100)                            ,/*手续费       */
   serviceFeeRate            VARCHAR2(100),                       /*手续费率       */
   message             VARCHAR2(255)                         ,     /*交易消息          */
   basicAMT             VARCHAR2(100),                             /*资金账户金额             */
   tradeDate            VARCHAR2(100)                    ,         /*交易日期          */
   tradeAMT            VARCHAR2(100),                              /*交易金额          */
   promotionalAMT            VARCHAR2(100)                    ,    /*促销账户金额       */
   voucherNo            VARCHAR2(100)                    ,         /*凭证号       */
   cardbinname            VARCHAR2(100)                    ,         /*卡种       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALCS primary key (SALCS_ID)
);
create sequence SEQ_TB_SALCS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALCS to public;
grant index  on TB_SALCS to public;
grant update on TB_SALCS to public; 
grant delete on TB_SALCS to public;  
grant insert on TB_SALCS to public; 
grant select on SEQ_TB_SALCS to public;   