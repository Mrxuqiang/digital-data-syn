/*
================================================================================
表结构代码:TB_PMTEH
表结构名称:交款折扣单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTEH;
drop index AK_TB_PMTEH;
drop table TB_PMTEH;
create table TB_PMTEH  (
   PMTEH_ID             INTEGER                         not null,  /*交款折扣生效范围ID*/
   PMTEH001             INTEGER                         not null,  /*交款折扣单ID      */
   PMTEH002             INTEGER                         not null,  /*营运组织ID        */
   PMTEH003             VARCHAR2(1),                               /*全场参与          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTEH primary key (PMTEH_ID)
);
create unique index AK_TB_PMTEH on TB_PMTEH (PMTEH001,PMTEH002);
create sequence SEQ_TB_PMTEH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEH to public;
grant index  on TB_PMTEH to public;
grant update on TB_PMTEH to public; 
grant delete on TB_PMTEH to public;  
grant insert on TB_PMTEH to public; 
grant select on SEQ_TB_PMTEH to public;   