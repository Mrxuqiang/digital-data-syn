/*
================================================================================
表结构代码:TB_SYSZO
表结构名称:修改表字段记录日志
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSZO;
drop table TB_SYSZO;
create table TB_SYSZO  (
   SYSZO_ID             INTEGER                         not null,  /*ID       */
   SYSZO001             VARCHAR2(32)                    not null,  /*用户账号         */
   SYSZO002             VARCHAR2(20),                              /*客户端IP         */
   SYSZO003             VARCHAR2(64),                              /*客户端机器名     */
   SYSZO004             VARCHAR2(20),                              /*作业编号         */
   SYSZO005             VARCHAR2(20),                              /*更改的表名       */
   SYSZO006             VARCHAR2(20),                              /*更改的字段       */
   SYSZO007             VARCHAR2(255),                             /*更改前字段值     */
   SYSZO008             VARCHAR2(255),                             /*更改后字段值     */
   SYSZO009             DATE,                                      /*日志日期         */
   SYSZO010             VARCHAR2(255),                             /*主键字符         */
   constraint PK_TB_SYSZO primary key (SYSZO_ID)
);
create sequence SEQ_TB_SYSZO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select,index,update,delete,insert on TB_SYSZO to public;
grant select on SEQ_TB_SYSZO to public;   