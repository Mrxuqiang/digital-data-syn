/*
================================================================================
表结构代码:TB_PUBGB
表结构名称:经营形态表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGB;
drop index AK_TB_PUBGB;
drop table TB_PUBGB;
create table TB_PUBGB  (
   PUBGB_ID             INTEGER                         not null,  /*经营形态ID         */
   PUBGB001             VARCHAR2(4)                     not null,  /*经营形态代码       */
   PUBGB002             VARCHAR2(30)                    not null,  /*经营形态名称       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGB primary key (PUBGB_ID)
);
create unique index AK_TB_PUBGB on TB_PUBGB (PUBGB001);
create sequence SEQ_TB_PUBGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGB to public;
grant index  on TB_PUBGB to public;
grant update on TB_PUBGB to public; 
grant delete on TB_PUBGB to public;  
grant insert on TB_PUBGB to public; 
grant select on SEQ_TB_PUBGB to public;   