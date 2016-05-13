/*
================================================================================
表结构代码:TB_GLDAJ
表结构名称:集团对账主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GLDAJ;
drop index AK_TB_GLDAJ;
drop table TB_GLDAJ;
create table TB_GLDAJ  (
   GLDAJ_ID             INTEGER                         not null,  /*对账主ID           */
   GLDAJ001             INTEGER                         not null,  /*单别ID             */
   GLDAJ002             INTEGER                         not null,  /*本方公司ID         */
   GLDAJ003             INTEGER                         not null,  /*本方主体账簿ID     */
   GLDAJ004             INTEGER                         not null,  /*对方公司ID         */
   GLDAJ005             INTEGER                         not null,  /*对方主体账簿ID     */
   GLDAJ006             DATE                            not null,  /*对账日期           */
   GLDAJ007             VARCHAR2(1)                     not null,  /*对账方式           */
   GLDAJ008             INTEGER                         not null,  /*科目对应关系主ID   */
   GLDAJ009             NUMBER(16,2),                              /*本方本币借方金额   */
   GLDAJ010             NUMBER(16,2),                              /*本方本币贷方金额   */
   GLDAJ011             NUMBER(16,2),                              /*对方本币借方金额   */
   GLDAJ012             NUMBER(16,2),                              /*对方本币贷方金额   */
   GLDAJ013             VARCHAR2(20) ,                             /*单号               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GLDAJ primary key (GLDAJ_ID)
);
create unique index AK_TB_GLDAJ on TB_GLDAJ (GLDAJ001,GLDAJ013);
create sequence SEQ_TB_GLDAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GLDAJ to public;
grant index  on TB_GLDAJ to public;
grant update on TB_GLDAJ to public; 
grant delete on TB_GLDAJ to public;  
grant insert on TB_GLDAJ to public; 
grant select on SEQ_TB_GLDAJ to public;   