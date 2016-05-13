/*
================================================================================
表结构代码:TB_PURDD
表结构名称:采购订单作废单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURDD;
drop index AK_TB_PURDD;
drop table TB_PURDD;
create table TB_PURDD  (
   PURDD_ID           INTEGER              not null,      /*采购作废单ID        */
   PURDD001           INTEGER              not null,      /*采购作废单别        */
   PURDD002           VARCHAR2(30)         not null,      /*采购作废单号        */
   PURDD003           DATE                 not null,      /*单据日期            */
   PURDD004           INTEGER              not null,      /*作废营运组织        */
   PURDD005           INTEGER              not null,      /*作废部门            */
   PURDD006           INTEGER              not null,      /*作废人员            */
   PURDD007           INTEGER              not null,      /*供应商              */                                                 
   PURDD008           INTEGER                      ,      /*作废原因ID          */                                                 
   PURDD009           VARCHAR2(255)         not null,      /*作废原因            */--20110120 mark by xiechun
   PURDD010           VARCHAR2(1)          not null,      /*审核状态            */
   PURDD011           INTEGER,                            /*录入人              */
   PURDD012           DATE,                               /*录入日期            */
   PURDD013           INTEGER,                            /*审核人              */
   PURDD014           DATE,                               /*审核日期            */
   PURDD015           INTEGER             not null,       /*采购订单ID          */--20110211 add by xiechun
   PURDD016           VARCHAR2(1)         not null,       /*来源单据类型        */--1.采购订单2.销退单
   PURDD017           VARCHAR2(30)        not null,       /*来源单号            */--20111105 add by xiechun
   PURDD018           INTEGER ,                           /*来源单ID            */--20111105 add by xiechun
  CREATE_USER        VARCHAR2(12),                        /*建立人员            */
   USER_GROUP         VARCHAR2(12),                       /*建立人员部门        */                               
   CREATE_DATE        DATE,                               /*建立日期            */
   MODIFIER           VARCHAR2(12),                       /*修改人员            */
   MODI_DATE          DATE,                               /*修改日期            */
   FLAG               NUMBER ,                            /*资料状态            */
   constraint PK_TB_PURDD primary key (PURDD_ID)
);
create unique index AK_TB_PURDD on TB_PURDD (PURDD002, PURDD004,FLAG);
create sequence SEQ_TB_PURDD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURDD to public;
grant index  on TB_PURDD to public;
grant update on TB_PURDD to public; 
grant delete on TB_PURDD to public;  
grant insert on TB_PURDD to public; 
grant select on SEQ_TB_PURDD to public;   

