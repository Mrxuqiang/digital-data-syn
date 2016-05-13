/*
================================================================================
表结构代码:TB_SYSDG
表结构名称:角色包含子角色表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSDG;
drop index AK_TB_SYSDG;
drop table TB_SYSDG;
create table TB_SYSDG  (
   SYSDG_ID             INTEGER                         not null,  /*包含ID           */
   SYSDG001             INTEGER                         not null,  /*角色ID           */
   SYSDG002             INTEGER                         not null,  /*包含角色ID       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDG primary key (SYSDG_ID)
);
create unique index AK_TB_SYSDG on TB_SYSDG (SYSDG001,SYSDG002);
create sequence SEQ_TB_SYSDG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDG to public;
grant index  on TB_SYSDG to public;
grant update on TB_SYSDG to public; 
grant delete on TB_SYSDG to public;  
grant insert on TB_SYSDG to public; 
grant select on SEQ_TB_SYSDG to public;   