/*
================================================================================
表结构代码:TB_INVFN
表结构名称:盘点损溢明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFN;
drop index AK_TB_INVFN;
drop table TB_INVFN;
create table TB_INVFN  (
   INVFN_ID         INTEGER                  not null,      /*盘点损溢明细ID   */  
   INVFN001         INTEGER                  not null,      /*盘点损溢单ID       */
   INVFN002         INTEGER                  not null,      /*货位               */--2011 mark by xiechun
   INVFN003         INTEGER                  not null,      /*商品编码           */
   INVFN004         INTEGER,                                /*维度1              */
   INVFN005         INTEGER,                                /*维度2              */
   INVFN006         INTEGER,                                /*维度3              */
   INVFN007        INTEGER,                                 /*维度4              */
   INVFN008         INTEGER,                                /*维度5              */   
   INVFN009         INTEGER                  not null,      /*单位               */
   INVFN010         NUMBER(12,2)             not null,      /*损溢量             */
   INVFN011         VARCHAR2(255),                          /*备注               */
   CREATE_USER      VARCHAR2(12),                           /*建立人员           */
   USER_GROUP       VARCHAR2(12),                           /*建立人员部门       */                               
   CREATE_DATE      DATE,                                   /*建立日期           */
   MODIFIER         VARCHAR2(12),                           /*修改人员           */
   MODI_DATE        DATE,                                   /*修改日期           */
   FLAG             NUMBER(1),                              /*资料状态           */
   constraint PK_TB_INVFN primary key (INVFN_ID)
);
create sequence SEQ_TB_INVFN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFN to public;
grant index  on TB_INVFN to public;
grant update on TB_INVFN to public; 
grant delete on TB_INVFN to public;  
grant insert on TB_INVFN to public; 
grant select on SEQ_TB_INVFN to public;   