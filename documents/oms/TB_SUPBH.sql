/*
================================================================================
表结构代码:TB_SUPBH
表结构名称:面板显示的数据
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBH;
drop index AK_TB_SUPBH;
drop table TB_SUPBH;
create table TB_SUPBH  (
   SUPBH001             VARCHAR2(30)                    not null,  /*图纸编号                */
   SUPBH002             VARCHAR2(20)                    not null,  /*摊位编号                */
   SUPBH003             VARCHAR2(50)                    not null,  /*显示项                  */
   SUPBH004             VARCHAR2(800),                             /*值                      */
   SUPBH005             NUMBER(1)                       not null,  /*是否显示在状态1下       */
   SUPBH006             NUMBER(1)                       not null,  /*是否显示在状态2下       */
   SUPBH007             NUMBER(1)                       not null,  /*是否显示在状态3下       */
   SUPBH008             NUMBER(1)                       not null,  /*是否显示在状态4下       */
   SUPBH009             NUMBER(1)                       not null,  /*是否显示在状态5下       */
   SUPBH010             NUMBER(1)                       not null,  /*是否显示在状态6下       */
   SUPBH011             NUMBER(1)                       not null,  /*是否显示在状态7下       */
   SUPBH012             NUMBER(1)                       not null,  /*是否显示在状态8下       */
   SUPBH013             NUMBER(1)                       not null,  /*是否显示在状态9下       */
   constraint PK_TB_SUPBH primary key (SUPBH001,SUPBH002,SUPBH003)
);
/*create unique index AK_TB_SUPBH on TB_SUPBH (SUPBH001,SUPBH002,SUPBH003);*/
create sequence SEQ_TB_SUPBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBH to public;
grant index  on TB_SUPBH to public;
grant update on TB_SUPBH to public; 
grant delete on TB_SUPBH to public;  
grant insert on TB_SUPBH to public; 
grant select on SEQ_TB_SUPBH to public;   
