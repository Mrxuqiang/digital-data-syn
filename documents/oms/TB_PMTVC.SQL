/*
================================================================================
表结构代码:TB_PMTVC
表结构名称:满减促销单促销规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTVC;
drop index AK_TB_PMTVC;
drop table TB_PMTVC;
create table TB_PMTVC  (
   PMTVC_ID             INTEGER                         not null,  /*促销规则ID        */
   PMTVC001             INTEGER                         not null,  /*满减促销单ID      */
   PMTVC002             NUMBER(18,2),                              /*满值金额          */
   PMTVC003             NUMBER(18,2),                              /*满减金额          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTVC primary key (PMTVC_ID)
);
create unique index AK_TB_PMTVC on TB_PMTVC (PMTVC001,PMTVC002,PMTVC003);
create sequence SEQ_TB_PMTVC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTVC to public;
grant index  on TB_PMTVC to public;
grant update on TB_PMTVC to public; 
grant delete on TB_PMTVC to public;  
grant insert on TB_PMTVC to public; 
grant select on SEQ_TB_PMTVC to public;   