/*
================================================================================
表结构代码:TB_PMTIH
表结构名称:交款收券单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTIH;
drop index AK_TB_PMTIH;
drop table TB_PMTIH;
create table TB_PMTIH  (
   PMTIH_ID             INTEGER                         not null,  /*交款收券生效范围ID*/
   PMTIH001             INTEGER                         not null,  /*交款收券单ID      */
   PMTIH002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTIH primary key (PMTIH_ID)
);
create unique index AK_TB_PMTIH on TB_PMTIH (PMTIH001,PMTIH002);
create sequence SEQ_TB_PMTIH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIH to public;
grant index  on TB_PMTIH to public;
grant update on TB_PMTIH to public; 
grant delete on TB_PMTIH to public;  
grant insert on TB_PMTIH to public; 
grant select on SEQ_TB_PMTIH to public;   