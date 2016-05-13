/*
================================================================================
表结构代码:TB_DTBCA
表结构名称:车辆基本资料
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCA;
drop index AK_TB_DTBCA;
drop table TB_DTBCA;
create table TB_DTBCA  (                                       
   DTBCA_ID           INTEGER                          not null,    /*车辆资料ID          */         
   DTBCA001           VARCHAR2(30)                     not null,    /*车辆编号            */    
   DTBCA002           VARCHAR2(255)                    not null,    /*车辆级别            */   
   DTBCA003           VARCHAR2(255)                    not null,    /*车辆类型            */   
   DTBCA004           VARCHAR2(255)                    not null,    /*车辆厂牌            */   
   DTBCA005           VARCHAR2(255)                    not null,    /*车辆型号            */   
   DTBCA006           VARCHAR2(255)                    not null,    /*车牌号码            */   
   DTBCA007           VARCHAR2(255)                    not null,    /*引擎号码            */   
   DTBCA008           NUMBER(1)                        not null,    /*所有权              */       
   DTBCA009           NUMBER(1)                        not null,    /*车辆状态            */       
   DTBCA010           DATE,                                         /*最近保养日期        */                    
   DTBCA011           VARCHAR2(255),                                /*备注                */           
   DTBCA012           DATE,                                         /*出厂日期            */                    
   DTBCA013           DATE,                                         /*购买日期            */                    
   DTBCA014           NUMBER(12,2)                     not null,    /*已行驶里程          */    
   DTBCA015           INTEGER                          not null,    /*保管人ID            */         
   DTBCA016           INTEGER                          not null,    /*驾驶人ID            */         
   DTBCA017           INTEGER,                                      /*随车人员一ID        */                 
   DTBCA018           INTEGER,                                      /*随车人员二ID        */                 
   DTBCA019           NUMBER(1),                                    /*外租车计价方式      */               
   DTBCA020           NUMBER(12,2),                                 /*外租车单位金额      */            
   DTBCA021           INTEGER                          not null,    /*车队编号ID          */  
   DTBCA022           INTERGER                         not null,    /*营运组织ID          */        
   
   constraint PK_TB_DTBCA primary key (DTBCA_ID)                               
);                                           
create unique index AK_TB_DTBCA on TB_DTBCA (DTBCA001);               
create sequence SEQ_TB_DTBCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCA to public;                                     
grant index  on TB_DTBCA to public;                                     
grant update on TB_DTBCA to public;                                      
grant delete on TB_DTBCA to public;                                       
grant insert on TB_DTBCA to public;                                      
grant select on SEQ_TB_DTBCA to public;                                        