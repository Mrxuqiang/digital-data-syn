/*
================================================================================
表结构代码:TB_INVFL
表结构名称:盘点差异子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFL;
drop index AK_TB_INVFL;
drop table TB_INVFL;
create table TB_INVFL  (
   INVFL_ID         INTEGER                  not null,      /*盘点差异单明细ID   */  
   INVFL001         INTEGER                  not null,      /*盘点差异单ID       */
   INVFL002         INTEGER                  not null,      /*货位               */
   INVFL003         INTEGER                  not null,      /*商品编码           */
   INVFL004         INTEGER,                                /*维度1              */
   INVFL005         INTEGER,                                /*维度2              */
   INVFL006         INTEGER,                                /*维度3              */
   INVFL007         INTEGER,                                /*维度4              */
   INVFL008         INTEGER,                                /*维度5              */   
   INVFL009         INTEGER                  not null,      /*单位               */
   INVFL010         NUMBER(12,2)             not null,      /*账面量             */
   INVFL011         NUMBER(12,2)             not null,      /*实盘量             */
   INVFL012         NUMBER(12,2)             not null,      /*差异量             */
   INVFL013         VARCHAR2(255),                          /*备注               */
   CREATE_USER      VARCHAR2(12),                           /*建立人员           */
   USER_GROUP       VARCHAR2(12),                           /*建立人员部门       */                               
   CREATE_DATE      DATE,                                   /*建立日期           */
   MODIFIER         VARCHAR2(12),                           /*修改人员           */
   MODI_DATE        DATE,                                   /*修改日期           */
   FLAG             NUMBER(1),                              /*资料状态           */
   constraint PK_TB_INVFL primary key (INVFL_ID)
);
create unique index AK_TB_INVFL on TB_INVFL (INVFL002,INVFL003);
create sequence SEQ_TB_INVFL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFL to public;
grant index  on TB_INVFL to public;
grant update on TB_INVFL to public; 
grant delete on TB_INVFL to public;  
grant insert on TB_INVFL to public; 
grant select on SEQ_TB_INVFL to public;   