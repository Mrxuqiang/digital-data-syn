/*
================================================================================
表结构代码:TB_INVNB
表结构名称:出库单明细表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_INVNB;
drop index AK_TB_INVNB;
drop table TB_INVNB;
create table TB_INVNB (
   INVNB_ID            INTEGER                not null,            /*出库单明细表ID      */        
   INVNB001            INTEGER                not null,            /*出库单主表ID        */            
   INVNB002            INTEGER                not null,            /*商品ID              */        
   INVNB003            INTEGER,                                    /*维度1               */        
   INVNB004            INTEGER,                                    /*维度2               */   
   INVNB005            INTEGER,                                    /*维度3               */        
   INVNB006            INTEGER,                                    /*维度4               */                               
   INVNB007            INTEGER,                                    /*维度5               */ 
   INVNB008            INTEGER                not null,            /*出库单位            */ 
   INVNB009            NUMBER(18,2)           not null,            /*出库数量            */
   INVNB010	       NUMBER(12,2)	      not null,            /*单位成本            */
   INVNB011	       NUMBER(12,2)	      not null,            /*成本金额            */
   INVNB012            INTEGER                not null,            /*仓库                */
   INVNB013            INTEGER                not null,            /*商品分类            */ 
   INVNB014            INTEGER                not null,            /*品牌                */ 
   INVNB015            VARCHAR2(1)            not null,            /*销售属性            */
   INVNB016            VARCHAR2(1)            not null,            /*商品服务属性        */           
   INVNB017            VARCHAR2(255),                              /*备注                */
   INVNB018            VARCHAR2(255),                              /*备注1               */
   INVNB019            VARCHAR2(255),                              /*备注2               */
   INVNB020            VARCHAR2(1),				   /*是否组装品          */
   INVNB021            VARCHAR2(1),				   /*是否成分            */
   INVNB022            INTEGER,					   /*主商品ID            */
   INVNB023            INTEGER,					   /*包数                */
   INVNB024            VARCHAR2(30),				   /*子套件对应关系随机码*/
   INVNB025            INTEGER,                                    /*商品系列            */ 
   CREATE_USER         VARCHAR2(12),                               /*建立人员            */
   USER_GROUP          VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE         DATE,                                       /*建立日期            */
   MODIFIER            VARCHAR2(12),                               /*修改人员            */
   MODI_DATE           DATE,                                       /*修改日期            */
   FLAG                NUMBER,                                     /*资料状态            */
   constraint PK_TB_INVNB primary key (INVNB_ID)
);
create sequence SEQ_TB_INVNB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVNB to public;
grant index  on TB_INVNB to public;
grant update on TB_INVNB to public; 
grant delete on TB_INVNB to public;  
grant insert on TB_INVNB to public; 
grant select on SEQ_TB_INVNB to public;   