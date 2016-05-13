/*
================================================================================
表结构代码:TB_BILHF
表结构名称:经销对账单调价明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILHF;
drop index AK_TB_BILHF;
drop table TB_BILHF;
create table TB_BILHF  (
   BILHF_ID             INTEGER                           not null,   /*经销合同费用单据明细ID  */   
   BILHF001             INTEGER                           not null,   /*对账单ID                */   
   BILHF002             INTEGER                           not null,   /*费用明细ID              */   
   BILHF003             VARCHAR2(30)                      not null,   /*费用单号                */   
   BILHF004             INTEGER                           not null,   /*费用单明细ID            */   
   BILHF005             VARCHAR2(1)                       not null,   /*费用类型                */   
   BILHF006             INTEGER                           not null,   /*费用编码                */   
   BILHF007             VARCHAR2(30)                      not null,   /*费用名称                */   
   BILHF008             NUMBER(12,2)                      not null,   /*费用金额                */   
   BILHF009             NUMBER(12,2)                      not null,   /*已结金额                */   
   BILHF010             NUMBER(12,2)                      not null,   /*未结金额                */
   CREATE_USER          VARCHAR2(12),                                 /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门        */                               
   CREATE_DATE          DATE,                                         /*建立日期            */
   MODIFIER             VARCHAR2(12),                                 /*修改人员            */
   MODI_DATE            DATE,                                         /*修改日期            */
   FLAG                 NUMBER(1),                                    /*资料状态            */
   constraint PK_TB_BILHF primary key (BILHF_ID)
);
create unique index AK_TB_BILHF on TB_BILHF (BILHF003,BILHF005);
create sequence SEQ_TB_BILHF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHF to public;
grant index  on TB_BILHF to public;
grant update on TB_BILHF to public; 
grant delete on TB_BILHF to public;  
grant insert on TB_BILHF to public; 
grant select on SEQ_TB_BILHF to public;   