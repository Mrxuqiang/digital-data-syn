/*
================================================================================
表结构代码:TB_SYSCB
表结构名称:用户菜单多语言表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSCB;
drop index AK_TB_SYSCB;
drop table TB_SYSCB;
create table TB_SYSCB  (
   SYSCB_ID             INTEGER                         not null,  /*菜单多语言ID     */
   SYSCB001             INTEGER                         not null,  /*菜单ID           */
   SYSCB002             INTEGER                         not null,  /*语言ID           */
   SYSCB003             VARCHAR2(60)                    not null,  /*菜单名称         */
   SYSCB004             VARCHAR2(80),                              /*菜单说明         */
   SYSCB005             DATE,                                      /*异动日期         */
   SYSCB006             VARCHAR2(60),                              /*提示说明         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSCB primary key (SYSCB_ID)
);
create unique index AK_TB_SYSCB on TB_SYSCB (SYSCB001,SYSCB002);
create sequence SEQ_TB_SYSCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSCB to public;
grant index  on TB_SYSCB to public;
grant update on TB_SYSCB to public; 
grant delete on TB_SYSCB to public;  
grant insert on TB_SYSCB to public; 
grant select on SEQ_TB_SYSCB to public;   