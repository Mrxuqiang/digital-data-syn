/*
================================================================================
表结构代码:TB_EXPAA
表结构名称:借款主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_EXPAA;
drop index AK_TB_EXPAA;
drop table TB_EXPAA;
create table TB_EXPAA  (
   EXPAA_ID             INTEGER                         not null,  /*借款主表ID          */
   EXPAA001             INTEGER                         not null,  /*单别              */
   EXPAA002             VARCHAR2(30)                    not null,  /*单号              */
   EXPAA003             DATE                            not null,  /*单据日期          */
   EXPAA004             INTEGER                         not null,  /*部门              */
   EXPAA005             INTEGER                         not null,  /*人员              */
   EXPAA006             VARCHAR2(1)                     not null,  /*结算方式          */
   EXPAA007             INTEGER                         not null,  /*银行账号           */
   EXPAA008             INTEGER,                                   /*录入人             */
   EXPAA009             DATE,                                      /*录入日期           */
   EXPAA010             VARCHAR2(1)                     not null,  /*单据状态           */
   EXPAA011             INTEGER,                                   /*审核人             */
   EXPAA012             DATE ,                                     /*审核日期           */
   EXPAA013             VARCHAR2(1)                     not null,  /*生成凭证           */
   EXPAA014             NUMBER(16,2),                              /*原币金额合计           */
   EXPAA015             NUMBER(16,2),                              /*原币还款金额           */ 
   EXPAA016             VARCHAR2(255),                             /*备注               */  
   EXPAA017             INTEGER                          not null, /*币种           */ 
   EXPAA018             NUMBER(16,4),                               /*汇率               */ 
   EXPAA019             NUMBER(16,2),                              /*本币金额合计           */ 
   EXPAA020             NUMBER(16,2),                              /*本币还款金额           */ 
   EXPAA021             NUMBER(4),                                 /*会计年度           */   
   EXPAA022             NUMBER(2),                                 /*会计期间           */    
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_EXPAA primary key (EXPAA_ID)
);
create unique index AK_TB_EXPAA on TB_EXPAA (EXPAA001,EXPAA002);
create sequence SEQ_TB_EXPAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAA to public;
grant index  on TB_EXPAA to public;
grant update on TB_EXPAA to public; 
grant delete on TB_EXPAA to public;  
grant insert on TB_EXPAA to public; 
grant select on SEQ_TB_EXPAA to public;   