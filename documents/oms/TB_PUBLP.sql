/*
================================================================================
表结构代码:TB_PUBLP
表结构名称:常用摘要表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLP;
drop index AK_TB_PUBLP;
drop table TB_PUBLP;
create table TB_PUBLP  (
   PUBLP_ID             INTEGER                         not null,  /*常用摘要ID           */
   PUBLP001             VARCHAR2(4)                     not null,  /*摘要代码             */
   PUBLP002             VARCHAR2(200)                   not null,  /*常用摘要             */
   PUBLP003             VARCHAR2(1)                     not null,  /*是否公用             */
   PUBLP004             INTEGER,                                   /*创建人ID             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLP primary key (PUBLP_ID)
);
create unique index AK_TB_PUBLP on TB_PUBLP (PUBLP001);
create sequence SEQ_TB_PUBLP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLP to public;
grant index  on TB_PUBLP to public;
grant update on TB_PUBLP to public; 
grant delete on TB_PUBLP to public;  
grant insert on TB_PUBLP to public; 
grant select on SEQ_TB_PUBLP to public;   