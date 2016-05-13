/*
================================================================================
表结构代码:TB_DTBCC
表结构名称:路径定义子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCC;
drop index AK_TB_DTBCC;
drop table TB_DTBCC;
create table TB_DTBCC  (                                       
   DTBCC_ID          INTEGER                  not null,   /*路径明细ID     */     
   DTBCC001          INTEGER                  not null,   /*运输路径ID     */     
   DTBCC002          VARCHAR2(3)              not null,   /*运输步骤       */     
   DTBCC003          VARCHAR2(1)              not null,   /*运输方式       */     
   DTBCC004          INTEGER                  not null,   /*起始地点       */     
   DTBCC005          INTEGER                  not null,   /*目的地点       */     
   DTBCC006          NUMBER(18,3)                         /*路程里数       */     
   DTBCC007          NUMBER(18,3)                         /*耗用时数       */     
   DTBCC008          VARCHAR2(255)                        /*备注           */     
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_DTBCC primary key (DTBCC_ID)                               
);                                           
create unique index AK_TB_DTBCC on TB_DTBCC (DTBCC_ID);               
create sequence SEQ_TB_DTBCC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCC to public;                                     
grant index  on TB_DTBCC to public;                                     
grant update on TB_DTBCC to public;                                      
grant delete on TB_DTBCC to public;                                       
grant insert on TB_DTBCC to public;                                      
grant select on SEQ_TB_DTBCC to public;                                        