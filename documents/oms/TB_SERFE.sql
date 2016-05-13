/*
================================================================================
表结构代码:TB_SERFE
表结构名称:送货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERFE;
drop index AK_TB_SERFE;
drop table TB_SERFE;
create table TB_SERFE  (
   SERFE_ID             INTEGER                   not null,    /*送货单ID            */    
   SERFE001             INTEGER                   not null,    /*送货单别            */    
   SERFE002             VARCHAR2(30)              not null,    /*送货单号            */    
   SERFE003             DATE                      not null,    /*送货日期            */    
   SERFE004             VARCHAR2(1)               not null,    /*单据来源            */    
   SERFE005             INTEGER                   not null,    /*来源单ID            */   
   SERFE006             VARCHAR2(30)              not null,    /*来源单号            */    
   SERFE007             INTEGER                                /*营运组织            */    
   SERFE008             VARCHAR2(255)                          /*送货地址            */    
   SERFE009             INTEGER                                /*客户编号            */   
   SERFE010             VARCHAR2(30)                           /*会员号              */   
   SERFE011             VARCHAR2(25)                           /*交易序号            */    
   SERFE012             VARCHAR2(25)                           /*机号                */    
   SERFE013             DATE                                   /*交易日期            */    
   SERFE014             VARCHAR2(30)                           /*顾客名称            */    
   SERFE015             VARCHAR2(30)                           /*顾客电话            */   
   SERFE016             VARCHAR2(1)                            /*证件类型            */   
   SERFE017             VARCHAR2(30)                           /*证件号码            */   
   SERFE018             VARCHAR2(255)                          /*备注                */    
   SERFE019             VARCHAR2(1),                           /*审核状态            */    
   SERFE020             INTEGER,                               /*录入人              */    
   SERFE021             DATE,                                  /*录入时间            */    
   SERFE022             INTEGER,                               /*审核人              */    
   SERFE023             DATE,                                  /*审核时间            */  
   SERFE024             VARCHAR2(1)               not null,    /*送货状态            */   
   CREATE_USER          VARCHAR2(12),                          /*建立人员         */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门     */                               
   CREATE_DATE          DATE,                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                          /*修改人员         */
   MODI_DATE            DATE,                                  /*修改日期         */
   FLAG                 NUMBER(1),                             /*资料状态         */
   constraint PK_TB_SERFE primary key (SERFE_ID)
);
create unique index AK_TB_SERFE on TB_SERFE (SERFE001,SERFE002);
create sequence SEQ_TB_SERFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERFE to public;
grant index  on TB_SERFE to public;
grant update on TB_SERFE to public; 
grant delete on TB_SERFE to public;  
grant insert on TB_SERFE to public; 
grant select on SEQ_TB_SERFE to public;   