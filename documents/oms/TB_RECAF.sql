/*
================================================================================
表结构代码:TB_RECAF
表结构名称:收款明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_RECAF;
drop index AK_TB_RECAF;
drop table TB_RECAF;
create table TB_RECAF  (
   RECAF_ID             INTEGER                         not null,  /*收款明细表ID       */
   RECAF001             INTEGER                         not null,  /*收款表主ID         */
   RECAF002             VARCHAR2(1)                     not null,  /*收款方式           */
   RECAF003             INTEGER                         not null,  /*现金流量异动项ID         */
   RECAF004             INTEGER,                                   /*会计科目ID           */
   RECAF005             VARCHAR2(30),                              /*预留字段           */
   RECAF006             NUMBER(5,4),                               /*预留字段       */   
   RECAF007             VARCHAR2(30),                              /*刷卡卡号           */
   RECAF008             NUMBER(16,2),                              /*原币收款金额       */
   RECAF009             NUMBER(16,2),                              /*本币收款金额       */
   RECAF010             INTEGER,                                   /*手续费率           */
   RECAF011             NUMBER(16,2),                               /*手续费           */
   RECAF012             INTEGER,                                   /*银行账号           */
   RECAF013             VARCHAR2(255),                              /*备注               */
   RECAF014             NUMBER(16,2),                              /*原币已核销金额       */
   RECAF015             NUMBER(16,2),                              /*本币已核销金额       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_RECAF primary key (RECAF_ID)
);
create unique index AK_TB_RECAF on TB_RECAF (RECAF_ID,RECAF001);
create sequence SEQ_TB_RECAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAF to public;
grant index  on TB_RECAF to public;
grant update on TB_RECAF to public; 
grant delete on TB_RECAF to public;  
grant insert on TB_RECAF to public; 
grant select on SEQ_TB_RECAF to public;   