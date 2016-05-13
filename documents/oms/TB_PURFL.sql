/*
================================================================================
表结构代码:TB_PURFL
表结构名称:提货单子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PURFL;
drop index AK_TB_PURFL;
drop table TB_PURFL;
create table TB_PURFL  (
   PURFL_ID             INTEGER                    not null,    /* 提货单明细ID        */        
   PURFL001             INTEGER                    not null,    /* 提货单ID            */        
   PURFL002             INTEGER,		   not null,    /* 来源单明细ID        */  
   PURFL003             VARCHAR2(1),               not null,    /* 商品服务属性        */  
   PURFL004             VARCHAR2(1),               not null,    /* 销售属性            */          
   PURFL005             INTEGER                    not null,    /* 商品ID              */        
   PURFL006             INTEGER,		                /* 维度1               */     
   PURFL007             INTEGER,			        /* 维度2               */        
   PURFL008             INTEGER,			        /* 维度3              */       
   PURFL009             INTEGER,			        /* 维度4               */       
   PURFL010             INTEGER,			        /* 维度5               */        
   PURFL011             INTEGER                                 /* 单位                */           
   PURFL012             NUMBER(18,3)               not null,    /* 提货数量            */
   PURFL013             VARCHAR2(1),			        /* 是否组装品          */
   PURFL014             VARCHAR2(1),                            /* 是否成分            */
   PURFL015             INTEGER,			        /* 主商品ID            */
   PURFL016             INTEGER,			        /* 包数                */
   PURFL017             VARCHAR2(30),		                /* 子套件对应关系随机码*/ 
   PURFL018             VARCHAR2(255),                          /* 备注                */    
   PURFL019             NUMBER(18,3)                       ,    /* 排车数量            */--20130107 ADD BY XIECHUN
   PURFL020             NUMBER(18,3)                       ,    /* 取货数量            */--20130122 add by xiechun    
   CREATE_USER          VARCHAR2(12),			        /* 建立人员            */
   USER_GROUP           VARCHAR2(12),                           /* 建立人员部门        */                           
   CREATE_DATE          DATE,	                                /* 建立日期            */
   MODIFIER             VARCHAR2(12),			        /* 修改人员            */
   MODI_DATE            DATE,				        /* 修改日期            */
   FLAG                 NUMBER,				        /* 资料状态            */
   constraint PK_TB_PURFL primary key (PURFL_ID) 
);
create index AK_TB_PURFL on TB_PURFL (PURFL_ID,PURFL002,PURFL005,FLAG);
create sequence SEQ_TB_PURFL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURFL to public;
grant index  on TB_PURFL to public;
grant update on TB_PURFL to public; 
grant delete on TB_PURFL to public;  
grant insert on TB_PURFL to public; 
grant select on SEQ_TB_PURFL to public;   