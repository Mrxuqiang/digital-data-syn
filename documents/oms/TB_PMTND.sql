/*
================================================================================
表结构代码:TB_PMTND
表结构名称:券回收单应收券表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTND;
drop index AK_TB_PMTND;
drop table TB_PMTND;
create table TB_PMTND  (
   PMTND_ID             INTEGER                         not null,  /*券回收单应收券ID              */
   PMTND001             INTEGER                         not null,  /*券回收单ID                    */
   PMTND002             VARCHAR2(1)                     not null,  /*促销类型                      */
   PMTND003             INTEGER                         not null,  /*促销单ID                      */
   PMTND004             VARCHAR2(2),                               /*返券金额                      */
   PMTND005             NUMBER(12,2),                              /*计算返券金额                  */
   PMTND006             INTEGER                         not null,  /*券种ID                        */
   PMTND007             NUMBER(12,2),                              /*应收券金额                    */
   PMTND008             NUMBER(12,2),                              /*实收券金额                    */
   PMTND009             VARCHAR2(30),                              /*促销单号                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTND primary key (PMTND_ID)
);
create unique index AK_TB_PMTND on TB_PMTND (PMTND001,PMTND002,PMTND003,PMTND006);
create sequence SEQ_TB_PMTND minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTND to public;
grant index  on TB_PMTND to public;
grant update on TB_PMTND to public; 
grant delete on TB_PMTND to public;  
grant insert on TB_PMTND to public; 
grant select on SEQ_TB_PMTND to public;   