/*
================================================================================
表结构代码:TB_RECAE
表结构名称:收款主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_RECAE;
drop index AK_TB_RECAE;
drop table TB_RECAE;
create table TB_RECAE  (
   RECAE_ID             INTEGER                         not null,  /*收款表主ID                 */
   RECAE001             VARCHAR2(1)                     not null,  /*类型                       */
   RECAE002             INTEGER                         not null,  /*单别ID                       */
   RECAE003             VARCHAR2(30)                    not null,  /*收款单号                   */
   RECAE004             DATE                            not null,  /*收款日期                   */
   RECAE005             INTEGER                         not null,  /*客户                       */
   RECAE006             INTEGER                         not null,  /*收款客户                   */
   RECAE007             INTEGER,                                   /*部门                       */
   RECAE008             INTEGER,                                   /*人员                       */
   RECAE009             VARCHAR2(1)                     not null,  /*单据状态                   */
   RECAE010             INTEGER,                                   /*录入人                     */
   RECAE011             DATE,                                      /*录入日期                   */
   RECAE012             INTEGER,                                   /*审核人                     */
   RECAE013             DATE,                                      /*审核日期                   */
   RECAE014             NUMBER(16,2) ,                             /*原币收款合计               */
   RECAE015             NUMBER(16,2),                              /*本币收款合计               */
   RECAE016             NUMBER(16,2) ,                             /*原币核销金额               */
   RECAE017             NUMBER(16,2),                              /*本币核销金额               */
   RECAE018             VARCHAR2(1)                     not null,  /*核销状态                   */
   RECAE019             VARCHAR2(1)                     not null,  /*来源                       */
   RECAE020             INTEGER,                                   /*销售订单号                       */
   RECAE021             VARCHAR2(1)                     not null,  /*生成凭证                     */
   RECAE022             INTEGER                         not null,  /*币种ID                     */
   RECAE023             NUMBER(5,4),                               /*汇率                     */
   RECAE024             NUMBER(4),                                 /*会计年度                     */  
   RECAE025             NUMBER(4),                                 /*会计期间                     */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员                   */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门               */                               
   CREATE_DATE          DATE,                                      /*建立日期                   */
   MODIFIER             VARCHAR2(12),                              /*修改人员                   */
   MODI_DATE            DATE,                                      /*修改日期                   */
   FLAG                 NUMBER(1),                                 /*资料状态                   */
   constraint PK_TB_RECAE primary key (RECAE_ID)
);
create unique index AK_TB_RECAE on TB_RECAE (RECAE002,RECAE003);
create sequence SEQ_TB_RECAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAE to public;
grant index  on TB_RECAE to public;
grant update on TB_RECAE to public; 
grant delete on TB_RECAE to public;  
grant insert on TB_RECAE to public; 
grant select on SEQ_TB_RECAE to public;   