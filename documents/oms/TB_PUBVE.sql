/*
================================================================================
表结构代码:TB_PUBVE
表结构名称:售后服务项目定义表
表结构目的:全局表
================================================================================
*/

drop sequence SEQ_TB_PUBVE;
drop index AK_TB_PUBVE;
drop table TB_PUBVE;
create table TB_PUBVE  (
   PUBVE_ID           INTEGER                          not null,         /*售后服务ID        */   
   PUBVE001           VARCHAR2(30)                     not null,         /*项目代码          */   
   PUBVE002           VARCHAR2(30)                     not null,         /*项目名称          */   
   PUBVE003           VARCHAR2(2)                      not null,         /*项目分类ID        */   
   PUBVE004           VARCHAR2(255),					 /*说明		     */ 
   PUBVE005           VARCHAR2(1),                                       /*是否显示          */ -- 20121030 add by shizhan for 15321
   CREATE_USER        VARCHAR2(1),                                       /*建立人员          */
   USER_GROUP         VARCHAR2(12),                                      /*建立人员部门      */                               
   CREATE_DATE        DATE,                                              /*建立日期          */
   MODIFIER           VARCHAR2(12),                                      /*修改人员          */
   MODI_DATE          DATE,                                              /*修改日期          */
   FLAG               NUMBER(1),                                         /*资料状态          */
   constraint PK_TB_PUBVE primary key (PUBVE_ID)
);
create unique index AK_TB_PUBVE on TB_PUBVE (PUBVE001,FLAG);
create sequence SEQ_TB_PUBVE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBVE to public;
grant index  on TB_PUBVE to public;
grant update on TB_PUBVE to public; 
grant delete on TB_PUBVE to public;  
grant insert on TB_PUBVE to public; 
grant select on SEQ_TB_PUBVE to public;   