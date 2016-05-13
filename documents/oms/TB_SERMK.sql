/*
================================================================================
表结构代码:TB_SERMK
表结构名称:信用品类对照表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMK;
drop index AK_TB_SERMK;
drop table TB_SERMK;
create table TB_SERMK  (                                       
   SERMK_ID           INTEGER                 not null,            /*信用品类ID        */   
   SERMK001           VARCHAR2(20)            not null,            /*信用品类编码      */   
   SERMK002           VARCHAR2(100)           not null,            /*信用品类名称      */  
   SERMK003           INTEGER,                                     /*经营中类ID        */           
   SERMK004           VARCHAR2(255),                               /*备注              */            
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMK primary key (SERMK_ID)                               
);                                           
create unique index AK_TB_SERMK on TB_SERMK (SERMK001,FLAG);               
create sequence SEQ_TB_SERMK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMK to public;                                     
grant index  on TB_SERMK to public;                                     
grant update on TB_SERMK to public;                                      
grant delete on TB_SERMK to public;                                       
grant insert on TB_SERMK to public;                                      
grant select on SEQ_TB_SERMK to public;                                        