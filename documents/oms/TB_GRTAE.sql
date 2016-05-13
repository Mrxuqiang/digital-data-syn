/*
================================================================================
表结构代码:TB_GRTAE
表结构名称:抵消方案子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTAE;
drop index AK_TB_GRTAE;
drop table TB_GRTAE;
create table TB_GRTAE  (
   GRTAE_ID             INTEGER                         not null,  /*抵消方案子ID       */
   GRTAE001             INTEGER                         not null,  /*抵消方案主ID       */   
   GRTAE002             INTEGER                         not null,  /*抵消模版ID         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTAE primary key (GRTAE_ID)
);
create sequence SEQ_TB_GRTAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTAE to public;
grant index  on TB_GRTAE to public;
grant update on TB_GRTAE to public; 
grant delete on TB_GRTAE to public;  
grant insert on TB_GRTAE to public; 
grant select on SEQ_TB_GRTAE to public;   