/*
================================================================================
表结构代码:TB_SERMG
表结构名称:商户信用扣分主ID
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMG;
drop index AK_TB_SERMG;
drop table TB_SERMG;
create table TB_SERMG  (                                       
   SERMG_ID           INTEGER                 not null,            /*商户信用扣分主ID  */   
   SERMG001           VARCHAR2(4)             not null,            /*年度              */   
   SERMG002           VARCHAR2(2)             not null,            /*月份              */   
   SERMG003           VARCHAR2(255),                               /*备注              */          
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMG primary key (SERMG_ID)                               
);                                           
create unique index AK_TB_SERMG on TB_SERMG (SERMG001,SERMG002,FLAG);               
create sequence SEQ_TB_SERMG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMG to public;                                     
grant index  on TB_SERMG to public;                                     
grant update on TB_SERMG to public;                                      
grant delete on TB_SERMG to public;                                       
grant insert on TB_SERMG to public;                                      
grant select on SEQ_TB_SERMG to public;                                        