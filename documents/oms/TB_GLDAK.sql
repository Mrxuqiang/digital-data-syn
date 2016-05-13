/*
================================================================================
表结构代码:TB_GLDAK
表结构名称:集团对账子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAK;
drop index AK_TB_GLDAK;
drop table TB_GLDAK;
create table TB_GLDAK  (
   GLDAK_ID             INTEGER                         not null,  /*对账子ID           */
   GLDAK001             INTEGER                         not null,  /*对账主ID            */
   GLDAK002             VARCHAR2(1)                     not null,  /*本方标志            */
   GLDAK003             INTEGER                         not null,   /*凭证分录ID         */
   GLDAK004             NUMBER                          not null,   /*序号              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GLDAK primary key (GLDAK_ID)
);
create sequence SEQ_TB_GLDAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAK to public;
grant index  on TB_GLDAK to public;
grant update on TB_GLDAK to public; 
grant delete on TB_GLDAK to public;  
grant insert on TB_GLDAK to public; 
grant select on SEQ_TB_GLDAK to public;   