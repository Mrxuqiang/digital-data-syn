/*
================================================================================
表结构代码:TB_BILGB
表结构名称:返款比例扣款单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILGB;
drop index AK_TB_BILGB;
drop table TB_BILGB;
create table TB_BILGB  (
   BILGB_ID             INTEGER                         not null,  /*返款比例扣款单扣款ID */
   BILGB001             INTEGER                         not null,  /*返款比例扣款单ID     */
   BILGB002             INTEGER                         not null,  /*摊位ID               */
   BILGB003             INTEGER                         not null,  /*商户ID               */
   BILGB004             NUMBER(12,2),                              /*计算金额             */ 
   BILGB005             NUMBER(12,2),                              /*保底金额             */ 
   BILGB006             NUMBER(12,2),                              /*扣款比例%            */ 
   BILGB007             NUMBER(12,2),                              /*扣款金额             */ 
   BILGB008             INTEGER,                                   /*费用单ID             */ 
   BILGB009             VARCHAR2(60),                              /*说明                 */
   BILGB010             INTEGER                         not null,  /*租赁合同ID           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_BILGB primary key (BILGB_ID)
);
create unique index AK_TB_BILGB on TB_BILGB (BILGB001,BILGB002,BILGB003,BILGB010);
create sequence SEQ_TB_BILGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILGB to public;
grant index  on TB_BILGB to public;
grant update on TB_BILGB to public; 
grant delete on TB_BILGB to public;  
grant insert on TB_BILGB to public; 
grant select on SEQ_TB_BILGB to public;   