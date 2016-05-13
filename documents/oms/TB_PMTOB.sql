/*
================================================================================
表结构代码:TB_PMTOB
表结构名称:活动赠品发放单交款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTOB;
drop index AK_TB_PMTOB;
drop table TB_PMTOB;
create table TB_PMTOB  (
   PMTOB_ID             INTEGER                         not null,  /*活动赠品发放单交款ID          */
   PMTOB001             INTEGER                         not null,  /*活动赠品发放单ID              */
   PMTOB002             VARCHAR2(2)                     not null,  /*促销类型                      */
   PMTOB003             INTEGER                         not null,  /*促销单ID                      */
   PMTOB004             INTEGER                         not null,  /*营运组织ID                    */
   PMTOB005             VARCHAR2(1)                     not null,  /*销售类型                      */
   PMTOB006             INTEGER                         not null,  /*销售单ID                      */
   PMTOB007             INTEGER                         not null,  /*交款单ID                      */
   PMTOB008             VARCHAR2(30),                              /*促销单号                      */
   PMTOB009             VARCHAR2(30),                              /*销售单号                      */
   PMTOB010             VARCHAR2(30),                              /*交款单号                      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                      */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门                  */                               
   CREATE_DATE          DATE,                                      /*建立日期                      */
   MODIFIER             VARCHAR2(12),                              /*修改人员                      */
   MODI_DATE            DATE,                                      /*修改日期                      */
   FLAG                 NUMBER(1),                                 /*资料状态                      */
   constraint PK_TB_PMTOB primary key (PMTOB_ID)
);
create unique index AK_TB_PMTOB on TB_PMTOB (PMTOB001,PMTOB002,PMTOB003,PMTOB004,PMTOB005,PMTOB006,PMTOB007);
create sequence SEQ_TB_PMTOB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTOB to public;
grant index  on TB_PMTOB to public;
grant update on TB_PMTOB to public; 
grant delete on TB_PMTOB to public;  
grant insert on TB_PMTOB to public; 
grant select on SEQ_TB_PMTOB to public;   