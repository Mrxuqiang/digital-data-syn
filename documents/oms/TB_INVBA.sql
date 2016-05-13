/*
================================================================================
表结构代码:TB_INVBA
表结构名称:移仓单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVBA;
drop index AK_TB_INVBA;
drop table TB_INVBA;
create table TB_INVBA  (                                       
   INVBA_ID           INTEGER                          not null,   /*移仓单ID        */          
   INVBA001           INTEGER                          not null,   /*移仓单别        */          
   INVBA002           VARCHAR2(30)                     not null,   /*移仓单号        */          
   INVBA003           DATE                             not null,   /*单据日期        */          
   INVBA004           INTEGER                          not null,   /*营运组织        */ 
   INVBA005           INTEGER                          not null,   /*仓库        */ 
   INVBA006           INTEGER                          not null,   /*经办人员        */          
   INVBA007           VARCHAR2(1)                      not null,   /*审核状态        */          
   INVBA008           INTEGER,                                     /*录入人          */          
   INVBA009           DATE,                                        /*录入日期        */          
   INVBA010           INTEGER,                                     /*审核人          */          
   INVBA011           DATE,                                        /*审核日期        */          
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */             
   CREATE_DATE        DATE,                                        /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                /*修改人员        */             
   MODI_DATE          DATE,                                        /*修改日期        */             
   FLAG               NUMBER(1),                                   /*资料状态        */            


  constraint PK_TB_INVBA primary key (INVBA_ID)                               
);                                           
create unique index AK_TB_INVBA on TB_INVBA (INVBA002,INVBA004);               
create sequence SEQ_TB_INVBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBA to public;                                     
grant index  on TB_INVBA to public;                                     
grant update on TB_INVBA to public;                                      
grant delete on TB_INVBA to public;                                       
grant insert on TB_INVBA to public;                                      
grant select on SEQ_TB_INVBA to public;                                        