/*
================================================================================
表结构代码:TB_PUBHE
表结构名称:商品维度表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHE;
drop index AK_TB_PUBHE;
drop table TB_PUBHE;
create table TB_PUBHE  (
   PUBHE_ID             INTEGER                         not null,  /*商品维度ID        */
   PUBHE001             INTEGER                         not null,  /*商品ID            */
   PUBHE002             INTEGER                         not null,  /*维度ID            */
   PUBHE003		VARCHAR2(1)			not null,  /*是否可订	       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHE primary key (PUBHE_ID)
);
create unique index AK_TB_PUBHE on TB_PUBHE (PUBHE001,PUBHE002);
create sequence SEQ_TB_PUBHE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHE to public;
grant index  on TB_PUBHE to public;
grant update on TB_PUBHE to public; 
grant delete on TB_PUBHE to public;  
grant insert on TB_PUBHE to public; 
grant select on SEQ_TB_PUBHE to public;   