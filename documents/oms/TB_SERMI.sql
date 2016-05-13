/*
================================================================================
表结构代码:TB_SERMI
表结构名称:扣分纬度定义
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMI;
drop index AK_TB_SERMI;
drop table TB_SERMI;
create table TB_SERMI  (                                       
   SERMI_ID           INTEGER                 not null,            /*纬度ID            */   
   SERMI001           VARCHAR2(20)            not null,            /*纬度编码          */   
   SERMI002           VARCHAR2(100)           not null,            /*纬度名称          */   
   SERMI003           VARCHAR2(255),                               /*备注              */            
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMI primary key (SERMI_ID)                               
);                                           
create unique index AK_TB_SERMI on TB_SERMI (SERMI001,FLAG);               
create sequence SEQ_TB_SERMI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMI to public;                                     
grant index  on TB_SERMI to public;                                     
grant update on TB_SERMI to public;                                      
grant delete on TB_SERMI to public;                                       
grant insert on TB_SERMI to public;                                      
grant select on SEQ_TB_SERMI to public;                                        