/*
================================================================================
表结构代码:TB_INVIB
表结构名称:出库单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVIB;
drop index AK_TB_INVIB;
drop table TB_INVIB;
create table TB_INVIB(
   INVIB_ID             INTEGER                      not null,     /*出库单明细ID              */  
   INVIB001             INTEGER                      not null,     /*出库单ID                  */  
   INVIB002             INTEGER,                                   /*来源门店单                */  
   INVIB003             VARCHAR2(1)		     not null,     /*来源类型  1.销售订单,2.销售单,3.配送发货单,4.配退发货单,5.销售退货单,6.调拨单,7.借出单                */  
   INVIB004             INTEGER                      not null,     /*来源单ID                  */  
   INVIB005             INTEGER                      not null,     /*来源单明细ID              */  
   INVIB006             VARCHAR2(30)                 not null,     /*来源单号                  */   
   INVIB007             INTEGER                      not null,     /*商品ID                    */  
   INVIB008             VARCHAR2(1)                  not null,     /*是否组装品                */
   INVIB009             VARCHAR2(1)                  not null,     /*是否成份                  */
   INVIB010             INTEGER,                                   /*维度1                     */  
   INVIB011             INTEGER,                                   /*维度2                     */  
   INVIB012             INTEGER,                                   /*维度3                     */  
   INVIB013             INTEGER,                                   /*维度4                     */  
   INVIB014             INTEGER,                                   /*维度5                     */  
   INVIB015             NUMBER(18,2)                 not null,     /*包装数                    */
   INVIB016             INTEGER                      not null,     /*出库仓库                  */  
   INVIB017             INTEGER                      not null,     /*出库库位                  */  
   INVIB018             INTEGER                      not null,     /*出库单位                  */  
   INVIB019             NUMBER(18,2),                              /*单位换算率                */
   INVIB020             NUMBER(18,2)                 not null,     /*出库量                    */  
   INVIB021             VARCHAR2(30),                              /*主批号                    */ 
   INVIB022             VARCHAR2(30),                              /*辅批号                    */ 
   INVIB023             INTEGER,                                   /*主商品ID                  */    
   CREATE_USER          VARCHAR2(12),                              /*建立人员                  */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门              */                            
   CREATE_DATE          DATE,                                      /*建立日期                  */
   MODIFIER             VARCHAR2(12),                              /*修改人员                  */
   MODI_DATE            DATE,                                      /*修改日期                  */
   FLAG                 NUMBER(1),                                 /*资料状态                  */
   constraint PK_TB_INVIB primary key (INVIB_ID)
);
create index AK_TB_INVIB on TB_INVIB (INVIB_ID,INVIB002,INVIB005);
create sequence SEQ_TB_INVIB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVIB to public;
grant index  on TB_INVIB to public;
grant update on TB_INVIB to public; 
grant delete on TB_INVIB to public;  
grant insert on TB_INVIB to public; 
grant select on SEQ_TB_INVIB to public;   