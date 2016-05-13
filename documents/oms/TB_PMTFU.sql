/*
================================================================================
表结构代码:TB_PMTFU
表结构名称:返现回收销售及返现明细
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFU;
drop index AK_TB_PMTFU;
drop table TB_PMTFU;
create table TB_PMTFU  (
   PMTFU_ID             INTEGER                         not null,  /*销售及返现明细ID        */
   PMTFU001             INTEGER                         not null,  /*返现回收登记单          */
   PMTFU002             INTEGER                         not null,  /*营运组织ID              */
   PMTFU003             INTEGER                         not null,  /*销售单id                */
   PMTFU004             INTEGER		                not null,  /*交款单id                */
   PMTFU005             NUMBER(22,2),                              /*实交款金额              */
   PMTFU006             NUMBER(22,2),                              /*参与返现交款金额        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_PMTFU primary key (PMTFU_ID)				                  
);
create unique index AK_TB_PMTFU on TB_PMTFU (PMTFU004,PMTFU002);
create sequence SEQ_TB_PMTFU minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFU to public;
grant index  on TB_PMTFU to public;
grant update on TB_PMTFU to public; 
grant delete on TB_PMTFU to public;  
grant insert on TB_PMTFU to public; 
grant select on SEQ_TB_PMTFU to public;   