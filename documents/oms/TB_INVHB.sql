/*
================================================================================
表结构代码:TB_INVHB
表结构名称:差异单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVHB;
drop index AK_TB_INVHB;
drop table TB_INVHB;
create table TB_INVHB  (                                       
   INVHB_ID            INTEGER                 not null,       /*差异明细ID       */           
   INVHB001            INTEGER                 not null,       /*差异单ID         */      
   INVHB002            VARCHAR2(1)             not null,       /*差异类类型       */      
   INVHB003            INTEGER                 not null,       /*来源单据ID       */      
   INVHB004            INTEGER                 not null,       /*来源单据明细ID   */      
   INVHB005            INTEGER                 not null,       /*商品编码         */      
   INVHB006            INTEGER,                                /*维度1            */      
   INVHB007            INTEGER,                                /*维度2            */      
   INVHB008            INTEGER,                                /*维度3            */      
   INVHB009            INTEGER,                                /*维度4            */      
   INVHB010            INTEGER,                                /*维度5            */      
   INVHB011            INTEGER                 not null,       /*出货仓库         */      
   INVHB012            INTEGER                 not null,       /*出货库位         */      
   INVHB013            VARCHAR2(30)            not null,       /*出货主批号       */      
   INVHB014            NUMBER(18,3)            not null,       /*出货数量         */      
   INVHB015            INTEGER                 not null,       /*单位             */      
   INVHB016            NUMBER(18,3)            not null,       /*单位换算率       */      
   INVHB017            INTEGER                 not null,       /*收货仓库         */      
   INVHB018            INTEGER                 not null,       /*收货库位         */      
   INVHB019            VARCHAR2(30)            not null,       /*收货主批号       */      
   INVHB020            NUMBER(18,3)            not null,       /*收货数量         */      
   INVHB021            NUMBER(18,3)            not null,       /*差异量           */      
   INVHB022            NUMBER(12,2)            not null,       /*差异税前单价     */         
   INVHB023            NUMBER(12,2)            not null,       /*差异含税单价     */      
   INVHB024            INTEGER                 not null,       /*税种             */      
   INVHB025            NUMBER(12,2)            not null,       /*税率             */      
   INVHB026            NUMBER(12,2)            not null,       /*差异税前金额     */      
   INVHB027            NUMBER(12,2)            not null,       /*差异含税金额     */      
   INVHB028            VARCHAR2(1)             not null,       /*差异处理类型     */      
   INVHB029            VARCHAR2(1)             not null,       /*商品服务属性     */     
   INVHB030            VARCHAR2(255)                           /*备注             */     
   CREATE_USER         VARCHAR2(12),                           /*建立人员           */             
   USER_GROUP          VARCHAR2(12),                           /*建立人员部门       */             
   CREATE_DATE         DATE,                                   /*建立日期           */             
   MODIFIER            VARCHAR2(12),                           /*修改人员           */             
   MODI_DATE           DATE,                                   /*修改日期           */             
   FLAG                NUMBER(1),                              /*资料状态           */            


  constraint PK_TB_INVHB primary key (INVHB_ID)                               
);                                           
create unique index AK_TB_INVHB on TB_INVHB (INVHB003,INVHB005);               
create sequence SEQ_TB_INVHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVHB to public;                                     
grant index  on TB_INVHB to public;                                     
grant update on TB_INVHB to public;                                      
grant delete on TB_INVHB to public;                                       
grant insert on TB_INVHB to public;                                      
grant select on SEQ_TB_INVHB to public;                                        