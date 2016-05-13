/*
================================================================================
表结构代码:TB_PURFF
表结构名称:货主变更子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PURFF;
drop index AK_TB_PURFF;
drop table TB_PURFF;
create table TB_PURFF  (
   PURFF_ID             INTEGER                    not null,    /* 货主变更明细ID      */        
   PURFF001             INTEGER                    not null,    /* 货主变更ID          */        
   PURFF002             INTEGER,		   not null,    /* 销售单明细ID        */  
   PURFF003             VARCHAR2(1),               not null,    /* 商品服务属性        */  
   PURFF004             VARCHAR2(1),               not null,    /* 销售属性            */          
   PURFF005             INTEGER                    not null,    /* 商品ID              */        
   PURFF006             INTEGER,		                /* 维度1               */        
   PURFF007             INTEGER,				/* 维度2               */        
   PURFF008             INTEGER,				/* 维度3               */       
   PURFF009             INTEGER,			        /* 维度4               */       
   PURFF010             INTEGER,				/* 维度5               */        
   PURFF011             INTEGER                                 /* 单位                */           
   PURFF012             NUMBER(18,3)               not null,    /* 变更数量            */
   PURFF013             VARCHAR2(1),			        /* 是否组装品          */
   PURFF014             VARCHAR2(1),                            /* 是否成分            */
   PURFF015             INTEGER,			        /* 主商品ID            */
   PURFF016             INTEGER,			        /* 包数                */
   PURFF017             VARCHAR2(30),		                /* 子套件对应关系随机码*/ 
   PURFF018             VARCHAR2(255),                          /* 备注                */        
   CREATE_USER          VARCHAR2(12),			        /* 建立人员            */
   USER_GROUP           VARCHAR2(12),                           /* 建立人员部门        */                               
   CREATE_DATE          DATE,	                                /* 建立日期            */
   MODIFIER             VARCHAR2(12),			        /* 修改人员            */
   MODI_DATE            DATE,				        /* 修改日期            */
   FLAG                 NUMBER,				        /* 资料状态            */
   constraint PK_TB_PURFF primary key (PURFF_ID) 
);
create index AK_TB_PURFF on TB_PURFF (PURFF_ID,PURFF002,PURFF005,FLAG);
create sequence SEQ_TB_PURFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFF to public;
grant index  on TB_PURFF to public;
grant update on TB_PURFF to public; 
grant delete on TB_PURFF to public;  
grant insert on TB_PURFF to public; 
grant select on SEQ_TB_PURFF to public;   