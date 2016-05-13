/*
================================================================================
表结构代码:TB_SYSHA
表结构名称:数据访问权限组主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSHA;
drop index AK_TB_SYSHA;
drop table TB_SYSHA;
create table TB_SYSHA  (
   SYSHA_ID             INTEGER                          not null, /*访问权限组ID     */
   SYSHA001             VARCHAR2(14)                     not null, /*访问权限组编码   */
   SYSHA002             VARCHAR2(30),                              /*访问权限组名称   */
   SYSHA003             VARCHAR2(255),                             /*备注             */
   SYSHA004             VARCHAR2(2),                               /*预留             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER,                                 /*资料状态         */
   constraint PK_TB_SYSHA primary key (SYSHA_ID)
);
create unique index AK_TB_SYSHA on TB_SYSHA (SYSHA001);
create sequence SEQ_TB_SYSHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSHA to public;
grant index  on TB_SYSHA to public;
grant update on TB_SYSHA to public; 
grant delete on TB_SYSHA to public;  
grant insert on TB_SYSHA to public; 
grant select on SEQ_TB_SYSHA to public;   