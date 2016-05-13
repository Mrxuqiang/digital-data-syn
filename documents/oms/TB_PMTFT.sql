/*
================================================================================
表结构代码:TB_PMTFT
表结构名称:返现回收登记单
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFT;
drop index AK_TB_PMTFT;
drop table TB_PMTFT;
create table TB_PMTFT  (
   PMTFT_ID             INTEGER                         not null,  /*返现回收登记ID          */
   PMTFT001             INTEGER                         not null,  /*单别ID                  */
   PMTFT002             VARCHAR2(30)                    not null,  /*单号                    */
   PMTFT003             DATE                            not null,  /*发放日期                */
   PMTFT004             INTEGER		                not null,  /*发放营运组织            */
   PMTFT005             VARCHAR2(30),                              /*客户姓名                */
   PMTFT006             VARCHAR2(30)                         ,     /*客户电话                */
   PMTFT007             INTEGER                         not null,  /*发放单号ID              */
   PMTFT008             VARCHAR2(255)                         ,    /*备注                    */
   PMTFT009             VARCHAR2(2),                               /*促销类型                */
   PMTFT010             INTEGER,                                   /*录入人ID                */
   PMTFT011             DATE,                                      /*录入日期                */
   PMTFT012             INTEGER,                                   /*审核人ID                */
   PMTFT013             DATE,                                      /*审核日期                */
   PMTFT014             VARCHAR2(1)                     not null , /*审核状态                */
   PMTFT015             NUMBER(22,2),                              /*应返现金额              */
   PMTFT016             NUMBER(22,2),                              /*实返现金额              */
   PMTFT017             NUMBER(22,2),                              /*已回收现金额            */
   PMTFT018             NUMBER(22,2),                              /*本次应回收现金额        */
   PMTFT019             NUMBER(22,2),                              /*实回收现金额            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                     */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                 */                               
   CREATE_DATE          DATE,                                      /*建立日期                     */
   MODIFIER             VARCHAR2(12),                              /*修改人员                     */
   MODI_DATE            DATE,                                      /*修改日期                     */
   FLAG                 NUMBER(1),                                 /*资料状态                     */
   constraint PK_TB_PMTFT primary key (PMTFT_ID)				                  
);
create unique index AK_TB_PMTFT on TB_PMTFT (PMTFR004,PMTFR002);
create sequence SEQ_TB_PMTFT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFT to public;
grant index  on TB_PMTFT to public;
grant update on TB_PMTFT to public; 
grant delete on TB_PMTFT to public;  
grant insert on TB_PMTFT to public; 
grant select on SEQ_TB_PMTFT to public;   