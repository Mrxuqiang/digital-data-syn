/*
================================================================================
表结构代码:TB_PMTGH
表结构名称:累计返券单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGH;
drop index AK_TB_PMTGH;
drop table TB_PMTGH;
create table TB_PMTGH  (
   PMTGH_ID             INTEGER                         not null,  /*累计返券生效范围ID*/
   PMTGH001             INTEGER                         not null,  /*累计返券单ID      */
   PMTGH002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGH primary key (PMTGH_ID)
);
create unique index AK_TB_PMTGH on TB_PMTGH (PMTGH001,PMTGH002);
create sequence SEQ_TB_PMTGH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGH to public;
grant index  on TB_PMTGH to public;
grant update on TB_PMTGH to public; 
grant delete on TB_PMTGH to public;  
grant insert on TB_PMTGH to public; 
grant select on SEQ_TB_PMTGH to public;   