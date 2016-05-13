/*
================================================================================
表结构代码:TB_PMTFB
表结构名称:交款返券单规则商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTFB;
drop index AK_TB_PMTFB;
drop table TB_PMTFB;
create table TB_PMTFB  (
   PMTFB_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTFB001             INTEGER                         not null,  /*交款返券单ID      */
   PMTFB002             VARCHAR2(1)                     not null,  /*对象类型          */
   PMTFB003             INTEGER,                                   /*对象ID            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTFB primary key (PMTFB_ID)
);
create unique index AK_TB_PMTFB on TB_PMTFB (PMTFB001,PMTFB002,PMTFB003);
create sequence SEQ_TB_PMTFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTFB to public;
grant index  on TB_PMTFB to public;
grant update on TB_PMTFB to public; 
grant delete on TB_PMTFB to public;  
grant insert on TB_PMTFB to public; 
grant select on SEQ_TB_PMTFB to public;   