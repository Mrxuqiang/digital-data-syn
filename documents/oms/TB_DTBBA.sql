/*
================================================================================
表结构代码:TB_DTBBA
表结构名称:配退出货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBBA;
drop index AK_TB_DTBBA;
drop table TB_DTBBA;
create table TB_DTBBA  (                                       
   DTBBA_ID           INTEGER                                  not null,     /*配退出库单ID  */
   DTBBA001           VARCHAR2(1)                              not null,     /*异动类型      */
   DTBBA002           INTEGER                                  not null,     /*配退发货单别  */
   DTBBA003           VARCHAR2(30)                             not null,     /*配退发货单号  */
   DTBBA004           DATE                                     not null,     /*发货日期      */
   DTBBA005           INTEGER                                  not null,     /*发货营运组织  */
   DTBBA006           INTEGER                                  not null,     /*收货营运组织  */
   DTBBA007           INTEGER ,                                              /*发货人员      */
   DTBBA008           INTEGER,                                               /*收货人员      */
   DTBBA009           VARCHAR2(255),                                         /*收货地址      */
   DTBBA010           DATE,                                                  /*到货日期      */
   DTBBA011           VARCHAR2(255),                                         /*备注          */
   DTBBA012           VARCHAR2(1)                              not null,     /*审核状态      */
   DTBBA013           INTEGER,                                               /*录入人        */
   DTBBA014           DATE,                                                  /*录入日期      */
   DTBBA015           INTEGER,                                               /*审核人        */
   DTBBA016           DATE,                                                  /*审核日期      */
   DTBBA017           INTEGER,                                               /*配送发货单ID       */
   DTBBA018           VARCHAR2(1)                              ,     /*跟踪状态     */--1 未处理 2 已排车 3 已送货 4 完成
   CREATE_USER        VARCHAR2(12),                                          /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                          /*建立人员部门    */             
   CREATE_DATE        DATE,                                                  /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                          /*修改人员        */             
   MODI_DATE          DATE,                                                  /*修改日期        */             
   FLAG               NUMBER(1),                                             /*资料状态        */            


  constraint PK_TB_DTBBA primary key (DTBBA_ID)                               
);                                           
create unique index AK_TB_DTBBA on TB_DTBBA (DTBBA002,DTBBA003,DTBBA005);               
create sequence SEQ_TB_DTBBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBBA to public;                                     
grant index  on TB_DTBBA to public;                                     
grant update on TB_DTBBA to public;                                      
grant delete on TB_DTBBA to public;                                       
grant insert on TB_DTBBA to public;                                      
grant select on SEQ_TB_DTBBA to public;                                        