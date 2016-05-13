/*
================================================================================
表结构代码:TB_PUBBE
表结构名称:地市表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBBE;
drop index AK_TB_PUBBE;
drop table TB_PUBBE;
create table TB_PUBBE  (
   PUBBE_ID             INTEGER                         not null,  /*地市ID             */
   PUBBE001             VARCHAR2(4)                     not null,  /*地市代码           */
   PUBBE002             VARCHAR2(20)                    not null,  /*地市名称           */
   PUBBE003             INTEGER                         not null,  /*省别ID             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBBE primary key (PUBBE_ID)
);
create unique index AK_TB_PUBBE on TB_PUBBE (PUBBE001);
create sequence SEQ_TB_PUBBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBBE to public;
grant index  on TB_PUBBE to public;
grant update on TB_PUBBE to public; 
grant delete on TB_PUBBE to public;  
grant insert on TB_PUBBE to public; 
grant select on SEQ_TB_PUBBE to public;   