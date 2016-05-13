/*
================================================================================
表结构代码:TB_PURIA
表结构名称:采购申请单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PURIA;
drop index AK_TB_PURIA;
drop table TB_PURIA;
create table TB_PURIA  (
   PURIA_ID           INTEGER              not null,      /*采购申请单ID        */
   PURIA001           INTEGER              not null,      /*采购申请单别        */
   PURIA002           VARCHAR2(30)         not null,      /*申请单号            */
   PURIA003           DATE                 not null,      /*申请日期            */
   PURIA004           INTEGER              not null,      /*申请营运组织        */
   PURIA005           INTEGER              not null,      /*申请部门            */
   PURIA006           INTEGER              not null,      /*申请员              */
   PURIA007           INTEGER,                            /*收货营运组织        */
   PURIA008           VARCHAR2(255),                      /*送货地址            */
   PURIA009           DATE,                               /*预交货日期          */ 
   PURIA010           VARCHAR2(255),                      /*备注                */
   PURIA011           VARCHAR2(1)          not null,      /*审核状态            */
   PURIA012           INTEGER,                            /*录入人              */
   PURIA013           DATE,                               /*录入日期            */
   PURIA014           INTEGER,                            /*审核人              */
   PURIA015           DATE,                               /*审核日期            */
   CREATE_USER        VARCHAR2(12),                       /*建立人员            */
   USER_GROUP         VARCHAR2(12),                       /*建立人员部门        */                               
   CREATE_DATE        DATE,                               /*建立日期            */
   MODIFIER           VARCHAR2(12),                       /*修改人员            */
   MODI_DATE          DATE,                               /*修改日期            */
   FLAG               NUMBER(1),                          /*资料状态            */
   constraint PK_TB_PURIA primary key (PURIA_ID)
);
create unique index AK_TB_PURIA on TB_PURIA (PURIA_ID,PURIA001, PURIA002);
create sequence SEQ_TB_PURIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PURIA to public;
grant index  on TB_PURIA to public;
grant update on TB_PURIA to public; 
grant delete on TB_PURIA to public;  
grant insert on TB_PURIA to public; 
grant select on SEQ_TB_PURIA to public;   

