/*
================================================================================
表结构代码:TB_CONMB
表结构名称:设计师合同明细表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_CONMB;
drop index AK_TB_CONMB;
drop table TB_CONMB;
create table TB_CONMB  (
   CONMB_ID             INTEGER                         not null,  /*设计师合同明细表ID */
   CONMB001             INTEGER                         not null,  /*设计师合同ID       */
   CONMB002             NUMBER(12,2),                              /*开始金额           */
   CONMB003             NUMBER(12,2),                              /*截止金额           */
   CONMB004             NUMBER(18,3),                              /*分摊比例           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_CONMB primary key (CONMB_ID)
);
create sequence SEQ_TB_CONMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONMB to public;
grant index  on TB_CONMB to public;
grant update on TB_CONMB to public; 
grant delete on TB_CONMB to public;  
grant insert on TB_CONMB to public; 
grant select on SEQ_TB_CONMB to public;   