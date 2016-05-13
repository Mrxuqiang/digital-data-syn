/*
================================================================================
表结构代码:TB_SALHH
表结构名称:交款单付款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHH;
drop index AK_TB_SALHH;
drop table TB_SALHH;
create table TB_SALHH  (
   SALHH_ID             INTEGER                         not null, /*交款单付款ID     */
   SALHH001             INTEGER                          not null, /*交款单ID           */
   SALHH002             INTEGER                         not null,  /*结算方式ID        */
   SALHH003             NUMBER(12,2)                 not null,  /*实交款金额         */
   SALHH004             NUMBER(12,2),                              /*手续费               */
   SALHH005             NUMBER(12,2),                             /*溢收金额           */
   SALHH006             VARCHAR2(30),                                /*银行卡号           */
   SALHH007             INTEGER,                                         /*手续费率ID       */
   SALHH008             NUMBER(12,2),                                 /*手续费率(%)      */
   SALHH009             VARCHAR2(30),                                /*支票号                 */
   SALHH010             NUMBER(12,2),                                  /*票面金额              */
   SALHH011             DATE,                                                /*出票日期              */
   SALHH012             VARCHAR2(60),                                 /*出票单位              */
   SALHH013             INTEGER,                                         /*消费券种代码ID    */
   SALHH014             INTEGER,                                         /*消费券面额代码ID */
   SALHH015             NUMBER(30),                                   /*开始券号               */
   SALHH016             NUMBER(30),                                   /*结束券号               */
   SALHH017             NUMBER(8),                                     /*券数量                  */
   SALHH018             NUMBER(30),                                   /*消费券卡号       */
   SALHH019             INTEGER,                                         /*消费券卡种类ID   */
   SALHH020             NUMBER(30),                                   /*消费卡号         */
   SALHH021             INTEGER,                                         /*预收款单ID       */
   SALHH022             INTEGER,                                        /*预收款单明细ID   */
   SALHH023             NUMBER(12,2),                                /*交款已返金额     */
   SALHH024             NUMBER(12,2),                                /*交款未返金额     */
   SALHH025             NUMBER(12,2),                                /*手续费已返金额   */
   SALHH026             NUMBER(12,2),                                /*手续费未返金额   */
   SALHH027             INTEGER,                                        /*订金单ID         */
   SALHH028             VARCHAR2(1),                                  /*交易类型1.正常交易 2.订金转入 */
   SALHH029             NUMBER(12,2),                                /*已退金额   */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SALHH primary key (SALHH_ID)
);
create index AK_TB_SALHH on TB_SALHH (SALHH_ID,SALHH001,SALHH002,SALHH028);
create sequence SEQ_TB_SALHH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHH to public;
grant index  on TB_SALHH to public;
grant update on TB_SALHH to public; 
grant delete on TB_SALHH to public;  
grant insert on TB_SALHH to public; 
grant select on SEQ_TB_SALHH to public;   