/*
================================================================================
表结构代码:TB_AGEAC
表结构名称:代收款返款单退款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AGEAC;
drop index AK_TB_AGEAC;
drop table TB_AGEAC;
create table TB_AGEAC  (
   AGEAC_ID             INTEGER                         not null,  /*代收款返款单退款ID          */
   AGEAC001             INTEGER                         not null,  /*代收款返款单ID              */
   AGEAC002             VARCHAR2(1)                     not null,  /*销退类型                    */
   AGEAC003             INTEGER                         not null,  /*销退单ID                    */
   AGEAC004             INTEGER                         not null,  /*退款单ID                    */
   AGEAC005             INTEGER                         not null,  /*退款付款明细ID              */
   AGEAC006             DATE,                                      /*退款日期                    */
   AGEAC007             INTEGER                         not null,  /*结算代码ID                  */
   AGEAC008             INTEGER,                                   /*券种ID                      */
   AGEAC009             DATE,                                      /*券到期日                    */
   AGEAC010             NUMBER(12,2),                              /*交易金额                    */
   AGEAC011             NUMBER(12,2),                              /*已返金额                    */
   AGEAC012             NUMBER(12,2),                              /*未返金额                    */
   AGEAC013             NUMBER(12,2),                              /*返款金额                    */
   AGEAC014             NUMBER(12,2),                              /*手续费                      */
   AGEAC015             NUMBER(12,2),                              /*手续费已返                  */
   AGEAC016             NUMBER(12,2),                              /*手续费未返                  */
   AGEAC017             NUMBER(12,2),                              /*手续费返款                  */
   AGEAC018             NUMBER(12,2),                              /*返款净额                    */
   AGEAC019             VARCHAR2(1),                               /*收付方向:1.退 2.收          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_AGEAC primary key (AGEAC_ID)
);
create unique index AK_TB_AGEAC on TB_AGEAC (AGEAC001,AGEAC002,AGEAC003,AGEAC004,AGEAC005);
create sequence SEQ_TB_AGEAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGEAC to public;
grant index  on TB_AGEAC to public;
grant update on TB_AGEAC to public; 
grant delete on TB_AGEAC to public;  
grant insert on TB_AGEAC to public; 
grant select on SEQ_TB_AGEAC to public;   