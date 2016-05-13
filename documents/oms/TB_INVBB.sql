/*
================================================================================
表结构代码:TB_INVBB
表结构名称:移仓单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVBB;
drop index AK_TB_INVBB;
drop table TB_INVBB;
create table TB_INVBB  (                                       
   INVBB_ID         INTEGER                        not null,     /*移仓明细ID*/ 
   INVBB001         INTEGER                        not null,     /*移仓单ID    */ 
   INVBB002         INTEGER                        not null,     /*商品编码    */ 
   INVBB003         INTEGER,                                     /*维度1           */ 
   INVBB004         INTEGER,                                     /*维度2           */ 
   INVBB005         INTEGER,                                     /*维度3           */ 
   INVBB006         INTEGER,                                     /*维度4           */ 
   INVBB007         INTEGER,                                     /*维度5           */ 
   INVBB008         INTEGER                        not null,     /*移出货位        */ 
   INVBB009         INTEGER                        not null,     /*移入货位        */ 
   INVBB010         INTEGER,                                     /*批次ID(子件)      */ 
   INVBB011         VARCHAR2(30),                                /*库存条码(子件)*/ 
   INVBB012         NUMBER(18,3)                   not null,     /*移出量          */ 
   INVBB013         VARCHAR2(1)                   not null,     /*是否补件    */ 
   INVBB014         VARCHAR2(255),                               /*备注            */ 
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_INVBB primary key (INVBB_ID)                               
);                                                      
create sequence SEQ_TB_INVBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBB to public;                                     
grant index  on TB_INVBB to public;                                     
grant update on TB_INVBB to public;                                      
grant delete on TB_INVBB to public;                                       
grant insert on TB_INVBB to public;                                      
grant select on SEQ_TB_INVBB to public;        