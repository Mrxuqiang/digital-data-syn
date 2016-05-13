/*
================================================================================
表结构代码:TB_PAYAI
表结构名称:预付收回明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PAYAI;
drop index AK_TB_PAYAI;
drop table TB_PAYAI;
create table TB_PAYAI  (
   PAYAI_ID             INTEGER                         not null,  /*收回明细表ID     */
   PAYAI001             INTEGER                         not null,  /*收回主表ID       */
   PAYAI002             VARCHAR2(1)                     not null,  /*来源             */
   PAYAI003             INTEGER                         not null,  /*预付待抵单号     */
   PAYAI004             INTEGER,                                   /*采购单号         */
   PAYAI005             VARCHAR2(1)                     not null,  /*结算方式         */ 
   PAYAI006             INTEGER                         not null,  /*收支异动项       */ 
   PAYAI007             INTEGER,                                   /*科目             */ 
   PAYAI008             INTEGER                         not null,  /*银行账号         */ 
   PAYAI009             NUMBER(16,2),                              /*原币金额         */
   PAYAI010             NUMBER(16,2),                              /*原币可收回金额   */ 
   PAYAI011             NUMBER(16,2),                              /*原币收回金额     */ 
   PAYAI012             NUMBER(16,2),                               /*本币金额         */ 
   PAYAI013             NUMBER(16,2),                              /*本币可收回额     */ 
   PAYAI014             NUMBER(16,2),                              /*本币收回金额     */    
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PAYAI primary key (PAYAI_ID)
);
create sequence SEQ_TB_PAYAI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAI to public;
grant index  on TB_PAYAI to public;
grant update on TB_PAYAI to public; 
grant delete on TB_PAYAI to public;  
grant insert on TB_PAYAI to public; 
grant select on SEQ_TB_PAYAI to public;   