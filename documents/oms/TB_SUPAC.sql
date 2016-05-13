/*
================================================================================
表结构代码:TB_SUPAC
表结构名称:摊位异动单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAC;
drop index AK_TB_SUPAC;
drop table TB_SUPAC;
create table TB_SUPAC  (
   SUPAC_ID             INTEGER                         not null,  /*摊位异动单子表ID    */
   SUPAC001             INTEGER                         not null,  /*摊位异动单ID        */
   SUPAC002             INTEGER                         not null,  /*场地ID              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAC primary key (SUPAC_ID)
);
create unique index AK_TB_SUPAC on TB_SUPAC (SUPAC001,SUPAC002);
create sequence SEQ_TB_SUPAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAC to public;
grant index  on TB_SUPAC to public;
grant update on TB_SUPAC to public; 
grant delete on TB_SUPAC to public;  
grant insert on TB_SUPAC to public; 
grant select on SEQ_TB_SUPAC to public;   