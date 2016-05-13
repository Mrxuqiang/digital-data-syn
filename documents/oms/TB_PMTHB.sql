/*
================================================================================
表结构代码:TB_PMTHB
表结构名称:累计赠品单规则商品表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHB;
drop index AK_TB_PMTHB;
drop table TB_PMTHB;
create table TB_PMTHB  (
   PMTHB_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTHB001             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHB002             VARCHAR2(1)                     not null,  /*对象类型          */
   PMTHB003             INTEGER,                                   /*对象ID            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHB primary key (PMTHB_ID)
);
create unique index AK_TB_PMTHB on TB_PMTHB (PMTHB001,PMTHB002,PMTHB003);
create sequence SEQ_TB_PMTHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHB to public;
grant index  on TB_PMTHB to public;
grant update on TB_PMTHB to public; 
grant delete on TB_PMTHB to public;  
grant insert on TB_PMTHB to public; 
grant select on SEQ_TB_PMTHB to public;   