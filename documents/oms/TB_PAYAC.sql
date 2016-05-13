/*
================================================================================
表结构代码:TB_PAYAC
表结构名称:应付主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PAYAC;
drop index AK_TB_PAYAC;
drop table TB_PAYAC;
create table TB_PAYAC  (
   PAYAC_ID             INTEGER                         not null,  /*应付主表ID        */
   PAYAC001             INTEGER                         not null,  /*单别ID              */
   PAYAC002             VARCHAR2(30)                    not null,  /*应付单号          */
   PAYAC003             INTEGER                         not null,  /*供应商ID            */
   PAYAC004             INTEGER                         not null,  /*付款供应商ID        */
   PAYAC005             INTEGER                         not null,  /*币种ID              */ 
   PAYAC006             NUMBER(16,4),                               /*汇率              */ 
   PAYAC007             DATE,                                      /*立账日期          */ 
   PAYAC008             VARCHAR2(1)                     not null,  /*经营方式          */
   PAYAC009             INTEGER,                                   /*请款部门ID          */ 
   PAYAC010             INTEGER,                                   /*请款人员ID          */ 
   PAYAC011             DATE,                                      /*应付日            */ 
   PAYAC012             VARCHAR2(1)                     not null,  /*单据状态          */ 
   PAYAC013             INTEGER,                                   /*录入人ID            */ 
   PAYAC014             DATE,                                      /*录入日期          */ 
   PAYAC015             INTEGER,                                   /*审核人ID            */ 
   PAYAC016             DATE,                                      /*审核日期          */
   PAYAC017             VARCHAR2(1)                     not null,  /*核销状态            */ 
   PAYAC018             VARCHAR2(1)                     not null,  /*生成凭证          */  
   PAYAC019             NUMBER(16,2),                              /*原币金额合计          */ 
   PAYAC020             NUMBER(16,2),                              /*本币金额合计          */ 
   PAYAC021             NUMBER(16,2),                              /*原币直接付款金额          */ 
   PAYAC022             NUMBER(16,2),                              /*本币直接付款金额          */  
   PAYAC023             INTEGER,                                   /*结算方式ID            */ 
   PAYAC024             VARCHAR2(1)                      not null, /*现付                   */ 
   PAYAC025             NUMBER(16,2),                              /*原币核销金额          */ 
   PAYAC026             NUMBER(16,2),                              /*本币核销金额          */  
   PAYAC027             INTEGER,                                   /*营运组织ID          */  
   PAYAC028             VARCHAR2(255),                             /*备注         */      
   PAYAC029             VARCHAR2(60),                             /*发票号         */    
   PAYAC030             NUMBER(4),                             /*会计年度         */      
   PAYAC031             NUMBER(2),                             /*会计期间         */          
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PAYAC primary key (PAYAC_ID)
);
create unique index AK_TB_PAYAC on TB_PAYAC (PAYAC001,PAYAC002);
create sequence SEQ_TB_PAYAC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAC to public;
grant index  on TB_PAYAC to public;
grant update on TB_PAYAC to public; 
grant delete on TB_PAYAC to public;  
grant insert on TB_PAYAC to public; 
grant select on SEQ_TB_PAYAC to public;   