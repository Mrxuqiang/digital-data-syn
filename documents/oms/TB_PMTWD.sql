/*
================================================================================
表结构代码:TB_PMTWD
表结构名称:拼单折扣单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTWD;
drop index AK_TB_PMTWD;
drop table TB_PMTWD;
create table TB_PMTWD  (
   PMTWD_ID             INTEGER                         not null,  /*拼单折扣生效范围ID*/
   PMTWD001             INTEGER                         not null,  /*拼单折扣单ID      */
   PMTWD002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTWD primary key (PMTWD_ID)
);
create unique index AK_TB_PMTWD on TB_PMTWD (PMTWD001,PMTWD002);
create sequence SEQ_TB_PMTWD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTWD to public;
grant index  on TB_PMTWD to public;
grant update on TB_PMTWD to public; 
grant delete on TB_PMTWD to public;  
grant insert on TB_PMTWD to public; 
grant select on SEQ_TB_PMTWD to public;   