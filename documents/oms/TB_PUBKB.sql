/*
================================================================================
表结构代码:TB_PUBKB
表结构名称:销售凭证种类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBKB;
drop index AK_TB_PUBKB;
drop table TB_PUBKB;
create table TB_PUBKB  (
   PUBKB_ID             INTEGER                         not null,  /*销售凭证种类ID     */
   PUBKB001             VARCHAR2(4)                     not null,  /*凭证种类代码       */
   PUBKB002             VARCHAR2(30)                    not null,  /*凭证种类名称       */
   PUBKB003             VARCHAR2(1)                     not null,  /*业务类型           */
   PUBKB004             VARCHAR2(1),                               /*是否停用           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBKB primary key (PUBKB_ID)
);
create unique index AK_TB_PUBKB on TB_PUBKB (PUBKB001);
create sequence SEQ_TB_PUBKB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKB to public;
grant index  on TB_PUBKB to public;
grant update on TB_PUBKB to public; 
grant delete on TB_PUBKB to public;  
grant insert on TB_PUBKB to public; 
grant select on SEQ_TB_PUBKB to public;   