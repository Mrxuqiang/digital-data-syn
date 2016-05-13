/*
================================================================================
表结构代码:TB_SMSAG
表结构名称:推送任务定义主表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SMSAG;
drop index AK_TB_SMSAG;
drop table TB_SMSAG;
create table TB_SMSAG  ( 
   SMSAG_ID            INTEGER,                                      /*推送任务定义ID  */  
   SMSAG001            INTEGER,                                      /*单别ID          */
   SMSAG002            VARCHAR2(30),                                 /*推送任务单号    */
   SMSAG003            VARCHAR2(1),                                  /*推送任务层级    */  
   SMSAG004            VARCHAR2(1),                                  /*推送对象类型    */  
   SMSAG005            INTEGER,                                      /*推送短信模板ID  */  
   SMSAG006            VARCHAR2(30),                                 /*推送短信模板编号*/  
   SMSAG007            VARCHAR2(255),                                /*推送短信模板描述*/  
   SMSAG008            VARCHAR2(1),                                  /*预警状态        */  
   SMSAG009            VARCHAR2(1),                                  /*审核状态        */  
   SMSAG010            INTEGER,                                      /*审核人          */  
   SMSAG011            DATE,                                         /*审核日期        */  
   SMSAG012            INTEGER,                                      /*营运组织        */  
   SMSAG013            VARCHAR2(255),                                /*推送任务简述    */  
   SMSAG014            VARCHAR2(4000),                               /*SQL脚本         */  
   SMSAG015            INTEGER,                                      /*录入人          */  
   SMSAG016            DATE,                                         /*录入日期        */  
   SMSAG017            VARCHAR2(1),                                  /*执行频率        */ 
   SMSAG018            VARCHAR2(2),                                  /*执行日期        */
   SMSAG019            VARCHAR2(1),                                  /*每天频率        */
   SMSAG020            DATE,                                         /*执行时间        */
   SMSAG021            NUMBER(2),                                    /*频率小时        */
   SMSAG022            DATE,                                         /*开始时间        */
   SMSAG023            DATE,                                         /*结束时间        */
   CREATE_USER         VARCHAR2(12),                                 /*建立人员        */
   USER_GROUP          VARCHAR2(30),                                 /*建立人员部门    */                             
   CREATE_DATE         DATE,                                         /*建立日期        */
   MODIFIER            VARCHAR2(12),                                 /*修改人员        */
   MODI_DATE           DATE,                                         /*修改日期        */
   FLAG                NUMBER,                                       /*资料状态        */
   constraint PK_TB_SMSAG primary key (SMSAG_ID)
);
create unique index AK_TB_SMSAG on TB_SMSAG (SMSAG002,SMSAG005);
create sequence SEQ_TB_SMSAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAG to public;
grant index  on TB_SMSAG to public;
grant update on TB_SMSAG to public; 
grant delete on TB_SMSAG to public;  
grant insert on TB_SMSAG to public; 
grant select on SEQ_TB_SMSAG to public;   