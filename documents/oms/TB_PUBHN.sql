/*
================================================================================
表结构代码:TB_PUBHN
表结构名称:商品组装成份替代表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHN;
drop index AK_TB_PUBHN;
drop table TB_PUBHN;
create table TB_PUBHN  (
   PUBHN_ID             INTEGER                         not null,  /*成份替代ID        */
   PUBHN001             INTEGER                         not null,  /*商品ID            */
   PUBHN002             INTEGER                         not null,  /*组装项ID          */
   PUBHN003             INTEGER                         not null,  /*成份替代商品ID    */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHN primary key (PUBHN_ID)
);
create unique index AK_TB_PUBHN on TB_PUBHN (PUBHN001,PUBHN002,PUBHN003);
create sequence SEQ_TB_PUBHN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHN to public;
grant index  on TB_PUBHN to public;
grant update on TB_PUBHN to public; 
grant delete on TB_PUBHN to public;  
grant insert on TB_PUBHN to public; 
grant select on SEQ_TB_PUBHN to public;   