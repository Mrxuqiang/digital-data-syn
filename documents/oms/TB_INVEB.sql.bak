/*
================================================================================
表结构代码:TB_INVEB
表结构名称:组装单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVEB;
drop index AK_TB_INVEB;
drop table TB_INVEB;
create table TB_INVEB  (                                       
   INVEB_ID        INTEGER                         not null,      /*组装明细ID         */       
   INVEB001        INTEGER                         not null,      /*组装单ID           */   
   INVEB002        VARCHAR2(1),                                   /*是否组装           */  -- update by hansf 备用，可以为null
   INVEB003        INTEGER                    not null,      /*成分商品编码       */   
   INVEB004        INTEGER,                                       /*维度1              */   
   INVEB005        INTEGER,                                       /*维度2              */   
   INVEB006        INTEGER,                                       /*维度3              */   
   INVEB007        INTEGER,                                       /*维度4              */   
   INVEB008        INTEGER,                                       /*维度5              */   
   INVEB009        INTEGER                         not null,      /*仓库               */
   INVEB010        INTEGER                         not null,      /*库位               */   
   INVEB011        INTEGER                         not null,      /*单位               */
   INVEB012        NUMBER(18,3)                    not null,      /*单位换算率         */   
   INVEB013        NUMBER(18,3)                    not null,      /*组装量             */   
   INVEB014        NUMBER(12,2),                                  /*税前单价           */   
   INVEB015        NUMBER(12,2)                    not null,      /*含税单价           */   
   INVEB016        NUMBER(12,2),                                  /*税种               */   
   INVEB017        NUMBER(12,2),                                  /*税率               */
   INVEB018        NUMBER(12,2),                                  /*税前金额           */
   INVEB019        NUMBER(12,2)                    not null,      /*含税金额           */
   INVEB020        VARCHAR2(1)                     not null,      /*商品服务属性       */
   INVEB021        VARCHAR2(1),                                   /*物权属性           */  -- update by hansf 备用，可以为null
   INVEB022        VARCHAR2(255),                                 /*备注               */
   INVEB023        VARCHAR2(30),                                  /*主批号             */
   CREATE_USER     VARCHAR2(12),                                  /*建立人员           */             
   USER_GROUP      VARCHAR2(12),                                  /*建立人员部门       */             
   CREATE_DATE     DATE,                                          /*建立日期           */             
   MODIFIER        VARCHAR2(12),                                  /*修改人员           */             
   MODI_DATE       DATE,                                          /*修改日期           */             
   FLAG            NUMBER(1),                                     /*资料状态           */            


  constraint PK_TB_INVEB primary key (INVEB_ID)                               
);                                           
--create unique index AK_TB_INVEB on TB_INVEB (INVEB_ID,INVEB004);               
create sequence SEQ_TB_INVEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVEB to public;                                     
grant index  on TB_INVEB to public;                                     
grant update on TB_INVEB to public;                                      
grant delete on TB_INVEB to public;                                       
grant insert on TB_INVEB to public;                                      
grant select on SEQ_TB_INVEB to public;                                        