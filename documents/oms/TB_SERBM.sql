/*
================================================================================
表结构代码:TB_SERBM
表结构名称:处理结果次要原因表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERBM;
drop index AK_TB_SERBM;
drop table TB_SERBM;
create table TB_SERBM  (                                       
   SERBM_ID             INTEGER                        not null,   /*处理结果次要原因ID        */            
   SERBM001             INTEGER                        not null,   /*投诉单ID            */            
   SERBM002             INTEGER ,                                  /*投诉原因ID         */                
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER,                                 /*资料状态            */             
                                           
   constraint PK_TB_SERBM primary key (SERBM_ID)                               
); 
create unique index AK_TB_SERMB on TB_SERMB (SERBM001,SERBM002,FLAG);                                                        
create sequence SEQ_TB_SERBM minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBM to public;                                     
grant index  on TB_SERBM to public;                                     
grant update on TB_SERBM to public;                                      
grant delete on TB_SERBM to public;                                       
grant insert on TB_SERBM to public;                                      
grant select on SEQ_TB_SERBM to public;                                        