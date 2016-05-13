/*                   
================================================================================
表结构代码:TB_RECAJ  
表结构名称:预收退款明细表  
表结构目的:  
================================================================================
*/    
    
drop sequence SEQ_TB_RECAJ;  
drop index AK_TB_RECAJ;  
drop table TB_RECAJ;  
create table TB_RECAJ  (  
   RECAJ_ID             INTEGER                         not null,  /*退款明细表ID      */
   RECAJ001             INTEGER                         not null,  /*退款主表ID        */
   RECAJ002             INTEGER                         not null,  /*预收单单号        */
   RECAJ003             INTEGER,                                   /*项目编号          */
   RECAJ004             INTEGER ,                                  /*订单单号          */ 
   RECAJ005             INTEGER                         not null,  /*付款方式              */
   RECAJ006             VARCHAR2(1)                     not null,  /*收支异动项        */
   RECAJ007             INTEGER ,                                  /*科目              */
   RECAJ008             INTEGER ,                                  /*刷卡卡号          */
   RECAJ009             INTEGER ,                                  /*手续费率          */                                                                           
   RECAJ010             NUMBER(16,2),                              /*手续费            */
   RECAJ011             INTEGER,                                   /*银行账号          */
   RECAJ012             NUMBER(16,2),                              /*原币金额          */
   RECAJ013             NUMBER(16,2),                              /*原币可退金额      */
   RECAJ014             NUMBER(16,2),                              /*原币退款金额      */
   RECAJ015             NUMBER(16,2),                              /*本币金额          */
   RECAJ016             NUMBER(16,2),                              /*本币可退金额     */
   RECAJ017             NUMBER(16,2),                              /*本币退款金额     */ 
   RECAJ018             INTEGER,                                   /*营运组织I     */      
   RECAJ019             NUMBER(16,2),                              /*原币已核销金额     */
   RECAJ020             NUMBER(16,2),                              /*本币已核销金额     */         
   RECAJ021             VARCHAR2(1),                               /*来源     */ 
   RECAJ022             INTEGER,                                   /*来源单身ID (退款单明细ID)    */      
   RECAJ023             INTEGER,                                   /*销退单ID    */
   RECAJ024             INTEGER,                                   /*结算对象ID     */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_RECAJ primary key (RECAJ_ID)  
);    
create unique index AK_TB_RECAJ on TB_RECAJ (RECAJ_ID,RECAJ001,RECAJ002);  
create sequence SEQ_TB_RECAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAJ to public;  
grant index  on TB_RECAJ to public;  
grant update on TB_RECAJ to public;   
grant delete on TB_RECAJ to public;    
grant insert on TB_RECAJ to public;   
grant select on SEQ_TB_RECAJ to public;     