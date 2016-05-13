/*
================================================================================
表结构代码:TB_SUPBN
表结构名称:历史HINT显示的数据
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPBN;
drop index AK_TB_SUPBN;
drop table TB_SUPBN;
create table TB_SUPBN  (
   SUPBN000             VARCHAR2(8)                     not null,  /*保存日期           */
   SUPBN001             VARCHAR2(30)                    not null,  /*图纸编号           */
   SUPBN002             VARCHAR2(20)                    not null,  /*摊位编号           */
   SUPBN003             VARCHAR2(50)                    not null,  /*显示项             */
   SUPBN004             VARCHAR2(800),                             /*值                 */
   SUPBN005             NUMBER(1)                       not null,  /*是否显示在状态1下  */
   SUPBN006             NUMBER(1)                       not null,  /*是否显示在状态2下  */
   SUPBN007             NUMBER(1)                       not null,  /*是否显示在状态3下  */
   SUPBN008             NUMBER(1)                       not null,  /*是否显示在状态4下  */
   SUPBN009             NUMBER(1)                       not null,  /*是否显示在状态5下  */
   SUPBN010             NUMBER(1)                       not null,  /*是否显示在状态6下  */
   SUPBN011             NUMBER(1)                       not null,  /*是否显示在状态7下  */
   SUPBN012             NUMBER(1)                       not null,  /*是否显示在状态8下  */
   SUPBN013             NUMBER(1)                       not null,  /*是否显示在状态9下  */
   constraint PK_TB_SUPBN primary key (SUPBN000,SUPBN001,SUPBN002,SUPBN003)
);
/*create unique index AK_TB_SUPBN on TB_SUPBN (SUPBN000,SUPBN001,SUPBN002,SUPBN003);*/
create sequence SEQ_TB_SUPBN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPBN to public;
grant index  on TB_SUPBN to public;
grant update on TB_SUPBN to public; 
grant delete on TB_SUPBN to public;  
grant insert on TB_SUPBN to public; 
grant select on SEQ_TB_SUPBN to public;   
