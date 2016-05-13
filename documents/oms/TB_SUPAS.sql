/*
================================================================================
表结构代码:TB_SUPAS
表结构名称:战盟协议单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAS;
drop index AK_TB_SUPAS;
drop table TB_SUPAS;
create table TB_SUPAS  (
   SUPAS_ID             INTEGER                         not null,  /*战盟协议单子表ID    */
   SUPAS001             INTEGER                         not null,  /*战盟协议单ID        */
   SUPAS002             INTEGER                         not null,  /*品牌ID              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAS primary key (SUPAS_ID)
);
create unique index AK_TB_SUPAS on TB_SUPAS (SUPAS001,SUPAS002);
create sequence SEQ_TB_SUPAS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAS to public;
grant index  on TB_SUPAS to public;
grant update on TB_SUPAS to public; 
grant delete on TB_SUPAS to public;  
grant insert on TB_SUPAS to public; 
grant select on SEQ_TB_SUPAS to public;   