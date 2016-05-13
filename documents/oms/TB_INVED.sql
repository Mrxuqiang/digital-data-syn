/*
================================================================================
表结构代码:TB_INVED
表结构名称:拆解单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVED;
drop index AK_TB_INVED;
drop table TB_INVED;
create table TB_INVED  (                                       
   INVED_ID        INTEGER                         not null,      /*拆解明细ID         */       
   INVED001        INTEGER                         not null,      /*拆解单ID           */   
   --INVED002        VARCHAR2(1)                     ,      /*备用          */ 
   INVED003        INTEGER                         not null,      /*成分商品ID         */   
   INVED004        INTEGER,                                       /*维度1              */   
   INVED005        INTEGER,                                       /*维度2              */   
   INVED006        INTEGER,                                       /*维度3              */   
   INVED007        INTEGER,                                       /*维度4              */   
   INVED008        INTEGER,                                       /*维度5              */   
   INVED009        INTEGER                         not null,      /*仓库ID             */
   INVED010        INTEGER                         not null,      /*货位ID             */   
   INVED011        INTEGER                         not null,      /*单位ID             */
   INVED012        NUMBER(18,3)                    not null,      /*单位换算率         */   
   INVED013        NUMBER(18,3)                    not null,      /*拆解量             */   
   INVED014        NUMBER(12,2),                                  /*税前单价           */   
   INVED015        NUMBER(12,2)                    not null,      /*含税单价           */   
   INVED016        INTEGER                                        /*税种ID             */   
   INVED017        NUMBER(12,2),                                  /*税率               */
   INVED018        NUMBER(12,2),                                  /*税前金额           */
   INVED019        NUMBER(12,2)                    not null,      /*含税金额           */
   INVED020        VARCHAR2(1)                     not null,      /*商品服务属性       */
   INVED022        VARCHAR2(255),                                 /*备注               */
   INVED023        VARCHAR2(30),                                  /*主批号             */
   INVED024        VARCHAR2(1)                     not null,      /*销售属性       */
   CREATE_USER     VARCHAR2(12),                                  /*建立人员           */             
   USER_GROUP      VARCHAR2(12),                                  /*建立人员部门       */             
   CREATE_DATE     DATE,                                          /*建立日期           */             
   MODIFIER        VARCHAR2(12),                                  /*修改人员           */             
   MODI_DATE       DATE,                                          /*修改日期           */             
   FLAG            NUMBER(1),                                     /*资料状态           */            


  constraint PK_TB_INVED primary key (INVED_ID)                               
);                                           
create unique index AK_TB_INVED on TB_INVED (INVED_ID,INVED004);               
create sequence SEQ_TB_INVED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVED to public;                                     
grant index  on TB_INVED to public;                                     
grant update on TB_INVED to public;                                      
grant delete on TB_INVED to public;                                       
grant insert on TB_INVED to public;                                      
grant select on SEQ_TB_INVED to public;                                        