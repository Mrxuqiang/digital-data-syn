/*
================================================================================
表结构代码:TB_SERMD
表结构名称:调研对象定义
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMD;
drop index AK_TB_SERMD;
drop table TB_SERMD;
create table TB_SERMD  (                                       
   SERMD_ID           INTEGER                 not null,            /*调研对象ID        */   
   SERMD001           VARCHAR2(10)            not null,            /*调研对象编码      */   
   SERMD002           VARCHAR2(30) ,                               /*调研对象名称      */   
   SERMD003           INTEGER,                                     /*所在地市          */   
   SERMD004           INTEGER ,                                    /*所在县市          */   
   SERMD005           VARCHAR2(255),                               /*备注              */       
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMD primary key (SERMD_ID)                               
);                                           
create unique index AK_TB_SERMD on TB_SERMD (SERMD001,FLAG);               
create sequence SEQ_TB_SERMD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMD to public;                                     
grant index  on TB_SERMD to public;                                     
grant update on TB_SERMD to public;                                      
grant delete on TB_SERMD to public;                                       
grant insert on TB_SERMD to public;                                      
grant select on SEQ_TB_SERMD to public;                                        