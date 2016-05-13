/*
================================================================================
表结构代码:TB_PUBHC
表结构名称:商品分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBHC;
drop index AK_TB_PUBHC;
drop table TB_PUBHC;
create table TB_PUBHC  (
   PUBHC_ID             INTEGER                         not null,  /*品类ID            */
   PUBHC001             VARCHAR2(16)                    not null,  /*品类代码          */
   PUBHC002             VARCHAR2(30)                    not null,  /*品类名称          */
   PUBHC003             INTEGER                         not null,  /*上级品类          */
   PUBHC004             INTEGER,                                   /*最大下级分类数    */
   PUBHC005             INTEGER,                                   /*最大品项数        */
   PUBHC006             VARCHAR2(255),                             /*备注              */
   PUBHC007             VARCHAR2(30),                              /*当前层级代码      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PUBHC primary key (PUBHC_ID)
);
create unique index AK_TB_PUBHC on TB_PUBHC (PUBHC001);
create sequence SEQ_TB_PUBHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBHC to public;
grant index  on TB_PUBHC to public;
grant update on TB_PUBHC to public; 
grant delete on TB_PUBHC to public;  
grant insert on TB_PUBHC to public; 
grant select on SEQ_TB_PUBHC to public;   