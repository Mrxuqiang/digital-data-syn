/*
================================================================================
表结构代码:TB_INVNA
表结构名称:出库单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_INVNA;
drop index AK_TB_INVNA;
drop table TB_INVNA;
create table TB_INVNA  (
   INVNA_ID            INTEGER                not null,            /*出库表ID            */        
   INVNA001            INTEGER                not null,            /*单别                */ 
   INVNA002            VARCHAR2(30)           not null,            /*出库单号            */        
   INVNA003            DATE   ,               not null,            /*单据日期            */
   INVNA004            INTEGER                not null,            /*营运组织            */ 
   INVNA005            INTEGER                not null,            /*出库部门            */   
   INVNA006            INTEGER                not null,            /*出库人员            */                
   INVNA007            INTEGER,                                    /*录入人              */   
   INVNA008            DATE   ,                                    /*录入日期            */        
   INVNA009            VARCHAR2(1)           not null,             /*审核状态            */                               
   INVNA010            INTEGER,                                    /*审核人              */        
   INVNA011            DATE    ,                                   /*审核时间            */  
   INVNA012            VARCHAR2(255),                              /*备注                */  
   INVNA013            INTEGER                        ,            /*货主                */ --20120820 add by xiechun 
   CREATE_USER         VARCHAR2(12),                               /*建立人员            */
   USER_GROUP          VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE         DATE,                                       /*建立日期            */
   MODIFIER            VARCHAR2(12),                               /*修改人员            */
   MODI_DATE           DATE,                                       /*修改日期            */
   FLAG                NUMBER,                                     /*资料状态            */
   constraint PK_TB_INVNA primary key (INVNA_ID)
);
create unique index AK_TB_INVNA on TB_PURMA (INVNA001,INVNA002,FLAG);
create sequence SEQ_TB_INVNA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVNA to public;
grant index  on TB_INVNA to public;
grant update on TB_INVNA to public; 
grant delete on TB_INVNA to public;  
grant insert on TB_INVNA to public; 
grant select on SEQ_TB_INVNA to public;   