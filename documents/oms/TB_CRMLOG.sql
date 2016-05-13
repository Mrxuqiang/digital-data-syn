/*
================================================================================
表结构代码:TB_CRMLOG
表结构名称:CRM接口日志表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CRMLOG;
drop table TB_CRMLOG;
create table TB_CRMLOG  (
   CRMLOG_ID             INTEGER                         not null,  /*日志ID             */
   CRMLOG001             VARCHAR2(50)                     not null, /*方法名             */
   CRMLOG002             VARCHAR2(50)                    not null,  /*接口名称           */
   CRMLOG003             INTEGER                         not null,  /*错误类型           */
   CRMLOG004             VARCHAR2(100)                          ,   /*错误信息           */
   CRMLOG005             VARCHAR2(4000)                         ,   /*传入参数多个参数用|分割 */
   CRMLOG006             VARCHAR2(1000)                         ,   /*预留字段1          */
   CRMLOG007             VARCHAR2(1000)                         ,   /*预留字段2          */
   CRMLOG008             VARCHAR2(1000)                         ,   /*预留字段3          */
   CRMLOG009             VARCHAR2(1000)                         ,   /*预留字段4          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_CRMLOG primary key (CRMLOG_ID)
);
create sequence SEQ_TB_CRMLOG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CRMLOG to public;
grant index  on TB_CRMLOG to public;
grant update on TB_CRMLOG to public; 
grant delete on TB_CRMLOG to public;  
grant insert on TB_CRMLOG to public; 
grant select on SEQ_TB_CRMLOG to public;   