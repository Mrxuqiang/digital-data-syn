\/*
================================================================================
表结构代码:TB_DTBBB
表结构名称:配退出货单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBBB;
drop index AK_TB_DTBBB;
drop table TB_DTBBB;
create table TB_DTBBB  (                                       
   DTBBB_ID         INTEGER                not null,             /*配退出库明细ID   */
   DTBBB001         INTEGER                not null,             /*配退出库单ID     */
   DTBBB002         INTEGER                not null,             /*商品编码         */
   DTBBB003         INTEGER,                                     /*维度1            */
   DTBBB004         INTEGER,                                     /*维度2            */
   DTBBB005         INTEGER,                                     /*维度3            */
   DTBBB006         INTEGER,                                     /*维度4            */
   DTBBB007         INTEGER,                                     /*维度5            */
   DTBBB008         INTEGER                not null,             /*仓库             */
   DTBBB009         INTEGER                not null,             /*库位             */
   DTBBB010         VARCHAR2(30),                                /*主批号           */
   DTBBB011         VARCHAR2(30),                                /*辅批号           */
   DTBBB012         VARCHAR2(30),                                /*厂商批号         */
   DTBBB013         INTEGER                not null,             /*入库单位         */
   DTBBB014         NUMBER(18,3)           not null,             /*单位换算率       */
   DTBBB015         NUMBER(18,3)           not null,             /*发货量           */    
   DTBBB016         NUMBER(18,3)           not null,             /*收货量           */
   DTBBB017         NUMBER(18,3)           not null,             /*差异数量         */
   DTBBB018         NUMBER(12,2),                                /*税前单价         */
   DTBBB019         NUMBER(12,2),                                /*税前金额         */
   DTBBB020         NUMBER(12,2)           not null,             /*含税单价         */
   DTBBB021         NUMBER(12,2)           not null,             /*含税金额         */
   DTBBB022         INTEGER                not null,             /*税种             */
   DTBBB023         NUMBER(18,3)           not null,             /*税率             */
   DTBBB024         NUMBER(1)              not null,             /*商品服务属性     */
   DTBBB025         DATE,                                        /*预到货日         */
   DTBBB026         INTEGER,                                     /*供应商           */
   DTBBB027         NUMBER(1),                                   /*经营方式         */
   DTBBB028         VARCHAR2(255),                               /*备注             */
   CREATE_USER      VARCHAR2(12),                                /*建立人员         */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门     */             
   CREATE_DATE      DATE,                                        /*建立日期         */             
   MODIFIER         VARCHAR2(12),                                /*修改人员         */             
   MODI_DATE        DATE,                                        /*修改日期         */             
   FLAG             NUMBER(1),                                   /*资料状态         */            


  constraint PK_TB_DTBBB primary key (DTBBB_ID)                               
);                                           
create unique index AK_TB_DTBBB on TB_DTBBB (DTBBB_ID,DTBBB004);               
create sequence SEQ_TB_DTBBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBBB to public;                                     
grant index  on TB_DTBBB to public;                                     
grant update on TB_DTBBB to public;                                      
grant delete on TB_DTBBB to public;                                       
grant insert on TB_DTBBB to public;                                      
grant select on SEQ_TB_DTBBB to public;                                        