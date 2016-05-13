/*
================================================================================
表结构代码:TB_PMTDN
表结构名称:买赠单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDN;
drop index AK_TB_PMTDN;
drop table TB_PMTDN;
create table TB_PMTDN  (
   PMTDN_ID             INTEGER                         not null,  /*买赠生效范围ID    */
   PMTDN001             INTEGER                         not null,  /*买赠单ID      */
   PMTDN002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDN primary key (PMTDN_ID)
);
create unique index AK_TB_PMTDN on TB_PMTDN (PMTDN001,PMTDN002);
create sequence SEQ_TB_PMTDN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDN to public;
grant index  on TB_PMTDN to public;
grant update on TB_PMTDN to public; 
grant delete on TB_PMTDN to public;  
grant insert on TB_PMTDN to public; 
grant select on SEQ_TB_PMTDN to public;   