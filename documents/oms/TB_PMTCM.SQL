/*
================================================================================
表结构代码:TB_PMTCM
表结构名称:折扣单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCM;
drop index AK_TB_PMTCM;
drop table TB_PMTCM;
create table TB_PMTCM  (
   PMTCM_ID             INTEGER                         not null,  /*折扣生效范围ID    */
   PMTCM001             INTEGER                         not null,  /*折扣单ID      */
   PMTCM002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCM primary key (PMTCM_ID)
);
create unique index AK_TB_PMTCM on TB_PMTCM (PMTCM001,PMTCM002);
create sequence SEQ_TB_PMTCM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCM to public;
grant index  on TB_PMTCM to public;
grant update on TB_PMTCM to public; 
grant delete on TB_PMTCM to public;  
grant insert on TB_PMTCM to public; 
grant select on SEQ_TB_PMTCM to public;   