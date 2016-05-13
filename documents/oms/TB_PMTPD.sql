/*
================================================================================
表结构代码:TB_PMTPD
表结构名称:活动赠品回收单赠品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTPD;
drop index AK_TB_PMTPD;
drop table TB_PMTPD;
create table TB_PMTPD  (
   PMTPD_ID             INTEGER                         not null,  /*活动赠品回收单赠品ID          */
   PMTPD001             INTEGER                         not null,  /*活动赠品回收单ID              */
   PMTPD002             VARCHAR2(2)                     not null,  /*促销类型                      */
   PMTPD003             INTEGER                         not null,  /*促销单ID                      */
   PMTPD004             VARCHAR2(5),                               /*规则代码                      */
   PMTPD005             VARCHAR2(1)                     not null,  /*回收方式                      */
   PMTPD006             INTEGER                         not null,  /*赠品代码ID                    */
   PMTPD007             INTEGER                         not null,  /*单位ID                        */
   PMTPD008             NUMBER(18,3),                              /*收回数量                      */
   PMTPD009             NUMBER(12,2),                              /*单价                          */
   PMTPD010             NUMBER(12,2),                              /*金额                          */
   PMTPD011             INTEGER,                                   /*手续费率                      */
   PMTPD012             NUMBER(12,2),                              /*手续费率(%)                   */
   PMTPD013             NUMBER(12,2),                              /*手续费                        */
   PMTPD014             VARCHAR2(30),                              /*银行卡号                      */
   PMTPD015             VARCHAR2(30),                              /*支票号                        */
   PMTPD016             NUMBER(12,2),                              /*支票面额                      */
   PMTPD017             VARCHAR2(80),                              /*出票单位                      */
   PMTPD018             VARCHAR2(255),                             /*备注                          */
   PMTPD019             VARCHAR2(30),                              /*促销单号                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTPD primary key (PMTPD_ID)
);
create unique index AK_TB_PMTPD on TB_PMTPD (PMTPD001,PMTPD002,PMTPD003,PMTPD005);
create sequence SEQ_TB_PMTPD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTPD to public;
grant index  on TB_PMTPD to public;
grant update on TB_PMTPD to public; 
grant delete on TB_PMTPD to public;  
grant insert on TB_PMTPD to public; 
grant select on SEQ_TB_PMTPD to public;   