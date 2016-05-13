/*
================================================================================
表结构代码:TB_PROBA
表结构名称:报修单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROBA;
drop index AK_TB_PROBA;
drop table TB_PROBA;
create table TB_PROBA  (                                       
   PROBA_ID             INTEGER                        not null,   /*报修单ID            */            
   PROBA001             INTEGER                        not null,   /*单别                */            
   PROBA002             VARCHAR2(30)                   not null,   /*报修单编号          */                    
   PROBA003             DATE                           not null,   /*报修日期            */ 
   PROBA004             INTEGER                        not null,   /*营运组织            */
   PROBA005             INTEGER,                                   /*摊位ID              */            
   PROBA006             INTEGER                        not null,   /*商户ID              */               
   PROBA007             VARCHAR2(1000)                 not null,   /*故障内容            */  
   PROBA008             VARCHAR2(30),                              /*报修人              */ 
   PROBA009             VARCHAR2(30),                              /*固定电话            */
   PROBA010             VARCHAR2(30),                              /*移动电话            */
   PROBA011             INTEGER                        not null,   /*受理部门            */   
   PROBA012             INTEGER                        not null,   /*受理人员            */  
   PROBA013             INTEGER,                                   /*录入人ID            */
   PROBA014             DATE,                                      /*录入日期            */
   PROBA015             INTEGER,                                   /*审核人ID            */
   PROBA016             DATE,                                      /*审核日期            */
   PROBA017             VARCHAR2(1)                     not null,  /*审核状态            */
   PROBA018             VARCHAR2(1),                               /*是否签核            */
   PROBA019             VARCHAR2(30),                              /*签核单号            */
   PROBA020             VARCHAR2(1),                               /*签核码              */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER(1),                                 /*资料状态            */             
                                           
   constraint PK_TB_PROBA primary key (PROBA_ID)                               
);                                           
create unique index AK_TB_PROBA on TB_PROBA (PROBA001,PROBA002);               
create sequence SEQ_TB_PROBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROBA to public;                                     
grant index  on TB_PROBA to public;                                     
grant update on TB_PROBA to public;                                      
grant delete on TB_PROBA to public;                                       
grant insert on TB_PROBA to public;                                      
grant select on SEQ_TB_PROBA to public;                                        