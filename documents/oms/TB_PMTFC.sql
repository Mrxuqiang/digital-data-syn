/*
================================================================================
表结构代码:TB_PMTFC
表结构名称:交款返券单规则区段表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFC;
drop index AK_TB_PMTFC;
drop table TB_PMTFC;
create table TB_PMTFC  (
   PMTFC_ID             INTEGER                         not null,  /*规则区段ID        */
   PMTFC001             INTEGER                         not null,  /*交款返券单ID      */
   PMTFC002             INTEGER                         not null,  /*券种类ID          */
   PMTFC003             VARCHAR2(2)                     not null,  /*取整方向          */
   PMTFC004             NUMBER(12,2),                              /*金额上限          */
   PMTFC005             NUMBER(12,2),                              /*金额下限          */
   PMTFC006             NUMBER(12,2),                              /*开始金额          */
   PMTFC007             NUMBER(12,2),                              /*结束金额          */
   PMTFC008             NUMBER(12,2),                              /*供应商分摊比例(%) */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFC primary key (PMTFC_ID)
);
create unique index AK_TB_PMTFC on TB_PMTFC (PMTFC001,PMTFC002,PMTFC004,PMTFC006);
create sequence SEQ_TB_PMTFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFC to public;
grant index  on TB_PMTFC to public;
grant update on TB_PMTFC to public; 
grant delete on TB_PMTFC to public;  
grant insert on TB_PMTFC to public; 
grant select on SEQ_TB_PMTFC to public;   