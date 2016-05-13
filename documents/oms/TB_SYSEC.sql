/*
================================================================================
表结构代码:TB_SYSEC
表结构名称:任务条目表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSEC;
drop index AK_TB_SYSEC;
drop table TB_SYSEC;
create table TB_SYSEC  (
   SYSEC_ID             INTEGER                         not null,  /*任务条目ID       */
   SYSEC001             VARCHAR2(4)                     not null,  /*条目代码         */
   SYSEC002             VARCHAR2(30)                    not null,  /*条目名称         */
   SYSEC003             INTEGER                         not null,  /*任务ID           */
   SYSEC004             VARCHAR2(1)                     not null,  /*条目状态         */
   SYSEC005             VARCHAR2(1)                     not null,  /*执行方式         */
   SYSEC006             VARCHAR2(1)                     not null,  /*执行频率         */
   SYSEC007             VARCHAR2(2)                     not null,  /*执行日期         */
   SYSEC008             VARCHAR2(1)                     not null,  /*每天频率         */
   SYSEC009             DATE                            not null,  /*执行时间         */
   SYSEC010             NUMBER(2)                       not null,  /*频率小时         */
   SYSEC011             DATE,                                      /*开始时间         */
   SYSEC012             DATE,                                      /*结束时间         */
   SYSEC013             VARCHAR2(500),                             /*消息信息         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSEC primary key (SYSEC_ID)
);
create unique index AK_TB_SYSEC on TB_SYSEC (SYSEC001);
create sequence SEQ_TB_SYSEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSEC to public;
grant index  on TB_SYSEC to public;
grant update on TB_SYSEC to public; 
grant delete on TB_SYSEC to public;  
grant insert on TB_SYSEC to public; 
grant select on SEQ_TB_SYSEC to public;   