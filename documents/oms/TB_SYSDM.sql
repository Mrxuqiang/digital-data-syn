/*
================================================================================
表结构代码:TB_SYSDM
表结构名称:权限组表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSDM;
drop index AK_TB_SYSDM;
drop table TB_SYSDM;
create table TB_SYSDM  (
   SYSDM_ID             INTEGER                         not null,  /*权限组ID         */
   SYSDM001             VARCHAR2(14)                     not null, /*权限组编码       */
   SYSDM002             VARCHAR2(30)                    not null,  /*权限组名称       */
   SYSDM003             VARCHAR2(30)                    not null,  /*备注信息           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                              
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDM primary key (SYSDM_ID)
);
create unique index AK_TB_SYSDM on TB_SYSDM (SYSDM_ID,SYSDM001);
create sequence SEQ_TB_SYSDM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDM to public;
grant index  on TB_SYSDM to public;
grant update on TB_SYSDM to public; 
grant delete on TB_SYSDM to public;  
grant insert on TB_SYSDM to public; 
grant select on SEQ_TB_SYSDM to public;   