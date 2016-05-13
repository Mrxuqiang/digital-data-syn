/*
================================================================================
表结构代码:TB_BILLA
表结构名称:设计师对账单主表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_BILLA;
drop index AK_TB_BILLA;
drop table TB_BILLA;
create table TB_BILLA  (
   BILLA_ID           INTEGER              not null,      /*设计师对账单ID      */
   BILLA001           INTEGER              not null,      /*对账单别            */
   BILLA002           VARCHAR2(30)         not null,      /*对账单号            */
   BILLA003           INTEGER              not null,      /*对账公司            */
   BILLA004           INTEGER              not null,      /*设计师ID            */
   BILLA005           INTEGER              not null,      /*合同编号            */
   BILLA006           DATE                 not null,      /*单据日期        */
   BILLA007           DATE                 not null,      /*开始结算日期        */
   BILLA008           DATE                 not null,      /*截止结算日期        */
   BILLA009           VARCHAR2(1)          not null,      /*审核状态            */
   BILLA010           INTEGER,                            /*录入人              */
   BILLA011           DATE,                               /*录入日期            */
   BILLA012           INTEGER,                            /*审核人              */
   BILLA013           DATE,                               /*审核日期            */
   BILLA014           VARCHAR2(255),                      /*备注                */
   BILLA015           NUMBER(12,2)          not null,     /*应付金额           */ 
   CREATE_USER        VARCHAR2(12),                       /*建立人员            */
   USER_GROUP         VARCHAR2(12),                       /*建立人员部门        */                               
   CREATE_DATE        DATE,                               /*建立日期            */
   MODIFIER           VARCHAR2(12),                       /*修改人员            */
   MODI_DATE          DATE,                               /*修改日期            */
   FLAG               NUMBER,                             /*资料状态            */
   constraint PK_TB_BILLA primary key (BILLA_ID)
);
create unique index AK_TB_BILLA on TB_BILLA (BILLA001,BILLA002,FLAG);
create sequence SEQ_TB_BILLA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILLA to public;
grant index  on TB_BILLA to public;
grant update on TB_BILLA to public; 
grant delete on TB_BILLA to public;  
grant insert on TB_BILLA to public; 
grant select on SEQ_TB_BILLA to public;   

