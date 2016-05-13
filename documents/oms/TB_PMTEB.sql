/*
================================================================================
表结构代码:TB_PMTEB
表结构名称:交款折扣单规则商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTEB;
drop index AK_TB_PMTEB;
drop table TB_PMTEB;
create table TB_PMTEB  (
   PMTEB_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTEB001             INTEGER                         not null,  /*交款折扣单ID      */
   PMTEB002             VARCHAR2(1)                     not null,  /*对象类型          */
   PMTEB003             INTEGER,                                   /*对象ID            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTEB primary key (PMTEB_ID)
);
create unique index AK_TB_PMTEB on TB_PMTEB (PMTEB001,PMTEB002,PMTEB003);
create sequence SEQ_TB_PMTEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTEB to public;
grant index  on TB_PMTEB to public;
grant update on TB_PMTEB to public; 
grant delete on TB_PMTEB to public;  
grant insert on TB_PMTEB to public; 
grant select on SEQ_TB_PMTEB to public;   