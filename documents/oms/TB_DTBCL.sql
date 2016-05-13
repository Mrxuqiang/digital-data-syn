/*
================================================================================
表结构代码:TB_DTBCL
表结构名称:车辆停用
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCL;
drop index AK_TB_DTBCL;
drop table TB_DTBCL;
create table TB_DTBCL  (                                       
   DTBCL_ID          INTEGER                        not null,    /*车辆停用ID         */         
   DTBCL001          VARCHAR2(30)                   not null,    /*车辆编号           */         
   DTBCL002          DATE                           not null,    /*起始日期           */         
   DTBCL003          DATE                           not null,    /*起始时间           */         
   DTBCL004          DATE                           not null,    /*截止日期           */         
   DTBCL005          DATE                           not null,    /*截止时间           */         
   DTBCL006          INTEGER                        not null,    /*停用原因           */         
   DTBCL007          VARCHAR2(255),                               /*备注               */  
   DTBCL008          VARCHAR2(1),                                 /*审核状态           */
   DTBCL009          INTEGER,                                     /*录入人          */       
   DTBCL010          DATE,                                        /*录入日期        */       
   DTBCL011          INTEGER,                                     /*审核人          */       
   DTBCL012          DATE,                                        /*审核日期        */  
   CREATE_USER        VARCHAR2(12),                              /*建立人员        */
   USER_GROUP         VARCHAR2(12),                              /*建立人员部门    */
   CREATE_DATE        DATE,                                      /*建立日期        */
   MODIFIER           VARCHAR2(12),                              /*修改人员        */
   MODI_DATE          DATE,                                      /*修改日期        */
   FLAG               NUMBER(1),                                 /*资料状态        */
   
   constraint PK_TB_DTBCL primary key (DTBCL_ID)                               
);                                           
create unique index AK_TB_DTBCL on TB_DTBCL (DTBCL001);               
create sequence SEQ_TB_DTBCL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCL to public;                                     
grant index  on TB_DTBCL to public;                                     
grant update on TB_DTBCL to public;                                      
grant delete on TB_DTBCL to public;                                       
grant insert on TB_DTBCL to public;                                      
grant select on SEQ_TB_DTBCL to public;                                        