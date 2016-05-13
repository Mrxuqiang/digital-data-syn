/*
================================================================================
表结构代码:TB_PMTGB
表结构名称:累计返券单规则商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGB;
drop index AK_TB_PMTGB;
drop table TB_PMTGB;
create table TB_PMTGB  (
   PMTGB_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTGB001             INTEGER                         not null,  /*累计返券单ID      */
   PMTGB002             VARCHAR2(1)                     not null,  /*对象类型          */
   PMTGB003             INTEGER,                                   /*对象ID            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGB primary key (PMTGB_ID)
);
create unique index AK_TB_PMTGB on TB_PMTGB (PMTGB001,PMTGB002,PMTGB003);
create sequence SEQ_TB_PMTGB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGB to public;
grant index  on TB_PMTGB to public;
grant update on TB_PMTGB to public; 
grant delete on TB_PMTGB to public;  
grant insert on TB_PMTGB to public; 
grant select on SEQ_TB_PMTGB to public;   