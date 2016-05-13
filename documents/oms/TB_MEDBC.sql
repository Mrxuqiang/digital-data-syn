/*
================================================================================
表结构代码:TB_MEDBC
表结构名称:节目定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEDBC;
drop index AK_TB_MEDBC;
drop table TB_MEDBC;
create table TB_MEDBC  (
   MEDBC_ID             INTEGER                         not null,  /*节目ID             */
   MEDBC001             VARCHAR2(4)                     not null,  /*节目编号           */
   MEDBC002             VARCHAR2(30)                    not null,  /*节目名称           */
   MEDBC003             VARCHAR2(255),                             /*节目说明           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEDBC primary key (MEDBC_ID)
);
create unique index AK_TB_MEDBC on TB_MEDBC (MEDBC001);
create sequence SEQ_TB_MEDBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEDBC to public;
grant index  on TB_MEDBC to public;
grant update on TB_MEDBC to public; 
grant delete on TB_MEDBC to public;  
grant insert on TB_MEDBC to public; 
grant select on SEQ_TB_MEDBC to public;   