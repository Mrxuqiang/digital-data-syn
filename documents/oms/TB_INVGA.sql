/*
================================================================================
表结构代码:TB_INVGA
表结构名称:库存镜像表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVGA;
drop index AK_TB_INVGA;
drop table TB_INVGA;
create table TB_INVGA  (
   INVGA_ID         INTEGER                  not null,      /*镜像ID             */  
   INVGA001         INTEGER                  not null,      /*仓库ID             */
   INVGA002         INTEGER                  not null,      /*库位               */
   INVGA003         INTEGER                  not null,      /*商品编码           */
   INVGA004         INTEGER                  not null,      /*供应商             */ 
   INVGA005         INTEGER,                                /*维度1              */
   INVGA006         INTEGER,                                /*维度2              */
   INVGA007         INTEGER,                                /*维度3              */
   INVGA008         INTEGER,                                /*维度4              */
   INVGA009         INTEGER,                                /*维度5              */   
   INVGA010         INTEGER                  not null,      /*单位               */
   INVGA011         NUMBER(12,2)             not null,      /*账面量             */
   INVGA012         VARCHAR2(255),                          /*备注               */
   INVGA013         INTEGER                  not null,      /*盘点计划ID         */ 
   CREATE_USER      VARCHAR2(12),                           /*建立人员           */
   USER_GROUP       VARCHAR2(12),                           /*建立人员部门       */                               
   CREATE_DATE      DATE,                                   /*建立日期           */
   MODIFIER         VARCHAR2(12),                           /*修改人员           */
   MODI_DATE        DATE,                                   /*修改日期           */
   FLAG             NUMBER(1),                              /*资料状态           */
   constraint PK_TB_INVGA primary key (INVGA_ID)
);
create unique index AK_TB_INVGA on TB_INVGA (INVGA001,INVGA002,INVGA003);
create sequence SEQ_TB_INVGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVGA to public;
grant index  on TB_INVGA to public;
grant update on TB_INVGA to public; 
grant delete on TB_INVGA to public;  
grant insert on TB_INVGA to public; 
grant select on SEQ_TB_INVGA to public;   