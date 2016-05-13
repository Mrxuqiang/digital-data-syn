/*
================================================================================
表结构代码:TB_PUBKA
表结构名称:发票种类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBKA;
drop index AK_TB_PUBKA;
drop table TB_PUBKA;
create table TB_PUBKA  (
   PUBKA_ID             INTEGER                         not null,  /*发票种类ID         */
   PUBKA001             VARCHAR2(4)                     not null,  /*发票种类代码       */
   PUBKA002             VARCHAR2(30)                    not null,  /*发票种类名称       */
   PUBKA003             VARCHAR2(1)                     not null,  /*发票类型           */
   PUBKA004             VARCHAR2(1),                               /*是否停用           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBKA primary key (PUBKA_ID)
);
create unique index AK_TB_PUBKA on TB_PUBKA (PUBKA001);
create sequence SEQ_TB_PUBKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBKA to public;
grant index  on TB_PUBKA to public;
grant update on TB_PUBKA to public; 
grant delete on TB_PUBKA to public;  
grant insert on TB_PUBKA to public; 
grant select on SEQ_TB_PUBKA to public;   