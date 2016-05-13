/*
================================================================================
表结构代码:TB_SERGA
表结构名称:广播单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERGA;
drop index AK_TB_SERGA;
drop table TB_SERGA;
create table TB_SERGA  (                                       
   SERGA_ID           INTEGER                 not null,            /*分值定义ID      */   
   SERGA001           INTEGER                 not null,            /*广播单别        */   
   SERGA002           VARCHAR2(30)            not null,            /*广播单号        */   
   SERGA003           DATE                    not null,            /*广播日期        */   
   SERGA004           VARCHAR2(12),                                /*广播人          */   
   SERGA005           VARCHAR2(1),                                 /*内容分类        */   
   SERGA006           VARCHAR2(255),                               /*广播内容        */   
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERGA primary key (SERGA_ID)                               
);                                           
create unique index AK_TB_SERGA on TB_SERGA (SERGA001,SERGA002);               
create sequence SEQ_TB_SERGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERGA to public;                                     
grant index  on TB_SERGA to public;                                     
grant update on TB_SERGA to public;                                      
grant delete on TB_SERGA to public;                                       
grant insert on TB_SERGA to public;                                      
grant select on SEQ_TB_SERGA to public;                                        