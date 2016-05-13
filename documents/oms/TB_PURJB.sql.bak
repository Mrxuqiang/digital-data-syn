/*
================================================================================
表结构代码:TB_PURJB
表结构名称:收货通知单子表
表结构目的:
================================================================================
    */

drop sequence SEQ_TB_PURJB;
drop index AK_TB_PURJB;
drop table TB_PURJB;
create table TB_PURJB  (
   PURJB_ID         INTEGER                  not null,            /*收货明细ID           */      
   PURJB001         INTEGER                  not null,            /*收货单ID             */      
   PURJB002         INTEGER,                                      /*采购单ID             */      
   PURJB003         INTEGER,                                      /*采购单明细ID         */      
   PURJB004         INTEGER                  not null,            /*商品编码             */      
   PURJB005         INTEGER,                                      /*维度1                */      
   PURJB006         INTEGER,                                      /*维度2                */      
   PURJB007         INTEGER,                                      /*维度3                */      
   PURJB008         INTEGER,                                      /*维度4                */      
   PURJB009         INTEGER,                                      /*维度5                */      
   PURJB010         INTEGER                  not null,            /*仓库                 */     
   PURJB011         INTEGER                  not null,            /*库位                 */      
   PURJB012         VARCHAR2(30),                                 /*订单号               */      
   PURJB013         VARCHAR2(1),             not null,            /*是否定制商品         */1、正常商品， 2、定制商品 3赠品 4、样品 5.处理品
   PURJB014         VARCHAR2(30),                                 /*厂商批号             */   -- mark  by hansf 备用字段   
   PURJB015         INTEGER                  not null,            /*收货单位             */      
   PURJB016         NUMBER(18,3),                                 /*单位换算率           */      
   PURJB017         NUMBER(18,3)             not null,            /*预计到货量           */      
   PURJB018         NUMBER(18,3)             not null,            /*实际收货量           */    
   PURJB019         NUMBER(18,3),                                 /*折扣率               */      
   PURJB020         NUMBER(18,3),                                 /*搭赠量               */      
   PURJB021         NUMBER(12,2),                                 /*税前单价             */      
   PURJB022         NUMBER(12,2),                                 /*含税单价             */      
   PURJB023         INTEGER                  not null,            /*税种                 */      
   PURJB024         NUMBER(18,3)             not null,            /*税率                 */     
   PURJB025         NUMBER(12,2),                                 /*税前金额             */      
   PURJB026         NUMBER(12,2),                                 /*含税金额             */      
   PURJB027         NUMBER(18,3),                                 /*扣率                 */      
   PURJB028         VARCHAR2(1)              not null,            /*商品服务属性         */1、套件 2、组装件 3、补件      
   PURJB029         varchar2(1)   ,                               /*是否主商品           */     
   PURJB030         NUMBER(1)                not null,            /*优先级(默认3)        */      
   PURJB031         VARCHAR2(1),		                  /*是否成分             */  
   PURJB032         VARCHAR2(30),			   	  /*子套件对应关系随机码 */  --add 20100512
   PURJB033         VARCHAR2(255),                                /*备注                 */  
   PURJB034         INTEGER,                                      /*主商品ID             */ 
   PURJB035         INTEGER,                                      /*包数                 */ 
   PURJB036         NUMBER(18,3)                                  /*作废量               */--20110218 add by xiechun
   PURJB037         VARCHAR2(40),                                 /*货号             		 */  --20110721 add by xiechun
   PURJB038         VARCHAR2(255),                                /*备注1            		 */ --20110712 add by xiechun
   PURJB039         VARCHAR2(255),                                /*备注2            		 */ --20110712 add by xiechun
   PURJB040         VARCHAR2(255),                                /*备注3            		 */ --20110712 add by xiechun
   PURJB041            NUMBER(12,2),                              /*体积                 */--20110725 modify by xiechun
   CREATE_USER            VARCHAR2(12),                           /*建立人员             */
   USER_GROUP             VARCHAR2(12),                           /*建立人员部门         */                               
   CREATE_DATE            DATE,                                   /*建立日期             */
   MODIFIER               VARCHAR2(12),                           /*修改人员             */
   MODI_DATE              DATE,                                   /*修改日期             */
   FLAG                   NUMBER(1),                              /*资料状态             */
   constraint PK_TB_PURJB primary key (PURJB_ID)
);
create unique index AK_TB_PURJB on TB_PURJB (PURJB_ID,PURJB001,PURJB004);
create sequence SEQ_TB_PURJB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURJB to public;
grant index  on TB_PURJB to public;
grant update on TB_PURJB to public; 
grant delete on TB_PURJB to public;  
grant insert on TB_PURJB to public; 
grant select on SEQ_TB_PURJB to public;   