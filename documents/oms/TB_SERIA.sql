/*
================================================================================
表结构代码:TB_SERIA
表结构名称:商品检测计划主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERIA;
drop index AK_TB_SERIA;
drop table TB_SERIA;
create table TB_SERIA  (                                       
   SERIA_ID           INTEGER                 not null,            /*检测计划主ID    */   
   SERIA001           VARCHAR2(30)            not null,            /*检测计划编号    */   
   SERIA002           DATE                    not null,            /*计划日期        */   
   SERIA003           NUMBER(4)               not null,            /*检测年度        */   
   SERIA004           INTEGER                 not null,            /*营运组织ID      */   
   SERIA005           VARCHAR2(1),                                 /*检测来源        */   
   SERIA006           NUMBER(4),                                   /*商场品牌总数    */ 
   SERIA007           NUMBER(4),                                   /*本次计划检测数量*/   
   SERIA008           VARCHAR2(1),                                 /*抽检原因        */
   SERIA009           INTEGER,                                     /*录入人          */
   SERIA010           DATE,                                        /*录入日期        */
   SERIA011           INTEGER,                                     /*审核人          */
   SERIA012           DATE,                                        /*审核日期        */
   SERIA013           VARCHAR2(1),                                 /*审核状态        */   
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERIA primary key (SERIA_ID)                               
);                                           
create unique index AK_TB_SERIA on TB_SERIA (SERIA001,SERIA002);               
create sequence SEQ_TB_SERIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIA to public;                                     
grant index  on TB_SERIA to public;                                     
grant update on TB_SERIA to public;                                      
grant delete on TB_SERIA to public;                                       
grant insert on TB_SERIA to public;                                      
grant select on SEQ_TB_SERIA to public;                                        