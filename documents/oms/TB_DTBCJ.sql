/*
================================================================================
表结构代码:TB_DTBCJ
表结构名称:车辆加油单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCJ;
drop index AK_TB_DTBCJ;
drop table TB_DTBCJ;
create table TB_DTBCJ  (                                       
   DTBCJ_ID          INTEGER                            not null,   /*车辆加油ID    */     
   DTBCJ001          INTEGER                            not null,   /*车辆编号      */  
   DTBCJ002          DATE                               not null,   /*加油日期      */  
   DTBCJ003          NUMBER(18,3)                       not null,   /*加油量        */  
   DTBCJ004          NUMBER(12,2)                       not null,   /*加油金额      */  
   DTBCJ005          INTEGER                            not null,   /*加油人员      */  
   DTBCJ006          VARCHAR2(255),                                 /*加油地点      */  
   DTBCJ007          VARCHAR2(1)                        not null,   /*付款方式      */  
   CREATE_USER        VARCHAR2(12),                                          /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                          /*建立人员部门    */             
   CREATE_DATE        DATE,                                                  /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                          /*修改人员        */             
   MODI_DATE          DATE,                                                  /*修改日期        */             
   FLAG               NUMBER(1),                                             /*资料状态        */            


  constraint PK_TB_DTBCJ primary key (DTBCJ_ID)                               
);                                           
create unique index AK_TB_DTBCJ on TB_DTBCJ (DTBCJ001,DTBCJ002);               
create sequence SEQ_TB_DTBCJ minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCJ to public;                                     
grant index  on TB_DTBCJ to public;                                     
grant update on TB_DTBCJ to public;                                      
grant delete on TB_DTBCJ to public;                                       
grant insert on TB_DTBCJ to public;                                      
grant select on SEQ_TB_DTBCJ to public;                                        