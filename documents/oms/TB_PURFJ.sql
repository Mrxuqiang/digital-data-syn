/*
================================================================================
表结构代码:TB_PURFJ
表结构名称:发货单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PURFJ;
drop index AK_TB_PURFJ;
drop table TB_PURFJ;
create table TB_PURFJ  (
   PURFJ_ID             INTEGER                    not null,    /* 发货单明细ID        */        
   PURFJ001             INTEGER                    not null,    /* 发货单ID            */        
   PURFJ002             INTEGER,		   not null,    /* 来源单明细ID        */  
   PURFJ003             VARCHAR2(1),               not null,    /* 商品服务属性        */  
   PURFJ004             VARCHAR2(1),               not null,    /* 销售属性            */          
   PURFJ005             INTEGER                    not null,    /* 商品ID              */        
   PURFJ006             INTEGER,		                /* 维度1               */     
   PURFJ007             INTEGER,			        /* 维度2               */        
   PURFJ008             INTEGER,			        /* 维度3              */       
   PURFJ009             INTEGER,			        /* 维度4               */       
   PURFJ010             INTEGER,			        /* 维度5               */        
   PURFJ011             INTEGER                                 /* 单位                */           
   PURFJ012             NUMBER(18,3)               not null,    /* 发货数量            */
   PURFJ013	        NUMBER(28,3),                           /* 单位成本            */
   PURFJ014	        NUMBER(28,2),                           /* 成本金额            */
   PURFJ015             VARCHAR2(1),			        /* 是否组装品          */
   PURFJ016             VARCHAR2(1),                            /* 是否成分            */
   PURFJ017             INTEGER,			        /* 主商品ID            */
   PURFJ018             INTEGER,			        /* 包数                */
   PURFJ019             VARCHAR2(30),		                /* 子套件对应关系随机码*/ 
   PURFJ020             VARCHAR2(255),                          /* 备注                */    
   PURFJ021             NUMBER(18,3)                       ,    /* 排车数量            */--20130109 add by xiechun  
   PURFJ022             NUMBER(18,3)                       ,    /* 签收数量            */--20130109 add by xiechun    
   CREATE_USER          VARCHAR2(12),			        /* 建立人员            */
   USER_GROUP           VARCHAR2(12),                           /* 建立人员部门        */                           
   CREATE_DATE          DATE,	                                /* 建立日期            */
   MODIFIER             VARCHAR2(12),			        /* 修改人员            */
   MODI_DATE            DATE,				        /* 修改日期            */
   FLAG                 NUMBER,				        /* 资料状态            */
   constraint PK_TB_PURFJ primary key (PURFJ_ID) 
);
create index AK_TB_PURFJ on TB_PURFJ (PURFJ_ID,PURFJ002,PURFJ005,FLAG);
create sequence SEQ_TB_PURFJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFJ to public;
grant index  on TB_PURFJ to public;
grant update on TB_PURFJ to public; 
grant delete on TB_PURFJ to public;  
grant insert on TB_PURFJ to public; 
grant select on SEQ_TB_PURFJ to public;   