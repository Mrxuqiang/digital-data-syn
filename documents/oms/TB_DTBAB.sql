/*
================================================================================
表结构代码:TB_DTBAB
表结构名称:配送出货单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBAB;
drop index AK_TB_DTBAB;
drop table TB_DTBAB;
create table TB_DTBAB  (                                       
   DTBAB_ID         INTEGER                not null,             /*配送明细ID         */
   DTBAB001         INTEGER                not null,             /*配送出库单ID       */
   DTBAB002         INTEGER,                                     /*来源单号ID         */
   DTBAB003         INTEGER,                                     /*来源单项次ID       */
   DTBAB004         INTEGER                not null,             /*商品编码           */
   DTBAB005         INTEGER,                                     /*维度1              */
   DTBAB006         INTEGER,                                     /*维度2              */
   DTBAB007         INTEGER,                                     /*维度3              */
   DTBAB008         INTEGER,                                     /*维度4              */
   DTBAB009         INTEGER,                                     /*维度5              */
   DTBAB010         INTEGER                not null,             /*仓库               */
   DTBAB011         INTEGER                not null,             /*库位               */
   DTBAB012         VARCHAR2(30)           not null,             /*主批号             */
   DTBAB013         VARCHAR2(30)           not null,             /*辅批号             */
   DTBAB014         VARCHAR2(30)           not null,             /*厂商批号           */
   DTBAB015         INTEGER                not null,             /*入库单位           */
   DTBAB016         NUMBER(18,3)           not null,             /*单位换算率         */
   DTBAB017         NUMBER(18,3)           not null,             /*发货量             */    
   DTBAB018         NUMBER(18,3)           not null,             /*收货量             */
   DTBAB019         NUMBER(18,3)           not null,             /*差异数量           */
   DTBAB020         NUMBER(12,2),                                /*税前单价           */
   DTBAB021         NUMBER(12,2),                                /*税前金额           */
   DTBAB022         NUMBER(12,2)           not null,             /*含税单价           */
   DTBAB023         NUMBER(12,2)           not null,             /*含税金额           */
   DTBAB024         INTEGER                not null,             /*税种               */
   DTBAB025         NUMBER(18,3)           not null,             /*税率               */
   DTBAB026         NUMBER(1)              not null,             /*商品服务属性       */
   DTBAB027         DATE,                                        /*预到货日           */
   DTBAB028         INTEGER                not null,             /*供应商             */
   DTBAB029         NUMBER(1)              not null,             /*经营方式           */
   DTBAB030         VARCHAR2(255),                               /*备注               */
   DTBAB031         VARCHAR2(255),                                     /* 要货单ID         */
   DTBAB032         VARCHAR2(1),                               /*单据类型        */ 1 要货单 2 销售订单
   DTBAB033          NUMBER(12,2),		 /*排车量*/--add by hansf 2010-03-09
   DTBAB034          NUMBER(12,2),		 /*送货量*/
   DTBAB035          NUMBER(12,2),		 /*完成量*/
   DTBAB036             VARCHAR2(1),                           /*是否组装品*/--add 20100402
   DTBAB037             VARCHAR2(1),                           /*是否成分*/
   DTBAB038            INTEGER,                                   /*主商品ID*/
   DTBAB039            INTEGER,                                   /*包数*/
   DTBAB040             VARCHAR2(1),                           /*来源单据类型 1：出样申请单 --add by zhawj 20100407*/
   DTBAB041            INTEGER,                                   /*备用字段 --add by zhawj 20100407*/
   DTBAB042            INTEGER,                                   /*备用字段 --add by zhawj 20100407*/
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_DTBAB primary key (DTBAB_ID)                               
);                                           
create unique index AK_TB_DTBAB on TB_DTBAB (DTBAB_ID,DTBAB004);               
create sequence SEQ_TB_DTBAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBAB to public;                                     
grant index  on TB_DTBAB to public;                                     
grant update on TB_DTBAB to public;                                      
grant delete on TB_DTBAB to public;                                       
grant insert on TB_DTBAB to public;                                      
grant select on SEQ_TB_DTBAB to public;                                        