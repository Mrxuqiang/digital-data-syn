/*
================================================================================
表结构代码:TB_SYSAI
表结构名称:界面显示格式表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAI;
drop index AK_TB_SYSAI;
drop table TB_SYSAI;
create table TB_SYSAI  (
   SYSAI_ID             INTEGER                         not null,  /*界面格式ID       */
   SYSAI001             INTEGER                         not null,  /*程序ID           */
   SYSAI002             INTEGER                         not null,  /*字段ID           */
   SYSAI003             VARCHAR2(1),                               /*是否为Key        */
   SYSAI004             VARCHAR2(1),                               /*是否显示         */
   SYSAI005             VARCHAR2(1),                               /*是否可录入       */
   SYSAI006             VARCHAR2(1),                               /*是否为必要字段   */
   SYSAI007             VARCHAR2(255),                             /*显示格式         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAI primary key (SYSAI_ID)
);
create unique index AK_TB_SYSAI on TB_SYSAI (SYSAI001,SYSAI002);
create sequence SEQ_TB_SYSAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAI to public;
grant index  on TB_SYSAI to public;
grant update on TB_SYSAI to public; 
grant delete on TB_SYSAI to public;  
grant insert on TB_SYSAI to public; 
grant select on SEQ_TB_SYSAI to public;   