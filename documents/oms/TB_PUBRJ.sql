/*
================================================================================
表结构代码:TB_PUBRJ
表结构名称:对账规则主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRJ;
drop index AK_TB_PUBRJ;
drop table TB_PUBRJ;
create table TB_PUBRJ  (
   PUBRJ_ID             INTEGER                         not null,  /*对账规则主ID       */
   PUBRJ001             VARCHAR2(20)                    not null,  /*规则编码           */
   PUBRJ002             VARCHAR2(30)                    not null,  /*规则名称           */
   PUBRJ003             INTEGER,                                   /*对账关系设置方ID   */
   PUBRJ004             INTEGER                         not null,  /*本方科目方案ID     */
   PUBRJ005             INTEGER                         not null,  /*对方科目方案ID     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBRJ primary key (PUBRJ_ID)
);
create unique index AK_TB_PUBRJ on TB_PUBRJ (PUBRJ001);
create sequence SEQ_TB_PUBRJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRJ to public;
grant index  on TB_PUBRJ to public;
grant update on TB_PUBRJ to public; 
grant delete on TB_PUBRJ to public;  
grant insert on TB_PUBRJ to public; 
grant select on SEQ_TB_PUBRJ to public;   