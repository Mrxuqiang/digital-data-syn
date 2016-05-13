/*
================================================================================
表结构代码:TB_INVFO
表结构名称:盘点损溢二级明细子表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_INVFO;
drop index AK_TB_INVFO;
drop table TB_INVFO;
create table TB_INVFO  (
   INVFO_ID         INTEGER                  not null,      /*盘点损溢二级明细ID */  
   INVFO001         INTEGER                  not null,      /*盘点损溢明细单ID   */
   INVFO002         INTEGER                  not null,      /*货位               */ 
   INVFO003         VARCHAR2(64)             not null,      /*商品条码           */ 
   INVFO004         NUMBER(12,2)             not null,      /*损溢量             */
   CREATE_USER      VARCHAR2(12),                           /*建立人员           */
   USER_GROUP       VARCHAR2(12),                           /*建立人员部门       */                               
   CREATE_DATE      DATE,                                   /*建立日期           */
   MODIFIER         VARCHAR2(12),                           /*修改人员           */
   MODI_DATE        DATE,                                   /*修改日期           */
   FLAG             NUMBER(1),                              /*资料状态           */
   constraint PK_TB_INVFO primary key (INVFO_ID)
);
create sequence SEQ_TB_INVFO minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFO to public;
grant index  on TB_INVFO to public;
grant update on TB_INVFO to public; 
grant delete on TB_INVFO to public;  
grant insert on TB_INVFO to public; 
grant select on SEQ_TB_INVFO to public;   