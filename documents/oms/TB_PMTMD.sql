/*
================================================================================
表结构代码:TB_PMTMD
表结构名称:券发放单应发券表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTMD;
drop index AK_TB_PMTMD;
drop table TB_PMTMD;
create table TB_PMTMD  (
   PMTMD_ID             INTEGER                         not null,  /*券发放单应发券ID              */
   PMTMD001             INTEGER                         not null,  /*券发放单ID                    */
   PMTMD002             VARCHAR2(1)                     not null,  /*促销类型                      */
   PMTMD003             INTEGER                         not null,  /*促销单ID                      */
   PMTMD004             VARCHAR2(2),                               /*返券金额                      */
   PMTMD005             NUMBER(12,2),                              /*计算返券金额                  */
   PMTMD006             INTEGER                         not null,  /*券种ID                        */
   PMTMD007             NUMBER(12,2),                              /*应返券金额                    */
   PMTMD008             NUMBER(12,2),                              /*实返券金额                    */
   PMTMD009             VARCHAR2(30),                              /*促销单号                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTMD primary key (PMTMD_ID)
);
create unique index AK_TB_PMTMD on TB_PMTMD (PMTMD001,PMTMD002,PMTMD003,PMTMD006);
create sequence SEQ_TB_PMTMD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTMD to public;
grant index  on TB_PMTMD to public;
grant update on TB_PMTMD to public; 
grant delete on TB_PMTMD to public;  
grant insert on TB_PMTMD to public; 
grant select on SEQ_TB_PMTMD to public;   