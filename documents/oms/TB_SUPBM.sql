/*
================================================================================
表结构代码:TB_SUPBM
表结构名称:历史面板显示的数据
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBM;
drop index AK_TB_SUPBM;
drop table TB_SUPBM;
create table TB_SUPBM  (
   SUPBM000             VARCHAR2(8)                     not null,  /*保存日期                 */
   SUPBM001             VARCHAR2(30)                    not null,  /*图纸编号                 */
   SUPBM002             VARCHAR2(20)                    not null,  /*摊位编号                 */
   SUPBM003             VARCHAR2(50)                    not null,  /*显示项                   */
   SUPBM004             VARCHAR2(800),                             /*值                       */
   SUPBM005             NUMBER(1)                       not null,  /*是否显示在状态1下        */
   SUPBM006             NUMBER(1)                       not null,  /*是否显示在状态2下        */
   SUPBM007             NUMBER(1)                       not null,  /*是否显示在状态3下        */
   SUPBM008             NUMBER(1)                       not null,  /*是否显示在状态4下        */
   SUPBM009             NUMBER(1)                       not null,  /*是否显示在状态5下        */
   SUPBM010             NUMBER(1)                       not null,  /*是否显示在状态6下        */
   SUPBM011             NUMBER(1)                       not null,  /*是否显示在状态7下        */
   SUPBM012             NUMBER(1)                       not null,  /*是否显示在状态8下        */
   SUPBM013             NUMBER(1)                       not null,  /*是否显示在状态9下        */
   constraint PK_TB_SUPBM primary key (SUPBM000,SUPBM001,SUPBM002,SUPBM003)
);
/*create unique index AK_TB_SUPBM on TB_SUPBM (SUPBM000,SUPBM001,SUPBM002,SUPBM003);*/
create sequence SEQ_TB_SUPBM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBM to public;
grant index  on TB_SUPBM to public;
grant update on TB_SUPBM to public; 
grant delete on TB_SUPBM to public;  
grant insert on TB_SUPBM to public; 
grant select on SEQ_TB_SUPBM to public;   
