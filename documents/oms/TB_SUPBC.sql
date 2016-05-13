/*
================================================================================
表结构代码:TB_SUPBC
表结构名称:层图纸内容多边形各点表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBC;
drop index AK_TB_SUPBC;
drop table TB_SUPBC;
create table TB_SUPBC  (
   SUPBC001             VARCHAR2(30)                    not null,  /*图纸编号                          */
   SUPBC002             INTEGER                         not null,  /*组件序号                          */
   SUPBC003             INTEGER                         not null,  /*多边点序号(及数组下标)            */
   SUPBC004             NUMBER(12,2)                    not null,  /*点的X坐标                         */
   SUPBC005             NUMBER(12,2)                    not null,  /*点的Y坐标                         */
   SUPBC090             VARCHAR2(200),                             /*备注                              */
   constraint PK_TB_SUPBC primary key (SUPBC001,SUPBC002,SUPBC003)
);
/*create unique index AK_TB_SUPBC on TB_SUPBC (SUPBC001,SUPBC003);*/
create sequence SEQ_TB_SUPBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBC to public;
grant index  on TB_SUPBC to public;
grant update on TB_SUPBC to public; 
grant delete on TB_SUPBC to public;  
grant insert on TB_SUPBC to public; 
grant select on SEQ_TB_SUPBC to public;   
