/*
================================================================================
表结构代码:TB_PMTUC
表结构名称:促销变更单变更范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTUC;
drop index AK_TB_PMTUC;
drop table TB_PMTUC;
create table TB_PMTUC  (
   PMTUC_ID             INTEGER                         not null,  /*促销变更范围ID    */
   PMTUC001             INTEGER                         not null,  /*促销变更单ID      */
   PMTUC002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTUC primary key (PMTUC_ID)
);
create unique index AK_TB_PMTUC on TB_PMTUC (PMTUC001,PMTUC002);
create sequence SEQ_TB_PMTUC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTUC to public;
grant index  on TB_PMTUC to public;
grant update on TB_PMTUC to public;    
grant delete on TB_PMTUC to public;  
grant insert on TB_PMTUC to public; 
grant select on SEQ_TB_PMTUC to public;   