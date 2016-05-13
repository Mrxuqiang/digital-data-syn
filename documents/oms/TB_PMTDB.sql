/*
================================================================================
表结构代码:TB_PMTDB
表结构名称:单品买赠单规则赠品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDB;
drop index AK_TB_PMTDB;
drop table TB_PMTDB;
create table TB_PMTDB  (
   PMTDB_ID             INTEGER                         not null,  /*规则赠品ID        */
   PMTDB001             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDB002             VARCHAR2(5)                     not null,  /*规则代码          */
   PMTDB003             INTEGER                         not null,  /*赠品ID            */
   PMTDB004             INTEGER                         not null,  /*单位ID            */
   PMTDB005             NUMBER(12,2),                              /*单价              */
   PMTDB006             NUMBER(12,2),                              /*数量              */
   PMTDB007             NUMBER(12,2),                              /*金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDB primary key (PMTDB_ID)
);
create unique index AK_TB_PMTDB on TB_PMTDB (PMTDB001,PMTDB002,PMTDB003);
create sequence SEQ_TB_PMTDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDB to public;
grant index  on TB_PMTDB to public;
grant update on TB_PMTDB to public; 
grant delete on TB_PMTDB to public;  
grant insert on TB_PMTDB to public; 
grant select on SEQ_TB_PMTDB to public;   