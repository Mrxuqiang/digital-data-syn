/*
================================================================================
表结构代码:TB_SALHM
表结构名称:销售费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHM;
drop index AK_TB_SALHM;
drop table TB_SALHM;
create table TB_SALHM  (
   SALHM_ID             INTEGER                         not null,  /*销售费用ID         */
   SALHM001             INTEGER                         not null,  /*销售单ID         */
   SALHM002             INTEGER                         not null,  /*费用明细ID         */
   SALHM003             NUMBER(18,3)                    not null,  /*金额         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_SALHM primary key (SALHM_ID)
);

create sequence SEQ_TB_SALHM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHM to public;
grant index  on TB_SALHM to public;
grant update on TB_SALHM to public; 
grant delete on TB_SALHM to public;  
grant insert on TB_SALHM to public; 
grant select on SEQ_TB_SALHM to public;   