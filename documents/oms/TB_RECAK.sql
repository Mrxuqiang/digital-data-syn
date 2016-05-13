/*                                        
================================================================================
表结构代码:TB_RECAK                       
表结构名称:收款摊销单                       
表结构目的:                               
================================================================================
*/                                        
                                          
drop sequence SEQ_TB_RECAK;               
drop index AK_TB_RECAK;                                          
drop table TB_RECAK;                                             
create table TB_RECAK  (                                         
   RECAK_ID             INTEGER                         not null,  /*摊销单ID        */
   RECAK001             INTEGER                         not null,  /*单别ID          */
   RECAK002             VARCHAR2(30)                    not null,  /*摊销单号        */
   RECAK003             DATE                            not null,  /*摊销日期        */
   RECAK004             INTEGER                         not null,  /*摊销费用ID      */
   RECAK005             NUMBER(4,0)                     not null,  /*会计年度        */
   RECAK006             NUMBER(2,0)                     not null,  /*会计月份        */
   RECAK007             INTEGER                         not null,  /*营运组织ID      */
   RECAK008             INTEGER                         not null,  /*部门ID          */
   RECAK009             INTEGER                         not null,  /*人员ID          */
   RECAK010             VARCHAR2(1),                               /*单据状态        */
   RECAK011             INTEGER,                                   /*录入人ID        */
   RECAK012             DATE,                                      /*录入日期        */
   RECAK013             INTEGER,                                   /*审核人ID        */
   RECAK014             DATE ,                                     /*审核日期        */
   RECAK015             VARCHAR2(1),                               /*生成凭证        */
   RECAK016             VARCHAR2(1),                               /*只取当期        */
   RECAK017             VARCHAR2(100),                             /*备注            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员        */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门    */                               
   CREATE_DATE          DATE,                                      /*建立日期        */
   MODIFIER             VARCHAR2(12),                              /*修改人员        */
   MODI_DATE            DATE,                                      /*修改日期        */
   FLAG                 NUMBER(1),                                 /*资料状态        */
   constraint PK_TB_RECAK primary key (RECAK_ID)                 
);                                                               
create unique index AK_TB_RECAK on TB_RECAK (RECAK001,RECAK002,RECAK005); 
create sequence SEQ_TB_RECAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECAK to public;                              
grant index  on TB_RECAK to public;                              
grant update on TB_RECAK to public;                              
grant delete on TB_RECAK to public;                              
grant insert on TB_RECAK to public;                              
grant select on SEQ_TB_RECAK to public;                          
                       
                       
                       
                       
                       
                       
                       
                       
                       