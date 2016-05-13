/*
20130816 add by gaoxl for：红星 add SERBJ005
*/

/*
================================================================================
表结构代码:TB_SERBJ
表结构名称:协调过程表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERBJ;
drop index AK_TB_SERBJ;
drop table TB_SERBJ;
create table TB_SERBJ  (                                       
   SERBJ_ID             INTEGER                        not null,   /*协调过程ID        */            
   SERBJ001             INTEGER                        not null,   /*投诉单ID            */            
   SERBJ002             INTEGER ,                                  /*处理人              */ 
   SERBJ003             DATE ,                                     /*时间                */               
   SERBJ004             VARCHAR2(2000),                            /*处理内容            */   
   SERBJ005             VARCHAR2(1),                               /*投诉等级            */              
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER,                                 /*资料状态            */             
                                           
   constraint PK_TB_SERBJ primary key (SERBJ_ID)                               
);                                                        
create sequence SEQ_TB_SERBJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBJ to public;                                     
grant index  on TB_SERBJ to public;                                     
grant update on TB_SERBJ to public;                                      
grant delete on TB_SERBJ to public;                                       
grant insert on TB_SERBJ to public;                                      
grant select on SEQ_TB_SERBJ to public;                                        