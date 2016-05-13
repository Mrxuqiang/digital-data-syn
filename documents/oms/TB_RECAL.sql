/*                                        
================================================================================
表结构代码:TB_RECAL                       
表结构名称:收款摊销明细表                     
表结构目的:                               
================================================================================
*/                                        
                                          
drop sequence SEQ_TB_RECAL;               
drop index AK_TB_RECAL;                                          
drop table TB_RECAL;                                             
create table TB_RECAL  (                                         
   RECAL_ID             INTEGER                         not null,  /*摊销明细ID        */
   RECAL001             INTEGER                         not null,  /*摊销单ID          */
   RECAL002             INTEGER                         not null,  /*客户ID            */
   RECAL003             INTEGER,                                   /*摊位ID            */
   RECAL004             INTEGER,                                   /*合同ID            */
   RECAL005             NUMBER(12,2),				   /*待摊金额          */
   RECAL006             NUMBER(12,2),                              /*实摊金额          */
   RECAL007             VARCHAR2(100),                             /*备注              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_RECAL primary key (RECAL_ID)                 
);  
create unique index AK_TB_RECAK on TB_RECAL (RECAL001,RECAL002,RECAL003,RECAL004); 
create sequence SEQ_TB_RECAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAL to public;                              
grant index  on TB_RECAL to public;                              
grant update on TB_RECAL to public;                              
grant delete on TB_RECAL to public;                              
grant insert on TB_RECAL to public;                              
grant select on SEQ_TB_RECAL to public;                          
                       
                       
                       
                       
                       
                       
                       
                       
                       