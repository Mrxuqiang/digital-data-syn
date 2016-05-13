/*
================================================================================
表结构代码:TB_SERFC
表结构名称:提货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERFC;
drop index AK_TB_SERFC;
drop table TB_SERFC;
create table TB_SERFC  (
   SERFC_ID             INTEGER                   not null,    /*提货单ID            */    
   SERFC001             INTEGER                   not null,    /*提货单别            */    
   SERFC002             VARCHAR2(30)              not null,    /*提货单号            */    
   SERFC003             DATE                      not null,    /*提货日期            */      
   SERFC004             INTEGER                   not null,    /*寄存单ID            */   
   SERFC005             VARCHAR2(30)              not null,    /*寄存单号            */       
   SERFC006             INTEGER,                                /*客户编号            */   
   SERFC007             VARCHAR2(30),                           /*会员号              */   
   SERFC008             VARCHAR2(25),                           /*交易序号            */    
   SERFC009             VARCHAR2(25),                           /*机号                */    
   SERFC010             DATE,                                   /*交易日期            */    
   SERFC011             VARCHAR2(30),                           /*顾客名称            */    
   SERFC012             VARCHAR2(30),                           /*顾客电话            */   
   SERFC013             VARCHAR2(1),                            /*证件类型            */   
   SERFC014             VARCHAR2(30),                           /*证件号码            */   
   SERFC015             VARCHAR2(255),                          /*备注                */    
   SERFC016             VARCHAR2(1),                           /*审核状态            */    
   SERFC017             INTEGER,                               /*录入人              */    
   SERFC018             DATE,                                  /*录入时间            */    
   SERFC019             INTEGER,                               /*审核人              */    
   SERFC020             DATE,                                  /*审核时间            */     
   CREATE_USER          VARCHAR2(12),                          /*建立人员         */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门     */                               
   CREATE_DATE          DATE,                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                          /*修改人员         */
   MODI_DATE            DATE,                                  /*修改日期         */
   FLAG                 NUMBER(1),                             /*资料状态         */
   constraint PK_TB_SERFC primary key (SERFC_ID)
);
create unique index AK_TB_SERFC on TB_SERFC (SERFC001,SERFC002);
create sequence SEQ_TB_SERFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFC to public;
grant index  on TB_SERFC to public;
grant update on TB_SERFC to public; 
grant delete on TB_SERFC to public;  
grant insert on TB_SERFC to public; 
grant select on SEQ_TB_SERFC to public;   