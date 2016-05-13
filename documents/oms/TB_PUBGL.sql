/*
================================================================================
表结构代码:TB_PUBGL
表结构名称:结算方式表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGL;
drop index AK_TB_PUBGL;
drop table TB_PUBGL;
create table TB_PUBGL  (
   PUBGL_ID             INTEGER                         not null,  /*结算方式ID         */
   PUBGL001             VARCHAR2(4)                     not null,  /*结算方式代码       */
   PUBGL002             VARCHAR2(30)                    not null,  /*结算方式名称       */
   PUBGL003             NUMBER(4)                       not null,  /*结算月数           */
   PUBGL004             NUMBER(4)                       not null,  /*结算天数           */
   PUBGL005             VARCHAR2(1)                     not null,  /*结账起算点         */
   PUBGL006             VARCHAR2(1)                     not null,  /*结算起算点         */
   PUBGL007             NUMBER(4)                       not null,  /*结算天数           */
   PUBGL008             NUMBER(4)                       not null,  /*结算月数           */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGL primary key (PUBGL_ID)
);
create unique index AK_TB_PUBGL on TB_PUBGL (PUBGL001);
create sequence SEQ_TB_PUBGL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGL to public;
grant index  on TB_PUBGL to public;
grant update on TB_PUBGL to public; 
grant delete on TB_PUBGL to public;  
grant insert on TB_PUBGL to public; 
grant select on SEQ_TB_PUBGL to public;   