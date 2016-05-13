/*
================================================================================
表结构代码:TB_PMTDF
表结构名称:单品买赠单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDF;
drop index AK_TB_PMTDF;
drop table TB_PMTDF;
create table TB_PMTDF  (
   PMTDF_ID             INTEGER                         not null,  /*买赠生效时间ID    */
   PMTDF001             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDF002             DATE                            not null,  /*开始日期          */
   PMTDF003             VARCHAR2(8)                     not null,  /*开始时间          */
   PMTDF004             DATE                            not null,  /*结束日期          */
   PMTDF005             VARCHAR2(8)                     not null,  /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDF primary key (PMTDF_ID)
);
create unique index AK_TB_PMTDF on TB_PMTDF (PMTDF001,PMTDF002,PMTDF003);
create sequence SEQ_TB_PMTDF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDF to public;
grant index  on TB_PMTDF to public;
grant update on TB_PMTDF to public; 
grant delete on TB_PMTDF to public;  
grant insert on TB_PMTDF to public; 
grant select on SEQ_TB_PMTDF to public;   