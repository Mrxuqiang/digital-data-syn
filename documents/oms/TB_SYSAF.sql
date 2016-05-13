/*
================================================================================
表结构代码:TB_SYSAF
表结构名称:错误提示消息表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAF;
drop index AK_TB_SYSAF;
drop table TB_SYSAF;
create table TB_SYSAF  (
   SYSAF_ID             INTEGER                         not null,  /*消息ID           */
   SYSAF001             VARCHAR2(8)                     not null,  /*消息代码         */
   SYSAF002             INTEGER                         not null,  /*语言ID           */
   SYSAF003             VARCHAR2(255),                             /*消息内容         */
   SYSAF004             DATE                            not null,  /*异动日期         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAF primary key (SYSAF_ID)
);
create unique index AK_TB_SYSAF on TB_SYSAF (SYSAF001,SYSAF002);
create sequence SEQ_TB_SYSAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAF to public;
grant index  on TB_SYSAF to public;
grant update on TB_SYSAF to public; 
grant delete on TB_SYSAF to public;  
grant insert on TB_SYSAF to public; 
grant select on SEQ_TB_SYSAF to public;   