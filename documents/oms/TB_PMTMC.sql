/*
================================================================================
表结构代码:TB_PMTMC
表结构名称:券发放单商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTMC;
drop index AK_TB_PMTMC;
drop table TB_PMTMC;
create table TB_PMTMC  (
   PMTMC_ID             INTEGER                         not null,  /*券发放单商品ID                */
   PMTMC001             INTEGER                         not null,  /*券发放单ID                    */
   PMTMC002             INTEGER                         not null,  /*券发放单交款ID                */
   PMTMC003             INTEGER,                                   /*销售明细商品ID                */
   PMTMC004             NUMBER(12,2),                              /*交款金额                      */
   PMTMC005             NUMBER(12,2),                              /*折扣金额                      */
   PMTMC006             NUMBER(12,2),                              /*实交款金额                    */
   PMTMC007             NUMBER(12,2),                              /*参与返券交款金额              */
   PMTMC008             NUMBER(12,2),                              /*可返券金额                    */
   PMTMC009             NUMBER(12,2),                              /*实返券金额                    */
   PMTMC010             NUMBER(12,2),                              /*销售金额                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTMC primary key (PMTMC_ID)
);
create unique index AK_TB_PMTMC on TB_PMTMC (PMTMC001,PMTMC002,PMTMC003);
create sequence SEQ_TB_PMTMC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTMC to public;
grant index  on TB_PMTMC to public;
grant update on TB_PMTMC to public; 
grant delete on TB_PMTMC to public;  
grant insert on TB_PMTMC to public; 
grant select on SEQ_TB_PMTMC to public;   