/*
================================================================================
表结构代码:TB_SALAE
表结构名称:客户协议单生效组织表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALAE;
drop index AK_TB_SALAE;
drop table TB_SALAE;
create table TB_SALAE  (
   SALAE_ID             INTEGER                         not null,  /*客户协议单生效范围ID*/
   SALAE001             INTEGER                         not null,  /*客户协议单ID        */
   SALAE002             INTEGER                         not null,  /*营运组织ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SALAE primary key (SALAE_ID)
);
create unique index AK_TB_SALAE on TB_SALAE (SALAE001,SALAE002);
create sequence SEQ_TB_SALAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALAE to public;
grant index  on TB_SALAE to public;
grant update on TB_SALAE to public; 
grant delete on TB_SALAE to public;  
grant insert on TB_SALAE to public; 
grant select on SEQ_TB_SALAE to public;   