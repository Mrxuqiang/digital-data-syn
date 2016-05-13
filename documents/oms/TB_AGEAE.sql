/*
================================================================================
表结构代码:TB_AGEAE
表结构名称:代收款返款单垫付表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AGEAE;
drop index AK_TB_AGEAE;
drop table TB_AGEAE;
create table TB_AGEAE  (
   AGEAE_ID             INTEGER                         not null,  /*代收款返款单垫付ID          */
   AGEAE001             INTEGER                         not null,  /*代收款返款单ID              */
   AGEAE002             INTEGER                         not null,  /*垫付单ID                    */
   AGEAE003             INTEGER                         not null,  /*垫付费用ID                  */
   AGEAE004             NUMBER(12,2),                              /*垫付余额                    */
   AGEAE005             NUMBER(12,2),                              /*返款金额                    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_AGEAE primary key (AGEAE_ID)
);
create unique index AK_TB_AGEAE on TB_AGEAE (AGEAE001,AGEAE002,AGEAE003);
create sequence SEQ_TB_AGEAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEAE to public;
grant index  on TB_AGEAE to public;
grant update on TB_AGEAE to public; 
grant delete on TB_AGEAE to public;  
grant insert on TB_AGEAE to public; 
grant select on SEQ_TB_AGEAE to public;   