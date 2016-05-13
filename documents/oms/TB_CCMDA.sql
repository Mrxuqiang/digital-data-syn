/*
================================================================================
表结构代码:TB_CCMDA
表结构名称:券分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDA;
drop index AK_TB_CCMDA;
drop table TB_CCMDA;
create table TB_CCMDA  (
   CCMDA_ID             INTEGER                         not null,  /*券分类ID            */
   CCMDA001             VARCHAR2(4)                     not null,  /*券分类代码          */
   CCMDA002             VARCHAR2(30)                    not null,  /*券分类名称          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDA primary key (CCMDA_ID)
);
create unique index AK_TB_CCMDA on TB_CCMDA (CCMDA001);
create sequence SEQ_TB_CCMDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDA to public;
grant index  on TB_CCMDA to public;
grant update on TB_CCMDA to public; 
grant delete on TB_CCMDA to public;  
grant insert on TB_CCMDA to public; 
grant select on SEQ_TB_CCMDA to public;   