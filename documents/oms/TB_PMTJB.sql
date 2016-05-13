/*
================================================================================
表结构代码:TB_PMTJB
表结构名称:单品组合单规则商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTJB;
drop index AK_TB_PMTJB;
drop table TB_PMTJB;
create table TB_PMTJB  (
   PMTJB_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTJB001             INTEGER                         not null,  /*单品组合单ID      */
   PMTJB002             VARCHAR2(5)                     not null,  /*规则代码          */
   PMTJB003             INTEGER                         not null,  /*商品ID            */
   PMTJB004             INTEGER                         not null,  /*单位ID            */
   PMTJB005             NUMBER(12,2),                              /*销售数量          */
   PMTJB006             NUMBER(12,2),                              /*销售售价          */
   PMTJB007             NUMBER(12,2),                              /*销售单价          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTJB primary key (PMTJB_ID)
);
create unique index AK_TB_PMTJB on TB_PMTJB (PMTJB001,PMTJB002,PMTJB006);
create sequence SEQ_TB_PMTJB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJB to public;
grant index  on TB_PMTJB to public;
grant update on TB_PMTJB to public; 
grant delete on TB_PMTJB to public;  
grant insert on TB_PMTJB to public; 
grant select on SEQ_TB_PMTJB to public;   