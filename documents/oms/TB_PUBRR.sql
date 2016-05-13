/*
================================================================================
表结构代码:TB_PUBRR
表结构名称:结转分类表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRR;
drop index AK_TB_PUBRR;
drop table TB_PUBRR;
create table TB_PUBRR  (
   PUBRR_ID             INTEGER                         not null,  /*结转分类主ID       */
   PUBRR001             VARCHAR2(10)                    not null,  /*编码               */
   PUBRR002             VARCHAR2(30)                    not null,  /*名称               */
   PUBRR003             INTEGER ,                                  /*分类上级           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBRR primary key (PUBRR_ID)
);
create unique index AK_TB_PUBRR on TB_PUBRR (PUBRR001,PUBRR002);
create sequence SEQ_TB_PUBRR minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRR to public;
grant index  on TB_PUBRR to public;
grant update on TB_PUBRR to public; 
grant delete on TB_PUBRR to public;  
grant insert on TB_PUBRR to public; 
grant select on SEQ_TB_PUBRR to public;   