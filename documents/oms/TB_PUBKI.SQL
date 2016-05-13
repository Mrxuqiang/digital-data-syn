/*
================================================================================
表结构代码:TB_PUBKI
表结构名称:商品分值定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBKI;
drop index AK_TB_PUBKI;
drop table TB_PUBKI;
create table TB_PUBKI  (
   PUBKI_ID             INTEGER                         not null,  /*商品分值定义id  */
   PUBKI001             INTEGER                         not null,  /*商品ID              */
   PUBKI002             NUMBER(18,2),                              /*搬运分值            */
   PUBKI003             NUMBER(18,2),                              /*安装分值            */
   PUBKI004             NUMBER(18,2),                              /*拆装分值            */
   PUBKI005             NUMBER(18,2),                              /*打包分值            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_PUBKI primary key (PUBKI_ID)
);
create unique index AK_TB_PUBKI on TB_PUBKI (PUBKI001);
create sequence SEQ_TB_PUBKI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKI to public;
grant index  on TB_PUBKI to public;
grant update on TB_PUBKI to public; 
grant delete on TB_PUBKI to public;  
grant insert on TB_PUBKI to public; 
grant select on SEQ_TB_PUBKI to public;   