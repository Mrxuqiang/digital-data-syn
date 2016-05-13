/*
================================================================================
表结构代码:TB_SUPBF
表结构名称:场地多边形柜台各点表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBF;
drop index AK_TB_SUPBF;
drop table TB_SUPBF;
create table TB_SUPBF  (
   SUPBF001             VARCHAR2(30)                    not null,  /*图纸编号                          */
   SUPBF002             INTEGER                         not null,  /*组件序号                          */
   SUPBF003             INTEGER                         not null,  /*多边点序号(及数组下标)            */
   SUPBF004             NUMBER(12,2)                    not null,  /*点的X坐标                         */
   SUPBF005             NUMBER(12,2)                    not null,  /*点的Y坐标                         */
   SUPBF090             VARCHAR2(200),                             /*备注                              */
   constraint PK_TB_SUPBF primary key (SUPBF001,SUPBF002,SUPBF003)
);
/*create unique index AK_TB_SUPBF on TB_SUPBF (SUPBF001,SUPBF003);*/
create sequence SEQ_TB_SUPBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBF to public;
grant index  on TB_SUPBF to public;
grant update on TB_SUPBF to public; 
grant delete on TB_SUPBF to public;  
grant insert on TB_SUPBF to public; 
grant select on SEQ_TB_SUPBF to public;   
