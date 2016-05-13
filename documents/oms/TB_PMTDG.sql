/*
================================================================================
表结构代码:TB_PMTDG
表结构名称:单品买赠单生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDG;
drop index AK_TB_PMTDG;
drop table TB_PMTDG;
create table TB_PMTDG  (
   PMTDG_ID             INTEGER                         not null,  /*买赠生效范围ID    */
   PMTDG001             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDG002             INTEGER                         not null,  /*营运组织ID        */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDG primary key (PMTDG_ID)
);
create unique index AK_TB_PMTDG on TB_PMTDG (PMTDG001,PMTDG002);
create sequence SEQ_TB_PMTDG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDG to public;
grant index  on TB_PMTDG to public;
grant update on TB_PMTDG to public; 
grant delete on TB_PMTDG to public;  
grant insert on TB_PMTDG to public; 
grant select on SEQ_TB_PMTDG to public;   