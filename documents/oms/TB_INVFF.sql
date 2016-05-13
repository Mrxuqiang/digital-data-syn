/*
================================================================================
表结构代码:TB_INVFF
表结构名称:盘点对比日志表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFF;
drop index AK_TB_INVFF;
drop table TB_INVFF;
create table TB_INVFF  (
   INVFF_ID         INTEGER                             not null,      /*对比日志ID       */                                                                                   
   INVFF001         INTEGER                             not null,      /*盘点单ID         */                                                                                     
   INVFF002         VARCHAR2(4)                         not null,      /*当前版本号       */                                                                                      
   INVFF003         VARCHAR2(4)                         not null,      /*对比版本号       */                                                                                      
   INVFF004         INTEGER                             not null,      /*库位             */                                                                                      
   INVFF005         INTEGER                             not null,      /*商品编码         */                                                                                      
   INVFF006         INTEGER,                                           /*维度1            */                                                                                      
   INVFF007         INTEGER,                                           /*维度2            */                                                                                      
   INVFF008         INTEGER,                                           /*维度3            */                                                                                      
   INVFF009         INTEGER,                                           /*维度4            */                                                                                      
   INVFF010         INTEGER,                                           /*维度5            */                                                                                      
   INVFF011         INTEGER                             not null,      /*单位             */                                                                                     
   INVFF012         NUMBER(12,2)                        not null,      /*实盘量           */                                                                                     
   INVFF013         NUMBER(12,2)                        not null,      /*对比实盘量       */                                                                                      
   INVFF014         NUMBER(12,2)                        not null,      /*差异量           */    
   CREATE_USER      VARCHAR2(12),                                      /*建立人员         */
   USER_GROUP       VARCHAR2(12),                                      /*建立人员部门     */                               
   CREATE_DATE      DATE,                                              /*建立日期         */
   MODIFIER         VARCHAR2(12),                                      /*修改人员         */
   MODI_DATE        DATE,                                              /*修改日期         */
   FLAG             NUMBER(1),                                         /*资料状态         */
   constraint PK_TB_INVFF primary key (INVFF_ID)
);
create unique index AK_TB_INVFF on TB_INVFF (INVFF001,INVFF002,INVFF003,INVFF004,INVFF005,INVFF006,INVFF007,INVFF008,INVFF009,INVFF010);
create sequence SEQ_TB_INVFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFF to public;
grant index  on TB_INVFF to public;
grant update on TB_INVFF to public; 
grant delete on TB_INVFF to public;  
grant insert on TB_INVFF to public; 
grant select on SEQ_TB_INVFF to public;   