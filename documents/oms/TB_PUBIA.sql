/*
================================================================================
表结构代码:TB_PUBIA
表结构名称:经营大类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBIA;
drop index AK_TB_PUBIA;
drop table TB_PUBIA;
create table TB_PUBIA  (
   PUBIA_ID             INTEGER                         not null,  /*经营大类ID         */
   PUBIA001             VARCHAR2(10)                    not null,  /*经营大类代码       */
   PUBIA002             VARCHAR2(30)                    not null,  /*经营大类名称       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBIA primary key (PUBIA_ID)
);
create unique index AK_TB_PUBIA on TB_PUBIA (PUBIA001);
create sequence SEQ_TB_PUBIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBIA to public;
grant index  on TB_PUBIA to public;
grant update on TB_PUBIA to public; 
grant delete on TB_PUBIA to public;  
grant insert on TB_PUBIA to public; 
grant select on SEQ_TB_PUBIA to public;   