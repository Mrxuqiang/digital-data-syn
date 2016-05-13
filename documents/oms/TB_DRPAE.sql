/*
================================================================================
表结构代码:TB_DRPAE
表结构名称:抵消方案子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPAE;
drop index AK_TB_DRPAE;
drop table TB_DRPAE;
create table TB_DRPAE  (
   DRPAE_ID             INTEGER                         not null,  /*抵消方案子ID       */
   DRPAE001             INTEGER                         not null,  /*抵消方案主ID       */   
   DRPAE002             INTEGER                         not null,  /*抵消模版ID         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_DRPAE primary key (DRPAE_ID)
);
create sequence SEQ_TB_DRPAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPAE to public;
grant index  on TB_DRPAE to public;
grant update on TB_DRPAE to public; 
grant delete on TB_DRPAE to public;  
grant insert on TB_DRPAE to public; 
grant select on SEQ_TB_DRPAE to public;   