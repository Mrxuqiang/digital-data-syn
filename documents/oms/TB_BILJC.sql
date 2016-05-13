/*
================================================================================
表结构代码:TB_BILJC
表结构名称:扣率/联营对账单费用子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJC;
drop index AK_TB_BILJC;
drop table TB_BILJC;
create table TB_BILJC  (
   BILJC_ID        INTEGER                             not null,     /*费用明细ID           */           
   BILJC001        INTEGER                             not null,     /*对账单ID             */           
   BILJC002        VARCHAR2(1)                         not null,     /*费用类型             */           
   BILJC003        INTEGER                             not null,     /*费用编码             */           
   BILJC004        VARCHAR2(30)                        not null,     /*费用名称             */           
   BILJC005        NUMBER(12,2)                        not null,     /*费用金额             */           
   BILJC006        NUMBER(12,2)                        not null,     /*已结金额             */           
   BILJC007        NUMBER(12,2)                        not null,     /*未结金额             */           
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_BILJC primary key (BILJC_ID)
);
create unique index AK_TB_BILJC on TB_BILJC (BILJC003);
create sequence SEQ_TB_BILJC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJC to public;
grant index  on TB_BILJC to public;
grant update on TB_BILJC to public; 
grant delete on TB_BILJC to public;  
grant insert on TB_BILJC to public; 
grant select on SEQ_TB_BILJC to public;   