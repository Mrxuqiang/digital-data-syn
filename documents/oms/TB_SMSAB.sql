/*
================================================================================
表结构代码:TB_SMSAB
表结构名称:短信模板定义主表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_SMSAB;
drop index AK_TB_SMSAB;
drop table TB_SMSAB;
create table TB_SMSAB  (
   SMSAB_ID            INTEGER,                not null,            /*短信模板ID      */        
   SMSAB001            INTEGER,                not null,            /*短信模板单别ID  */      
   SMSAB002            VARCHAR2(30),           not null,            /*模板编号        */ 
   SMSAB003            VARCHAR2(255),          not null,            /*模板描述        */ 
   SMSAB004            VARCHAR2(1),            not null,            /*模板层级        */ 1.集团 2.大区 3.小区 4.商场
   SMSAB005            VARCHAR2(1),            not null,            /*审核状态        */ N.未审核 Y.审核，默认N.未审核
   SMSAB006            INTEGER,                                     /*审核人          */ 
   SMSAB007            DATE,                                        /*审核日期        */ 
   SMSAB008            INTEGER,                not null,            /*营运组织        */ 
   SMSAB009            VARCHAR2(4000),                              /*SQL脚本内容     */ 
   SMSAB010            VARCHAR2(255),          not null             /*短信模板内容    */ 
   SMSAB011            INTEGER,                not null             /*录入人          */ 与CREATE_USER相同
   SMSAB012            DATE,                   not null             /*录入日期        */ 与CREATE_DATE相同
   CREATE_USER         VARCHAR2(12),                                /*建立人员        */
   USER_GROUP          VARCHAR2(12),                                /*建立人员部门    */                             
   CREATE_DATE         DATE,                                        /*建立日期        */
   MODIFIER            VARCHAR2(12),                                /*修改人员        */
   MODI_DATE           DATE,                                        /*修改日期        */
   FLAG                NUMBER,                                      /*资料状态        */
   constraint PK_TB_SMSAB primary key (SMSAB_ID)
);
create unique index AK_TB_SMSAB on TB_SMSAB (SMSAB001，SMSAB002，FLAG);
create sequence SEQ_TB_SMSAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SMSAB to public;
grant index  on TB_SMSAB to public;
grant update on TB_SMSAB to public; 
grant delete on TB_SMSAB to public;  
grant insert on TB_SMSAB to public; 
grant select on SEQ_TB_SMSAB to public;   