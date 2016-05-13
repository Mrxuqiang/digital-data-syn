/*
================================================================================
表结构代码:TB_MEMAE
表结构名称:职业表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMAE;
drop index AK_TB_MEMAE;
drop table TB_MEMAE;
create table TB_MEMAE  (
   MEMAE_ID             INTEGER                         not null,  /*职业ID             */
   MEMAE001             VARCHAR2(4)                     not null,  /*职业代码           */
   MEMAE002             VARCHAR2(30)                    not null,  /*职业名称           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMAE primary key (MEMAE_ID)
);
create unique index AK_TB_MEMAE on TB_MEMAE (MEMAE001);
create sequence SEQ_TB_MEMAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAE to public;
grant index  on TB_MEMAE to public;
grant update on TB_MEMAE to public; 
grant delete on TB_MEMAE to public;  
grant insert on TB_MEMAE to public; 
grant select on SEQ_TB_MEMAE to public;   