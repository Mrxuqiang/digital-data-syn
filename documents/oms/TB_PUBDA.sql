/*
================================================================================
表结构代码:TB_PUBDA
表结构名称:公式分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBDA;
drop index AK_TB_PUBDA;
drop table TB_PUBDA;
create table TB_PUBDA  (
   PUBDA_ID             INTEGER                         not null,  /*公式分类ID         */
   PUBDA001             VARCHAR2(4)                     not null,  /*公式分类代码       */
   PUBDA002             VARCHAR2(30)                    not null,  /*公式分类名称       */
   PUBDA003             VARCHAR2(255),                             /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBDA primary key (PUBDA_ID)
);
create unique index AK_TB_PUBDA on TB_PUBDA (PUBDA001);
create sequence SEQ_TB_PUBDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBDA to public;
grant index  on TB_PUBDA to public;
grant update on TB_PUBDA to public; 
grant delete on TB_PUBDA to public;  
grant insert on TB_PUBDA to public; 
grant select on SEQ_TB_PUBDA to public;   