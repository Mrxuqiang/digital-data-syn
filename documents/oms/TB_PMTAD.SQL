/*
================================================================================
表结构代码:TB_PMTAD
表结构名称:营销费用预算表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PMTAD;
drop index AK_TB_PMTAD;
drop table TB_PMTAD;
create table TB_PMTAD  (
   PMTAD_ID             INTEGER                         not null,  /*费用预算ID        */
   PMTAD001             INTEGER                         not null,  /*营销主题ID        */
   PMTAD002             INTEGER                         not null,  /*费用代码          */
   PMTAD003             NUMBER(18,2)                   not null,  /*金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER,                                    /*资料状态          */
   constraint PK_TB_PMTAD primary key (PMTAD_ID)
);
create unique index AK_TB_PMTAD on TB_PMTAD (PMTAD_ID);
create sequence SEQ_TB_PMTAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTAD to public;
grant index  on TB_PMTAD to public;
grant update on TB_PMTAD to public; 
grant delete on TB_PMTAD to public;  
grant insert on TB_PMTAD to public; 
grant select on SEQ_TB_PMTAD to public;   