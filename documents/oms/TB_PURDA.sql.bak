/*
================================================================================
表结构代码:TB_PURDA
表结构名称:采购订单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURDA;
drop index AK_TB_PURDA;
drop table TB_PURDA;
create table TB_PURDA  (
   PURDA_ID           INTEGER              not null,      /*采购单ID            */
   PURDA001           INTEGER              not null,      /*采购单别            */
   PURDA002           VARCHAR2(30)         not null,      /*采购单号            */
   PURDA003           DATE                 not null,      /*采购日期            */
   PURDA004           NUMBER(1)            not null,      /*单据来源       1.手工录入 2.自动补货3.要货单 4.要货汇总单  5.销售订单  6 补件申请单 defualt 1 其他类型由前置单据自动产生采购中默认 */
   PURDA005           VARCHAR2(30)         not null,      /*来源单号            */
   PURDA006           INTEGER              not null,      /*采购营运组织        */
   PURDA007           INTEGER              not null,      /*采购部门            */
   PURDA008           INTEGER              not null,      /*采购员              */
   PURDA009           INTEGER              not null,      /*供应商              */
   PURDA010           VARCHAR2(1)            not null,      /*经营方式            */ --mark 20100329
   PURDA011           VARCHAR2(1)            not null,      /*采配方式            */ --mark 20100329
   PURDA012           DATE                 not null,      /*交货日期            */
   PURDA013           DATE,                               /*终止日期            */--mark 20100329
   PURDA014           VARCHAR2(1)          not null,      /*指定采购            */ --MARK BY 20100328
   PURDA015           VARCHAR2(30),                       /*销售单号   */           --mark BY 20100328
   PURDA016           INTEGER,                            /*收货营运组织        */
   PURDA017           NUMBER(12,2),                       /*默认促销折扣        */--mark 20100329
   PURDA018           VARCHAR2(255),                      /*送货地址            */
   PURDA019           VARCHAR2(255),                      /*备注                */
   PURDA020           VARCHAR2(1)            not null,      /*审核状态            */
   PURDA021           INTEGER,                            /*录入人              */
   PURDA022           DATE,                               /*录入日期            */
   PURDA023           INTEGER,                            /*审核人              */
   PURDA024           DATE,                               /*审核日期            */
   PURDA025           INTEGER,                            /*来源单ID            */
   PURDA026           VARCHAR2(1),                            /*采购类型       1 商品 2 样品 3 赠品   4。补件  */ --MARK BY 20100328
   PURDA027           VARCHAR2(30),                            /*供应商单号 */ --  hansf   供应商发货的单号 mark by 201003028
   PURDA028           NUMBER(22,6)				/*定金比率*/
   PURDA029           INTEGER ,                                   /*仓库*/
   CREATE_USER        VARCHAR2(12),                       /*建立人员            */
   USER_GROUP         VARCHAR2(12),                       /*建立人员部门        */                               
   CREATE_DATE        DATE,                               /*建立日期            */
   MODIFIER           VARCHAR2(12),                       /*修改人员            */
   MODI_DATE          DATE,                               /*修改日期            */
   FLAG               NUMBER(1),                          /*资料状态            */
   constraint PK_TB_PURDA primary key (PURDA_ID)
);
create unique index AK_TB_PURDA on TB_PURDA (PURDA_ID,PURDA001, PURDA002);
create sequence SEQ_TB_PURDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURDA to public;
grant index  on TB_PURDA to public;
grant update on TB_PURDA to public; 
grant delete on TB_PURDA to public;  
grant insert on TB_PURDA to public; 
grant select on SEQ_TB_PURDA to public;   

