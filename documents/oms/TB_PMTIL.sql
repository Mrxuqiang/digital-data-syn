/*
================================================================================
表结构代码:TB_PMTIL
表结构名称:交款收券促销单生效时间表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTIL;
drop index AK_TB_PMTIL;
drop table TB_PMTIL;
create table TB_PMTIL  (
   PMTIL_ID             INTEGER                         not null,  /*交款收券生效时间ID*/
   PMTIL001             INTEGER                         not null,  /*交款返券单ID      */
   PMTIL002             DATE ,                                     /*开始日期          */
   PMTIL003             VARCHAR2(12),                              /*开始时间          */
   PMTIL004             DATE ,                                     /*结束日期          */
   PMTIL005             VARCHAR2(12),                              /*结束时间          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER,                                    /*资料状态          */
   constraint PK_TB_PMTIL primary key (PMTIL_ID)
);
create sequence SEQ_TB_PMTIL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIL to public;
grant index  on TB_PMTIL to public;
grant update on TB_PMTIL to public; 
grant delete on TB_PMTIL to public;  
grant insert on TB_PMTIL to public; 
grant select on SEQ_TB_PMTIL to public; 


PMTIL001+PMTIL002+PMTIL004
