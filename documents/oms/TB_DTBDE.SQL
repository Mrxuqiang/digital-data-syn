/*
================================================================================
表结构代码:TB_DTBDE
表结构名称:出样入库明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBDE;
drop index AK_TB_DTBDE;
drop table TB_DTBDE;
create table TB_DTBDE  (                                      
   DTBDE_ID           INTEGER                     not null,    /*出样入库明细ID  */         
   DTBDE001           INTEGER                     not null,    /*出样入库单ID    */    
   DTBDE002           INTEGER                     not null,    /*样品ID          */
   DTBDE003           INTEGER                              ,   /*维度1ID         */
   DTBDE004           INTEGER                              ,   /*维度2ID         */
   DTBDE005           INTEGER                              ,   /*维度3ID         */
   DTBDE006           INTEGER                              ,   /*维度4ID         */
   DTBDE007           INTEGER                              ,   /*维度5ID         */
   DTBDE008           NUMBER(22,2)                 not null,   /*出样数量        */   
   DTBDE009           NUMBER(22,2)                 not null,   /*售价            */   
   DTBDE010           INTEGER                               ,  /*单位            */   
   DTBDE011          NUMBER(22,2)                           ,  /*含税金额        */   
   DTBDE012           INTEGER                               ,  /*包数            */   
   DTBDE013           NUMBER(22,0)                          ,  /*门店收货量      */       
   DTBDE014           INTEGER,				       /*出样仓库      */       
   DTBDE015           INTEGER,                                 /*出样库位        */                    
   DTBDE016           INTEGER,				       /*收货仓库        */     
   DTBDE017           INTEGER,                                 /*收货库位        */   
   DTBDE018           INTEGER,                                 /*样品变更出样明细ID*/   
   DTBDE019          VARCHAR2(1),			       /*是否套件                */        
   DTBDE020          VARCHAR2(1),			       /*是否成分                */
   DTBDE021          INTEGER ,  			       /*主商品ID                */
   DTBDE022          VARCHAR2(30) ,  			       /*子套件对应关系随机码     */
   DTBDE023          VARCHAR2(1),			       /*商品服务属性    */
   DTBDE024          VARCHAR2(1),			       /* 销售属性       */
   CREATE_USER          VARCHAR2(12),                          /*建立人员        */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门    */                               
   CREATE_DATE          DATE,                                  /*建立日期        */
   MODIFIER             VARCHAR2(12),                          /*修改人员        */
   MODI_DATE            DATE,                                  /*修改日期        */
   FLAG                 NUMBER(1),                             /*资料状态        */
  
   
   constraint PK_TB_DTBDE primary key (DTBDE_ID)                               
);                                                         
create sequence SEQ_TB_DTBDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDE to public;                                     
grant index  on TB_DTBDE to public;                                     
grant update on TB_DTBDE to public;                                      
grant delete on TB_DTBDE to public;                                       
grant insert on TB_DTBDE to public;                                      
grant select on SEQ_TB_DTBDE to public;                                        