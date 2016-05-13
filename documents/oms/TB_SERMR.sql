/*
================================================================================
表结构代码:TB_SERMR
表结构名称:绿色领跑主表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMR;
drop index AK_TB_SERMR;
drop table TB_SERMR;
create table TB_SERMR  (                                       
   SERMR_ID           INTEGER                 not null,            /*绿色领跑主ID     */   
   SERMR001           NUMBER(4)               not null,            /*年度             */     
   SERMR002           VARCHAR2(255),                               /*备注             */            
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMR primary key (SERMR_ID)                               
);                                           
create unique index AK_TB_SERMR on TB_SERMR (SERMR001,FLAG);               
create sequence SEQ_TB_SERMR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMR to public;                                     
grant index  on TB_SERMR to public;                                     
grant update on TB_SERMR to public;                                      
grant delete on TB_SERMR to public;                                       
grant insert on TB_SERMR to public;                                      
grant select on SEQ_TB_SERMR to public;                                        