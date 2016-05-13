/*
================================================================================
表结构代码:TB_SYSAE
表结构名称:界面多语言表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAE;
drop index AK_TB_SYSAE;
drop table TB_SYSAE;
create table TB_SYSAE  (
   SYSAE_ID             INTEGER                         not null,  /*资源ID           */
   SYSAE001             INTEGER                         not null,  /*程式ID           */
   SYSAE002             VARCHAR2(30)                    not null,  /*资源代码         */
   SYSAE003             INTEGER                         not null,  /*语言ID           */
   SYSAE004             VARCHAR2(60)                    not null,  /*资源名称         */
   SYSAE005             VARCHAR2(80),                              /*资源说明         */
   SYSAE006             DATE                            not null,  /*异动日期         */
   SYSAE007             VARCHAR2(60),                              /*提示说明         */
   SYSAE008             VARCHAR2(1),                               /*资源类型         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAE primary key (SYSAE_ID)
);
create unique index AK_TB_SYSAE on TB_SYSAE (SYSAE001,SYSAE002,SYSAE003);
create sequence SEQ_TB_SYSAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAE to public;
grant index  on TB_SYSAE to public;
grant update on TB_SYSAE to public; 
grant delete on TB_SYSAE to public;  
grant insert on TB_SYSAE to public; 
grant select on SEQ_TB_SYSAE to public;   