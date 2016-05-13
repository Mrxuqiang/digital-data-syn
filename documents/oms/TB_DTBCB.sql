/*
================================================================================
表结构代码:TB_DTBCB
表结构名称:路径定义主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCB;
drop index AK_TB_DTBCB;
drop table TB_DTBCB;
create table TB_DTBCB  (                                       
   DTBCB_ID           INTEGER                        not null,     /*运输路径单头ID   */ 
   DTBCB001           VARCHAR2(30)                   not null,     /*运输路径编号     */ 
   DTBCB002           INTEGER                        not null,     /*车辆编号         */ 
   DTBCB003           INTEGER                        not null,     /*起始地点         */ 
   DTBCB004           INTEGER                        not null,     /*目的地点         */ 
   DTBCB005           NUMBER(18,3),                                /*承载重量         */ 
   DTBCB006           VARCHAR2(1)                    not null,     /*路径类别         */ 
   DTBCB007           INTEGER                        not null,     /*营运组织ID       */ 
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */             
   CREATE_DATE        DATE,                                        /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                /*修改人员        */             
   MODI_DATE          DATE,                                        /*修改日期        */             
   FLAG               NUMBER(1),                                   /*资料状态        */            


  constraint PK_TB_DTBCB primary key (DTBCB_ID)                               
);                                           
create unique index AK_TB_DTBCB on TB_DTBCB (DTBCB001,DTBCB002);               
create sequence SEQ_TB_DTBCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCB to public;                                     
grant index  on TB_DTBCB to public;                                     
grant update on TB_DTBCB to public;                                      
grant delete on TB_DTBCB to public;                                       
grant insert on TB_DTBCB to public;                                      
grant select on SEQ_TB_DTBCB to public;                                        