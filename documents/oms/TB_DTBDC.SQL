/*
================================================================================
表结构代码:TB_DTBDC
表结构名称:样品变更回库明细
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBDC;
drop index AK_TB_DTBDC;
drop table TB_DTBDC;
create table TB_DTBDC  (                                       
   DTBDC_ID           INTEGER                    not null,     /*样品变更回库明细ID          */         
   DTBDC001           INTEGER                    not null,     /*样品变更单ID                    */    
   DTBDC002           INTEGER                    not null,     /*样品ID                             */   
   DTBDC003           INTEGER,                                 /*维度1ID                             */
   DTBDC004           INTEGER,                                 /*维度2ID                             */
   DTBDC005           INTEGER,                                 /*维度3ID                             */
   DTBDC006           INTEGER,                                 /*维度4ID                             */
   DTBDC007           INTEGER,                                 /*维度5ID                             */
   DTBDC008           NUMBER(22,0)            not null,        /*退样数量                           */   
   DTBDC009           NUMBER(22,2)            not null,        /*售价                                 */   
   DTBDC010           INTEGER,                                 /*单位                                */   
   DTBDC011           INTEGER,                                 /*含税金额                          */   
   DTBDC012           INTEGER,                                 /*包数                                 */   
   DTBDC013           NUMBER(22,0),                            /*总仓收货量                       */       
   DTBDC014           INTEGER,                                 /*退样仓库                         */       
   DTBDC015           INTEGER,                                 /*退样库位                           */                    
   DTBDC016           INTEGER,                                 /*收货仓库                         */       
   DTBDC017           INTEGER,                                 /*收货库位                           */   
   DTBDC018          INTEGER,                                  /*销售单ID                          */
   DTBDC019          INTEGER,                                  /*销售单明细ID                   */
   DTBDC020          VARCHAR2(1),			       /*是否套件                */
   DTBDC021          VARCHAR2(1),			       /*是否成分                */
   DTBDC022          INTEGER ,  			       /*主商品ID                */
   DTBDC023          VARCHAR2(30) ,  			       /*子套件对应关系随机码     */
   DTBDC024          NUMBER(18,3),                             /*排车量       */
   DTBDC025          VARCHAR2(1),			       /*商品服务属性            */
   DTBDC026          VARCHAR2(1),			       /*销售属性                */
   DTBDC027          VARCHAR2(255),			       /*备注                */
   CREATE_USER          VARCHAR2(12),                  /*建立人员             */
   USER_GROUP           VARCHAR2(12),                   /*建立人员部门         */                               
   CREATE_DATE          DATE,                                  /*建立日期             */
   MODIFIER             VARCHAR2(12),                      /*修改人员             */
   MODI_DATE            DATE,                                   /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
  
   
   constraint PK_TB_DTBDC primary key (DTBDC_ID)                               
);                                           
create unique index AK_TB_DTBDC on TB_DTBDC (DTBDC_ID,DTBDC001,DTBDC002,DTBDC013);               
create sequence SEQ_TB_DTBDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDC to public;                                     
grant index  on TB_DTBDC to public;                                     
grant update on TB_DTBDC to public;                                      
grant delete on TB_DTBDC to public;                                       
grant insert on TB_DTBDC to public;                                      
grant select on SEQ_TB_DTBDC to public;                                        