/*
================================================================================
表结构代码:TB_PUBBD
表结构名称:省别表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBBD;
drop index AK_TB_PUBBD;
drop table TB_PUBBD;
create table TB_PUBBD  (
   PUBBD_ID             INTEGER                         not null,  /*省别ID             */
   PUBBD001             VARCHAR2(4)                     not null,  /*省别代码           */
   PUBBD002             VARCHAR2(20)                    not null,  /*省别名称           */
   PUBBD003             INTEGER                         not null,  /*地区ID             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBBD primary key (PUBBD_ID)
);
create unique index AK_TB_PUBBD on TB_PUBBD (PUBBD001);
create sequence SEQ_TB_PUBBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBD to public;
grant index  on TB_PUBBD to public;
grant update on TB_PUBBD to public; 
grant delete on TB_PUBBD to public;  
grant insert on TB_PUBBD to public; 
grant select on SEQ_TB_PUBBD to public;   