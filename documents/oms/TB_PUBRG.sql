/*
================================================================================
表结构代码:TB_PUBRG
表结构名称:外部折算帐簿关联表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRG;
drop index AK_TB_PUBRG;
drop table TB_PUBRG;
create table TB_PUBRG  (
   PUBRG_ID             INTEGER                         not null,  /*外部折算帐簿关联ID     */
   PUBRG001             INTEGER                         not null,  /*外部折算主ID           */
   PUBRG002             INTEGER                         not null,  /*发送方主体帐簿ID       */
   PUBRG003             INTEGER                         not null,  /*接受方主体帐簿ID       */
   PUBRG004             INTEGER                         not null,  /*员工ID                 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员               */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门           */                               
   CREATE_DATE          DATE,                                      /*建立日期               */
   MODIFIER             VARCHAR2(12),                              /*修改人员               */
   MODI_DATE            DATE,                                      /*修改日期               */
   FLAG                 NUMBER(1),                                 /*资料状态               */
   constraint PK_TB_PUBRG primary key (PUBRG_ID)
);
create unique index AK_TB_PUBRG on TB_PUBRG (PUBRG002,PUBRG003);
create sequence SEQ_TB_PUBRG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRG to public;
grant index  on TB_PUBRG to public;
grant update on TB_PUBRG to public; 
grant delete on TB_PUBRG to public;  
grant insert on TB_PUBRG to public; 
grant select on SEQ_TB_PUBRG to public;   