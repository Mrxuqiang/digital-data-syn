/*
================================================================================
表结构代码:TB_INVKD
表结构名称:捡货明细主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVKD;
drop index AK_TB_INVKD;
drop table TB_INVKD;
create table TB_INVKD  (
   INVKD_ID             INTEGER                    not null,    /*拣货明细主表ID            */    
   INVKD001             INTEGER                    not null,    /*捡货明细单别            */    
   INVKD002             VARCHAR2(30)           	   not null,    /*捡货明细单号            */    
   INVKD003             DATE                       not null,    /*单据日期            */    
   INVKD004             INTEGER		           not null,    /*营运组织            */ 
   INVKD005             VARCHAR2(30)               not null,    /*拣货单号            */  
   INVKD006             INTEGER                    not null,    /*仓库       */   
   INVKD007             VARCHAR2(1),                            /*生成方式            */      
   INVKD008             INTEGER,                                /*货区            */
   INVKD009             INTEGER,                                /*货道            */    
   INVKD010             INTEGER,                                /*货架            */   
   INVKD011              DATE,                                  /*完成日期              */    
   INVKD012             INTEGER,                                /*拣货人              */ 
   INVKD013             INTEGER,                                /*录入人              */    
   INVKD014             DATE,                                   /*录入时间            */   
   INVKD015             INTEGER,                                /*拣货单ID            */
   CREATE_USER          VARCHAR2(12),                          /*建立人员         */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门     */        
   CREATE_DATE          DATE,                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                          /*修改人员         */
   MODI_DATE            DATE,                                  /*修改日期         */
   FLAG                 NUMBER(1),                             /*资料状态         */
   constraint PK_TB_SERFE primary key (INVKD_ID)
);
create unique index AK_TB_SERFE on TB_INVKD (INVKD002,INVKD004,INVKD006);
create sequence SEQ_TB_INVKD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVKD to public;
grant index  on TB_INVKD to public;
grant update on TB_INVKD to public; 
grant delete on TB_INVKD to public;  
grant insert on TB_INVKD to public; 
grant select on SEQ_TB_INVKD to public;   


