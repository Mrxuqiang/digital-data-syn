/*
================================================================================
表结构代码:TB_MEMAG
表结构名称:申请来源表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMAG;
drop index AK_TB_MEMAG;
drop table TB_MEMAG;
create table TB_MEMAG  (
   MEMAG_ID             INTEGER                         not null,  /*申请来源ID         */
   MEMAG001             VARCHAR2(4)                     not null,  /*申请来源代码       */
   MEMAG002             VARCHAR2(30)                    not null,  /*申请来源名称       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_MEMAG primary key (MEMAG_ID)
);
create unique index AK_TB_MEMAG on TB_MEMAG (MEMAG001);
create sequence SEQ_TB_MEMAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMAG to public;
grant index  on TB_MEMAG to public;
grant update on TB_MEMAG to public; 
grant delete on TB_MEMAG to public;  
grant insert on TB_MEMAG to public; 
grant select on SEQ_TB_MEMAG to public;   