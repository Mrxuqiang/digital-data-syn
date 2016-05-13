/*      
================================================================================
表结构代码:TB_PAYAH
表结构名称:预付收回主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PAYAH;
drop index AK_TB_PAYAH;
drop table TB_PAYAH;
create table TB_PAYAH  (
   PAYAH_ID             INTEGER                         not null,  /*收回主表ID    */
   PAYAH001             INTEGER                         not null,  /*单别ID          */
   PAYAH002             VARCHAR2(30)                    not null,  /*收回单号      */
   PAYAH003             DATE                            not null,  /*收回日期      */
   PAYAH004             INTEGER                         not null,  /*供应商ID        */
   PAYAH005             INTEGER                         not null,  /*退款供应商ID    */ 
   PAYAH006             INTEGER                         not null,   /*币种          */ 
   PAYAH007             NUMBER(16,4),                               /*汇率          */ 
   PAYAH008             INTEGER,                                   /*部门          */
   PAYAH009             INTEGER,                                   /*人员          */ 
   PAYAH010             VARCHAR2(1)                     not null,  /*单据状态      */ 
   PAYAH011             VARCHAR2(1)                     not null,  /*核销状态      */ 
   PAYAH012             VARCHAR2(1)                     not null,  /*生成凭证      */ 
   PAYAH013             NUMBER(16,2),                              /*原币收回金额  */ 
   PAYAH014             NUMBER(16,2),                              /*本币收回金额  */ 
   PAYAH015             NUMBER(16,2),                              /*原币核销金额  */ 
   PAYAH016             NUMBER(16,2),                              /*本币核销金额  */
   PAYAH017             INTEGER,                                   /*录入人        */  
   PAYAH018             DATE,                                      /*录入日期      */ 
   PAYAH019             INTEGER,                                   /*审核人        */ 
   PAYAH020             DATE,                                      /*审核日期      */    
   PAYAH021             NUMBER(4),                                 /*会计年度      */    
   PAYAH022             NUMBER(2),                                 /*会计期间      */     
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PAYAH primary key (PAYAH_ID)
);
create unique index AK_TB_PAYAH on TB_PAYAH (PAYAH001,PAYAH002);
create sequence SEQ_TB_PAYAH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAH to public;
grant index  on TB_PAYAH to public;
grant update on TB_PAYAH to public; 
grant delete on TB_PAYAH to public;  
grant insert on TB_PAYAH to public; 
grant select on SEQ_TB_PAYAH to public;   