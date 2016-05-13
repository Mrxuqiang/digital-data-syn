/*
================================================================================
表结构代码:TB_BILHC
表结构名称:经销对账单费用子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILHC;
drop index AK_TB_BILHC;
drop table TB_BILHC;
create table TB_BILHC  (
   BILHC_ID        INTEGER                             not null,     /*费用明细ID           */           
   BILHC001        INTEGER                             not null,     /*对账单ID             */           
   BILHC002        VARCHAR2(1)                         not null,     /*费用类型             */   01.一般费用；02。租金；3。质量保证金        
   BILHC003        INTEGER                             not null,     /*费用编码             */           
   BILHC004        VARCHAR2(30)                        not null,     /*费用名称             */           
   BILHC005        NUMBER(12,2)                        not null,     /*费用金额             */           
   BILHC006        NUMBER(12,2)                        not null,     /*已结金额             */           
   BILHC007        NUMBER(12,2)                        not null,     /*未结金额             */           
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_BILHC primary key (BILHC_ID)
);
create unique index AK_TB_BILHC on TB_BILHC (BILHC003);
create sequence SEQ_TB_BILHC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHC to public;
grant index  on TB_BILHC to public;
grant update on TB_BILHC to public; 
grant delete on TB_BILHC to public;  
grant insert on TB_BILHC to public; 
grant select on SEQ_TB_BILHC to public;   