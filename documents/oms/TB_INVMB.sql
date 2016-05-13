/*
================================================================================
表结构代码:TB_INVMB
表结构名称:库存镜像表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVMB;
drop index AK_TB_INVMB;
drop table TB_INVMB;
create table TB_INVMB  (
   INVMB_ID         INTEGER                  not null,      /*镜像ID             */  
   INVMB001         INTEGER                  not null,      /*仓库ID             */
   INVMB002         INTEGER                          ,      /*库位               */
   INVMB003         VARCHAR2(1)              not null,      /*商品服务属性       */
   INVMB004         VARCHAR2(1)              not null,      /*销售属性           */
   INVMB005         INTEGER                  not null,      /*商品编码           */
   INVMB006         INTEGER                  not null,      /*供应商             */ 
   INVMB007         INTEGER,                                /*维度1              */
   INVMB008         INTEGER,                                /*维度2              */
   INVMB009         INTEGER,                                /*维度3              */
   INVMB010         INTEGER,                                /*维度4              */
   INVMB011         INTEGER,                                /*维度5              */   
   INVMB012         INTEGER                  not null,      /*单位               */
   INVMB013         NUMBER(12,2)             not null,      /*账面量             */
   INVMB014         VARCHAR2(255),                          /*备注               */
   INVMB015         INTEGER                  not null,      /*盘点计划ID         */ 
   CREATE_USER      VARCHAR2(12),                           /*建立人员           */
   USER_GROUP       VARCHAR2(12),                           /*建立人员部门       */                               
   CREATE_DATE      DATE,                                   /*建立日期           */
   MODIFIER         VARCHAR2(12),                           /*修改人员           */
   MODI_DATE        DATE,                                   /*修改日期           */
   FLAG             NUMBER(1),                              /*资料状态           */
   constraint PK_TB_INVMB primary key (INVMB_ID)
);

create sequence SEQ_TB_INVMB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVMB to public;
grant index  on TB_INVMB to public;
grant update on TB_INVMB to public; 
grant delete on TB_INVMB to public;  
grant insert on TB_INVMB to public; 
grant select on SEQ_TB_INVMB to public;   