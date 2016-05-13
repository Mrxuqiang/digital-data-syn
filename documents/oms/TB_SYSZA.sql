/*
================================================================================
表结构代码:TB_SYSZA
表结构名称:分析表定义SQL主表
表结构目的:存储经过表分析模块分析的表名及描述信息
================================================================================
*/

drop sequence SEQ_TB_SYSZA;
drop index AK_TB_SYSZA;
drop table TB_SYSZA;
create table TB_SYSZA  (
   SYSZA_ID              INTEGER                              not null,             /*分析表主表ID              */
   SYSZA001              VARCHAR2(30)                         not null,             /*表结构代码                */
   SYSZA002              VARCHAR2(60)                         not null,             /*表结构名称                */
   SYSZA003              VARCHAR2(60),             																	/*表结构目的                */
   SYSZA004              VARCHAR2(4000),             																/*SQL文件内容               */
   SYSZA005              VARCHAR2(4000),             																/*SQL文件内容               */
   SYSZA006              VARCHAR2(4000),             																/*SQL文件内容               */
   SYSZA007              VARCHAR2(4000),             																/*SQL文件内容               */
   constraint PK_TB_SYSZA primary key (SYSZA_ID)
);
create unique index AK_TB_SYSZA on TB_SYSZA (SYSZA001);
create sequence SEQ_TB_SYSZA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSZA to public;
grant index  on TB_SYSZA to public;
grant update on TB_SYSZA to public;
grant delete on TB_SYSZA to public;
grant insert on TB_SYSZA to public;
grant select on SEQ_TB_SYSZA to public;