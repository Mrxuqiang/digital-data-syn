/*
================================================================================
表结构代码:TB_INVCA
表结构名称:损溢单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVCA;
drop index AK_TB_INVCA;
drop table TB_INVCA;
create table TB_INVCA  (                                       
   INVCA_ID           INTEGER                          not null,   /*损溢单ID        */          
   INVCA001           INTEGER                          not null,   /*损溢单别        */          
   INVCA002           VARCHAR2(30)                     not null,   /*损溢单号        */          
   INVCA003           DATE                             not null,   /*损溢日期        */
   INVCA004           NUMBER(1)                        not null,   /*单据来源   1.手工录入2.盘点汇总  */ 
   INVCA005           VARCHAR2(30)                     not null,   /*来源单号      */   
   INVCA006           INTEGER                          not null,   /*营运组织        */          
   INVCA007          INTEGER,                                      /*仓库ID          */   
   INVCA008           INTEGER                          not null,   /*损溢人员        */
   INVCA009          INTEGER,                                      /*供应商ID  20110215 mark by xiechun          */
   INVCA010           VARCHAR2(1)                      not null,   /*审核状态        */          
   INVCA011           INTEGER,                                     /*录入人          */          
   INVCA012           DATE,                                        /*录入日期        */          
   INVCA013           INTEGER,                                     /*审核人          */          
   INVCA014           DATE,                                        /*审核日期        */  
   INVCA015           VARCHAR2(255),			                   /*备注*/

   CREATE_USER        VARCHAR2(12),                                /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */             
   CREATE_DATE        DATE,                                        /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                /*修改人员        */             
   MODI_DATE          DATE,                                        /*修改日期        */             
   FLAG               NUMBER(1),                                   /*资料状态        */            


  constraint PK_TB_INVCA primary key (INVCA_ID)                               
);                                           
create unique index AK_TB_INVCA on TB_INVCA (INVCA001,INVCA002);               
create sequence SEQ_TB_INVCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVCA to public;                                     
grant index  on TB_INVCA to public;                                     
grant update on TB_INVCA to public;                                      
grant delete on TB_INVCA to public;                                       
grant insert on TB_INVCA to public;                                      
grant select on SEQ_TB_INVCA to public;                                        