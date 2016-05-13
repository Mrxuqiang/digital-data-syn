/*
================================================================================
表结构代码:TB_SERMS
表结构名称:绿色领跑子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMS;
drop index AK_TB_SERMS;
drop table TB_SERMS;
create table TB_SERMS  (                                       
   SERMS_ID           INTEGER                 not null,            /*绿色领跑子ID */   
   SERMS001           INTEGER                 not null,            /*绿色领跑主ID */   
   SERMS002           INTEGER                 not null,            /*品牌ID       */  
   SERMS003           VARCHAR2(1),                                 /*绿色领跑     */ 
   SERMS004           VARCHAR2(255),                               /*备注         */      
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMS primary key (SERMS_ID)                               
);                                           
create unique index AK_TB_SERMS on TB_SERMS (SERMS001,SERMS002,FLAG);               
create sequence SEQ_TB_SERMS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMS to public;                                     
grant index  on TB_SERMS to public;                                     
grant update on TB_SERMS to public;                                      
grant delete on TB_SERMS to public;                                       
grant insert on TB_SERMS to public;                                      
grant select on SEQ_TB_SERMS to public;                                        