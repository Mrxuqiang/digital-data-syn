/*
================================================================================
表结构代码:TB_PURHB
表结构名称:补件申请单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURHB;
drop index AK_TB_PURHB;
drop table TB_PURHB;
create table TB_PURHB  (
   PURHB_ID          INTEGER                                not null,       /*商品明细ID       */   
   PURHB001          INTEGER                                not null,       /*申请单ID         */   
   PURHB002          INTEGER                                not null,       /*商品编码         */   
   PURHB003          INTEGER,                                               /*维度1            */   
   PURHB004          INTEGER,                                               /*维度2            */   
   PURHB005          INTEGER,                                               /*维度3            */   
   PURHB006          INTEGER,                                               /*维度4            */   
   PURHB007          INTEGER,                                               /*维度5            */   
   PURHB008          INTEGER                                not null,       /*申请单位         */   
   PURHB009          NUMBER(18,3)                           not null,       /*申请量           */   
   PURHB010          NUMBER(18,3),                                          /*采购量           */  
   PURHB011          INTEGER                                not null,       /*供应商           */   
   PURHB012          VARCHAR2(1)                            not null,       /*经营方式         */   
   PURHB013          VARCHAR2(1)                            not null,       /*采配方式         */   
   PURHB014          VARCHAR2(1)                            not null,       /*商品服务属性     */   
   PURHB015          INTEGER                                not null,       /*申请原因         */   
   PURHB016          DATE,                                                  /*预交货日         */   
   PURHB017          NUMBER(12,2)                           not null,       /*单位换算率       */   
   PURHB018          VARCHAR2(255),                                         /*备注             */ 
   PURHB019          VARCHAR2(1)                            not null,       /*结束码           */
   PURHB020          INTEGER                                not null,       /*所属主件商品ID   */ 
   PURHB021          NUMBER(12,2)                                           /*要货量           */ 
   PURHB022          NUMBER(12,2)                                           /*税前单价         */   
   PURHB023          NUMBER(12,2)                                           /*含税单价         */   
   PURHB024          INTEGER                                                /*税种             */   
   PURHB025          NUMBER(12,2)                                           /*税率             */   
   PURHB026          NUMBER(12,2)                                           /*税前金额         */   
   PURHB027          NUMBER(12,2)                                           /*含税金额         */                        
   CREATE_USER       VARCHAR2(12),                                          /*建立人员         */
   USER_GROUP        VARCHAR2(12),                                          /*建立人员部门     */                               
   CREATE_DATE       DATE,                                                  /*建立日期         */
   MODIFIER          VARCHAR2(12),                                          /*修改人员         */
   MODI_DATE         DATE,                                                  /*修改日期         */
   FLAG              NUMBER(1),                                             /*资料状态         */
   constraint PK_TB_PURHB primary key (PURHB_ID)
);
create unique index AK_TB_PURHB on TB_PURHB (PURHB_ID,PURHB001,PURHB004);
create sequence SEQ_TB_PURHB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURHB to public;
grant index  on TB_PURHB to public;
grant update on TB_PURHB to public; 
grant delete on TB_PURHB to public;  
grant insert on TB_PURHB to public; 
grant select on SEQ_TB_PURHB to public;   