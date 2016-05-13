/*
================================================================================
表结构代码:TB_PMTFS
表结构名称:销售及返现明细
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFS;
drop index AK_TB_PMTFS;
drop table TB_PMTFS;
create table TB_PMTFS  (
   PMTFS_ID             INTEGER                         not null,  /*销售及返现明细ID        */
   PMTFS001             INTEGER                         not null,  /*返现登记单ID            */	
   PMTFS002             INTEGER		                not null,  /*营运组织ID              */
   PMTFS003             INTEGER                         not null,  /*销售单 ID               */
   PMTFS004             INTEGER                         not null,  /*交款单号ID              */
   PMTFS005             NUMBER(12,2)                            ,  /*实交款金额              */
   PMTFS006             NUMBER(12,2)                         ,     /*参与返现交款金额        */
   PMTFS007             NUMBER(12,2)                         ,     /*销售分摊金额（处理尾差）        */
   PMTFS008             VARCHAR2(30),                              /*顾客姓名         */
   PMTFS009             VARCHAR2(30),                              /*联系电话         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_PMTFS primary key (PMTFS_ID)				                  
);
create unique index AK_TB_PMTFS on TB_PMTFS (PMTFS001,PMTFS002,PMTFS003,PMTFS004);
create sequence SEQ_TB_PMTFS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFS to public;
grant index  on TB_PMTFS to public;
grant update on TB_PMTFS to public; 
grant delete on TB_PMTFS to public;  
grant insert on TB_PMTFS to public; 
grant select on SEQ_TB_PMTFS to public;   