/*
================================================================================
表结构代码:TB_SERBL
表结构名称:投诉登记次要原因表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERBL;
drop index AK_TB_SERBL;
drop table TB_SERBL;
create table TB_SERBL  (                                       
   SERBL_ID             INTEGER                        not null,   /*投诉登记次要原因ID        */            
   SERBL001             INTEGER                        not null,   /*投诉单ID            */            
   SERBL002             INTEGER ,                                  /*投诉原因ID         */                
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER,                                 /*资料状态            */             
                                           
   constraint PK_TB_SERBL primary key (SERBL_ID)                               
); 
create unique index AK_TB_SERMB on TB_SERMB (SERBL001,SERBL002,FLAG);                                                        
create sequence SEQ_TB_SERBL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBL to public;                                     
grant index  on TB_SERBL to public;                                     
grant update on TB_SERBL to public;                                      
grant delete on TB_SERBL to public;                                       
grant insert on TB_SERBL to public;                                      
grant select on SEQ_TB_SERBL to public;                                        