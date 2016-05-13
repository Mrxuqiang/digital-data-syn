/*
================================================================================
表结构代码:TB_PURLA
表结构名称:收货单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PURLA;
drop index AK_TB_PURLA;
drop table TB_PURLA;
create table TB_PURLA  (
   PURLA_ID            INTEGER                not null,            /*收货单主表ID        */        
   PURLA001            INTEGER                not null,            /*单别                */ 
   PURLA002            VARCHAR2(30)           not null,            /*收货单号            */        
   PURLA003            INTEGER                not null,            /*收货通知单ID        */        
   PURLA004            INTEGER,                                    /*收货人员            */        
   PURLA005            INTEGER                not null,            /* 供应商             */       
   PURLA006            INTEGER                not null,            /*收货仓库            */  
   PURLA007            INTEGER                not null,            /*收货营运组织        */       
   PURLA008            VARCHAR2(30),                               /*供应厂商单号        */        
   PURLA009            INTEGER,                                    /*录入人              */   
   PURLA010            DATE   ,                                    /*录入日期            */        
   PURLA011            VARCHAR2(1)           not null,             /*审核状态            */                               
   PURLA012            INTEGER,                                    /*审核人              */        
   PURLA013            DATE    ,                                   /*审核时间            */  
   PURLA014            VARCHAR2(255),                              /*备注                */  
   PURLA015            VARCHAR2(1),                                /*来源                */
   PURLA016            INTEGER,                                    /*来源收货单ID        */
   PURLA017            VARCHAR2(1),                                /*来源单据类型        */--20111102 add by xiechun
   CREATE_USER         VARCHAR2(12),                               /*建立人员            */
   USER_GROUP          VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE         DATE,                                       /*建立日期            */
   MODIFIER            VARCHAR2(12),                               /*修改人员            */
   MODI_DATE           DATE,                                       /*修改日期            */
   FLAG                NUMBER,                                     /*资料状态               */
   constraint PK_TB_PURLA primary key (PURLA_ID)
);
create unique index AK_TB_PURLA on TB_PURLA (PURLA_ID,PURLA001,PURLA002,FLAG);
create sequence SEQ_TB_PURLA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURLA to public;
grant index  on TB_PURLA to public;
grant update on TB_PURLA to public; 
grant delete on TB_PURLA to public;  
grant insert on TB_PURLA to public; 
grant select on SEQ_TB_PURLA to public;   