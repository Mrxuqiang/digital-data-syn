/*
================================================================================
表结构代码:TB_INVBE
表结构名称:调拨到货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVBE;
drop index AK_TB_INVBE;
drop table TB_INVBE;
create table TB_INVBE  (                                       
   INVBE_ID           INTEGER                                 not null,      /*调拨出库单ID  */
   INVBE001           DATE                                    not null,      /*单据日期      */
   INVBE002           INTEGER                                 not null,      /*调拨到货单别  */
   INVBE003           VARCHAR2(30)                            not null,      /*调拨到货单号  */
   INVBE004           DATE                                    not null,      /*收货日期      */
   INVBE005           INTEGER                                         ,      /*调拨发货单号      */
   INVBE006           INTEGER                                 not null,      /*拨出营运组织  */  发货
   INVBE007           INTEGER                                 not null,      /*拨入营运组织  */  收货
   INVBE008           INTEGER                                 not null,      /*发货人员      */
   INVBE009           INTEGER                                         ,      /*收货人员      */
   INVBE010           VARCHAR2(1)                                     ,      /*备用         */--modif null 20100803指定采购 to 备用
   INVBE011           INTEGER,                                               /*仓库          */
   INVBE012           VARCHAR2(255),                                         /*收货地址      */
   INVBE013           VARCHAR2(255),                                         /*备注          */
   INVBE014           VARCHAR2(1)                                            /*审核状态      */
   INVBE015           INTEGER,                                               /*录入人        */
   INVBE016           DATE,                                                  /*录入日期      */
   INVBE017           INTEGER,                                               /*审核人        */
   INVBE018           DATE,                                                  /*审核日期      */
   INVBE019           NUMBER(18,3),                                          /*费用 add by hansf 20110114 */
   CREATE_USER        VARCHAR2(12),                                          /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                          /*建立人员部门    */             
   CREATE_DATE        DATE,                                                  /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                          /*修改人员        */             
   MODI_DATE          DATE,                                                  /*修改日期        */             
   FLAG               NUMBER(1),                                             /*资料状态        */            
  constraint PK_TB_INVBE primary key (INVBE_ID)                               
);                                           
create sequence SEQ_TB_INVBE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVBE to public;                                     
grant index  on TB_INVBE to public;                                     
grant update on TB_INVBE to public;                                      
grant delete on TB_INVBE to public;                                       
grant insert on TB_INVBE to public;                                      
grant select on SEQ_TB_INVBE to public;                                        