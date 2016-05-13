/*
================================================================================
表结构代码:TB_SYSAH
表结构名称:表头表尾设定表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAH;
drop index AK_TB_SYSAH;
drop table TB_SYSAH;
create table TB_SYSAH  (
   SYSAH_ID             INTEGER                         not null,  /*表头表尾设定ID    */
   SYSAH001             INTEGER                         not null,  /*查询视图ID        */
   SYSAH002             VARCHAR2(1)                     not null,  /*类别:0表头 1表尾  */
   SYSAH003             VARCHAR2(1)                     not null,  /*样式：0基本 1打印日期 2页码            */
   SYSAH004             INTEGER,                                   /*单元项ID          */ww
   SYSAH005             VARCHAR2(255)                              /*单元内容          */
   SYSAH006             VARCHAR2(255)                              /*单元前附加内容    */
   SYSAH007             VARCHAR2(255)                              /*单元后附加内容    */
   SYSAH008             NUMBER(3),                                 /*行号              */
   SYSAH009             NUMBER(3),                                 /*列号              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_SYSAH primary key (SYSAH_ID)
);
create unique index AK_TB_SYSAH on TB_SYSAH (SYSAH001,SYSAH002,SYSAH003,SYSAH004);
create sequence SEQ_TB_SYSAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAH to public;
grant index  on TB_SYSAH to public;
grant update on TB_SYSAH to public; 
grant delete on TB_SYSAH to public;  
grant insert on TB_SYSAH to public; 
grant select on SEQ_TB_SYSAH to public;   