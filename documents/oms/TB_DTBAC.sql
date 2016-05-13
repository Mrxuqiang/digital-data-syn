/*
================================================================================
表结构代码:TB_DTBAC
表结构名称:配送到货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBAC;
drop index AK_TB_DTBAC;
drop table TB_DTBAC;
create table TB_DTBAC  (                                       
   DTBAC_ID           INTEGER                                 not null,      /*配送出库单ID  */
   DTBAC001           NUMBER(1)                               not null,      /*异动类型      */
   DTBAC002           INTEGER                                 not null,      /*配送发货单别  */
   DTBAC003           VARCHAR2(30)                            not null,      /*配送收货单号  */
   DTBAC004           DATE                                    not null,      /*收货日期      */
   DTBAC005           INTEGER                                 not null,      /*来源单号      */
   DTBAC006           INTEGER                                 not null,      /*发货营运组织  */
   DTBAC007           INTEGER                                 not null,      /*收货营运组织  */
   DTBAC008           INTEGER                                 not null,      /*发货人员      */
   DTBAC009           INTEGER                                 not null,      /*收货人员      */
   DTBAC010           VARCHAR2(1)                             not null,      /*指定采购      */
   DTBAC011           INTEGER,                                               /*销售单号      */
   DTBAC012           VARCHAR2(255),                                         /*收货地址      */
   DTBAC013           VARCHAR2(255),                                         /*备注          */
   DTBAC014           VARCHAR2(1)                                            /*审核状态      */
   DTBAC015           INTEGER,                                               /*录入人        */
   DTBAC016           DATE,                                                  /*录入日期      */
   DTBAC017           INTEGER,                                               /*审核人        */
   DTBAC018           DATE,                                                  /*审核日期      */
   CREATE_USER        VARCHAR2(12),                                          /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                          /*建立人员部门    */             
   CREATE_DATE        DATE,                                                  /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                          /*修改人员        */             
   MODI_DATE          DATE,                                                  /*修改日期        */             
   FLAG               NUMBER(1),                                             /*资料状态        */            


  constraint PK_TB_DTBAC primary key (DTBAC_ID)                               
);                                           
create unique index AK_TB_DTBAC on TB_DTBAC (DTBAC002,DTBAC003);               
create sequence SEQ_TB_DTBAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBAC to public;                                     
grant index  on TB_DTBAC to public;                                     
grant update on TB_DTBAC to public;                                      
grant delete on TB_DTBAC to public;                                       
grant insert on TB_DTBAC to public;                                      
grant select on SEQ_TB_DTBAC to public;                                        