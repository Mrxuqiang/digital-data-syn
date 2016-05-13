\/*
================================================================================
表结构代码:TB_INVCB
表结构名称:损溢单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVCB;
drop index AK_TB_INVCB;
drop table TB_INVCB;
create table TB_INVCB  (                                       
   INVCB_ID         INTEGER                      not null,             /*损溢明细ID    */           
   INVCB001         INTEGER                      not null,             /*损溢单ID      */                
   INVCB002         INTEGER                      not null,             /*商品编码      */           
   INVCB003         INTEGER,                                           /*维度1         */           
   INVCB004         INTEGER,                                           /*维度2         */           
   INVCB005         INTEGER,                                           /*维度3         */           
   INVCB006         INTEGER,                                           /*维度4         */           
   INVCB007         INTEGER,                                           /*维度5         */                              
   INVCB008         INTEGER                      not null,             /*单位          */           
   INVCB009         NUMBER(18,3)                 not null,             /*单位换算率    */           
   INVCB010         NUMBER(18,3)                 not null,             /*损溢量        */           
   INVCB011         NUMBER(12,2)                 not null,             /*税前单价      */           
   INVCB012         NUMBER(12,2)                 not null,             /*含税单价      */           
   INVCB013         INTEGER                      not null,             /*税种          */           
   INVCB014         NUMBER(12,2)                 not null,             /*税率          */           
   INVCB015         NUMBER(12,2)                 not null,             /*税前金额      */           
   INVCB016         NUMBER(12,2)                 not null,             /*含税金额      */                    
   INVCB017         VARCHAR2(1),                 not null,             /*商品服务属性*/
   INVCB018         VARCHAR2(1),                 not null,             /*销售属性*/
   INVCB019         VARCHAR2(30)            ,                          /*子套件对应随机码*/
   INVCB020         VARCHAR2(1),                                       /*是否组装品      */
   INVCB021         VARCHAR2(1),                                       /*是否成分        */
   INVCB022         INTEGER            ,                               /*主商品ID           */
   INVCB023         INTEGER            ,                               /*包数        */
   INVCB024         VARCHAR2(255)                                      /*备注          */         
   INVCB025         INTEGER,                                           /*供应商ID */ 20110215 add by xiechun 
   CREATE_USER      VARCHAR2(12),                            /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                            /*建立人员部门       */             
   CREATE_DATE      DATE,                                    /*建立日期           */             
   MODIFIER         VARCHAR2(12),                            /*修改人员           */             
   MODI_DATE        DATE,                                    /*修改日期           */             
   FLAG             NUMBER(1),                               /*资料状态           */            


  constraint PK_TB_INVCB primary key (INVCB_ID)                               
);                                                         
create sequence SEQ_TB_INVCB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVCB to public;                                     
grant index  on TB_INVCB to public;                                     
grant update on TB_INVCB to public;                                      
grant delete on TB_INVCB to public;                                       
grant insert on TB_INVCB to public;                                      
grant select on SEQ_TB_INVCB to public;                                        