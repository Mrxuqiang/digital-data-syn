/*
20141010 create by sundan
*/
/*
================================================================================
表结构代码:TB_SERNA
表结构名称:检测任务分解主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERNA;
drop index AK_TB_SERNA;
drop table TB_SERNA;
create table TB_SERNA  (                                       
   SERNA_ID           INTEGER                 not null,            /*检测任务分解ID      */  
   SERNA001           VARCHAR2(10)            not null,            /*计划单别            */
   SERNA002           VARCHAR2(30)            not null,            /*计划编号            */
   SERNA003           INTEGER ,                                    /*计划年度            */   
   SERNA004           date,                                        /*计划日期            */ 
   SERNA005           INTEGER ,                                    /*同一品牌抽检商场数  */ 
   SERNA006           INTEGER,					   /*录入人              */
   SERNA007           date,					   /*录入日期            */      
   SERNA008           INTEGER,					   /*审核人              */
   SERNA009           date,					   /*审核日期            */
   SERNA010           varchar(1),				   /*审核状态  N:未审核 Y：已审核 */
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERNA primary key (SERNA_ID)                               
); 
create unique index AK_TB_SERNA on TB_SERNA (SERNA002,FLAG);            
create sequence SEQ_TB_SERNA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERNA to public;                                     
grant index  on TB_SERNA to public;                                     
grant update on TB_SERNA to public;                                      
grant delete on TB_SERNA to public;                                       
grant insert on TB_SERNA to public;                                      
grant select on SEQ_TB_SERNA to public;                                        