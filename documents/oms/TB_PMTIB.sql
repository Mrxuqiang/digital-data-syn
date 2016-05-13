/*
================================================================================
表结构代码:TB_PMTIB
表结构名称:交款收券单规则商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTIB;
drop index AK_TB_PMTIB;
drop table TB_PMTIB;
create table TB_PMTIB  (
   PMTIB_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTIB001             INTEGER                         not null,  /*交款收券单ID      */
   PMTIB002             VARCHAR2(1)                     not null,  /*对象类型          */
   PMTIB003             INTEGER,                                   /*对象ID            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTIB primary key (PMTIB_ID)
);
create unique index AK_TB_PMTIB on TB_PMTIB (PMTIB001,PMTIB002,PMTIB003);
create sequence SEQ_TB_PMTIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTIB to public;
grant index  on TB_PMTIB to public;
grant update on TB_PMTIB to public; 
grant delete on TB_PMTIB to public;  
grant insert on TB_PMTIB to public; 
grant select on SEQ_TB_PMTIB to public;   