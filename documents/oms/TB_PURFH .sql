/*
================================================================================
表结构代码:TB_PURFH
表结构名称:出货通知单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PURFH;
drop index AK_TB_PURFH;
drop table TB_PURFH;
create table TB_PURFH  (
   PURFH_ID             INTEGER                    not null,    /* 出货通知单明细ID    */        
   PURFH001             INTEGER                    not null,    /* 出货通知单ID        */        
   PURFH002             INTEGER,		   not null,    /* 销售单明细ID        */  
   PURFH003             VARCHAR2(1),               not null,    /* 商品服务属性        */  
   PURFH004             VARCHAR2(1),               not null,    /* 销售属性            */          
   PURFH005             INTEGER                    not null,    /* 商品ID              */        
   PURFH006             INTEGER,		                /* 维度1               */        
   PURFH007             INTEGER,				/* 维度2               */        
   PURFH008             INTEGER,				/* 维度3               */       
   PURFH009             INTEGER,			        /* 维度4               */       
   PURFH010             INTEGER,			        /* 维度5               */        
   PURFH011             INTEGER                                 /* 单位                */           
   PURFH012             NUMBER(18,3)               not null,    /* 出货数量            */
   PURFH013             VARCHAR2(1),			        /* 是否组装品          */
   PURFH014             VARCHAR2(1),                            /* 是否成分            */
   PURFH015             INTEGER,			        /* 主商品ID            */
   PURFH016             INTEGER,			        /* 包数                */
   PURFH017             VARCHAR2(30),		                /* 子套件对应关系随机码*/ 
   PURFH018             VARCHAR2(255),                          /* 备注                */        
   CREATE_USER          VARCHAR2(12),			        /* 建立人员            */
   USER_GROUP           VARCHAR2(12),                           /* 建立人员部门        */                               
   CREATE_DATE          DATE,	                                /* 建立日期            */
   MODIFIER             VARCHAR2(12),			        /* 修改人员            */
   MODI_DATE            DATE,				        /* 修改日期            */
   FLAG                 NUMBER,				        /* 资料状态            */
   constraint PK_TB_PURFH primary key (PURFH_ID) 
);
create index AK_TB_PURFH on TB_PURFH (PURFH_ID,PURFH002,PURFH005,FLAG);
create sequence SEQ_TB_PURFH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFH to public;
grant index  on TB_PURFH to public;
grant update on TB_PURFH to public; 
grant delete on TB_PURFH to public;  
grant insert on TB_PURFH to public; 
grant select on SEQ_TB_PURFH to public;   