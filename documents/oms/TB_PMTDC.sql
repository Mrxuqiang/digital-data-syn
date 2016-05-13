/*
================================================================================
表结构代码:TB_PMTDC
表结构名称:单品买赠单规则商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDC;
drop index AK_TB_PMTDC;
drop table TB_PMTDC;
create table TB_PMTDC  (
   PMTDC_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTDC001             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDC002             VARCHAR2(5)                     not null,  /*规则代码          */
   PMTDC003             INTEGER                         not null,  /*商品ID            */
   PMTDC004             INTEGER                         not null,  /*单位ID            */
   PMTDC005             NUMBER(12,2),                              /*销售数量          */
   PMTDC006             NUMBER(12,2),                              /*销售金额          */
   PMTDC007             NUMBER(12,2),                              /*单价              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDC primary key (PMTDC_ID)
);
create unique index AK_TB_PMTDC on TB_PMTDC (PMTDC001,PMTDC002,PMTDC006);
create sequence SEQ_TB_PMTDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDC to public;
grant index  on TB_PMTDC to public;
grant update on TB_PMTDC to public; 
grant delete on TB_PMTDC to public;  
grant insert on TB_PMTDC to public; 
grant select on SEQ_TB_PMTDC to public;   