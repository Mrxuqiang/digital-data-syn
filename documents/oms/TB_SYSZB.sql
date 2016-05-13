/*
================================================================================
表结构代码:TB_SYSZB
表结构名称:分析表定义SQL明细表
表结构目的:存储经过表分析模块分析的表名及描述信息
================================================================================
*/

drop sequence SEQ_TB_SYSZB;
drop index AK_TB_SYSZB;
drop table TB_SYSZB;
create table TB_SYSZB  (
   SYSZB_ID              INTEGER                              not null,             /*分析表明细表ID            */
   SYSZB001              INTEGER                              not null,             /*分析表主表ID              */
   SYSZB002              VARCHAR2(30)                         not null,             /*字段代码                  */
   SYSZB003              VARCHAR2(30)                         not null,             /*数据类型                  */
   SYSZB004              INTEGER                              not null,             /*是否必填                  */
   SYSZB005              VARCHAR2(60)                         not null,             /*字段名称                  */
   constraint PK_TB_SYSZB primary key (SYSZB_ID)
);
create unique index AK_TB_SYSZB on TB_SYSZB (SYSZB001,SYSZB002);
create sequence SEQ_TB_SYSZB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSZB to public;
grant index  on TB_SYSZB to public;
grant update on TB_SYSZB to public;
grant delete on TB_SYSZB to public;
grant insert on TB_SYSZB to public;
grant select on SEQ_TB_SYSZB to public;