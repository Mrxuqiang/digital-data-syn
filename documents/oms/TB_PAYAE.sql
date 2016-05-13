/*
================================================================================
表结构代码:TB_PAYAE
表结构名称:付款主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PAYAE;
drop index AK_TB_PAYAE;
drop table TB_PAYAE;
create table TB_PAYAE  (
   PAYAE_ID             INTEGER                         not null,  /*付款主表ID       */
   PAYAE001             VARCHAR2(1)                     not null,  /*类型             */
   PAYAE002             INTEGER                         not null,  /*单别             */
   PAYAE003             VARCHAR2(30)                    not null,  /*付款单号         */
   PAYAE004             DATE                            not null,  /*付款日期         */
   PAYAE005             INTEGER                         not null,  /*供应商           */ 
   PAYAE006             INTEGER                         not null,  /*付款供应商       */ 
   PAYAE007             INTEGER,                                   /*部门             */ 
   PAYAE008             INTEGER,                                   /*人员             */
   PAYAE009             VARCHAR2(1)                     not null,  /*单据状态         */ 
   PAYAE010             INTEGER,                                   /*录入人           */ 
   PAYAE011             DATE,                                      /*录入日期         */ 
   PAYAE012             INTEGER,                                   /*审核人           */ 
   PAYAE013             DATE,                                      /*审核日期         */ 
   PAYAE014             NUMBER(16,2),                              /*原币付款合计     */ 
   PAYAE015             NUMBER(16,2),                              /*本币付款合计     */ 
   PAYAE016             NUMBER(16,2),                              /*原币核销金额     */
   PAYAE017             NUMBER(16,2),                              /*本币核销金额       */ 
   PAYAE018             VARCHAR2(1)                     not null,  /*核销状态         */  
   PAYAE019             VARCHAR2(30),                              /*采购单单号           */ 
   PAYAE020             INTEGER                         not null,  /*币种               */ 
   PAYAE021             NUMBER(16,4),                               /*汇率               */  
   PAYAE022             VARCHAR2(1)                     not null,   /*来源               */  
   PAYAE023             INTEGER,                                   /*来源单号ID          */   
   PAYAE024             NUMBER(4),                                /*会计年度               */  
   PAYAE025             NUMBER(2),                                /*会计期间          */     
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PAYAE primary key (PAYAE_ID)
);
create unique index AK_TB_PAYAE on TB_PAYAE (PAYAE002,PAYAE003);
create sequence SEQ_TB_PAYAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAE to public;
grant index  on TB_PAYAE to public;
grant update on TB_PAYAE to public; 
grant delete on TB_PAYAE to public;  
grant insert on TB_PAYAE to public; 
grant select on SEQ_TB_PAYAE to public;   