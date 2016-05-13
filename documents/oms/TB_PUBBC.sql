/*
================================================================================
表结构代码:TB_PUBBC
表结构名称:地区表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBBC;
drop index AK_TB_PUBBC;
drop table TB_PUBBC;
create table TB_PUBBC  (
   PUBBC_ID             INTEGER                         not null,  /*地区ID             */
   PUBBC001             VARCHAR2(4)                     not null,  /*地区代码           */
   PUBBC002             VARCHAR2(20)                    not null,  /*地区名称           */
   PUBBC003             INTEGER                         not null,  /*国家ID             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBBC primary key (PUBBC_ID)
);
create unique index AK_TB_PUBBC on TB_PUBBC (PUBBC001);
create sequence SEQ_TB_PUBBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBC to public;
grant index  on TB_PUBBC to public;
grant update on TB_PUBBC to public; 
grant delete on TB_PUBBC to public;  
grant insert on TB_PUBBC to public; 
grant select on SEQ_TB_PUBBC to public;   