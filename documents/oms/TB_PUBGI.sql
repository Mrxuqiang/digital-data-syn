/*
================================================================================
表结构代码:TB_PUBGI
表结构名称:等级表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGI;
drop index AK_TB_PUBGI;
drop table TB_PUBGI;
create table TB_PUBGI  (
   PUBGI_ID             INTEGER                         not null,  /*等级ID             */
   PUBGI001             VARCHAR2(4)                     not null,  /*等级代码           */
   PUBGI002             VARCHAR2(40)                    not null,  /*等级名称           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGI primary key (PUBGI_ID)
);
create unique index AK_TB_PUBGI on TB_PUBGI (PUBGI001);
create sequence SEQ_TB_PUBGI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGI to public;
grant index  on TB_PUBGI to public;
grant update on TB_PUBGI to public; 
grant delete on TB_PUBGI to public;  
grant insert on TB_PUBGI to public; 
grant select on SEQ_TB_PUBGI to public;   