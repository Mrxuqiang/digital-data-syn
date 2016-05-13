/*
================================================================================
表结构代码:TB_SUPBD
表结构名称:楼层图纸资料表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBD;
--drop index AK_TB_SUPBD;
drop table TB_SUPBD;
create table TB_SUPBD  (
   SUPBD001             VARCHAR2(16)                    not null,  /*图纸编号            */
   SUPBD009             VARCHAR2(20)                    not null,  /*父级编号            */
   SUPBD010             INTEGER                         not null,  /*级别                */
   SUPBD011             INTEGER                         not null,  /*末级                */
   SUPBD090             VARCHAR2(200),                             /*备注                */
   constraint PK_TB_SUPBD primary key (SUPBD001)
);
--create unique index AK_TB_SUPBD on TB_SUPBD (SUPBD001);
create sequence SEQ_TB_SUPBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBD to public;
grant index  on TB_SUPBD to public;
grant update on TB_SUPBD to public; 
grant delete on TB_SUPBD to public;  
grant insert on TB_SUPBD to public; 
grant select on SEQ_TB_SUPBD to public;   

