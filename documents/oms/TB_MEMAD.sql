/*
================================================================================
表结构代码:TB_MEMAD
表结构名称:学历表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMAD;
drop index AK_TB_MEMAD;
drop table TB_MEMAD;
create table TB_MEMAD  (
   MEMAD_ID             INTEGER                         not null,  /*学历ID             */
   MEMAD001             VARCHAR2(4)                     not null,  /*学历代码           */
   MEMAD002             VARCHAR2(30)                    not null,  /*学历名称           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMAD primary key (MEMAD_ID)
);
create unique index AK_TB_MEMAD on TB_MEMAD (MEMAD001);
create sequence SEQ_TB_MEMAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAD to public;
grant index  on TB_MEMAD to public;
grant update on TB_MEMAD to public; 
grant delete on TB_MEMAD to public;  
grant insert on TB_MEMAD to public; 
grant select on SEQ_TB_MEMAD to public;   