/*
================================================================================
表结构代码:TB_INVFH
表结构名称:盘点汇总单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFH;
drop index AK_TB_INVFH;
drop table TB_INVFH;
create table TB_INVFH  (
   INVFH_ID         INTEGER                  not null,      /*盘点汇总单明细ID   */  
   INVFH001         INTEGER                  not null,      /*盘点汇总单ID       */
   INVFH002         INTEGER                  not null,      /*货位               */
   INVFH003         INTEGER                  not null,      /*商品编码           */
   INVFH004         INTEGER,                                /*维度1              */
   INVFH005         INTEGER,                                /*维度2              */
   INVFH006         INTEGER,                                /*维度3              */
   INVFH007         INTEGER,                                /*维度4              */
   INVFH008         INTEGER,                                /*维度5              */   
   INVFH009         INTEGER                  not null,      /*单位               */
   INVFH010         NUMBER(12,2)             not null,      /*账面量             */
   INVFH011         NUMBER(12,2)             not null,      /*实盘量             */
   INVFH012         VARCHAR2(255),                          /*备注               */
   CREATE_USER      VARCHAR2(12),                           /*建立人员           */
   USER_GROUP       VARCHAR2(12),                           /*建立人员部门       */                               
   CREATE_DATE      DATE,                                   /*建立日期           */
   MODIFIER         VARCHAR2(12),                           /*修改人员           */
   MODI_DATE        DATE,                                   /*修改日期           */
   FLAG             NUMBER(1),                              /*资料状态           */
   constraint PK_TB_INVFH primary key (INVFH_ID)
);
create sequence SEQ_TB_INVFH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFH to public;
grant index  on TB_INVFH to public;
grant update on TB_INVFH to public; 
grant delete on TB_INVFH to public;  
grant insert on TB_INVFH to public; 
grant select on SEQ_TB_INVFH to public;   