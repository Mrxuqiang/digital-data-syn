/*
================================================================================
表结构代码:TB_SUPBA
表结构名称:楼层图纸资料表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBA;
drop index AK_TB_SUPBA;
drop table TB_SUPBA;
create table TB_SUPBA  (
   SUPBA001             VARCHAR2(30)                    not null,  /*图纸编号            */
   SUPBA002             VARCHAR2(40)                    not null,  /*图纸名称            */
   SUPBA003             INTEGER                         not null,  /*营运组织ID          */
   SUPBA004             VARCHAR2(16)                    not null,  /*营运组织编号        */
   SUPBA005             INTEGER                         not null,  /*楼栋ID              */
   SUPBA006             VARCHAR2(10)                    not null,  /*楼栋编号            */
   SUPBA007             INTEGER                         not null,  /*楼层ID              */
   SUPBA008             VARCHAR2(10)                    not null,  /*楼层编号            */
   SUPBA009             NUMBER(12,2)                    not null,  /*图纸宽度            */
   SUPBA010             NUMBER(12,2)                    not null,  /*图纸高度            */
   SUPBA011             NUMBER(12,2)                    not null,  /*图纸比例尺          */
   SUPBA090             VARCHAR2(200),                             /*备注                */
   constraint PK_TB_SUPBA primary key (SUPBA001)
);
/*create unique index AK_TB_SUPBA on TB_SUPBA (SUPBA001);*/
create sequence SEQ_TB_SUPBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBA to public;
grant index  on TB_SUPBA to public;
grant update on TB_SUPBA to public; 
grant delete on TB_SUPBA to public;  
grant insert on TB_SUPBA to public; 
grant select on SEQ_TB_SUPBA to public;   