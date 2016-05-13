/*
================================================================================
表结构代码:TB_INVDB
表结构名称:组装单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVDB;
drop index AK_TB_INVDB;
drop table TB_INVDB;
create table TB_INVDB  (                                       
   INVDB_ID        INTEGER                      not null,     /*借出明细ID     */  
   INVDB001        INTEGER                      not null,     /*借出单ID       */  
   INVDB002        INTEGER                      not null,     /*商品编码       */  
   INVDB003        INTEGER ,                                  /*维度1          */  
   INVDB004        INTEGER,                                   /*维度2          */  
   INVDB005        INTEGER,                                   /*维度3          */  
   INVDB006        INTEGER,                                   /*维度4          */  
   INVDB007        INTEGER,                                   /*维度5          */  
   INVDB008        INTEGER                      not null,     /*仓库           */  
   INVDB009        INTEGER,                                   /*库位           */  
   INVDB010        INTEGER                      not null,     /*出库单位       */  
   INVDB011        NUMBER(18,3)                 not null,     /*单位换算率     */  
   INVDB012        NUMBER(12,2)                 not null,     /*借出量         */  
   INVDB013        NUMBER(12,2)                 not null,     /*归还量         */  
   INVDB014        NUMBER(12,2)                 not null,     /*单价           */  
   INVDB015        NUMBER(12,2)                 not null,     /*金额           */  
   INVDB016        VARCHAR2(1)                  not null,     /*商品服务属性   */  
   INVDB017        VARCHAR2(255),                             /*备注           */  
   INVDB018        VARCHAR2(30),                              /*主批号         */
   CREATE_USER     VARCHAR2(12),                              /*建立人员           */             
   USER_GROUP      VARCHAR2(12),                              /*建立人员部门       */             
   CREATE_DATE     DATE,                                      /*建立日期           */             
   MODIFIER        VARCHAR2(12),                              /*修改人员           */             
   MODI_DATE       DATE,                                      /*修改日期           */             
   FLAG            NUMBER(1),                                 /*资料状态           */            


  constraint PK_TB_INVDB primary key (INVDB_ID)                               
);                                           
create unique index AK_TB_INVDB on TB_INVDB (INVDB_ID,INVDB002);               
create sequence SEQ_TB_INVDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVDB to public;                                     
grant index  on TB_INVDB to public;                                     
grant update on TB_INVDB to public;                                      
grant delete on TB_INVDB to public;                                       
grant insert on TB_INVDB to public;                                      
grant select on SEQ_TB_INVDB to public;                                        