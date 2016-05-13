/*
================================================================================
表结构代码:TB_SYSCC
表结构名称:常用程式设置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSCC;
drop index AK_TB_SYSCC;
drop table TB_SYSCC;
create table TB_SYSCC  (
   SYSCC_ID             INTEGER                         not null,  /*常用程式ID       */
   SYSCC001             INTEGER                         not null,  /*用户ID           */
   SYSCC002             INTEGER                         not null,  /*菜单ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSCC primary key (SYSCC_ID)
);
create unique index AK_TB_SYSCC on TB_SYSCC (SYSCC001,SYSCC002);
create sequence SEQ_TB_SYSCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSCC to public;
grant index  on TB_SYSCC to public;
grant update on TB_SYSCC to public; 
grant delete on TB_SYSCC to public;  
grant insert on TB_SYSCC to public; 
grant select on SEQ_TB_SYSCC to public;   