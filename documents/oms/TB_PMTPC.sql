/*
================================================================================
表结构代码:TB_PMTPC
表结构名称:活动赠品回收单商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTPC;
drop index AK_TB_PMTPC;
drop table TB_PMTPC;
create table TB_PMTPC  (
   PMTPC_ID             INTEGER                         not null,  /*活动赠品回收单商品ID          */
   PMTPC001             INTEGER                         not null,  /*活动赠品回收单ID              */
   PMTPC002             INTEGER                         not null,  /*活动赠品回收单退款ID          */
   PMTPC003             INTEGER                         not null,  /*销售明细商品ID                */
   PMTPC004             NUMBER(12,2),                              /*退款金额                      */
   PMTPC005             NUMBER(12,2),                              /*折扣金额                      */
   PMTPC006             NUMBER(12,2),                              /*实退款金额                    */
   PMTPC007             NUMBER(12,2),                              /*参与买赠退款金额              */
   PMTPC008             NUMBER(12,2),                              /*应回收金额                    */
   PMTPC009             NUMBER(12,2),                              /*实回收金额                    */
   PMTOC010             NUMBER(12,2),                              /*销退金额                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTPC primary key (PMTPC_ID)
);
create unique index AK_TB_PMTPC on TB_PMTPC (PMTPC001,PMTPC002,PMTPC003);
create sequence SEQ_TB_PMTPC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTPC to public;
grant index  on TB_PMTPC to public;
grant update on TB_PMTPC to public; 
grant delete on TB_PMTPC to public;  
grant insert on TB_PMTPC to public; 
grant select on SEQ_TB_PMTPC to public;  