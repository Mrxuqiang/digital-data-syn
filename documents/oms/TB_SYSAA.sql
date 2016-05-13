/*
================================================================================
表结构代码:TB_SYSAA
表结构名称:语言设置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAA;
drop index AK_TB_SYSAA;
drop table TB_SYSAA;
create table TB_SYSAA  (
   SYSAA_ID             INTEGER                         not null,  /*语言ID           */
   SYSAA001             VARCHAR2(4)                     not null,  /*语言代码         */
   SYSAA002             VARCHAR2(60)                    not null,  /*语言名称         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAA primary key (SYSAA_ID)
);
create unique index AK_TB_SYSAA on TB_SYSAA (SYSAA001);
create sequence SEQ_TB_SYSAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAA to public;
grant index  on TB_SYSAA to public;
grant update on TB_SYSAA to public; 
grant delete on TB_SYSAA to public;  
grant insert on TB_SYSAA to public; 
grant select on SEQ_TB_SYSAA to public;   