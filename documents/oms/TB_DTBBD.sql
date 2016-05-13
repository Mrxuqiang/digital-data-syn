/*
================================================================================
表结构代码:TB_DTBBD
表结构名称:配送到货单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBBD;
drop index AK_TB_DTBBD;
drop table TB_DTBBD;
create table TB_DTBBD  (                                       
   DTBBD_ID         INTEGER                not null,             /*配退明细ID        */
   DTBBD001         INTEGER                not null,             /*配退出库单ID      */
   DTBBD002         INTEGER,                                     /*来源单号ID        */
   DTBBD003         INTEGER,                                     /*来源单项次ID      */
   DTBBD004         INTEGER                not null,             /*商品编码          */
   DTBBD005         INTEGER,                                     /*维度1             */
   DTBBD006         INTEGER,                                     /*维度2             */
   DTBBD007         INTEGER,                                     /*维度3             */
   DTBBD008         INTEGER,                                     /*维度4             */
   DTBBD009         INTEGER,                                     /*维度5             */
   DTBBD010         INTEGER                not null,             /*仓库              */
   DTBBD011         INTEGER                not null,             /*库位              */
   DTBBD012         VARCHAR2(30),                                /*主批号            */
   DTBBD013         VARCHAR2(30),                                /*辅批号            */
   DTBBD014         VARCHAR2(30),                                /*厂商批号          */
   DTBBD015         INTEGER                not null,             /*入库单位          */
   DTBBD016         NUMBER(18,3)           not null,             /*单位换算率        */
   DTBBD017         NUMBER(18,3)           not null,             /*发货量            */    
   DTBBD018         NUMBER(18,3)           not null,             /*收货量            */
   DTBBD019         NUMBER(18,3)           not null,             /*差异数量          */
   DTBBD020         NUMBER(12,2),                                /*税前单价          */
   DTBBD021         NUMBER(12,2),                                /*税前金额          */
   DTBBD022         NUMBER(12,2)           not null,             /*含税单价          */
   DTBBD023         NUMBER(12,2)           not null,             /*含税金额          */
   DTBBD024         INTEGER                not null,             /*税种              */
   DTBBD025         NUMBER(18,3)           not null,             /*税率              */
   DTBBD026         VARCHAR2(1)            not null,             /*商品服务属性      */
   DTBBD027         INTEGER,                                     /*供应商            */
   DTBBD028         VARCHAR2(1),                                 /*经营方式          */
   DTBBD029         VARCHAR2(255),                               /*备注              */
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_DTBBD primary key (DTBBD_ID)                               
);                                           
create unique index AK_TB_DTBBD on TB_DTBBD (DTBBD_ID,DTBBD004);               
create sequence SEQ_TB_DTBBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBBD to public;                                     
grant index  on TB_DTBBD to public;                                     
grant update on TB_DTBBD to public;                                      
grant delete on TB_DTBBD to public;                                       
grant insert on TB_DTBBD to public;                                      
grant select on SEQ_TB_DTBBD to public;                                        