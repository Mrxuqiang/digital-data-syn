/*
================================================================================
表结构代码:TB_BILAJ
表结构名称:费用退款申请单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILAJ;
drop index AK_TB_BILAJ;
drop table TB_BILAJ;
create table TB_BILAJ  (
   BILAJ_ID             INTEGER                         not null,  /*费用退款申请单子ID   */
   BILAJ001             INTEGER                         not null,  /*费用退款申请单主ID   */
   BILAJ002             VARCHAR2(1)                     not null,  /*来源                 */   
   BILAJ003             VARCHAR2(30),                               /*来源单号             */  
   BILAJ004             INTEGER,                                   /*来源单主ID           */  
   BILAJ005             INTEGER,                                   /*来源单子ID           */         
   BILAJ006             INTEGER,                                   /*费用ID               */
   BILAJ007             NUMBER(12,2),                              /*费用收款金额         */
   BILAJ008             NUMBER(12,2),                              /*退款申请金额         */
   BILAJ009             DATE,                                      /*费用起日             */
   BILAJ010             DATE,                                      /*费用止日             */
   BILAJ011             VARCHAR2(255),                             /*备注                 */
   BILAJ012             VARCHAR2(255),                             /*交款单位             */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER,                                    /*资料状态             */
   constraint PK_TB_BILAJ primary key (BILAJ_ID)
);
create sequence SEQ_TB_BILAJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILAJ to public;
grant index  on TB_BILAJ to public;
grant update on TB_BILAJ to public; 
grant delete on TB_BILAJ to public;  
grant insert on TB_BILAJ to public; 
grant select on SEQ_TB_BILAJ to public;   