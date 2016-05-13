/*
================================================================================
表结构代码:TB_INVAD
表结构名称:赠品退回单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVAD;
drop index AK_TB_INVAD;
drop table TB_INVAD;
create table TB_INVAD  (                                             
   INVAD_ID         INTEGER             not null,        /*退回明细ID   */                  
   INVAD001         INTEGER             not null,        /*退回单ID     */             
   INVAD002         INTEGER             not null,        /*来源单号ID   */             
   INVAD003         INTEGER             not null,        /*来源序号ID   */             
   INVAD004         INTEGER             not null,        /*商品编码     */             
   INVAD005         INTEGER,                             /*维度1        */             
   INVAD006         INTEGER,                             /*维度2        */             
   INVAD007         INTEGER,                             /*维度3        */             
   INVAD008         INTEGER,                             /*维度4        */             
   INVAD009         INTEGER,                             /*维度5        */             
   INVAD010         INTEGER             not null,        /*仓库         */             
   INVAD011         INTEGER             not null,        /*库位         */             
   INVAD012         VARCHAR2(30),                        /*主批号       */             
   INVAD013         VARCHAR2(30),                        /*辅批号       */             
   INVAD014         VARCHAR2(30),                        /*厂商批号     */             
   INVAD015         INTEGER             not null,        /*出库单位     */             
   INVAD016         NUMBER(18,3)        not null,        /*单位换算率   */             
   INVAD017         NUMBER(18,3)        not null,        /*退回量       */             
   INVAD018         NUMBER(12,2)        not null,        /*税前单价     */             
   INVAD019         NUMBER(12,2)        not null,        /*含税单价     */             
   INVAD020         INTEGER             not null,        /*税种         */             
   INVAD021         NUMBER(12,2)        not null,        /*税率         */             
   INVAD022         NUMBER(12,2)        not null,        /*税前金额     */             
   INVAD023         NUMBER(12,2)        not null,        /*含税金额         */       
   INVAD024         VARCHAR2(1)         not null,        /*商品服务属性     */       
   INVAD025         VARCHAR2(1)         not null,        /*物权属性         */       
   INVAD026         VARCHAR2(255)                        /*备注             */       
   CREATE_USER      VARCHAR2(12),                                /*建立人员           */             
   USER_GROUP       VARCHAR2(12),                                /*建立人员部门       */             
   CREATE_DATE      DATE,                                        /*建立日期           */             
   MODIFIER         VARCHAR2(12),                                /*修改人员           */             
   MODI_DATE        DATE,                                        /*修改日期           */             
   FLAG             NUMBER(1),                                   /*资料状态           */            


  constraint PK_TB_INVAD primary key (INVAD_ID)                               
);                                           
create unique index AK_TB_INVAD on TB_INVAD (INVAD_ID,INVAD002);               
create sequence SEQ_TB_INVAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVAD to public;                                     
grant index  on TB_INVAD to public;                                     
grant update on TB_INVAD to public;                                      
grant delete on TB_INVAD to public;                                       
grant insert on TB_INVAD to public;                                      
grant select on SEQ_TB_INVAD to public;                                        