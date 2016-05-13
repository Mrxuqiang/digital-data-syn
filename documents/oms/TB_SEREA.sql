/*
================================================================================
表结构代码:TB_SEREA
表结构名称:赠品分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SEREA;
drop index AK_TB_SEREA;
drop table TB_SEREA;
create table TB_SEREA  (
   SEREA_ID             INTEGER                         not null,  /*分类ID            */
   SEREA001             VARCHAR2(16)                    not null,  /*分类代码          */
   SEREA002             VARCHAR2(30)                    not null,  /*分类名称          */
   SEREA003             INTEGER                         not null,  /*上级分类          */
   SEREA004             VARCHAR2(255),                             /*备注              */
   SEREA005             VARCHAR2(30),                              /*当前层级代码      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_SEREA primary key (SEREA_ID)
);
create unique index AK_TB_SEREA on TB_SEREA (SEREA001);
create sequence SEQ_TB_SEREA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SEREA to public;
grant index  on TB_SEREA to public;
grant update on TB_SEREA to public; 
grant delete on TB_SEREA to public;  
grant insert on TB_SEREA to public; 
grant select on SEQ_TB_SEREA to public;   