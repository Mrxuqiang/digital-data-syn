/*
================================================================================
表结构代码:TB_PROBB
表结构名称:维修单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROBB;
drop index AK_TB_PROBB;
drop table TB_PROBB;
create table TB_PROBB  (                                       
   PROBB_ID             INTEGER                        not null,   /*维修单ID            */            
   PROBB001             INTEGER                        not null,   /*单别                */            
   PROBB002             VARCHAR2(30)                   not null,   /*维修单编号          */                    
   PROBB003             DATE                           not null,   /*维修日期            */ 
   PROBB004             INTEGER                        not null,   /*营运组织            */
   PROBB005             INTEGER                        not null,   /*报修单ID            */  
   PROBB006             INTEGER,                                   /*摊位ID              */            
   PROBB007             INTEGER                        not null,   /*商户ID              */   
   PROBB008             INTEGER                        not null,   /*处理部门            */   
   PROBB009             INTEGER                        not null,   /*处理人员            */     
   PROBB010             DATE,                                      /*派工时间            */
   PROBB011             DATE,                                      /*完工时间            */
   PROBB012             VARCHAR2(30),                              /*维护地点            */
   PROBB013             NUMBER(12,2),                              /*费用总计            */
   PROBB014             INTEGER                        not null,   /*费用编码            */
   PROBB015             INTEGER,                                   /*费用单ID            */
   PROBB016             VARCHAR2(60),                              /*备注                */
   PROBB017             VARCHAR2(1),                               /*商户验收            */
   PROBB018             VARCHAR2(1),                               /*部门验收            */
   PROBB019             VARCHAR2(100),                             /*验收说明            */
   PROBB020             VARCHAR2(100),                             /*处理内容            */
   PROBB021             INTEGER,                                   /*录入人ID            */
   PROBB022             DATE,                                      /*录入日期            */
   PROBB023             INTEGER,                                   /*审核人ID            */
   PROBB024             DATE,                                      /*审核日期            */
   PROBB025             VARCHAR2(1)                     not null,  /*审核状态            */
   PROBB026             VARCHAR2(1),                               /*是否签核            */
   PROBB027             VARCHAR2(30),                              /*签核单号            */
   PROBB028             VARCHAR2(1),                               /*签核码              */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER(1),                                 /*资料状态            */             
                                           
   constraint PK_TB_PROBB primary key (PROBB_ID)                               
);                                           
create unique index AK_TB_PROBB on TB_PROBB (PROBB001,PROBB002);               
create sequence SEQ_TB_PROBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROBB to public;                                     
grant index  on TB_PROBB to public;                                     
grant update on TB_PROBB to public;                                      
grant delete on TB_PROBB to public;                                       
grant insert on TB_PROBB to public;                                      
grant select on SEQ_TB_PROBB to public;                                        