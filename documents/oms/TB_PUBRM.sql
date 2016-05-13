/*
================================================================================
表结构代码:TB_PUBRM
表结构名称:科目对应关系主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRM;
drop index AK_TB_PUBRM;
drop table TB_PUBRM;
create table TB_PUBRM  (
   PUBRM_ID             INTEGER                         not null,  /*科目对应主ID       */
   PUBRM001             VARCHAR2(20)                    not null,  /*编号               */
   PUBRM002             VARCHAR2(30)                    not null,  /*名称               */
   PUBRM003             INTEGER                         not null,   /*本方单位ID         */
   PUBRM004             INTEGER                         not null,  /*对方单位ID         */
   PUBRM005             INTEGER                         not null,  /*对账规则ID         */
   PUBRM006             VARCHAR2(1)                     not null,  /*包含未记帐         */
   PUBRM007             VARCHAR2(1)                     not null,  /*本币               */
   PUBRM008             VARCHAR2(1)                     not null,  /*原币               */
   PUBRM009             VARCHAR2(1)                     not null,  /*余额对账           */
   PUBRM010             VARCHAR2(1)                     not null,  /*借贷对账           */
   PUBRM011             VARCHAR2(1)                     not null,  /*贷借对账           */
   PUBRM012             VARCHAR2(1)                     not null,  /*借贷累计对账       */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBRM primary key (PUBRM_ID)
);
create unique index AK_TB_PUBRM on TB_PUBRM (PUBRM001);
create sequence SEQ_TB_PUBRM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRM to public;
grant index  on TB_PUBRM to public;
grant update on TB_PUBRM to public; 
grant delete on TB_PUBRM to public;  
grant insert on TB_PUBRM to public; 
grant select on SEQ_TB_PUBRM to public;   