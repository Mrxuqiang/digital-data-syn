/*
================================================================================
表结构代码:TB_DTBDB
表结构名称:样品变更出样明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBDB;
drop index AK_TB_DTBDB;
drop table TB_DTBDB;
create table TB_DTBDB  (                                       
   DTBDB_ID           INTEGER                    not null,     /*样品变更出样明细ID      */         
   DTBDB001           INTEGER                    not null,     /*样品变更单ID            */    
   DTBDB002           INTEGER                    not null,     /*样品ID                  */ 
   DTBDB003           INTEGER,                                 /*维度1ID                  */ 
   DTBDB004           INTEGER,                                 /*维度2ID                  */ 
   DTBDB005           INTEGER,                                 /*维度3ID                  */ 
   DTBDB006           INTEGER,                                 /*维度4ID                  */ 
   DTBDB007           INTEGER,                                 /*维度5ID                  */ 
   DTBDB008           NUMBER(22,0)               not null,     /*出样数量                */   
   DTBDB009           NUMBER(22,2)               not null,     /*售价                    */   
   DTBDB010           INTEGER,                                 /*单位                    */   
   DTBDB011           NUMBER(22,2),                            /*含税金额                */   
   DTBDB012           INTEGER,                                 /*包数                    */   
   DTBDB013           NUMBER(22,0),                            /*门店收货量              */       
   DTBDB014           INTEGER,                                 /*出样仓库                */       
   DTBDB015           INTEGER,                                  /*出样库位                */                    
   DTBDB016           INTEGER,      	                        /*收货仓库                */       
   DTBDB017           INTEGER,                                  /*收货库位                */   
   DTBDB018          INTEGER,                                  /*出样申请单ID            */
   DTBDB019          INTEGER,                                  /*出样申请单明细ID        */
   DTBDB020          VARCHAR2(1),			       /*是否套件                */
   DTBDB021          VARCHAR2(1),			       /*是否成分                */
   DTBDB022          INTEGER ,  			       /*主商品ID                */	   
   DTBDB023          VARCHAR2(30),  			       /*子套件对应关系随机码  */--add 20100512
   DTBDB024          NUMBER(18,3),                             /*排车量         */
   DTBDB025          VARCHAR2(1),			       /*商品服务属性            */
   DTBDB026          VARCHAR2(1),			       /*销售属性                */
   DTBDB027          VARCHAR2(255),			       /*备注                */
   CREATE_USER          VARCHAR2(12),                    /*建立人员             */
   USER_GROUP           VARCHAR2(12),                     /*建立人员部门         */                               
   CREATE_DATE          DATE,                                  /*建立日期             */
   MODIFIER             VARCHAR2(12),                      /*修改人员             */
   MODI_DATE            DATE,                                   /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
  
   
   constraint PK_TB_DTBDB primary key (DTBDB_ID)                               
);                                           
create unique index AK_TB_DTBDB on TB_DTBDB (DTBDB_ID,DTBDB001,DTBDB002);               
create sequence SEQ_TB_DTBDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDB to public;                                     
grant index  on TB_DTBDB to public;                                     
grant update on TB_DTBDB to public;                                      
grant delete on TB_DTBDB to public;                                       
grant insert on TB_DTBDB to public;                                      
grant select on SEQ_TB_DTBDB to public;                                        