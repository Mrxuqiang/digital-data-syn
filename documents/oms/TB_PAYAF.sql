/*
================================================================================
表结构代码:TB_PAYAF
表结构名称:付款明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PAYAF;
drop index AK_TB_PAYAF;
drop table TB_PAYAF;
create table TB_PAYAF  (
   PAYAF_ID             INTEGER                         not null,  /*付款明细ID     */
   PAYAF001             INTEGER                         not null,  /*付款主表ID   */
   PAYAF002             VARCHAR2(1)                     not null,  /*付款方式       */
   PAYAF003             INTEGER                         not null,  /*收支异动项     */
   PAYAF004             INTEGER,                                   /*会计科目       */ 
   PAYAF005             NUMBER(16,2),                              /*原币付款金额   */ 
   PAYAF006             NUMBER(16,2),                              /*本币付款金额   */ 
   PAYAF007             INTEGER,                                   /*银行账号       */    
   PAYAF008             VARCHAR2(255),                             /*备注           */     
   PAYAF009             NUMBER(16,2),                              /*原币已核销金额   */ 
   PAYAF010             NUMBER(16,2),                              /*本币已核销金额   */           
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PAYAF primary key (PAYAF_ID)
);
create sequence SEQ_TB_PAYAF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAF to public;
grant index  on TB_PAYAF to public;
grant update on TB_PAYAF to public; 
grant delete on TB_PAYAF to public;  
grant insert on TB_PAYAF to public; 
grant select on SEQ_TB_PAYAF to public;   