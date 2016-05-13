/*
================================================================================
表结构代码:TB_BATAB
表结构名称:库存锁定表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BATAB;
drop index AK_TB_BATAB;
drop table TB_BATAB;
create table TB_BATAB  (
   BATAB_ID	          INTEGER              not null,   /*锁定表ID             */   
   BATAB001	          INTEGER,                         /*批次ID               */   
   BATAB002	          VARCHAR2(2)          not null,   /*单据类型             */   
   BATAB003	          INTEGER              not null,   /*单据ID               */   
   BATAB004	          INTEGER,                         /*明细ID               */   
   BATAB005	          INTEGER,                         /*维度1                */   
   BATAB006	          INTEGER,                         /*维度2                */   
   BATAB007	          INTEGER,                         /*维度3                */   
   BATAB008	          INTEGER,                         /*维度4                */   
   BATAB009	          INTEGER,                         /*维度5                */   
   BATAB010	          NUMBER(18,3)         not null,   /*锁定数量             */   
   BATAB011               INTEGER              not null,   /*商品ID               */
   BATAB012               INTEGER              not null,   /*仓库ID               */
   BATAB013               INTEGER,                         /*库位ID               */
   constraint PK_TB_BATAB primary key (BATAB_ID)
);
create unique index AK_TB_BATAB on TB_BATAB (BATAB_ID,BATAB001);
create sequence SEQ_TB_BATAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BATAB to public;
grant index  on TB_BATAB to public;
grant update on TB_BATAB to public; 
grant delete on TB_BATAB to public;  
grant insert on TB_BATAB to public; 
grant select on SEQ_TB_BATAB to public;   