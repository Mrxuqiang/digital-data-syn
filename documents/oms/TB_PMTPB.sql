/*
================================================================================
表结构代码:TB_PMTPB
表结构名称:活动赠品回收单退款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTPB;
drop index AK_TB_PMTPB;
drop table TB_PMTPB;
create table TB_PMTPB  (
   PMTPB_ID             INTEGER                         not null,  /*活动赠品回收单退款ID          */
   PMTPB001             INTEGER                         not null,  /*活动赠品回收单ID              */
   PMTPB002             VARCHAR2(2)                     not null,  /*促销类型                      */
   PMTPB003             INTEGER                         not null,  /*促销单ID                      */
   PMTPB004             INTEGER                         not null,  /*营运组织ID                    */
   PMTPB005             VARCHAR2(1)                     not null,  /*销售类型                      */
   PMTPB006             INTEGER                         not null,  /*销退单ID                      */
   PMTPB007             INTEGER                         not null,  /*销售单ID                      */
   PMTPB008             INTEGER                         not null,  /*交款单ID                      */
   PMTPB009             VARCHAR2(30),                              /*促销单号                      */
   PMTPB010             VARCHAR2(30),                              /*销退单号                      */
   PMTPB011             VARCHAR2(30),                              /*销售单号                      */
   PMTPB012             VARCHAR2(30),                              /*交款单号                      */
   PMTPB013             INTEGER                         not null,  /*活动赠品发放单ID              */
   PMRPB014             VARCHAR2(30),                              /*活动赠品发放单号              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTPB primary key (PMTPB_ID)
);
create unique index AK_TB_PMTPB on TB_PMTPB (PMTPB001,PMTPB002,PMTPB003,PMTPB004,PMTPB005,PMTPB006,PMTPB008);
create sequence SEQ_TB_PMTPB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTPB to public;
grant index  on TB_PMTPB to public;
grant update on TB_PMTPB to public; 
grant delete on TB_PMTPB to public;  
grant insert on TB_PMTPB to public; 
grant select on SEQ_TB_PMTPB to public;   