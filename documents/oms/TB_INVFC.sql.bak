/*
================================================================================
表结构代码:TB_INVFC
表结构名称:空白盘点明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFC;
drop index AK_TB_INVFC;
drop table TB_INVFC;
create table TB_INVFC  (
   INVFC_ID         INTEGER                     not null,              /*空白盘点表明细ID     */
   INVFC001         INTEGER                     not null,              /*空白盘点主表ID         */
   INVFC002         INTEGER                     not null,              /*库位             */
   INVFC003         INTEGER                     not null,              /*商品编码         */
   INVFC004         INTEGER,					             /*商品条码         */
   INVFC005         VARCHAR2(30)                not null,              /*商品名称         */
   INVFC006         INTEGER,                                           /*品类             */
   INVFC007         INTEGER,                                           /*品牌             */
   INVFC008         INTEGER,                                           /*维度1            */
   INVFC009         INTEGER,                                           /*维度2            */
   INVFC010         INTEGER,                                           /*维度3            */
   INVFC011         INTEGER,                                           /*维度4            */
   INVFC012         INTEGER,                                           /*维度5            */
   INVFC013         INTEGER,                    not null,              /*单位             */
   INVFC014         NUMBER(12,2),                                      /*实盘量           */
   CREATE_USER      VARCHAR2(12),                                      /*建立人员         */
   USER_GROUP       VARCHAR2(12),                                      /*建立人员部门     */                               
   CREATE_DATE      DATE,                                              /*建立日期         */
   MODIFIER         VARCHAR2(12),                                      /*修改人员         */
   MODI_DATE        DATE,                                              /*修改日期         */
   FLAG             NUMBER(1),                                         /*资料状态         */
   constraint PK_TB_INVFC primary key (INVFC_ID)
);
create unique index AK_TB_INVFC on TB_INVFC (INVFC002,INVFC003);
create sequence SEQ_TB_INVFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFC to public;
grant index  on TB_INVFC to public;
grant update on TB_INVFC to public; 
grant delete on TB_INVFC to public;  
grant insert on TB_INVFC to public; 
grant select on SEQ_TB_INVFC to public;   