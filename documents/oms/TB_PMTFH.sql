/*
================================================================================
表结构代码:TB_PMTFH
表结构名称:交款返券单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFH;
drop index AK_TB_PMTFH;
drop table TB_PMTFH;
create table TB_PMTFH  (
   PMTFH_ID             INTEGER                         not null,  /*交款返券生效范围ID*/
   PMTFH001             INTEGER                         not null,  /*交款返券单ID      */
   PMTFH002             INTEGER                         not null,  /*营运组织ID        */
   PMTFH003             VARCHAR2(1)                             ,  /*全场参与        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFH primary key (PMTFH_ID)
);
create unique index AK_TB_PMTFH on TB_PMTFH (PMTFH001,PMTFH002);
create sequence SEQ_TB_PMTFH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFH to public;
grant index  on TB_PMTFH to public;
grant update on TB_PMTFH to public; 
grant delete on TB_PMTFH to public;  
grant insert on TB_PMTFH to public; 
grant select on SEQ_TB_PMTFH to public;   