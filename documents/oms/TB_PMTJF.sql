/*
================================================================================
表结构代码:TB_PMTJF
表结构名称:单品组合单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTJF;
drop index AK_TB_PMTJF;
drop table TB_PMTJF;
create table TB_PMTJF  (
   PMTJF_ID             INTEGER                         not null,  /*组合生效范围ID    */
   PMTJF001             INTEGER                         not null,  /*单品组合单ID      */
   PMTJF002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTJF primary key (PMTJF_ID)
);
create unique index AK_TB_PMTJF on TB_PMTJF (PMTJF001,PMTJF002);
create sequence SEQ_TB_PMTJF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJF to public;
grant index  on TB_PMTJF to public;
grant update on TB_PMTJF to public; 
grant delete on TB_PMTJF to public;  
grant insert on TB_PMTJF to public; 
grant select on SEQ_TB_PMTJF to public;   