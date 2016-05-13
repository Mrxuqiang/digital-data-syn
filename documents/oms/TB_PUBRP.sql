/*
================================================================================
表结构代码:TB_PUBRP
表结构名称:汇兑损益主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBRP;
drop index AK_TB_PUBRP;
drop table TB_PUBRP;
create table TB_PUBRP  (
   PUBRP_ID             INTEGER                         not null,  /*汇兑损益主ID       */
   PUBRP001             VARCHAR2(20)                    not null,  /*编号               */
   PUBRP002             VARCHAR2(20)                    not null,  /*转帐名称           */
   PUBRP003             VARCHAR2(1)                     not null,  /*属性               */
   PUBRP004             INTEGER,                                   /*汇兑损益ID         */
   PUBRP005             INTEGER,                                   /*汇兑收益ID         */
   PUBRP006             INTEGER,                                   /*汇兑损失ID         */
   PUBRP007             VARCHAR2(20),                              /*损益科目辅助核算标识 */
   PUBRP008             VARCHAR2(20),                              /*收益科目辅助核算标识 */
   PUBRP009             VARCHAR2(20),                              /*损失科目辅助核算标识 */
   PUBRP010             VARCHAR2(1)                     not null,  /*入账币种ID         */
   PUBRP011             INTEGER                         not null,  /*凭证类别ID         */
   PUBRP012             INTEGER                         not null,  /*会计核算账套ID         */   
   PUBRP013             INTEGER                         not null,  /*会计主体ID         */   
   PUBRP014             INTEGER                         not null,  /*公司ID         */   
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBRP primary key (PUBRP_ID)
);
create unique index AK_TB_PUBRP on TB_PUBRP (PUBRP001,PUBRP002);
create sequence SEQ_TB_PUBRP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBRP to public;
grant index  on TB_PUBRP to public;
grant update on TB_PUBRP to public; 
grant delete on TB_PUBRP to public;  
grant insert on TB_PUBRP to public; 
grant select on SEQ_TB_PUBRP to public;   