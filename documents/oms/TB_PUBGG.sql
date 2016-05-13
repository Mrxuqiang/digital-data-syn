/*
================================================================================
表结构代码:TB_PUBGG
表结构名称:商品系列表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBGG;
drop index AK_TB_PUBGG;
drop table TB_PUBGG;
create table TB_PUBGG  (
   PUBGG_ID             INTEGER                         not null,  /*系列ID             */
   PUBGG001             VARCHAR2(30)                    not null,  /*系列代码           */
   PUBGG002             VARCHAR2(40)                    not null,  /*系列名称           */
   PUBGG003             VARCHAR2(40)                    not null,  /*英文名称           */--20110712 add by xiechun
   PUBGG004             VARCHAR2(40)                    not null,  /*商品风格           */--20110712 add by xiechun
   PUBGG005             VARCHAR2(40)                    not null,  /*地域风格           */--20110712 add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBGG primary key (PUBGG_ID)
);
create unique index AK_TB_PUBGG on TB_PUBGG (PUBGG001);
create sequence SEQ_TB_PUBGG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBGG to public;
grant index  on TB_PUBGG to public;
grant update on TB_PUBGG to public; 
grant delete on TB_PUBGG to public;  
grant insert on TB_PUBGG to public; 
grant select on SEQ_TB_PUBGG to public;   