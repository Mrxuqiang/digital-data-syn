/*
================================================================================
表结构代码:TB_PMTBF
表结构名称:单品特价单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTBF;
drop index AK_TB_PMTBF;
drop table TB_PMTBF;
create table TB_PMTBF  (
   PMTBF_ID             INTEGER                         not null,  /*折扣生效范围ID    */
   PMTBF001             INTEGER                         not null,  /*单品特价单ID      */
   PMTBF002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTBF primary key (PMTBF_ID)
);
create unique index AK_TB_PMTBF on TB_PMTBF (PMTBF001,PMTBF002);
create sequence SEQ_TB_PMTBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBF to public;
grant index  on TB_PMTBF to public;
grant update on TB_PMTBF to public; 
grant delete on TB_PMTBF to public;  
grant insert on TB_PMTBF to public; 
grant select on SEQ_TB_PMTBF to public;   