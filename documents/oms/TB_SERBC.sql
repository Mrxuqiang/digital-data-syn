/*
================================================================================
表结构代码:TB_SERBC
表结构名称:投诉结果单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERBC;
drop index AK_TB_SERBC;
drop table TB_SERBC;
create table TB_SERBC  (                                       
   SERBC_ID             INTEGER                        not null,   /*结果单ID            */            
   SERBC001             INTEGER                        not null,   /*结果单别            */            
   SERBC002             VARCHAR2(30)                   not null,   /*结果单号            */            
   SERBC003             INTEGER                        not null,   /*回复单ID            */                      
   SERBC004             DATE                           not null,   /*结果日期            */            
   SERBC005             NUMBER(12,2)                   not null,   /*赔付金额            */               
   SERBC006             NUMBER(1)                      not null,   /*解决方式            */   
   SERBC007             INTEGER ,                                  /*处理人              */
   SERBC008             VARCHAR2(255),                             /*处理内容            */
   SERBC009             VARCHAR2(1)                    not null,   /*先行赔付           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                          
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                          
   CREATE_DATE          DATE,                                      /*建立日期            */                                         
   MODIFIER             VARCHAR2(12),                              /*修改人员            */             
   MODI_DATE            DATE,                                      /*修改日期            */             
   FLAG                 NUMBER(1),                                 /*资料状态            */             
                                           
   constraint PK_TB_SERBC primary key (SERBC_ID)                               
);                                           
create unique index AK_TB_SERBC on TB_SERBC (SERBC001,SERBC002);               
create sequence SEQ_TB_SERBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBC to public;                                     
grant index  on TB_SERBC to public;                                     
grant update on TB_SERBC to public;                                      
grant delete on TB_SERBC to public;                                       
grant insert on TB_SERBC to public;                                      
grant select on SEQ_TB_SERBC to public;                                        