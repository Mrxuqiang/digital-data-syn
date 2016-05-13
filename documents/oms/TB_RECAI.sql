/*                 
================================================================================
表结构代码:TB_RECAI
表结构名称:预收退款主表
表结构目的:
================================================================================
*/  
  
drop sequence SEQ_TB_RECAI;
drop index AK_TB_RECAI;
drop table TB_RECAI;
create table TB_RECAI  (
   RECAI_ID             INTEGER                         not null,  /*退款主表ID        */
   RECAI001             INTEGER                         not null,  /*单别              */
   RECAI002             VARCHAR2(30)                    not null,  /*退款单号          */
   RECAI003             DATE                            not null,  /*退款日期          */
   RECAI004             INTEGER                         not null,  /*客户              */ 
   RECAI005             INTEGER                         not null,  /*退款客户              */
   RECAI006             VARCHAR2(1)                     not null,  /*来源              */
   RECAI007             INTEGER,                                   /*来源单号          */
   RECAI008             INTEGER                         not null,  /*币种              */
   RECAI009             NUMBER(5,4)                     not null,  /*汇率              */                                                                           
   RECAI010             INTEGER,                                   /*部门              */
   RECAI011             INTEGER,                                   /*人员              */
   RECAI012             VARCHAR2(1),                               /*单据状态          */
   RECAI013             VARCHAR2(1),                               /*核销状态          */
   RECAI014             NUMBER(16,2),                              /*原币退款金额      */
   RECAI015             NUMBER(16,2),                              /*本币退款金额      */
   RECAI016             NUMBER(16,2),                               /*原币核销金额      */
   RECAI017             NUMBER(16,2),                               /*本币核销金额      */
   RECAI018             INTEGER,                                    /*录入人            */
   RECAI019             DATE,                                       /*录入日期          */
   RECAI020             INTEGER,                                    /*审核人            */                                                                        
   RECAI021             DATE,                                      /*审核日期          */ 
   RECAI022             INTEGER,                                   /*营运组织ID          */ 
   RECAI023             VARCHAR2(255),                             /*备注          */ 
   RECAI024             VARCHAR2(1),                               /*生成凭证          */    
   RECAI025             NUMBER(4),                                 /*会计年度          */       
   RECAI026             NUMBER(2),                                 /*会计期间          */                                                                                                                                                     
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_RECAI primary key (RECAI_ID)
);  
create unique index AK_TB_RECAI on TB_RECAI (RECAI001,RECAI002);
create sequence SEQ_TB_RECAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAI to public;
grant index  on TB_RECAI to public;
grant update on TB_RECAI to public; 
grant delete on TB_RECAI to public;  
grant insert on TB_RECAI to public; 
grant select on SEQ_TB_RECAI to public;   