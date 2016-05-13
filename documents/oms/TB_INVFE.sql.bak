/*
================================================================================
表结构代码:TB_INVFE
表结构名称:盘点单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVFE;
drop index AK_TB_INVFE;
drop table TB_INVFE;
create table TB_INVFE  (
   INVFE_ID         INTEGER                      not null,      /*盘点单明细ID     */      
   INVFE001         INTEGER                      not null,      /*盘点单ID         */   
   INVFE002         INTEGER                      not null,      /*仓库             */      
   INVFE003         INTEGER                      not null,      /*货区             */      
   INVFE004         INTEGER                      not null,      /*货道             */         
   INVFE005         INTEGER                      not null,      /*货架             */
   INVFE006         INTEGER                      not null,      /*货位             */
   INVFE007         INTEGER，                                   /*商品条码         */      
   INVFE008         INTEGER                      not null,      /*商品编码         */      
   INVFE009         INTEGER                      not null,      /*品类             */      
   INVFE010         INTEGER                      not null,      /*品牌             */      
   INVFE011         INTEGER,                                    /*维度1            */      
   INVFE012         INTEGER,                                    /*维度2            */      
   INVFE013         INTEGER,                                    /*维度3            */      
   INVFE014         INTEGER,                                    /*维度4            */      
   INVFE015         INTEGER,                                    /*维度5            */      
   INVFE016         INTEGER,                     not null,      /*单位             */      
   INVFE017         NUMBER(12,2),                               /*实盘量           */    
   CREATE_USER      VARCHAR2(12),                               /*建立人员         */
   USER_GROUP       VARCHAR2(12),                               /*建立人员部门     */                               
   CREATE_DATE      DATE,                                       /*建立日期         */
   MODIFIER         VARCHAR2(12),                               /*修改人员         */
   MODI_DATE        DATE,                                       /*修改日期         */
   FLAG             NUMBER(1),                                  /*资料状态         */
   constraint PK_TB_INVFE primary key (INVFE_ID)
);
create unique index AK_TB_INVFE on TB_INVFE (INVFE001);
create sequence SEQ_TB_INVFE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVFE to public;
grant index  on TB_INVFE to public;
grant update on TB_INVFE to public; 
grant delete on TB_INVFE to public;  
grant insert on TB_INVFE to public; 
grant select on SEQ_TB_INVFE to public;   