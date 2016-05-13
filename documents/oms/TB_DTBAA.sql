/*
================================================================================
表结构代码:TB_DTBAA
表结构名称:配送出货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBAA;
drop index AK_TB_DTBAA;
drop table TB_DTBAA;
create table TB_DTBAA  (                                       
   DTBAA_ID           INTEGER                                  not null,     /*配送出库单ID    */
   DTBAA001           NUMBER(1)                                not null,     /*异动类型        */
   DTBAA002           INTEGER                                  not null,     /*配送发货单别    */
   DTBAA003           VARCHAR2(30)                             not null,     /*配送发货单号    */
   DTBAA004           DATE                                     not null,     /*发货日期        */
   DTBAA005           NUMBER(1)                                not null,     /*来源单据        */
   DTBAA006           VARCHAR2(30),                                          /*来源单号        */
   DTBAA007           INTEGER                                  not null,     /*发货营运组织    */
   DTBAA008           INTEGER                                  not null,     /*收货营运组织    */
   DTBAA009           INTEGER ,                                              /*发货人员        */
   DTBAA010           INTEGER,                                               /*收货人员        */
   DTBAA011           VARCHAR2(1),                                           /*指定采购        */
   DTBAA012          INTEGER,                                          /*销售单号        */
   DTBAA013           VARCHAR2(255),                                         /*收货地址        */
   DTBAA014           DATE,                                                  /*到货日期        */
   DTBAA015           VARCHAR2(30),                                          /*备注            */
   DTBAA016           VARCHAR2(1)                              not null,     /*审核状态        */
   DTBAA017           INTEGER,                                               /*录入人          */
   DTBAA018           DATE,                                                  /*录入日期        */
   DTBAA019           INTEGER,                                               /*审核人          */
   DTBAA020           DATE,                                                  /*审核日期        */
   DTBAA021           INTEGER,                                               /*来源单ID        */
   DTBAA022           INTEGER,                                               /*配退单ID        */
   DTBAA023           VARCHAR2(1)                            ,     /*跟踪状态 */ -- 1 未处理 2 已排车 3 已送货 4 完成
   DTBAA024           VARCHAR2(200),                                
   DTBAA025          VARCHAR2(200),
   DTBAA026          VARCHAR2(200),
   DTBAA027          VARCHAR2(200) 
   DTBAA028           INTEGER ,			             /* 排车次数*/   
   CREATE_USER        VARCHAR2(12),                                          /*建立人员        */             
   USER_GROUP         VARCHAR2(12),                                          /*建立人员部门    */             
   CREATE_DATE        DATE,                                                  /*建立日期        */             
   MODIFIER           VARCHAR2(12),                                          /*修改人员        */             
   MODI_DATE          DATE,                                                  /*修改日期        */             
   FLAG               NUMBER(1),                                             /*资料状态        */            


  constraint PK_TB_DTBAA primary key (DTBAA_ID)                               
);                                           
create unique index AK_TB_DTBAA on TB_DTBAA (DTBAA002,DTBAA003,DTBAA007);               
create sequence SEQ_TB_DTBAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBAA to public;                                     
grant index  on TB_DTBAA to public;                                     
grant update on TB_DTBAA to public;                                      
grant delete on TB_DTBAA to public;                                       
grant insert on TB_DTBAA to public;                                      
grant select on SEQ_TB_DTBAA to public;                                        