/*
================================================================================
表结构代码:TB_PAYAJ
表结构名称:直接付款明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PAYAJ;
drop index AK_TB_PAYAJ;
drop table TB_PAYAJ;
create table TB_PAYAJ  (
   PAYAJ_ID             INTEGER                         not null,  /*直接付款明细ID    */
   PAYAJ001             INTEGER                         not null,  /*应付主表ID        */
   PAYAJ002             VARCHAR2(1) ,                              /*类型              */
   PAYAJ003             VARCHAR2(1) ,                              /*付款方式          */
   PAYAJ004             INTEGER,                                   /*预付单号ID        */
   PAYAJ005             INTEGER ,                                  /*币种ID            */ 
   PAYAJ006             NUMBER(16,4) ,                              /*汇率              */ 
   PAYAJ007             NUMBER(16,2),                              /*原币付款金额      */ 
   PAYAJ008             NUMBER(16,2),                              /*本币付款金额      */ 
   PAYAJ009             INTEGER,                                   /*现金异动码ID      */
   PAYAJ010             INTEGER,                                   /*银行帐号ID        */ 
   PAYAJ011             VARCHAR2(60),                              /*支票号            */ 
   PAYAJ012             NUMBER(16,2),                              /*原币预付金额      */ 
   PAYAJ013             NUMBER(16,2),                              /*本币预付金额      */ 
   PAYAJ014             NUMBER(16,2),                              /*原币已冲金额      */ 
   PAYAJ015             NUMBER(16,2),                              /*本币已冲金额      */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PAYAJ primary key (PAYAJ_ID)
);
create sequence SEQ_TB_PAYAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAJ to public;
grant index  on TB_PAYAJ to public;
grant update on TB_PAYAJ to public; 
grant delete on TB_PAYAJ to public;  
grant insert on TB_PAYAJ to public; 
grant select on SEQ_TB_PAYAJ to public;   