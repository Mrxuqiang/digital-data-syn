/*
================================================================================
表结构代码:TB_DTBAD
表结构名称:配送到货单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBAD;
drop index AK_TB_DTBAD;
drop table TB_DTBAD;
create table TB_DTBAD  (                                       
   DTBAD_ID         INTEGER                not null,             /*配送明细ID         */
   DTBAD001         INTEGER                not null,             /*配送出库单ID       */
   DTBAD002         INTEGER,                                     /*来源单号ID         */
   DTBAD003         INTEGER,                                     /*来源单项次ID       */
   DTBAD004         INTEGER                not null,             /*商品编码           */
   DTBAD005         INTEGER,                                     /*维度1             */
   DTBAD006         INTEGER,                                     /*维度2             */
   DTBAD007         INTEGER,                                     /*维度3             */
   DTBAD008         INTEGER,                                     /*维度4             */
   DTBAD009         INTEGER,                                     /*维度5             */
   DTBAD010         INTEGER                not null,             /*仓库              */
   DTBAD011         INTEGER                not null,             /*库位              */
   DTBAD012         VARCHAR2(30)           not null,             /*主批号            */
   DTBAD013         VARCHAR2(30)           not null,             /*辅批号            */
   DTBAD014         VARCHAR2(30)           not null,             /*厂商批号          */
   DTBAD015         INTEGER                not null,             /*入库单位          */
   DTBAD016         NUMBER(18,3)           not null,             /*单位换算率        */
   DTBAD017         NUMBER(18,3)           not null,             /*发货量            */    
   DTBAD018         NUMBER(18,3)           not null,             /*收货量            */
   DTBAD019         NUMBER(18,3)           not null,             /*差异数量          */
   DTBAD020         NUMBER(12,2),                                /*税前单价          */
   DTBAD021         NUMBER(12,2),                                /*税前金额          */
   DTBAD022         NUMBER(12,2)           not null,             /*含税单价          */
   DTBAD023         NUMBER(12,2)           not null,             /*含税金额          */
   DTBAD024         INTEGER                not null,             /*税种              */
   DTBAD025         NUMBER(18,3)           not null,             /*税率              */
   DTBAD026         VARCHAR2(1)            not null,             /*商品服务属性      */
   DTBAD027         INTEGER                not null,             /*供应商            */
   DTBAD028         VARCHAR2(1)            not null,             /*经营方式          */
   DTBAD029         VARCHAR2(255),                                /*备注              */
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_DTBAD primary key (DTBAD_ID)                               
);                                           
create unique index AK_TB_DTBAD on TB_DTBAD (DTBAD_ID,DTBAD004);               
create sequence SEQ_TB_DTBAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBAD to public;                                     
grant index  on TB_DTBAD to public;                                     
grant update on TB_DTBAD to public;                                      
grant delete on TB_DTBAD to public;                                       
grant insert on TB_DTBAD to public;                                      
grant select on SEQ_TB_DTBAD to public;                                        