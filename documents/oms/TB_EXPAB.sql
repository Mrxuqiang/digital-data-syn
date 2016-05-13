/*
================================================================================
表结构代码:TB_EXPAB
表结构名称:借款明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_EXPAB;
drop index AK_TB_EXPAB;
drop table TB_EXPAB;
create table TB_EXPAB  (
   EXPAB_ID             INTEGER                         not null,  /*借款明细表ID         */
   EXPAB001             INTEGER                         not null,  /*借款主表ID       */
   EXPAB002             VARCHAR2(30)                    not null,  /*摘要       */
   EXPAB003             INTEGER                         not null,  /*收支异动项           */
   EXPAB004             INTEGER                         not null,  /*会计科目           */
   EXPAB005             NUMBER(16,2),                              /*原币金额       */
   EXPAB006             VARCHAR2(100),                             /*出差地点       */
   EXPAB007             NUMBER(2),                                 /*预计天数           */
   EXPAB008             NUMBER(16,2),                              /*本币金额           */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_EXPAB primary key (EXPAB_ID)
);
create sequence SEQ_TB_EXPAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_EXPAB to public;
grant index  on TB_EXPAB to public;
grant update on TB_EXPAB to public; 
grant delete on TB_EXPAB to public;  
grant insert on TB_EXPAB to public; 
grant select on SEQ_TB_EXPAB to public;   