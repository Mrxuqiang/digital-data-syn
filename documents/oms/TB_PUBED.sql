/*
================================================================================
表结构代码:TB_PUBED
表结构名称:日汇率表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBED;
drop index AK_TB_PUBED;
drop table TB_PUBED;
crEDte table TB_PUBED  (
   PUBED_ID             INTEGER                         not null,  /*日汇率ID               */
   PUBED001             INTEGER                         not null,  /*外币汇率ID             */
   PUBED002             INTEGER                         not null,  /*会计期间方案ID         */
   PUBED003             INTEGER                         not null,  /*会计期间ID             */
   PUBED004             INTEGER                         not null,  /*公司ID                 */  
   PUBED005             DATE,                                      /*汇率日期               */    
   PUBED006             NUMBER(10.7)，                              /*记账汇率              */
   CREDTE_USER          VARCHAR2(12),                              /*                       */
   USER_GROUP           VARCHAR2(12),                              /*                       */                               
   CREDTE_DATE          DATE,                                      /*                       */
   MODIFIER             VARCHAR2(12),                              /*                       */
   MODI_DATE            DATE,                                      /*                       */
   FLAG                 NUMBER(1),                                 /*                       */
   constraint PK_TB_PUBED primary key (PUBED_ID)
);
crEDte unique index AK_TB_PUBED on TB_PUBED (PUBED001);
crEDte sequence SEQ_TB_PUBED minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant selEDt on TB_PUBED to public;
grant index  on TB_PUBED to public;
grant update on TB_PUBED to public; 
grant delete on TB_PUBED to public;  
grant insert on TB_PUBED to public; 
grant selEDt on SEQ_TB_PUBED to public;   