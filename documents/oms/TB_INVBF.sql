/*
================================================================================
表结构代码:TB_INVBF
表结构名称:调拨到货单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVBF;
drop index AK_TB_INVBF;
drop table TB_INVBF;
create table TB_INVBF  (                                       
   INVBF_ID         INTEGER                not null,             /*拨入明细ID       */
   INVBF001         INTEGER                not null,             /*调拨到货单ID     */
   INVBF002         INTEGER,                                     /*调拨发货单ID     */
   INVBF003         INTEGER,                                     /*调拨发货单明细ID */
   INVBF004         VARCHAR2(1)            not null,             /*商品服务属性     */   
   INVBF005         VARCHAR2(1),                                 /*销售属性         */ 
   INVBF006         INTEGER                not null,             /*商品编码         */
   INVBF007         INTEGER,                                     /*维度1            */
   INVBF008         INTEGER,                                     /*维度2            */
   INVBF009         INTEGER,                                     /*维度3            */
   INVBF010         INTEGER,                                     /*维度4            */
   INVBF011         INTEGER,                                     /*维度5            */
   INVBF012         INTEGER                not null,             /*单位             */
   INVBF013         NUMBER(18,3)           not null,             /*单位换算率       */
   INVBF014         NUMBER(18,3)           not null,             /*发货量           */    
   INVBF015         NUMBER(18,3)           not null,             /*收货量           */
   INVBF016         NUMBER(18,3)           not null,             /*差异量           */
   INVBF017         NUMBER(12,2),                                /*税前单价         */
   INVBF018         NUMBER(12,2),                                /*税前金额         */
   INVBF019         NUMBER(12,2)           not null,             /*含税单价         */
   INVBF020         NUMBER(12,2)           not null,             /*含税金额         */
   INVBF021         INTEGER                not null,             /*税种             */
   INVBF022         NUMBER(18,3)           not null,             /*税率             */
   INVBF023         INTEGER                not null,             /*经营方式         */
   INVBF024         integer                not null,             /*供应商           */
   INVBF025         VARCHAR2(255),                               /*备注             */
   INVBF026         VARCHAR2(1),                                 /*是否组装品       */
   INVBF027         VARCHAR2(1),                                 /*是否成分         */
   INVBF028         integer                        ,             /*主商品ID         */
   INVBF029         integer                        ,             /*包数             */
   INVBF030         VARCHAR2(30),                                /*子套件关系对应随即码          */
   INVBF031         NUMBER(18,3)                   ,             /*费用分摊 add by hansf 20110114*/
   INVBF032	    varchar2(64),                                /*库存条码          */--20110801 add by xiechun
   INVBF033
   INVBF034         VARCHAR2(255),                                     /*备注1            */
   INVBF035         VARCHAR2(255),                                     /*备注2            */
   INVBF036         VARCHAR2(255),                                     /*备注3            */
   CREATE_USER      VARCHAR2(12),                                /*建立人员         */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门     */             
   CREATE_DATE      DATE,                                        /*建立日期         */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_INVBF primary key (INVBF_ID)                               
);                                                     
create sequence SEQ_TB_INVBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBF to public;                                     
grant index  on TB_INVBF to public;                                     
grant update on TB_INVBF to public;                                      
grant delete on TB_INVBF to public;                                       
grant insert on TB_INVBF to public;                                      
grant select on SEQ_TB_INVBF to public;                                        