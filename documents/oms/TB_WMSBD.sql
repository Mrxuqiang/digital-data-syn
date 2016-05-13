/*
================================================================================
表结构代码:TB_WMSBD
表结构名称:维修通知单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_WMSBD;
drop index AK_TB_WMSBD;
drop table TB_WMSBD;
create table TB_WMSBD  (
   WMSBD_ID         INTEGER                  not null,            /*维修通知单明细ID       */      
   WMSBD001         INTEGER                  not null,            /*维修通知单ID         */      
   WMSBD002         VARCHAR2(1)              not null,            /*商品服务属性     */    
   WMSBD003         VARCHAR2(1)              not null,            /*销售属性         */      
   WMSBD004         INTEGER                  not null,            /*商品ID           */      
   WMSBD005         INTEGER,                                      /*维度1            */      
   WMSBD006         INTEGER,                                      /*维度2            */      
   WMSBD007         INTEGER,                                      /*维度3            */      
   WMSBD008         INTEGER,                                      /*维度4            */      
   WMSBD009         INTEGER,                                      /*维度5            */      
   WMSBD010         VARCHAR2(255),                                /*维修项描述       */     
   WMSBD011         INTEGER                  not null,            /*单位ID           */      
   WMSBD012         NUMBER(18),                                   /*维修数量         */      
   WMSBD013         NUMBER(18,3),                                 /*维修费用         */          
   WMSBD014         VARCHAR2(1),				  /*是否成分         */  
   WMSBD015         VARCHAR2(30),				  /*子套件对应关系随机码*/  
   WMSBD016         VARCHAR2(255),                                /*备注             */  
   WMSBD017         INTEGER,                                      /*主商品ID         */ 
   WMSBD018         VARCHAR2(1),                                  /*是否组装品         */ 
   CREATE_USER            VARCHAR2(12),                           /*建立人员         */
   USER_GROUP             VARCHAR2(12),                           /*建立人员部门     */                               
   CREATE_DATE            DATE,                                   /*建立日期         */
   MODIFIER               VARCHAR2(12),                           /*修改人员         */
   MODI_DATE              DATE,                                   /*修改日期         */
   FLAG                   NUMBER,                                 /*资料状态         */
   constraint PK_TB_WMSBD primary key (WMSBD_ID)
);
create sequence SEQ_TB_WMSBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_WMSBD to public;
grant index  on TB_WMSBD to public;
grant update on TB_WMSBD to public; 
grant delete on TB_WMSBD to public;  
grant insert on TB_WMSBD to public; 
grant select on SEQ_TB_WMSBD to public;   