/*
================================================================================
表结构代码:TB_SUPBI
表结构名称:HINT显示的数据
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBI;
drop index AK_TB_SUPBI;
drop table TB_SUPBI;
create table TB_SUPBI  (
   SUPBI001             VARCHAR2(30)                    not null,  /*图纸编号                          */
   SUPBI002             VARCHAR2(20)                    not null,  /*摊位编号                          */
   SUPBI003             VARCHAR2(50)                    not null,  /*显示项                            */
   SUPBI004             VARCHAR2(800),                             /*值                                */
   SUPBI005             NUMBER(1)                       not null,  /*是否显示在状态1下                 */
   SUPBI006             NUMBER(1)                       not null,  /*是否显示在状态2下                 */
   SUPBI007             NUMBER(1)                       not null,  /*是否显示在状态3下                 */
   SUPBI008             NUMBER(1)                       not null,  /*是否显示在状态4下                 */
   SUPBI009             NUMBER(1)                       not null,  /*是否显示在状态5下                 */
   SUPBI010             NUMBER(1)                       not null,  /*是否显示在状态6下                 */
   SUPBI011             NUMBER(1)                       not null,  /*是否显示在状态7下                 */
   SUPBI012             NUMBER(1)                       not null,  /*是否显示在状态8下                 */
   SUPBI013             NUMBER(1)                       not null,  /*是否显示在状态9下                 */
   constraint PK_TB_SUPBI primary key (SUPBI001,SUPBI002,SUPBI003)
);
/*create unique index AK_TB_SUPBI on TB_SUPBI (SUPBI001,SUPBI002,SUPBI003);*/
create sequence SEQ_TB_SUPBI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBI to public;
grant index  on TB_SUPBI to public;
grant update on TB_SUPBI to public; 
grant delete on TB_SUPBI to public;  
grant insert on TB_SUPBI to public; 
grant select on SEQ_TB_SUPBI to public;   
