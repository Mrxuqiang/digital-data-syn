/*
================================================================================
表结构代码:TB_SYSBA
表结构名称:表结构定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSBA;
drop index AK_TB_SYSBA;
drop table TB_SYSBA;
create table TB_SYSBA  (
   SYSBA_ID             INTEGER                         not null,  /*表结构ID         */
   SYSBA001             VARCHAR2(15)                    not null,  /*表结构名称       */
   SYSBA002             VARCHAR2(30)                    not null,  /*表结构说明       */
   SYSBA003             INTEGER                         not null,  /*模块ID           */
   SYSBA004             VARCHAR2(10)                    not null,  /*数据库名         */
   SYSBA005             VARCHAR2(1)                     not null,  /*表类型           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSBA primary key (SYSBA_ID)
);
create unique index AK_TB_SYSBA on TB_SYSBA (SYSBA001);
create sequence SEQ_TB_SYSBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSBA to public;
grant index  on TB_SYSBA to public;
grant update on TB_SYSBA to public; 
grant delete on TB_SYSBA to public;  
grant insert on TB_SYSBA to public; 
grant select on SEQ_TB_SYSBA to public;   