/*
================================================================================
表结构代码:TB_EXPAE
表结构名称:还款明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_EXPAE;
drop index AK_TB_EXPAE;
drop table TB_EXPAE;
create table TB_EXPAE  (
   EXPAE_ID             INTEGER                         not null,  /*还款明细ID       */
   EXPAE001             INTEGER                         not null,  /*报销主表ID       */
   EXPAE002             VARCHAR2(255)                   not null,  /*摘要              */
   EXPAE003             INTEGER                         not null,  /*借款单号          */
   EXPAE004             INTEGER                         not null,  /*收支异动项        */
   EXPAE005             INTEGER                         not null,  /*会计科目          */
   EXPAE006             NUMBER(16,2),                              /*还款金额          */ 
   EXPAE007             NUMBER(16,2),                              /*本币还款金额      */ 
   EXPAE008             NUMBER(16,2),                              /*原币借款余额       */ 
   EXPAE009             NUMBER(16,2),                              /*本币借款余额       */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_EXPAE primary key (EXPAE_ID)
);
create sequence SEQ_TB_EXPAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAE to public;
grant index  on TB_EXPAE to public;
grant update on TB_EXPAE to public; 
grant delete on TB_EXPAE to public;  
grant insert on TB_EXPAE to public; 
grant select on SEQ_TB_EXPAE to public;   