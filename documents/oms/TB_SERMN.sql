/*
================================================================================
表结构代码:TB_SERMN
表结构名称:商户信用分类子表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SERMN;
drop index AK_TB_SERMN;
drop table TB_SERMN;
create table TB_SERMN  (                                       
   SERMN_ID           INTEGER                 not null,            /*信用分类子ID      */   
   SERMN001           INTEGER                 not null,            /*信用分类主ID      */   
   SERMN002           INTEGER                 not null,            /*纬度ID            */  
   SERMN003           NUMBER(4),                                   /*次数              */           
   SERMN004           NUMBER(6,2),                                 /*分数              */ 
   SERMN005           NUMBER(6,2),                                 /*合规率            */
   SERMN006           NUMBER(6,2),                                 /*平均分            */    
   SERMN007           NUMBER(6,2),                                 /*与同品类平均水平  */   
   SERMN008           NUMBER(6,2),                                 /*纬度总分          */               
   CREATE_USER        VARCHAR2(12),                                /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门      */
   CREATE_DATE        DATE,                                        /*建立日期          */
   MODIFIER           VARCHAR2(12),                                /*修改人员          */
   MODI_DATE          DATE,                                        /*修改日期          */
   FLAG               NUMBER(1),                                   /*资料状态          */
   
   constraint PK_TB_SERMN primary key (SERMN_ID)                               
);                                           
create unique index AK_TB_SERMN on TB_SERMN (SERMN001,SERMN002,FLAG);               
create sequence SEQ_TB_SERMN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERMN to public;                                     
grant index  on TB_SERMN to public;                                     
grant update on TB_SERMN to public;                                      
grant delete on TB_SERMN to public;                                       
grant insert on TB_SERMN to public;                                      
grant select on SEQ_TB_SERMN to public;                                        