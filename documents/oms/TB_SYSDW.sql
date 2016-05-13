/*
================================================================================
表结构代码:TB_SYSDW
表结构名称:用户权限客商列表
表结构目的:全局表，设置用户关联的客商（可以有多个），在WMS中使用此数据来控制单据数据的显示
================================================================================
*/

drop sequence SEQ_TB_SYSDW;
drop index AK_TB_SYSDW;
drop table TB_SYSDW;
create table TB_SYSDW  (
   SYSDW_ID             INTEGER                         not null,  /*用户权限客商列表ID */
   SYSDW001             INTEGER                         not null,  /*用户权限ID，TB_SYSDD           */
   SYSDW002             INTEGER                         not null,  /*客商ID，pubi048，TB_PUBGO         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                              
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSDW primary key (SYSDW_ID)
);
create sequence SEQ_TB_SYSDW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSDW to public;
grant index  on TB_SYSDW to public;
grant update on TB_SYSDW to public; 
grant delete on TB_SYSDW to public;  
grant insert on TB_SYSDW to public; 
grant select on SEQ_TB_SYSDW to public;   