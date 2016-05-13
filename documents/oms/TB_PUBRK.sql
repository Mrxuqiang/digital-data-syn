/*
================================================================================
表结构代码:TB_PUBRK
表结构名称:对账规则本方表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRK;
drop index AK_TB_PUBRK;
drop table TB_PUBRK;
create table TB_PUBRK  (
   PUBRK_ID             INTEGER                         not null,  /*对账规则本方ID     */
   PUBRK001             INTEGER                         not null,  /*对账规则主ID       */
   PUBRK002             INTEGER                         not null,  /*会计科目ID         */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBRK primary key (PUBRK_ID)
);
create unique index AK_TB_PUBRK on TB_PUBRK (PUBRK001,PUBRK002);
create sequence SEQ_TB_PUBRK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRK to public;
grant index  on TB_PUBRK to public;
grant update on TB_PUBRK to public; 
grant delete on TB_PUBRK to public;  
grant insert on TB_PUBRK to public; 
grant select on SEQ_TB_PUBRK to public;   