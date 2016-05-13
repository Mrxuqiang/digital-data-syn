/*
================================================================================
表结构代码:TB_AGEAB
表结构名称:代收款返款单交款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AGEAB;
drop index AK_TB_AGEAB;
drop table TB_AGEAB;
create table TB_AGEAB  (
   AGEAB_ID             INTEGER                         not null,  /*代收款返款单交款ID          */
   AGEAB001             INTEGER                         not null,  /*代收款返款单ID              */
   AGEAB002             VARCHAR2(1)                     not null,  /*销售类型                    */
   AGEAB003             INTEGER                         not null,  /*销售单ID                    */
   AGEAB004             INTEGER                         not null,  /*交款单ID                    */
   AGEAB005             INTEGER                         not null,  /*交款付款明细ID              */
   AGEAB006             DATE,                                      /*交款日期                    */
   AGEAB007             INTEGER                         not null,  /*结算代码ID                  */
   AGEAB008             INTEGER,                                   /*券种ID                      */
   AGEAB009             DATE,                                      /*券到期日                    */
   AGEAB010             NUMBER(12,2),                              /*交易金额                    */
   AGEAB011             NUMBER(12,2),                              /*已返金额                    */
   AGEAB012             NUMBER(12,2),                              /*未返金额                    */
   AGEAB013             NUMBER(12,2),                              /*返款金额                    */
   AGEAB014             NUMBER(12,2),                              /*手续费                      */
   AGEAB015             NUMBER(12,2),                              /*手续费已返                  */
   AGEAB016             NUMBER(12,2),                              /*手续费未返                  */
   AGEAB017             NUMBER(12,2),                              /*手续费返款                  */
   AGEAB018             NUMBER(12,2),                              /*返款净额                    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_AGEAB primary key (AGEAB_ID)
);
create unique index AK_TB_AGEAB on TB_AGEAB (AGEAB001,AGEAB002,AGEAB003,AGEAB004,AGEAB005);
create sequence SEQ_TB_AGEAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEAB to public;
grant index  on TB_AGEAB to public;
grant update on TB_AGEAB to public; 
grant delete on TB_AGEAB to public;  
grant insert on TB_AGEAB to public; 
grant select on SEQ_TB_AGEAB to public;   