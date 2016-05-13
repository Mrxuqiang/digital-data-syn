/*
================================================================================
表结构代码:TB_AGECB
表结构名称:代收款集团返款单返款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_AGECB;
drop index AK_TB_AGECB;
drop table TB_AGECB;
create table TB_AGECB  (
   AGECB_ID             INTEGER                         not null,  /*代收款集团返款单返款ID      */
   AGECB001             INTEGER                         not null,  /*代收款集团返款单ID          */
   AGECB002             INTEGER                         not null,  /*营运组织ID                  */
   AGECB003             INTEGER,                                   /*摊位ID                      */
   AGECB004             INTEGER,                                   /*合同号ID                    */
   AGECB005             DATE                            not null,  /*开始日期                    */
   AGECB006             DATE                            not null,  /*结束日期                    */
   AGECB007             NUMBER(12,2),                              /*交款返款金额                */
   AGECB008             NUMBER(12,2),                              /*退款返款金额                */
   AGECB009             NUMBER(12,2),                              /*退货垫付金额                */
   AGECB010             NUMBER(12,2),                              /*费用收款金额                */
   AGECB011             NUMBER(12,2),                              /*实返款金额                  */
   AGECB012             INTEGER,                                   /*返款单号ID                  */
   AGECB013             VARCHAR2(30),                              /*返款单号                    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                    */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                */                               
   CREATE_DATE          DATE,                                      /*建立日期                    */
   MODIFIER             VARCHAR2(12),                              /*修改人员                    */
   MODI_DATE            DATE,                                      /*修改日期                    */
   FLAG                 NUMBER(1),                                 /*资料状态                    */
   constraint PK_TB_AGECB primary key (AGECB_ID)
);
create unique index AK_TB_AGECB on TB_AGECB (AGECB001,AGECB002,AGECB003,AGECB004);
create sequence SEQ_TB_AGECB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_AGECB to public;
grant index  on TB_AGECB to public;
grant update on TB_AGECB to public; 
grant delete on TB_AGECB to public;  
grant insert on TB_AGECB to public; 
grant select on SEQ_TB_AGECB to public;   