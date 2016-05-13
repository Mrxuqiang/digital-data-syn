/*
================================================================================
表结构代码:TB_INVBG
表结构名称:理货日志表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVBG;
drop index AK_TB_INVBG;
drop table TB_INVBG;
create table TB_INVBG  (                                             
   INVBG_ID         INTEGER             not null,        /*理货日志ID   */                  
   INVBG001         VARCHAR2(30)   not null,        /*理货流水号     */                 
   INVBG002         INTEGER             not null,        /*商品ID       */             
   INVBG003         INTEGER,                             /*维度1        */             
   INVBG004         INTEGER,                             /*维度2        */             
   INVBG005         INTEGER,                             /*维度3        */             
   INVBG006         INTEGER,                             /*维度4        */             
   INVBG007         INTEGER,                             /*维度5        */             
   INVBG008         INTEGER             not null,        /*仓库ID       */             
   INVBG009         INTEGER             not null,        /*源货位ID       */             
   INVBG010         INTEGER             not null,        /*目标货位ID       */             
   INVBG011         INTEGER             not null,        /*出库单位     */             
   INVBG012         NUMBER(18,3)        not null,        /*数量       */             
   INVBG013         NUMBER(12,2)        not null,        /*税前单价     */             
   INVBG014         NUMBER(12,2)        not null,        /*含税单价     */             
   INVBG015         INTEGER             not null,        /*税种         */             
   INVBG016         NUMBER(12,2)        not null,        /*税率         */             
   INVBG017         NUMBER(12,2)        not null,        /*税前金额     */             
   INVBG018         NUMBER(12,2)        not null,        /*含税金额         */       
   INVBG019         VARCHAR2(1)         not null,        /*是否补件 */       
   INVBG020         VARCHAR2(255)                        /*备注       */    
   CREATE_USER      VARCHAR2(12),                                /*建立人员      */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门 */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_INVBG primary key (INVBG_ID)                               
);                                           
create unique index AK_TB_INVBG on TB_INVBG (INVBG_ID,INVBG002);               
create sequence SEQ_TB_INVBG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBG to public;                                     
grant index  on TB_INVBG to public;                                     
grant update on TB_INVBG to public;                                      
grant delete on TB_INVBG to public;                                       
grant insert on TB_INVBG to public;                                      
grant select on SEQ_TB_INVBG to public;                                        