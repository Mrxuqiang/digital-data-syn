/*                 
================================================================================
表结构代码:TB_RECAP
表结构名称:自营预收转账单
表结构目的:
================================================================================
*/  
  
drop sequence SEQ_TB_RECAP;
drop index AK_TB_RECAP;
drop table TB_RECAP;
create table TB_RECAP  (
   RECAP_ID             INTEGER                         not null,  /*转账单ID              */
   RECAP001             INTEGER                         not null,  /*单别ID                */
   RECAP002             VARCHAR2(30)                    not null,  /*单号                  */
   RECAP003             DATE                            not null,  /*单据日期              */
   RECAP004             INTEGER                         not null,  /*原客户ID              */ 
   RECAP005             INTEGER                         not null,  /*转入客户ID            */
   RECAP006             INTEGER,                                   /*销售单号ID            */
   RECAP007             INTEGER,                                   /*交款单号ID            */
   RECAP008             INTEGER,                                   /*预收待抵单ID          */
   RECAP009             INTEGER ,                                  /*币种                  */                                                                           
   RECAP010             NUMBER(6,7),                               /*汇率                  */
   RECAP011             VARCHAR2(255),                             /*备注                  */
   RECAP012             NUMBER(28,2),                              /*原币金额              */
   RECAP013             NUMBER(28,2),                              /*本币金额              */
   RECAP014             VARCHAR2(1)                      not null, /*单据状态              */
   RECAP015             INTEGER,                                   /*录入人                */
   RECAP016             DATE,                                      /*录入日期              */                                                                        
   RECAP017             INTEGER,                                   /*审核人                */                                                                        
   RECAP018             DATE,                                      /*审核日期              */ 
   RECAP019             NUMBER(4) ,                                /*会计年度              */     
   RECAP020             NUMBER(2) ,                                /*会计期间              */      
   RECAP021             NUMBER(28,2),                              /*原币冲销金额          */
   RECAP022             NUMBER(28,2),                              /*本币冲销金额          */
   RECAP023             INTEGER ,                                  /*营运组织ID              */ 
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER,                                    /*资料状态              */
   constraint PK_TB_RECAP primary key (RECAP_ID)
);  
create unique index AK_TB_RECAP on TB_RECAP (RECAP001,RECAP002);
create sequence SEQ_TB_RECAP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAP to public;
grant index  on TB_RECAP to public;
grant update on TB_RECAP to public; 
grant delete on TB_RECAP to public;  
grant insert on TB_RECAP to public; 
grant select on SEQ_TB_RECAP to public;   