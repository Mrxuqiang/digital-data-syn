/*
================================================================================
表结构代码:TB_SYSHC
表结构名称:数据访问权限组设置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSHC;
drop index AK_TB_SYSHC;
drop table TB_SYSHC;
create table TB_SYSHC  (
   SYSHC_ID             INTEGER                          not null, /*访问权限组ID     */
   SYSHC001             INTEGER                          not null, /*访问权限组ID     */
   SYSHC002             VARCHAR2(2)                      not null, /*权限类型         */
   SYSHC003             CLOB                             not null, /*权限条件         */
   SYSHC004             CLOB,                                      /*权限条件中文描述 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER,                                 /*资料状态         */
   constraint PK_TB_SYSHC primary key (SYSHC_ID)
);
create sequence SEQ_TB_SYSHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSHC to public;
grant index  on TB_SYSHC to public;
grant update on TB_SYSHC to public; 
grant delete on TB_SYSHC to public;  
grant insert on TB_SYSHC to public; 
grant select on SEQ_TB_SYSHC to public;   