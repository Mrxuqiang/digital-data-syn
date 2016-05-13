/*
================================================================================
表结构代码:TB_DTBCI
表结构名称:排车单商品子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBCI;
drop index AK_TB_DTBCI;
drop table TB_DTBCI;
create table TB_DTBCI  (                                             
   DTBCI_ID	       INTEGER                   not null,     /*商品明细ID    */              
   DTBCI001	       INTEGER                   not null,     /*排车单ID    */              
   DTBCI002	       INTEGER                   not null,     /*客户列表ID    */              
   DTBCI003	       INTEGER                   not null,     /*商品ID        */              
   DTBCI004	       INTEGER,                                /*维度1         */              
   DTBCI005	       INTEGER,                                /*维度2         */              
   DTBCI006	       INTEGER,                                /*维度3         */              
   DTBCI007	       INTEGER,                                /*维度4         */              
   DTBCI008	       INTEGER,                                /*维度5         */              
   DTBCI009	       INTEGER                   not null,     /*单位          */              
   DTBCI010	       NUMBER(18,3)              not null,     /*销售数量      */              
   DTBCI011	       NUMBER(18,3)              not null,     /*配送数量      */              
   DTBCI012	       NUMBER(18,3)              not null,     /*退货数量      */              
   DTBCI013	       NUMBER(18,3)              not null,     /*配退数量      */              
   DTBCI014	       NUMBER(12,2)              not null,     /*销售单价      */              
   DTBCI015	       NUMBER(12,2)              not null,     /*销售金额      */       
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_DTBCI primary key (DTBCI_ID)                               
);                                           
create unique index AK_TB_DTBCI on TB_DTBCI (DTBCI002,DTBCI003);               
create sequence SEQ_TB_DTBCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBCI to public;                                     
grant index  on TB_DTBCI to public;                                     
grant update on TB_DTBCI to public;                                      
grant delete on TB_DTBCI to public;                                       
grant insert on TB_DTBCI to public;                                      
grant select on SEQ_TB_DTBCI to public;                                        