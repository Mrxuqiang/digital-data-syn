/*
================================================================================
表结构代码:TB_BILIA
表结构名称:成本代销对账单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILIA;
drop index AK_TB_BILIA;
drop table TB_BILIA;
create table TB_BILIA  (
   BILIA_ID             INTEGER                     not null,       /*成本代销对账单ID       */    
   BILIA001             VARCHAR2(1)                 not null,       /*对账类型           */    
   BILIA002             INTEGER                     not null,       /*对账单别           */    
   BILIA003             VARCHAR2(30)                not null,       /*对账单号           */    
   BILIA004             INTEGER                     not null,       /*对账营运组织       */    
   BILIA005             INTEGER                     not null,       /*供应商             */    
   BILIA006             VARCHAR2(30)                not null,       /*合同编号           */    
   BILIA007             DATE                        not null,       /*结算开始日期       */    
   BILIA008             DATE                        not null,       /*结算截止日期       */ 
   BILIA009             VARCHAR2(1)                 not null,       /*保底周期▼        */  
   BILIA010             INTEGER                     not null,       /*保底期数          */  
   BILIA011             DATE                        not null,       /*保底开始日期      */  
   BILIA012             DATE                        not null,       /*保底结束日期      */  
   BILIA013             NUMBER(12,2)                not null,       /*保底金额          */  
   BILIA014             NUMBER(12,2)                not null,       /*保底扣率          */  
   BILIA015             NUMBER(12,2)                not null,       /*保底周期净销售额  */  
   BILIA016             DATE                        not null,       /*补立暂估日期★    */  
   BILIA017             INTEGER                                     /*保底费用单号      */     
   BILIA018             VARCHAR2(1),                                /*审核状态           */    
   BILIA019             INTEGER,                                    /*录入人             */    
   BILIA020             DATE,                                       /*录入日期           */    
   BILIA021             INTEGER,                                    /*审核人             */    
   BILIA022             DATE,                                       /*审核日期           */    
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_BILIA primary key (BILIA_ID)
);
create unique index AK_TB_BILIA on TB_BILIA (BILIA002,BILIA003);
create sequence SEQ_TB_BILIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILIA to public;
grant index  on TB_BILIA to public;
grant update on TB_BILIA to public; 
grant delete on TB_BILIA to public;  
grant insert on TB_BILIA to public; 
grant select on SEQ_TB_BILIA to public;   