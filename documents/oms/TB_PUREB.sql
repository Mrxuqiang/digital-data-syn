/*
================================================================================
表结构代码:TB_PUREB
表结构名称:补货建议单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUREB;
drop index AK_TB_PUREB;
drop table TB_PUREB;
create table TB_PUREB  (
   PUREB_ID             INTEGER                          not null,   /*补货商品ID          */    
   PUREB001             INTEGER                          not null,   /*补货建议单ID        */    
   PUREB002             INTEGER                          not null,   /*商品编码            */    
   PUREB003             INTEGER                          not null,   /*品类                */    
   PUREB004             INTEGER                          not null,   /*品牌                */    
   PUREB005             INTEGER,                                     /*维度1ID             */    
   PUREB006             INTEGER,                                     /*维度2ID             */    
   PUREB007             INTEGER,                                     /*维度3ID             */    
   PUREB008             INTEGER,                                     /*维度4ID             */    
   PUREB009             INTEGER,                                     /*维度5ID             */    
   PUREB010             INTEGER,                         not null,   /*库存单位ID          */    
   PUREB011             NUMBER(18,3)                     not null,   /*周销售量            */    
   PUREB012             NUMBER(18,3)                     not null,   /*库存下限            */    
   PUREB013             NUMBER(18,3)                     not null,   /*可用库存量          */    
   PUREB014             NUMBER(18,3)                     not null,   /*在途数量            */    
   PUREB015             NUMBER(18,3)                     not null,   /*补货建议量          */ 
   PUREB016             NUMBER(18,3)                     not null,   /*要货量              */ 
   PUREB017             VARCHAR2(255)                                /*备注                */ 
   CREATE_USER          VARCHAR2(12),                                /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                /*建立人员部门        */                               
   CREATE_DATE          DATE,                                        /*建立日期            */
   MODIFIER             VARCHAR2(12),                                /*修改人员            */
   MODI_DATE            DATE,                                        /*修改日期            */
   FLAG                 NUMBER(1),                                   /*资料状态            */
   constraint PK_TB_PUREB primary key (PUREB_ID)
);
create unique index AK_TB_PUREB on TB_PUREB (PUREB_ID,PUREB001,PUREB004);
create sequence SEQ_TB_PUREB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUREB to public;
grant index  on TB_PUREB to public;
grant update on TB_PUREB to public; 
grant delete on TB_PUREB to public;  
grant insert on TB_PUREB to public; 
grant select on SEQ_TB_PUREB to public;   