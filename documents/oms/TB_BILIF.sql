/*
================================================================================
表结构代码:TB_BILIF
表结构名称:成本代销对账单费用明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILIF;
drop index AK_TB_BILIF;
drop table TB_BILIF;
create table TB_BILIF  (
   BILIF_ID             INTEGER                           not null,   /*成本代销合同费用单据明细ID  */   
   BILIF001             INTEGER                           not null,   /*对账单ID                */   
   BILIF002             INTEGER                           not null,   /*费用明细ID              */   
   BILIF003             VARCHAR2(30)                      not null,   /*费用单号                */   
   BILIF004             INTEGER                           not null,   /*费用单明细ID            */   
   BILIF005             VARCHAR2(1)                       not null,   /*费用类型                */   
   BILIF006             INTEGER                           not null,   /*费用编码                */   
   BILIF007             VARCHAR2(30)                      not null,   /*费用名称                */   
   BILIF008             NUMBER(12,2)                      not null,   /*费用金额                */   
   BILIF009             NUMBER(12,2)                      not null,   /*已结金额                */   
   BILIF010             NUMBER(12,2)                      not null,   /*未结金额                */
   CREATE_USER          VARCHAR2(12),                                 /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门        */                               
   CREATE_DATE          DATE,                                         /*建立日期            */
   MODIFIER             VARCHAR2(12),                                 /*修改人员            */
   MODI_DATE            DATE,                                         /*修改日期            */
   FLAG                 NUMBER(1),                                    /*资料状态            */
   constraint PK_TB_BILIF primary key (BILIF_ID)
);
create unique index AK_TB_BILIF on TB_BILIF (BILIF003,BILIF005);
create sequence SEQ_TB_BILIF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIF to public;
grant index  on TB_BILIF to public;
grant update on TB_BILIF to public; 
grant delete on TB_BILIF to public;  
grant insert on TB_BILIF to public; 
grant select on SEQ_TB_BILIF to public;   