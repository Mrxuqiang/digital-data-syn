/*
================================================================================
表结构代码:TB_DTBDA
表结构名称:样品变更单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBDA;
drop index AK_TB_DTBDA;
drop table TB_DTBDA;
create table TB_DTBDA  (                                       
   DTBDA_ID           INTEGER                    not null,    /*样品变更单ID          */         
   DTBDA001           INTEGER                    not null,    /*单别            */    
   DTBDA002           VARCHAR2(30)               not null,    /*样品变更单号            */   
   DTBDA003           INTEGER                    not null,    /*出样营运组织           */   
   DTBDA004           INTEGER                    not null,    /*展示门店      */   
   DTBDA005           INTEGER,                                /*出样发货人  */  
   DTBDA006           INTEGER,                                /*回库发货人  */   
   DTBDA007           INTEGER,                                /*录入人         */   
   DTBDA008           DATE,                                   /*录入时间      */       
   DTBDA009           INTEGER,                                /*审核人          */       
   DTBDA010           DATE,                                   /*审核时间       */
   DTBDA011           VARCHAR2(1),                            /*审核状态       */
   DTBDA012           DATE,                                         /*计划完成日期   */ --add by hansf 20100508
   DTBDA013           DATE,                                         /*出样日期       */ --add by hansf 20100508
   DTBDA014           DATE,                                         /*回库日期       */ --add by hansf 20100508
   DTBDA015           INTEGER,                                      /*排车次数          */ --add by hansf20100513 
   DTBDA016           VARCHAR2(1),                            /*状态          */ 
   DTBDA017           VARCHAR2(255),                          /*备注        */ 
   DTBDA018           VARCHAR2(1),                             /*是否打包现场自提 */ --add by xiechun
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
  
   
   constraint PK_TB_DTBDA primary key (DTBDA_ID)                               
);                                           
create unique index AK_TB_DTBDA on TB_DTBDA (DTBDA002,DTBDA003,FLAG);               
create sequence SEQ_TB_DTBDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDA to public;                                     
grant index  on TB_DTBDA to public;                                     
grant update on TB_DTBDA to public;                                      
grant delete on TB_DTBDA to public;                                       
grant insert on TB_DTBDA to public;                                      
grant select on SEQ_TB_DTBDA to public;                                        