/*
================================================================================
表结构代码:TB_SERFA
表结构名称:寄存单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERFA;
drop index AK_TB_SERFA;
drop table TB_SERFA;
create table TB_SERFA  (
   SERFA_ID             INTEGER                   not null,    /*寄存单ID            */    
   SERFA001             INTEGER                   not null,    /*寄存单别            */    
   SERFA002             VARCHAR2(30)              not null,    /*寄存单号            */    
   SERFA003             DATE                      not null,    /*寄存日期            */    
   SERFA004             VARCHAR2(1)               not null,    /*单据来源            */    
   SERFA005             INTEGER                   not null,    /*来源单ID            */   
   SERFA006             VARCHAR2(30)              not null,    /*来源单号            */    
   SERFA007             INTEGER                                /*营运组织            */    
   SERFA008             DATE                                   /*提货日期            */    
   SERFA009             INTEGER                                /*客户编号            */   
   SERFA010             VARCHAR2(30)                           /*会员号              */   
   SERFA011             VARCHAR2(25)                           /*交易序号            */    
   SERFA012             VARCHAR2(25)                           /*机号                */    
   SERFA013             DATE                                   /*交易日期            */    
   SERFA014             VARCHAR2(30)                           /*顾客名称            */    
   SERFA015             VARCHAR2(30)                           /*顾客电话            */   
   SERFA016             VARCHAR2(1)                            /*证件类型            */   
   SERFA017             VARCHAR2(30)                           /*证件号码            */   
   SERFA018             VARCHAR2(255)                          /*备注                */    
   SERFA019             VARCHAR2(1),                           /*审核状态            */    
   SERFA020             INTEGER,                               /*录入人              */    
   SERFA021             DATE,                                  /*录入时间            */    
   SERFA022             INTEGER,                               /*审核人              */    
   SERFA023             DATE,                                  /*审核时间            */  
   SERFA024             VARCHAR2(1)               not null,    /*寄存状态            */   
   CREATE_USER          VARCHAR2(12),                          /*建立人员         */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门     */                               
   CREATE_DATE          DATE,                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                          /*修改人员         */
   MODI_DATE            DATE,                                  /*修改日期         */
   FLAG                 NUMBER(1),                             /*资料状态         */
   constraint PK_TB_SERFA primary key (SERFA_ID)
);
create unique index AK_TB_SERFA on TB_SERFA (SERFA001,SERFA002);
create sequence SEQ_TB_SERFA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFA to public;
grant index  on TB_SERFA to public;
grant update on TB_SERFA to public; 
grant delete on TB_SERFA to public;  
grant insert on TB_SERFA to public; 
grant select on SEQ_TB_SERFA to public;   