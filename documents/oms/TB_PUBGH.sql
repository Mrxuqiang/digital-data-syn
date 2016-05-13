/*
================================================================================
表结构代码:TB_PUBGH
表结构名称:季节表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGH;
drop index AK_TB_PUBGH;
drop table TB_PUBGH;
create table TB_PUBGH  (
   PUBGH_ID             INTEGER                         not null,  /*季节ID             */
   PUBGH001             VARCHAR2(4)                     not null,  /*季节代码           */
   PUBGH002             VARCHAR2(40)                    not null,  /*季节名称           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGH primary key (PUBGH_ID)
);
create unique index AK_TB_PUBGH on TB_PUBGH (PUBGH001);
create sequence SEQ_TB_PUBGH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGH to public;
grant index  on TB_PUBGH to public;
grant update on TB_PUBGH to public; 
grant delete on TB_PUBGH to public;  
grant insert on TB_PUBGH to public; 
grant select on SEQ_TB_PUBGH to public;   