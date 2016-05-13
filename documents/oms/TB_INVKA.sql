/*
================================================================================
表结构代码:TB_INVKA
表结构名称:捡货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVKA;
drop index AK_TB_INVKA;
drop table TB_INVKA;
create table TB_INVKA  (
   INVKA_ID             INTEGER                   not null,    /*拣货单ID            */    
   INVKA001             INTEGER                   not null,    /*捡货单别            */    
   INVKA002             VARCHAR2(30)              not null,    /*捡货单号            */    
   INVKA003             DATE                      not null,    /*捡货日期            */    
   INVKA004             VARCHAR2(1)               not null,    /*单据来源            */  1.排车单 2销售单 3 借出单  
   INVKA005             INTEGER                   not null,    /*来源单ID            */   --排车单ID
   INVKA006             VARCHAR2(30)              not null,    /*来源单号            */    
   INVKA007             INTEGER,                               /*公司ID              */
   INVKA008             INTEGER,                               /*营运组织ID          */    
   INVKA009             INTEGER,                               /*仓库ID              */   
   INVKA010             INTEGER,                               /*司机ID              */    
   INVKA011             VARCHAR2(1),                           /*审核状态            */    
   INVKA012             INTEGER,                               /*录入人              */    
   INVKA013             DATE,                                  /*录入时间            */    
   INVKA014             INTEGER,                               /*审核人              */    
   INVKA015             DATE,                                  /*审核时间            */  
   INVKA016             VARCHAR2(255),                         /*备注     					*/ 
   INVKA017             INTEGER,                               /*车辆ID             */       
   CREATE_USER          VARCHAR2(12),                          /*建立人员         */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门     */        
   CREATE_DATE          DATE,                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                          /*修改人员         */
   MODI_DATE            DATE,                                  /*修改日期         */
   FLAG                 NUMBER(1),                             /*资料状态         */
   constraint PK_TB_SERFE primary key (INVKA_ID)
);
create unique index AK_TB_SERFE on TB_INVKA (INVKA002,INVKA008);
create sequence SEQ_TB_INVKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVKA to public;
grant index  on TB_INVKA to public;
grant update on TB_INVKA to public; 
grant delete on TB_INVKA to public;  
grant insert on TB_INVKA to public; 
grant select on SEQ_TB_INVKA to public;   


