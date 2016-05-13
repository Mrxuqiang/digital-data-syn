/*
================================================================================
表结构代码:TB_DTBDG
表结构名称:退样入库明细表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_DTBDG;
drop index AK_TB_DTBDG;
drop table TB_DTBDG;
create table TB_DTBDG  (                                       
   DTBDG_ID           INTEGER                    not null,    /*退样入库明细ID       */         
   DTBDG001           INTEGER                    not null,    /*退样入库单ID         */    
   DTBDG002           INTEGER                    not null,    /*样品ID               */   
   DTBDG003           INTEGER                              ,  /*维度1ID              */
   DTBDG004           INTEGER                              ,  /*维度2ID              */
   DTBDG005           INTEGER                              ,  /*维度3ID              */
   DTBDG006           INTEGER                              ,  /*维度4ID              */
   DTBDG007           INTEGER                              ,  /*维度5ID              */
   DTBDG008           NUMBER(22,0)             not null,      /*退样数量             */   
   DTBDG009           NUMBER(22,2)             not null,      /*售价                 */   
   DTBDG010           INTEGER                               , /*单位                 */   
   DTBDG011           NUMBER(22,2)                          , /*含税金额             */   
   DTBDG012           INTEGER                               , /*包数                 */   
   DTBDG013           NUMBER(22,0)                            /*总仓收货量           */       
   DTBDG014           INTEGER				,     /*退样仓库             */        
   DTBDG015           INTEGER,                                /*退样库位             */
   DTBDG016           INTEGER				,     /*收货仓库             */       
   DTBDG017           INTEGER,                                /*收货库位             */   
   DTBDG018           INTEGER,                                /*销售单ID             */   
   DTBDG019           INTEGER,                                /*销售单明细ID         */    
   DTBDG020           VARCHAR2(1),			      /*是否套件             */
   DTBDG021           VARCHAR2(1),			      /*是否成分             */
   DTBDG022           INTEGER ,  			      /*主商品ID             */
   DTBDG023           VARCHAR2(30) ,  		              /*子套件对应关系随机码 */
   DTBDG024           INTEGER ,  			      /*样品变更单ID         */
   DTBDG025           INTEGER ,  			      /*样品变更单退样明细ID */
   DTBDG026           VARCHAR2(1),			      /*商品服务属性         */ add 0812
   DTBDG027           VARCHAR2(1),			      /*销售属性             */ add  by xiechun 20110503
   CREATE_USER        VARCHAR2(12),                           /*建立人员             */
   USER_GROUP         VARCHAR2(12),                           /*建立人员部门         */                               
   CREATE_DATE        DATE,                                   /*建立日期             */
   MODIFIER           VARCHAR2(12),                           /*修改人员             */
   MODI_DATE          DATE,                                   /*修改日期             */
   FLAG               NUMBER(1),                              /*资料状态             */   
   constraint PK_TB_DTBDG primary key (DTBDG_ID)                               
);                                           
create unique index AK_TB_DTBDG on TB_DTBDG (DTBDG002,DTBDG013);               
create sequence SEQ_TB_DTBDG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBDG to public;                                     
grant index  on TB_DTBDG to public;                                     
grant update on TB_DTBDG to public;                                      
grant delete on TB_DTBDG to public;                                       
grant insert on TB_DTBDG to public;                                      
grant select on SEQ_TB_DTBDG to public;                                        