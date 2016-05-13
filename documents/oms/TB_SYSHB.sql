/*
================================================================================
表结构代码:TB_SYSHB
表结构名称:数据访问权限组用户表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSHB;
drop index AK_TB_SYSHB;
drop table TB_SYSHB;
create table TB_SYSHB  (
   SYSHB_ID             INTEGER                         not null,  /*访问权限组用户ID */
   SYSHB001             INTEGER                         not null,  /*访问权限组ID     */
   SYSHB002             INTEGER                         not null,  /*用户ID           */
   SYSHB003             VARCHAR2(255),				   /*预留             */
   SYSHB004             VARCHAR2(2),				   /*预留             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER,                                 /*资料状态         */
   constraint PK_TB_SYSHB primary key (SYSHB_ID)
);
create sequence SEQ_TB_SYSHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSHB to public;
grant index  on TB_SYSHB to public;
grant update on TB_SYSHB to public; 
grant delete on TB_SYSHB to public;  
grant insert on TB_SYSHB to public; 
grant select on SEQ_TB_SYSHB to public;   