/*
================================================================================
表结构代码:TB_SYSEB
表结构名称:后台任务参数表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSEB;
drop index AK_TB_SYSEB;
drop table TB_SYSEB;
create table TB_SYSEB  (
   SYSEB_ID             INTEGER                         not null,  /*任务参数ID       */
   SYSEB001             INTEGER                         not null,  /*任务ID           */
   SYSEB002             VARCHAR2(30)                    not null,  /*参数代码         */
   SYSEB003             VARCHAR2(120)                   not null,  /*参数描述         */
   SYSEB004             VARCHAR2(1)                     not null,  /*参数类型         */
   SYSEB005             VARCHAR2(30),                              /*参照名称         */
   SYSEB006             VARCHAR2(1),                               /*是否非空         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSEB primary key (SYSEB_ID)
);
create unique index AK_TB_SYSEB on TB_SYSEB (SYSEB001,SYSEB002);
create sequence SEQ_TB_SYSEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEB to public;
grant index  on TB_SYSEB to public;
grant update on TB_SYSEB to public; 
grant delete on TB_SYSEB to public;  
grant insert on TB_SYSEB to public; 
grant select on SEQ_TB_SYSEB to public;   