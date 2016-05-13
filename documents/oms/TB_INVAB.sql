/*
================================================================================
表结构代码:TB_INVAB
表结构名称:赠品出库单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVAB;
drop index AK_TB_INVAB;
drop table TB_INVAB;
create table TB_INVAB  (                                             
   INVAB_ID          INTEGER                  not null,        /*出库明细ID     */    
   INVAB001          INTEGER                  not null,        /*出库单ID       */    
   INVAB002          INTEGER                  not null,        /*商品编码       */    
   INVAB003          INTEGER,                                  /*维度1          */    
   INVAB004          INTEGER,                                  /*维度2          */    
   INVAB005          INTEGER,                                  /*维度3          */    
   INVAB006          INTEGER,                                  /*维度4          */    
   INVAB007          INTEGER,                                  /*维度5          */    
   INVAB008          INTEGER                  not null,        /*仓库           */    
   INVAB009          INTEGER                  not null,        /*库位           */    
   INVAB010          VARCHAR2(30),                             /*主批号         */    
   INVAB011          VARCHAR2(30),                             /*辅批号         */    
   INVAB012          VARCHAR2(30),                             /*厂商批号       */    
   INVAB013          INTEGER                  not null,        /*出库单位       */    
   INVAB014          NUMBER(18,3)             not null,        /*单位换算率     */    
   INVAB015          NUMBER(18,3)             not null,        /*出库量         */    
   INVAB016          NUMBER(18,3)             not null,        /*可用量         */    
   INVAB017          NUMBER(12,2)             not null,        /*税前单价       */    
   INVAB018          NUMBER(12,2)             not null,        /*含税单价       */    
   INVAB019          INTEGER                  not null,        /*税种           */    
   INVAB020          NUMBER(12,2)             not null,        /*税率           */    
   INVAB021          NUMBER(12,2)             not null,        /*税前金额       */    
   INVAB022          NUMBER(12,2)             not null,        /*含税金额       */    
   INVAB023          VARCHAR2(1)              not null,        /*商品服务属性   */    
   INVAB024          VARCHAR2(255),                            /*备注           */    
   INVAB025          NUMBER(18,3),                             /*退回量         */    
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_INVAB primary key (INVAB_ID)                               
);                                           
create unique index AK_TB_INVAB on TB_INVAB (INVAB_ID,INVAB002);               
create sequence SEQ_TB_INVAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVAB to public;                                     
grant index  on TB_INVAB to public;                                     
grant update on TB_INVAB to public;                                      
grant delete on TB_INVAB to public;                                       
grant insert on TB_INVAB to public;                                      
grant select on SEQ_TB_INVAB to public;                                        