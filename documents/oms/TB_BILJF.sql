/*
================================================================================
表结构代码:TB_BILJF
表结构名称:扣率/联营对账单调价明细子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJF;
drop index AK_TB_BILJF;
drop table TB_BILJF;
create table TB_BILJF  (
   BILJF_ID             INTEGER                           not null,   /*扣率/联营合同费用单据明细ID  */   
   BILJF001             INTEGER                           not null,   /*对账单ID                */   
   BILJF002             INTEGER                           not null,   /*费用明细ID              */   
   BILJF003             VARCHAR2(30)                      not null,   /*费用单号                */   
   BILJF004             INTEGER                           not null,   /*费用单明细ID            */   
   BILJF005             VARCHAR2(1)                       not null,   /*费用类型                */   
   BILJF006             INTEGER                           not null,   /*费用编码                */   
   BILJF007             VARCHAR2(30)                      not null,   /*费用名称                */   
   BILJF008             NUMBER(12,2)                      not null,   /*费用金额                */   
   BILJF009             NUMBER(12,2)                      not null,   /*已结金额                */   
   BILJF010             NUMBER(12,2)                      not null,   /*未结金额                */
   CREATE_USER          VARCHAR2(12),                                 /*建立人员            */
   USER_GROUP           VARCHAR2(12),                                 /*建立人员部门        */                               
   CREATE_DATE          DATE,                                         /*建立日期            */
   MODIFIER             VARCHAR2(12),                                 /*修改人员            */
   MODI_DATE            DATE,                                         /*修改日期            */
   FLAG                 NUMBER(1),                                    /*资料状态            */
   constraint PK_TB_BILJF primary key (BILJF_ID)
);
create unique index AK_TB_BILJF on TB_BILJF (BILJF003,BILJF005);
create sequence SEQ_TB_BILJF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJF to public;
grant index  on TB_BILJF to public;
grant update on TB_BILJF to public; 
grant delete on TB_BILJF to public;  
grant insert on TB_BILJF to public; 
grant select on SEQ_TB_BILJF to public;   