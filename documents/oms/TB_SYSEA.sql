/*
================================================================================
表结构代码:TB_SYSEA
表结构名称:后台任务表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSEA;
drop index AK_TB_SYSEA;
drop table TB_SYSEA;
create table TB_SYSEA  (
   SYSEA_ID             INTEGER                         not null,  /*任务ID           */
   SYSEA001             VARCHAR2(4)                     not null,  /*作务代码         */
   SYSEA002             VARCHAR2(30)                    not null,  /*作务名称         */
   SYSEA003             VARCHAR2(1)                     not null,  /*任务类型         */
   SYSEA004             VARCHAR2(120)                   not null,  /*任务插件         */
   SYSEA005             VARCHAR2(255),                             /*任务描述         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSEA primary key (SYSEA_ID)
);
create unique index AK_TB_SYSEA on TB_SYSEA (SYSEA001);
create sequence SEQ_TB_SYSEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEA to public;
grant index  on TB_SYSEA to public;
grant update on TB_SYSEA to public; 
grant delete on TB_SYSEA to public;  
grant insert on TB_SYSEA to public; 
grant select on SEQ_TB_SYSEA to public;   