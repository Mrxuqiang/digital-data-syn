/*
================================================================================
表结构代码:TB_SERBF
表结构名称:商户评分单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERBF;
drop index AK_TB_SERBF;
drop table TB_SERBF;
create table TB_SERBF  (                                                                               
   SERBF_ID             INTEGER                        not null,   /*记录单ID            */                                            
   SERBF001             INTEGER                        not null,   /*记录单别            */                                            
   SERBF002             VARCHAR2(30)                   not null,   /*记录单号            */                                            
   SERBF003             DATE                           not null,   /*记录日期            */                                            
   SERBF004             DATE ,                                     /*实际处理日期        */                                            
   SERBF005             NUMBER(1)                      not null,   /*评分类型            */                                            
   SERBF006             NUMBER(12,2)                   not null,   /*评分分值            */                                           
   SERBF007             INTEGER                        not null,   /*商户编号            */
   SERBF008             INTEGER,                                  /*合同号              */
   SERBF009             VARCHAR2(255),                             /*事件描述            */                                                               
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */                                            
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                                            
   CREATE_DATE          DATE,                                      /*建立日期            */                                            
   MODIFIER             VARCHAR2(12),                              /*修改人员            */                                            
   MODI_DATE            DATE,                                      /*修改日期            */                                            
   FLAG                 NUMBER(1),                                 /*资料状态            */                                            
                                           
   constraint PK_TB_SERBF primary key (SERBF_ID)                               
);                                           
create unique index AK_TB_SERBF on TB_SERBF (SERBF001,SERBF002);               
create sequence SEQ_TB_SERBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERBF to public;                                     
grant index  on TB_SERBF to public;                                     
grant update on TB_SERBF to public;                                      
grant delete on TB_SERBF to public;                                       
grant insert on TB_SERBF to public;                                      
grant select on SEQ_TB_SERBF to public;                                        