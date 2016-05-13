/*                   
================================================================================
表结构代码:TB_RECAO  
表结构名称:收款应摊明细表  
表结构目的:  
================================================================================
*/    
    
drop sequence SEQ_TB_RECAO;  
drop index AK_TB_RECAO;  
drop table TB_RECAO;  
create table TB_RECAO  (  
   RECAO_ID             INTEGER                         not null,  /*收款应摊ID           */
   RECAO001             INTEGER                         not null,  /*营运组织ID           */
   RECAO002             INTEGER                         not null,  /*客户ID               */
   RECAO003             INTEGER,                                   /*租赁合同ID           */
   RECAO004             INTEGER ,                                  /*摊位ID               */ 
   RECAO005             VARCHAR2(1)                     not null,  /*来源单别:1.收款 2.退款 3.核销单 */
   RECAO006             INTEGER                         not null,  /*来源单号ID            */
   RECAO007             VARCHAR2(30)                    not null,  /*来源单号              */
   RECAO008             INTEGER                         not null,  /*来源单明细ID          */
   RECAO009             INTEGER                         not null,  /*费用ID                */
   RECAO011             NUMBER(16,2),                              /*应收金额              */
   RECAO012             NUMBER(16,2),                              /*应摊金额              */
   RECAO013             NUMBER(16,2),                              /*实摊金额		   */
   RECAO014             INTEGER ,                                  /*收款摊销单ID          */   
   RECAO015             DATE ,                                     /*应收日期              */  
   RECAO016             DATE ,                                     /*记账日期              */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_RECAO primary key (RECAO_ID)  
);    
create unique index AK_TB_RECAO on TB_RECAO (RECAO_ID,RECAO001,RECAO002,RECAO003,RECAO004,RECAO005,RECAO006,RECAO007,RECAO008);  
create sequence SEQ_TB_RECAO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAO to public;  
grant index  on TB_RECAO to public;  
grant update on TB_RECAO to public;   
grant delete on TB_RECAO to public;    
grant insert on TB_RECAO to public;   
grant select on SEQ_TB_RECAO to public;     