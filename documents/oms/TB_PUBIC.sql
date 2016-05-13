/*
================================================================================
表结构代码:TB_PUBIC
表结构名称:经营小类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIC;
drop index AK_TB_PUBIC;
drop table TB_PUBIC;
create table TB_PUBIC  (
   PUBIC_ID             INTEGER                         not null,  /*经营小类ID         */
   PUBIC001             VARCHAR2(10)                    not null,  /*经营小类代码       */
   PUBIC002             VARCHAR2(30)                    not null,  /*经营小类名称       */
   PUBIC003             INTEGER                         not null,  /*所属中类ID         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBIC primary key (PUBIC_ID)
);
create unique index AK_TB_PUBIC on TB_PUBIC (PUBIC001);
create sequence SEQ_TB_PUBIC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIC to public;
grant index  on TB_PUBIC to public;
grant update on TB_PUBIC to public; 
grant delete on TB_PUBIC to public;  
grant insert on TB_PUBIC to public; 
grant select on SEQ_TB_PUBIC to public;   