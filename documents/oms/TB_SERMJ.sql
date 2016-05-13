/*
================================================================================
表结构代码:TB_SERMJ
表结构名称:扣分行为定义
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMJ;
drop index AK_TB_SERMJ;
drop table TB_SERMJ;
create table TB_SERMJ  (                                       
   SERMJ_ID           INTEGER                 not null,            /*行为ID            */   
   SERMJ001           VARCHAR2(20)            not null,            /*行为编码          */   
   SERMJ002           VARCHAR2(100)           not null,            /*行为名称          */  
   SERMJ003           VARCHAR2(1),                                 /*类型              */ 
   SERMJ004           VARCHAR2(1),                                 /*是否纳入信用评级  */ 
   SERMJ005           INTEGER,                                     /*纬度ID            */            
   SERMJ006           VARCHAR2(255),                               /*备注              */            
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMJ primary key (SERMJ_ID)                               
);                                           
create unique index AK_TB_SERMJ on TB_SERMJ (SERMJ001,FLAG);               
create sequence SEQ_TB_SERMJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMJ to public;                                     
grant index  on TB_SERMJ to public;                                     
grant update on TB_SERMJ to public;                                      
grant delete on TB_SERMJ to public;                                       
grant insert on TB_SERMJ to public;                                      
grant select on SEQ_TB_SERMJ to public;                                        