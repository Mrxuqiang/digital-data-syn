/*
================================================================================
表结构代码:TB_INVAA
表结构名称:赠品出库单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVAA;
drop index AK_TB_INVAA;
drop table TB_INVAA;
create table TB_INVAA  (                                       
   INVAA_ID           INTEGER                       not null,      /*出货单ID        */       
   INVAA001           VARCHAR2(1)                   not null,      /*出库类型        */       
   INVAA002           INTEGER                       not null,      /*出库单别        */       
   INVAA003           VARCHAR2(30)                  not null,      /*出库单号        */       
   INVAA004           DATE                          not null,      /*出库日期        */       
   INVAA005           INTEGER                       not null,      /*出库营运组织    */       
   INVAA006           INTEGER                       not null,      /*出库部门        */       
   INVAA007           INTEGER                       not null,      /*出库人员        */       
   INVAA008           VARCHAR2(1)                   not null,      /*出库对象        */       
   INVAA009           INTEGER                       not null,      /*对象名称        */       
   INVAA010           INTEGER                       not null,      /*交易组织        */       
   INVAA011           VARCHAR2(1)                                  /*审核状态        */       
   INVAA012           INTEGER,                                     /*录入人          */       
   INVAA013           DATE,                                        /*录入日期        */       
   INVAA014           INTEGER,                                     /*审核人          */       
   INVAA015           DATE,                                        /*审核日期        */       
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */             
   CREATE_DATE        DATE,                                        /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                /*修改人员        */             
   MODI_DATE          DATE,                                        /*修改日期        */             
   FLAG               NUMBER(1),                                   /*资料状态        */            


  constraint PK_TB_INVAA primary key (INVAA_ID)                               
);                                           
create unique index AK_TB_INVAA on TB_INVAA (INVAA002,INVAA003);               
create sequence SEQ_TB_INVAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVAA to public;                                     
grant index  on TB_INVAA to public;                                     
grant update on TB_INVAA to public;                                      
grant delete on TB_INVAA to public;                                       
grant insert on TB_INVAA to public;                                      
grant select on SEQ_TB_INVAA to public;                                        