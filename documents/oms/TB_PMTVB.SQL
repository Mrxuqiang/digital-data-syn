/*
================================================================================
表结构代码:TB_PMTVB
表结构名称:满减促销单参与规则表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTVB;
drop index AK_TB_PMTVB;
drop table TB_PMTVB;
create table TB_PMTVB  (
   PMTVB_ID             INTEGER                         not null,  /*规则商品ID        */
   PMTVB001             INTEGER                         not null,  /*满减促销单ID      */
   PMTVB002             VARCHAR2(1)                     not null,  /*参与对象类型          */
   PMTVB003             INTEGER,                                   /*对象ID            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTVB primary key (PMTVB_ID)
);
create unique index AK_TB_PMTVB on TB_PMTVB (PMTVB001,PMTVB002,PMTVB003);
create sequence SEQ_TB_PMTVB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTVB to public;
grant index  on TB_PMTVB to public;
grant update on TB_PMTVB to public; 
grant delete on TB_PMTVB to public;  
grant insert on TB_PMTVB to public; 
grant select on SEQ_TB_PMTVB to public;   