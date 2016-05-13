/*
================================================================================
表结构代码:TB_BILIC
表结构名称:成本代销对账单费用子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILIC;
drop index AK_TB_BILIC;
drop table TB_BILIC;
create table TB_BILIC  (
   BILIC_ID        INTEGER                             not null,     /*费用明细ID           */           
   BILIC001        INTEGER                             not null,     /*对账单ID             */           
   BILIC002        VARCHAR2(1)                         not null,     /*费用类型             */           
   BILIC003        INTEGER                             not null,     /*费用编码             */           
   BILIC004        VARCHAR2(30)                        not null,     /*费用名称             */           
   BILIC005        NUMBER(12,2)                        not null,     /*费用金额             */           
   BILIC006        NUMBER(12,2)                        not null,     /*已结金额             */           
   BILIC007        NUMBER(12,2)                        not null,     /*未结金额             */           
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_BILIC primary key (BILIC_ID)
);
create unique index AK_TB_BILIC on TB_BILIC (BILIC003);
create sequence SEQ_TB_BILIC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIC to public;
grant index  on TB_BILIC to public;
grant update on TB_BILIC to public; 
grant delete on TB_BILIC to public;  
grant insert on TB_BILIC to public; 
grant select on SEQ_TB_BILIC to public;   