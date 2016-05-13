/*
20130803 add by gaoxl for 信用分类增加SERIB009，SERIB010
*/
/*
================================================================================
表结构代码:TB_SERIB
表结构名称:商品检测计划子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERIB;
drop index AK_TB_SERIB;
drop table TB_SERIB;
create table TB_SERIB  (                                       
   SERIB_ID           INTEGER                 not null,            /*检测计划子ID    */   
   SERIB001           INTEGER                 not null,            /*检测计划主ID    */   
   SERIB002           INTEGER ,                                    /*楼栋            */   
   SERIB003           INTEGER,                                     /*楼层            */   
   SERIB004           INTEGER ,                                    /*展位            */   
   SERIB005           INTEGER                 not null,            /*品牌            */   
   SERIB006           VARCHAR2(1),                                 /*计划检测项目    */ 
   SERIB007           NUMBER(2),                                   /*检测月份       */   
   SERIB008           DATE,                                        /*实际检测日期    */
   SERIB009           INTEGER,                                     /*商户号ID        */ 
   SERIB010           INTEGER,                                     /*合同号ID        */    
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */
   CREATE_DATE        DATE,                                        /*建立日期        */
   MODIFIER           VARCHAR2(12),                                /*修改人员        */
   MODI_DATE          DATE,                                        /*修改日期        */
   FLAG               NUMBER(1),                                   /*资料状态        */
   
   constraint PK_TB_SERIB primary key (SERIB_ID)                               
);                                           
create unique index AK_TB_SERIB on TB_SERIB (SERIB001,SERIB005);               
create sequence SEQ_TB_SERIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERIB to public;                                     
grant index  on TB_SERIB to public;                                     
grant update on TB_SERIB to public;                                      
grant delete on TB_SERIB to public;                                       
grant insert on TB_SERIB to public;                                      
grant select on SEQ_TB_SERIB to public;                                        