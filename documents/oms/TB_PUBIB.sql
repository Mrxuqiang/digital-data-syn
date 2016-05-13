/*
================================================================================
表结构代码:TB_PUBIB
表结构名称:经营中类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIB;
drop index AK_TB_PUBIB;
drop table TB_PUBIB;
create table TB_PUBIB  (
   PUBIB_ID             INTEGER                         not null,  /*经营中类ID         */
   PUBIB001             VARCHAR2(10)                    not null,  /*经营中类代码       */
   PUBIB002             VARCHAR2(30)                    not null,  /*经营中类名称       */
   PUBIB003             INTEGER                         not null,  /*所属大类ID         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBIB primary key (PUBIB_ID)
);
create unique index AK_TB_PUBIB on TB_PUBIB (PUBIB001);
create sequence SEQ_TB_PUBIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIB to public;
grant index  on TB_PUBIB to public;
grant update on TB_PUBIB to public; 
grant delete on TB_PUBIB to public;  
grant insert on TB_PUBIB to public; 
grant select on SEQ_TB_PUBIB to public;   