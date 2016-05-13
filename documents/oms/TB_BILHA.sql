/*
================================================================================
表结构代码:TB_BILHA
表结构名称:经销对账单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILHA;
drop index AK_TB_BILHA;
drop table TB_BILHA;
create table TB_BILHA  (
   BILHA_ID             INTEGER                     not null,       /*经销对账单ID       */    
   BILHA001             VARCHAR2(1)                 not null,       /*对账类型           */    
   BILHA002             INTEGER                     not null,       /*对账单别           */    
   BILHA003             VARCHAR2(30)                not null,       /*对账单号           */    
   BILHA004             INTEGER                     not null,       /*对账营运组织       */    
   BILHA005             INTEGER                     not null,       /*供应商             */    
   BILHA006             VARCHAR2(30)                not null,       /*合同编号           */    
   BILHA007             DATE                        not null,       /*结算开始日期       */    
   BILHA008             DATE                        not null,       /*结算截止日期       */    
   BILHA009             VARCHAR2(1),                                /*审核状态           */    
   BILHA010             INTEGER,                                    /*录入人             */    
   BILHA011             DATE,                                       /*录入日期           */    
   BILHA012             INTEGER,                                    /*审核人             */    
   BILHA013             DATE,                                       /*审核日期           */    
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_BILHA primary key (BILHA_ID)
);
create unique index AK_TB_BILHA on TB_BILHA (BILHA002,BILHA003);
create sequence SEQ_TB_BILHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILHA to public;
grant index  on TB_BILHA to public;
grant update on TB_BILHA to public; 
grant delete on TB_BILHA to public;  
grant insert on TB_BILHA to public; 
grant select on SEQ_TB_BILHA to public;   