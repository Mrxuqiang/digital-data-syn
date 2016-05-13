/*
================================================================================
表结构代码:TB_PMTCF
表结构名称:单品折扣单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCF;
drop index AK_TB_PMTCF;
drop table TB_PMTCF;
create table TB_PMTCF  (
   PMTCF_ID             INTEGER                         not null,  /*折扣生效范围ID    */
   PMTCF001             INTEGER                         not null,  /*单品折扣单ID      */
   PMTCF002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCF primary key (PMTCF_ID)
);
create unique index AK_TB_PMTCF on TB_PMTCF (PMTCF001,PMTCF002);
create sequence SEQ_TB_PMTCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCF to public;
grant index  on TB_PMTCF to public;
grant update on TB_PMTCF to public; 
grant delete on TB_PMTCF to public;  
grant insert on TB_PMTCF to public; 
grant select on SEQ_TB_PMTCF to public;   