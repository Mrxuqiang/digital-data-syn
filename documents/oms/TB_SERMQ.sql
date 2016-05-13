/*
================================================================================
表结构代码:TB_SERMQ
表结构名称:纬度总分定义子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMQ;
drop index AK_TB_SERMQ;
drop table TB_SERMQ;
create table TB_SERMQ  (                                       
   SERMQ_ID           INTEGER                 not null,            /*纬度总分定义子ID */   
   SERMQ001           INTEGER                 not null,            /*纬度总分定义主ID */   
   SERMQ002           INTEGER                 not null,            /*纬度ID           */  
   SERMQ003           NUMBER(3),                                   /*分数             */ 
   SERMQ004           VARCHAR2(255),                               /*备注             */      
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMQ primary key (SERMQ_ID)                               
);                                           
create unique index AK_TB_SERMQ on TB_SERMQ (SERMQ001,SERMQ002,FLAG);               
create sequence SEQ_TB_SERMQ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMQ to public;                                     
grant index  on TB_SERMQ to public;                                     
grant update on TB_SERMQ to public;                                      
grant delete on TB_SERMQ to public;                                       
grant insert on TB_SERMQ to public;                                      
grant select on SEQ_TB_SERMQ to public;                                        