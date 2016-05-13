/*
================================================================================
表结构代码:TB_BILJA
表结构名称:扣率/联营对账单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_BILJA;
drop index AK_TB_BILJA;
drop table TB_BILJA;
create table TB_BILJA  (
   BILJA_ID             INTEGER                     not null,       /*扣率/联营对账单ID  */    
   BILJA001             VARCHAR2(1)                 not null,       /*对账类型           */    
   BILJA002             INTEGER                     not null,       /*对账单别           */    
   BILJA003             VARCHAR2(30)                not null,       /*对账单号           */    
   BILJA004             INTEGER                     not null,       /*对账营运组织       */    
   BILJA005             INTEGER                     not null,       /*供应商             */    
   BILJA006             VARCHAR2(30)                not null,       /*合同编号           */    
   BILJA007             DATE                        not null,       /*结算开始日期       */    
   BILJA008             DATE                        not null,       /*结算截止日期       */    
   BILJA009             VARCHAR2(1)                 not null,       /*保底周期▼        */  
   BILJA010             INTEGER                     not null,       /*保底期数          */  
   BILJA011             DATE                        not null,       /*保底开始日期      */  
   BILJA012             DATE                        not null,       /*保底结束日期      */  
   BILJA013             NUMBER(12,2)                not null,       /*保底金额          */  
   BILJA014             NUMBER(12,2)                not null,       /*保底扣率          */  
   BILJA015             NUMBER(12,2)                not null,       /*保底周期净销售额  */  
   BILJA016             DATE                        not null,       /*补立暂估日期★    */  
   BILJA017             INTEGER                                     /*保底费用单号      */  
   BILJA018             VARCHAR2(1),                                /*审核状态           */    
   BILJA019             INTEGER,                                    /*录入人             */    
   BILJA020             DATE,                                       /*录入日期           */    
   BILJA021             INTEGER,                                    /*审核人             */    
   BILJA022             DATE,                                       /*审核日期           */    
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_BILJA primary key (BILJA_ID)
);
create unique index AK_TB_BILJA on TB_BILJA (BILJA002,BILJA003);
create sequence SEQ_TB_BILJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_BILJA to public;
grant index  on TB_BILJA to public;
grant update on TB_BILJA to public; 
grant delete on TB_BILJA to public;  
grant insert on TB_BILJA to public; 
grant select on SEQ_TB_BILJA to public;   