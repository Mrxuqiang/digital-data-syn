/*
================================================================================
表结构代码:TB_EXPAC
表结构名称:报销主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_EXPAC;
drop index AK_TB_EXPAC;
drop table TB_EXPAC;
create table TB_EXPAC  (
   EXPAC_ID             INTEGER                         not null,  /*报销主表ID          */
   EXPAC001             INTEGER                         not null,  /*单别              */
   EXPAC002             VARCHAR2(30)                    not null,  /*单号              */
   EXPAC003             DATE                            not null,  /*单据日期          */
   EXPAC004             INTEGER                         not null,  /*部门              */
   EXPAC005             INTEGER                         not null,  /*报销人员          */
   EXPAC006             VARCHAR2(1)                     not null,  /*结算方式          */
   EXPAC007             INTEGER                         not null,  /*银行账户           */
   EXPAC008             INTEGER,                                   /*录入人             */
   EXPAC009             DATE,                                      /*录入日期           */
   EXPAC010             VARCHAR2(1)                     not null,  /*单据状态           */
   EXPAC011             INTEGER,                                   /*审核人             */
   EXPAC012             DATE ,                                     /*审核日期           */
   EXPAC013             VARCHAR2(1)                     not null,  /*生成凭证           */
   EXPAC014             NUMBER(16,2),                              /*报销金额               */
   EXPAC015             VARCHAR2(255),                             /*备注                   */ 
   EXPAC016             INTEGER,                                   /*币种               */  
   EXPAC017             NUMBER(16,4),                               /*汇率           */ 
   EXPAC018             NUMBER(16,2),                              /*还款金额           */ 
   EXPAC019             NUMBER(16,2),                              /*本币还款金额           */ 
   EXPAC020             NUMBER(16,2),                              /*本币报销金额           */ 
   EXPAC021             NUMBER(4),                                 /*会计年度           */   
   EXPAC022             NUMBER(2),                                 /*会计期间           */     
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_EXPAC primary key (EXPAC_ID)                                 
);                                                                               
create unique index AK_TB_EXPAC on TB_EXPAC (EXPAC001,EXPAC002);                          
create sequence SEQ_TB_EXPAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAC to public;                                              
grant index  on TB_EXPAC to public;                                              
grant update on TB_EXPAC to public;                                              
grant delete on TB_EXPAC to public;                                              
grant insert on TB_EXPAC to public;                                              
grant select on SEQ_TB_EXPAC to public;                                          
                                                                                 
                                                                                 
                                                                                 
                                                                                 