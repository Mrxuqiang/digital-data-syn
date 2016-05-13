/*
================================================================================
表结构代码:TB_DTBBC
表结构名称:配退到货单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DTBBC;
drop index AK_TB_DTBBC;
drop table TB_DTBBC;
create table TB_DTBBC  (                                       
   DTBBC_ID           INTEGER                                 not null,      /*配退出库单ID  */
   DTBBC001           NUMBER(1)                               not null,      /*异动类型      */
   DTBBC002           INTEGER                                 not null,      /*配退发货单别  */
   DTBBC003           VARCHAR2(30)                            not null,      /*配退发货单号  */
   DTBBC004           DATE                                    not null,      /*收货日期      */
   DTBBC005           INTEGER                                 not null,      /*来源单号      */
   DTBBC006           INTEGER                                 not null,      /*发货营运组织  */
   DTBBC007           INTEGER                                 not null,      /*收货营运组织  */
   DTBBC008           INTEGER                                 not null,      /*发货人员      */
   DTBBC009           INTEGER                                 not null,      /*收货人员      */
   DTBBC010           VARCHAR2(255),                                         /*收货地址      */
   DTBBC011           VARCHAR2(255),                                         /*备注          */
   DTBBC012           VARCHAR2(1),                                           /*审核状态      */
   DTBBC013           INTEGER,                                               /*录入人        */
   DTBBC014           DATE,                                                  /*录入日期      */
   DTBBC015           INTEGER,                                               /*审核人        */
   DTBBC016           DATE,                                                  /*审核日期      */
   CREATE_USER        VARCHAR2(12),                                          /*建立人员      */             
   USER_GROUP         VARCHAR2(12),                                          /*建立人员部门  */             
   CREATE_DATE        DATE,                                                  /*建立日期      */             
   MODIFIER           VARCHAR2(12),                                          /*修改人员      */             
   MODI_DATE          DATE,                                                  /*修改日期      */             
   FLAG               NUMBER(1),                                             /*资料状态      */            


  constraint PK_TB_DTBBC primary key (DTBBC_ID)                               
);                                           
create unique index AK_TB_DTBBC on TB_DTBBC (DTBBC002,DTBBC003,DTBBC007);               
create sequence SEQ_TB_DTBBC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DTBBC to public;                                     
grant index  on TB_DTBBC to public;                                     
grant update on TB_DTBBC to public;                                      
grant delete on TB_DTBBC to public;                                       
grant insert on TB_DTBBC to public;                                      
grant select on SEQ_TB_DTBBC to public;                                        