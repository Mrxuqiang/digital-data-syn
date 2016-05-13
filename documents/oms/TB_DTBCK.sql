/*
================================================================================
表结构代码:TB_DTBCK
表结构名称:车辆维护资料
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCK;
drop index AK_TB_DTBCK;
drop table TB_DTBCK;
create table TB_DTBCK  (                                       
   DTBCK_ID           INTEGER                         not null,     /*车辆维护ID      */ 
   DTBCK001           VARCHAR2(30)                    not null,     /*车辆编号        */ 
   DTBCK002           NUMBER(4)                       not null,     /*维护序号        */ 
   DTBCK003           DATE                            not null,     /*维护日期        */ 
   DTBCK004           VARCHAR2(1)                     not null,     /*维护类型        */ 
   DTBCK005           VARCHAR2(255),                                /*问题描述        */ 
   DTBCK006           VARCHAR2(255),                                /*问题处理        */ 
   DTBCK007           INTEGER,                                      /*保养人          */ 
   DTBCK008           VARCHAR2(1)                     not null,     /*周期提醒        */ 
   DTBCK009           VARCHAR2(1),                                  /*周期单位        */
   DTBCK010             VARCHAR2(1),                               /*审核状态        */                                                                               
   DTBCK011             INTEGER,                                   /*录入人          */                                                                               
   DTBCK012             DATE,                                      /*录入日期        */                                                                                
   DTBCK013             INTEGER,                                   /*审核人          */                                                                                
   DTBCK014             DATE,                                      /*审核日期        */        
   CREATE_USER        VARCHAR2(12),                                 /*建立人员        */
   USER_GROUP         VARCHAR2(12),                                 /*建立人员部门    */
   CREATE_DATE        DATE,                                         /*建立日期        */
   MODIFIER           VARCHAR2(12),                                 /*修改人员        */
   MODI_DATE          DATE,                                         /*修改日期        */
   FLAG               NUMBER(1),                                    /*资料状态        */
   
   constraint PK_TB_DTBCK primary key (DTBCK_ID)                               
);                                           
create unique index AK_TB_DTBCK on TB_DTBCK (DTBCK001);               
create sequence SEQ_TB_DTBCK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCK to public;                                     
grant index  on TB_DTBCK to public;                                     
grant update on TB_DTBCK to public;                                      
grant delete on TB_DTBCK to public;                                       
grant insert on TB_DTBCK to public;                                      
grant select on SEQ_TB_DTBCK to public;                                        