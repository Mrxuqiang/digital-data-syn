/*
================================================================================
表结构代码:TB_MEMAC
表结构名称:收入等级表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMAC;
drop index AK_TB_MEMAC;
drop table TB_MEMAC;
create table TB_MEMAC  (
   MEMAC_ID             INTEGER                         not null,  /*收入等级ID         */
   MEMAC001             VARCHAR2(4)                     not null,  /*收入等级代码       */
   MEMAC002             VARCHAR2(30)                    not null,  /*收入等级名称       */
   MEMAC003             NUMBER(12)                      not null,  /*收入下限           */
   MEMAC004             NUMBER(12)                      not null,  /*收入上限           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMAC primary key (MEMAC_ID)
);
create unique index AK_TB_MEMAC on TB_MEMAC (MEMAC001);
create sequence SEQ_TB_MEMAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAC to public;
grant index  on TB_MEMAC to public;
grant update on TB_MEMAC to public; 
grant delete on TB_MEMAC to public;  
grant insert on TB_MEMAC to public; 
grant select on SEQ_TB_MEMAC to public;   