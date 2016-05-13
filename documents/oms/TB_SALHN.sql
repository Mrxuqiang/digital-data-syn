/*
================================================================================
表结构代码:TB_SALHN
表结构名称:销退费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALHN;
drop index AK_TB_SALHN;
drop table TB_SALHN;
create table TB_SALHN  (
   SALHN_ID             INTEGER                         not null,  /*销退费用ID         */
   SALHN001             INTEGER                         not null,  /*销退单ID         */
   SALHN002             INTEGER                         not null,  /*费用明细ID         */
   SALHN003             NUMBER(18,3)                    not null,  /*金额         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_SALHN primary key (SALHN_ID)
);

create sequence SEQ_TB_SALHN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALHN to public;
grant index  on TB_SALHN to public;
grant update on TB_SALHN to public; 
grant delete on TB_SALHN to public;  
grant insert on TB_SALHN to public; 
grant select on SEQ_TB_SALHN to public;   