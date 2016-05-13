/*
================================================================================
表结构代码:TB_WMSBB
表结构名称:提货通知单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_WMSBB;
drop index AK_TB_WMSBB;
drop table TB_WMSBB;
create table TB_WMSBB  (
   WMSBB_ID             INTEGER                    not null,    /* 提货通知单明细ID        */        
   WMSBB001             INTEGER                    not null,    /* 提货通知单ID            */        
   WMSBB002             VARCHAR2(1)                not null,    /* 商品服务属性        */  
   WMSBB003             VARCHAR2(1)                not null,    /* 销售属性            */          
   WMSBB004             INTEGER                    not null,    /* 商品ID              */        
   WMSBB005             INTEGER,		                /* 维度1               */     
   WMSBB006             INTEGER,			        /* 维度2               */        
   WMSBB007             INTEGER,			        /* 维度3              */       
   WMSBB008             INTEGER,			        /* 维度4               */       
   WMSBB009             INTEGER,			        /* 维度5               */        
   WMSBB010             INTEGER,                                /* 单位                */           
   WMSBB011             NUMBER(18,3)               not null,    /* 预计提货量            */
   WMSBB012             NUMBER(18,3)               not null,    /* 实际提货量            */
   WMSBB013             VARCHAR2(1),			        /* 是否组装品          */
   WMSBB014             VARCHAR2(1),                            /* 是否成分            */
   WMSBB015             INTEGER,			        /* 主商品ID            */
   WMSBB016             INTEGER,			        /* 包数                */
   WMSBB017             VARCHAR2(30),		                /* 子套件对应关系随机码*/ 
   WMSBB018             VARCHAR2(255),                          /* 货号                */   
   WMSBB019             NUMBER(18,3),                           /* 体积                */ 
   WMSBB020             VARCHAR2(255),                          /* 备注                */    
   CREATE_USER          VARCHAR2(12),			        /* 建立人员            */
   USER_GROUP           VARCHAR2(12),                           /* 建立人员部门        */                           
   CREATE_DATE          DATE,	                                /* 建立日期            */
   MODIFIER             VARCHAR2(12),			        /* 修改人员            */
   MODI_DATE            DATE,				        /* 修改日期            */
   FLAG                 NUMBER,				        /* 资料状态            */
   constraint PK_TB_WMSBB primary key (WMSBB_ID) 
);
create index AK_TB_WMSBB on TB_WMSBB (WMSBB001,WMSBB002,WMSBB003,WMSBB004,WMSBB005,WMSBB006,WMSBB007,WMSBB008,WMSBB009,FLAG);
create sequence SEQ_TB_WMSBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_WMSBB to public;
grant index  on TB_WMSBB to public;
grant update on TB_WMSBB to public; 
grant delete on TB_WMSBB to public;  
grant insert on TB_WMSBB to public; 
grant select on SEQ_TB_WMSBB to public;   