/*
================================================================================
表结构代码:TB_PMTDJ
表结构名称:单品买赠单规则主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDJ;
drop index AK_TB_PMTDJ;
drop table TB_PMTDJ;
create table TB_PMTDJ  (
   PMTDJ_ID             INTEGER                         not null,    /*规则ID        */
   PMTDJ001             VARCHAR2(255)                     not null,  /*规则描述          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDJ primary key (PMTDJ_ID)
);
create unique index AK_TB_PMTDJ on TB_PMTDJ (PMTDJ001);
create sequence SEQ_TB_PMTDJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDJ to public;
grant index  on TB_PMTDJ to public;
grant update on TB_PMTDJ to public; 
grant delete on TB_PMTDJ to public;  
grant insert on TB_PMTDJ to public; 
grant select on SEQ_TB_PMTDJ to public;   