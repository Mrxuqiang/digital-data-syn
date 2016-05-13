/*
================================================================================
表结构代码:TB_INVAC
表结构名称:赠品退回单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVAC;
drop index AK_TB_INVAC;
drop table TB_INVAC;
create table TB_INVAC  (                                       
   INVAC_ID         INTEGER                  not null,         /*退回单ID        */            
   INVAC001         VARCHAR2(1)              not null,         /*退回类型        */            
   INVAC002         INTEGER                  not null,         /*单别ID          */            
   INVAC003         VARCHAR2(30)             not null,         /*退回单号        */            
   INVAC004         VARCHAR2(1)              not null,         /*来源依据        */            
   INVAC005         INTEGER,                                   /*来源单号(出库单ID)        */            
   INVAC006         DATE                     not null,         /*退回日期        */            
   INVAC007         INTEGER                  not null,         /*退回营运组织ID  */            
   INVAC008         INTEGER                  not null,         /*退回部门ID      */            
   INVAC009         INTEGER                  not null,         /*退回人员ID      */            
   INVAC010         VARCHAR2(1)              not null,         /*对象来源        */            
   INVAC011         INTEGER,                                   /*对象ID          */
   INVAC011C1       VARCHAR2(12),                              /*对象代码        */
   INVAC011C2       VARCHAR2(40)             not null,         /*对象名称        */
   INVAC012         INTEGER                  not null,         /*交易组织ID      */            
   INVAC013         VARCHAR2(1)              not null,         /*审核状态        */            
   INVAC014         INTEGER,                                   /*录入人          */            
   INVAC015         DATE,                                      /*录入日期        */            
   INVAC016         INTEGER,                                   /*审核人          */            
   INVAC017         DATE,                                      /*审核日期        */ 
   INVAC018         VARCHAR2(255),                             /*备注            */
   CREATE_USER        VARCHAR2(12),                                /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                /*建立人员部门    */             
   CREATE_DATE        DATE,                                        /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                /*修改人员        */             
   MODI_DATE          DATE,                                        /*修改日期        */             
   FLAG               NUMBER(1),                                   /*资料状态        */            


  constraint PK_TB_INVAC primary key (INVAC_ID)                               
);                                           
create unique index AK_TB_INVAC on TB_INVAC (INVAC002,INVAC003);               
create sequence SEQ_TB_INVAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVAC to public;                                     
grant index  on TB_INVAC to public;                                     
grant update on TB_INVAC to public;                                      
grant delete on TB_INVAC to public;                                       
grant insert on TB_INVAC to public;                                      
grant select on SEQ_TB_INVAC to public;                                        