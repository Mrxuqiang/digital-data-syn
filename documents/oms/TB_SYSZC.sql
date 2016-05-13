/*
================================================================================
表结构代码:TB_SYSZC
表结构名称:协议内容表
表结构目的:存储系统的协议内容
================================================================================
*/

drop table TB_SYSZC;
create table TB_SYSZC  (
   SYSZC001              CLOB                                           /*协议内容              */
);
grant select on TB_SYSZC to public;
grant index  on TB_SYSZC to public;
grant update on TB_SYSZC to public;
grant delete on TB_SYSZC to public;
grant insert on TB_SYSZC to public;
