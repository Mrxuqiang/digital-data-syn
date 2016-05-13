/*
================================================================================
表结构代码:TB_SERBK
表结构名称:商户信用分类表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_SERBK;
drop index AK_TB_SERBK;
drop table TB_SERBK;
create table TB_SERBK  (                                       
   SERBK_ID             INTEGER                        not null,   /*信用分类表ID        */            
   SERBK001             INTEGER                        not null,   /*投诉单ID            */            
   SERBK002             INTEGER ,                                  /*信用分类项目ID      */
   SERBK003             VARCHAR2(30) ,                             /*相关程序编码        */ 
   SERBK004             NUMBER(2) ,                                /*扣减分数            */                  
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                              
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */
   CREATE_DATE          DATE,                                      /*建立日期            */                              
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER,                                 /*资料状态            */             

   constraint PK_TB_SERBK primary key (SERBK_ID)                               
); 
create unique index AK_TB_SERMB on TB_SERMB (SERBK001,SERBK002,SERBK003,FLAG);                                                        
create sequence SEQ_TB_SERBK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBK to public;                                     
grant index  on TB_SERBK to public;                                     
grant update on TB_SERBK to public;                                      
grant delete on TB_SERBK to public;                                       
grant insert on TB_SERBK to public;                                      
grant select on SEQ_TB_SERBK to public;                                        