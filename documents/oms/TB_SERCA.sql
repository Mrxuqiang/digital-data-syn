/*
================================================================================
表结构代码:TB_SERCA
表结构名称:解决方式表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERCA;
drop index AK_TB_SERCA;
drop table TB_SERCA;
create table TB_SERCA  (
   SERCA_ID             INTEGER                         not null,  /*解决方式ID          */
   SERCA001             VARCHAR2(12)                    not null,  /*解决方式代码        */
   SERCA002             VARCHAR2(20)                    not null,  /*解决方式名称        */
   SERCA003             VARCHAR2(30)                               /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SERCA primary key (SERCA_ID)
);
create unique index AK_TB_SERCA on TB_SERCA (SERCA_ID);
create sequence SEQ_TB_SERCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERCA to public;
grant index  on TB_SERCA to public;
grant update on TB_SERCA to public; 
grant delete on TB_SERCA to public;  
grant insert on TB_SERCA to public; 
grant select on SEQ_TB_SERCA to public;   