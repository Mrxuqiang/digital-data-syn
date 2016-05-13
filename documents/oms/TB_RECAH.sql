/*                 
================================================================================
表结构代码:TB_RECAH
表结构名称:预收待抵单
表结构目的:
================================================================================
*/  
  
drop sequence SEQ_TB_RECAH;
drop index AK_TB_RECAH;
drop table TB_RECAH;
create table TB_RECAH  (
   RECAH_ID             INTEGER                         not null,  /*预收待抵表ID       */
   RECAH001             INTEGER                         not null,  /*单别ID               */
   RECAH002             VARCHAR2(30)                    not null,  /*单号               */
   RECAH003             DATE                            not null,  /*单据日期           */
   RECAH004             INTEGER                         not null,  /*客户ID               */ 
   RECAH005             INTEGER                         not null,  /*收款客户ID              */
   RECAH006             INTEGER,                                   /*部门ID               */
   RECAH007             INTEGER,                                   /*人员ID               */
   RECAH008             VARCHAR2(1)                     not null,  /*来源               */
   RECAH009             VARCHAR2(30)                    not null,  /*来源单号           */                                                                           
   RECAH010             INTEGER,                                   /*项目编号           */
   RECAH011             INTEGER,                                   /*订单单号           */
   RECAH012             NUMBER(16,2),                              /*原币金额           */
   RECAH013             NUMBER(16,2),                              /*本币金额           */
   RECAH014             NUMBER(16,2),                              /*原币已核销金额     */
   RECAH015             NUMBER(16,2),                              /*本币已核销金额     */
   RECAH016             VARCHAR2(1)                      not null, /*核销状态           */
   RECAH017             VARCHAR2(1)                      not null, /*生成凭证           */
   RECAH018             VARCHAR2(1)                      not null, /*单据状态           */
   RECAH019             INTEGER,                                   /*录入人             */
   RECAH020             DATE,                                      /*录入日期           */                                                                        
   RECAH021             INTEGER,                                   /*审核人             */                                                                        
   RECAH022             DATE,                                      /*审核日期           */ 
   RECAH023             INTEGER                         not null,  /*币种ID               */ 
   RECAH024             INTEGER,                                   /*会计科目ID         */ 
   RECAH025             INTEGER                         not null,  /*来源单号ID         */ 
   RECAH026             INTEGER,                                   /*来源单身ID         */ 
   RECAH027             NUMBER(16,2) ,                             /*原币待退金额       */ 
   RECAH028             NUMBER(16,2) ,                             /*本币待退金额       */ 
   RECAH029             INTEGER ,                                  /*营运组织ID         */ 
   RECAH030             NUMBER(16,4) ,                             /*汇率                */  
   RECAH031             NUMBER(4) ,                                /*会计年度                */     
   RECAH032             NUMBER(2) ,                                /*会计期间                */  
   RECAH033             INTEGER ,                                  /*异动项ID                */                                                                                
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_RECAH primary key (RECAH_ID)
);  
create unique index AK_TB_RECAH on TB_RECAH (RECAH001,RECAH002);
create sequence SEQ_TB_RECAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAH to public;
grant index  on TB_RECAH to public;
grant update on TB_RECAH to public; 
grant delete on TB_RECAH to public;  
grant insert on TB_RECAH to public; 
grant select on SEQ_TB_RECAH to public;   