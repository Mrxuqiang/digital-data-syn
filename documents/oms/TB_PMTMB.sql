/*
================================================================================
表结构代码:TB_PMTMB
表结构名称:券发放单交款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTMB;
drop index AK_TB_PMTMB;
drop table TB_PMTMB;
create table TB_PMTMB  (
   PMTMB_ID             INTEGER                         not null,  /*券发放单交款ID                */
   PMTMB001             INTEGER                         not null,  /*券发放单ID                    */
   PMTMB002             VARCHAR2(2)                     ,  /*促销类型                      */
   PMTMB003             INTEGER                         ,  /*促销单ID                      */
   PMTMB004             INTEGER                         not null,  /*营运组织ID                    */
   PMTMB005             VARCHAR2(1)                     ,  /*销售类型                      */
   PMTMB006             INTEGER                         not null,  /*销售单ID                      */
   PMTMB007             INTEGER                         not null,  /*交款单ID                      */
   PMTMB008             VARCHAR2(30),                              /*促销单号                      */
   PMTMB009             VARCHAR2(30),                              /*销售单号                      */
   PMTMB010             VARCHAR2(30),                              /*交款单号                      */
   PMTMB011             NUMBER(20,2),                              /*实交款金额                    */
   PMTMB012             NUMBER(20,2),                              /*参与返券交款金额              */
   PMTMB013             NUMBER(20,2),                              /*返券金额                      */
   PMTMB014             NUMBER(12,2)                         ,     /*销售分摊金额（处理尾差）        */
   PMTMB015             VARCHAR2(30),                              /*顾客姓名         */
   PMTMB016             VARCHAR2(30),                              /*联系电话         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */ 
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER,                                    /*资料状态                      */
   constraint PK_TB_PMTMB primary key (PMTMB_ID)
);
create unique index AK_TB_PMTMB on TB_PMTMB (PMTMB001,PMTMB002,PMTMB003,PMTMB004,PMTMB005,PMTMB006,PMTMB007);
create sequence SEQ_TB_PMTMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTMB to public;
grant index  on TB_PMTMB to public;
grant update on TB_PMTMB to public; 
grant delete on TB_PMTMB to public;  
grant insert on TB_PMTMB to public; 
grant select on SEQ_TB_PMTMB to public;   