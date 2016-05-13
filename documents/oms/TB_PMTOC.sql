/*
================================================================================
表结构代码:TB_PMTOC
表结构名称:活动赠品发放单商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTOC;
drop index AK_TB_PMTOC;
drop table TB_PMTOC;
create table TB_PMTOC  (
   PMTOC_ID             INTEGER                         not null,  /*活动赠品发放单商品ID          */
   PMTOC001             INTEGER                         not null,  /*活动赠品发放单ID              */
   PMTOC002             INTEGER                         not null,  /*活动赠品发放单交款ID          */
   PMTOC003             INTEGER                         not null,  /*销售明细商品ID                */
   PMTOC004             NUMBER(12,2),                              /*交款金额                      */
   PMTOC005             NUMBER(12,2),                              /*折扣金额                      */
   PMTOC006             NUMBER(12,2),                              /*实交款金额                    */
   PMTOC007             NUMBER(12,2),                              /*参与买赠交款金额              */
   PMTOC008             NUMBER(12,2),                              /*应买赠金额                    */
   PMTOC009             NUMBER(12,2),                              /*实买赠金额                    */
   PMTOC010             NUMBER(12,2),                              /*销售金额                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTOC primary key (PMTOC_ID)
);
create unique index AK_TB_PMTOC on TB_PMTOC (PMTOC001,PMTOC002,PMTOC003);
create sequence SEQ_TB_PMTOC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTOC to public;
grant index  on TB_PMTOC to public;
grant update on TB_PMTOC to public; 
grant delete on TB_PMTOC to public;  
grant insert on TB_PMTOC to public; 
grant select on SEQ_TB_PMTOC to public;   