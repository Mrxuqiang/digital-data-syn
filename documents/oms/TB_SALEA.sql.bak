/*
================================================================================
表结构代码:TB_SALEA
表结构名称:日结情况表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALEA;
drop index AK_TB_SALEA;
drop table TB_SALEA;
create table TB_SALEA  (
   SALEA_ID             INTEGER                         not null,  /*日结日志ID        */
   SALEA001             VARCHAR2(1)                     not null,  /*日结类型ID 1.租赁销售日结        */
   SALEA002             DATE                            not null,  /*结帐日期          */
   SALEA003             INTEGER                         not null,  /*操作者ID          */
   SALEA004             VARCHAR2(30)                    not null,  /*操作者中文名      */
   SALEA005             DATE                            not null,  /*操作日期          */
   SALEA006             VARCHAR2(30)                    not null,  /*IP地址            */
   SALEA007             INTEGER                         not null,  /*营运组织          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_SALEA primary key (SALEA_ID)
);
create unique index AK_TB_SALEA on TB_SALEA (SALEA001,SALEA002);
create sequence SEQ_TB_SALEA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALEA to public;
grant index  on TB_SALEA to public;
grant update on TB_SALEA to public; 
grant delete on TB_SALEA to public;  
grant insert on TB_SALEA to public; 
grant select on SEQ_TB_SALEA to public;   