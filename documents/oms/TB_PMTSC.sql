/*
================================================================================
表结构代码:TB_PMTSC
表结构名称:交款直降生效商场范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTSC;
drop index AK_TB_PMTSC;
drop table TB_PMTSC;
create table TB_PMTSC  (
   PMTSC_ID             INTEGER                         not null,  /*交款直降生效范围ID*/
   PMTSC001             INTEGER                         not null,  /*交款直降单ID      */
   PMTSC002             INTEGER                         not null,  /*营运组织ID        */
   PMTSC003             VARCHAR2(1)                             ,  /*全场参与        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTSC primary key (PMTSC_ID)
);
create unique index AK_TB_PMTSC on TB_PMTSC (PMTSC001,PMTSC002);
create sequence SEQ_TB_PMTSC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTSC to public;
grant index  on TB_PMTSC to public;
grant update on TB_PMTSC to public; 
grant delete on TB_PMTSC to public;  
grant insert on TB_PMTSC to public; 
grant select on SEQ_TB_PMTSC to public;   