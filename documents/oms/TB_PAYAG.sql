/*                 
================================================================================
表结构代码:TB_PAYAG
表结构名称:预付待抵表
表结构目的:
================================================================================
*/  
  
drop sequence SEQ_TB_PAYAG;
drop index AK_TB_PAYAG;
drop table TB_PAYAG;
create table TB_PAYAG  (
   PAYAG_ID             INTEGER                         not null,  /*预付待抵表ID       */
   PAYAG001             INTEGER                         not null,  /*单别               */
   PAYAG002             VARCHAR2(30)                    not null,  /*单号               */
   PAYAG003             DATE                            not null,  /*单据日期           */
   PAYAG004             INTEGER                         not null,  /*供应商               */ 
   PAYAG005             INTEGER                         not null,  /*付款供应商               */
   PAYAG006             INTEGER,                                   /*部门               */
   PAYAG007             INTEGER,                                   /*人员               */
   PAYAG008             VARCHAR2(1)                     not null,  /*来源               */
   PAYAG009             INTEGER                         not null,  /*来源单号           */                                                                           
   PAYAG010             INTEGER,                                   /*采购单号           */
   PAYAG011             NUMBER(16,2),                              /*原币金额           */
   PAYAG012             NUMBER(16,2),                              /*本币金额           */
   PAYAG013             NUMBER(16,2),                              /*原币已核销金额     */
   PAYAG014             NUMBER(16,2),                              /*本币已核销金额     */
   PAYAG015             VARCHAR2(1),                               /*核销状态           */
   PAYAG016             VARCHAR2(1),                               /*生成凭证           */
   PAYAG017             VARCHAR2(1),                               /*单据状态           */
   PAYAG018             INTEGER,                                   /*录入人             */
   PAYAG019             DATE,                                      /*录入日期           */                                                                        
   PAYAG020             INTEGER,                                   /*审核人             */                                                                        
   PAYAG021             DATE,                                      /*审核日期           */ 
   PAYAG022             INTEGER                         not null,  /*币种               */ 
   PAYAG023             NUMBER(16,4),                              /*汇率               */ 
   PAYAG024             NUMBER(4),                                 /*会计年度               */ 
   PAYAG025             NUMBER(2),                                 /*会计期间               */   
   PAYAG026             INTEGER,                                   /*现金异动项ID               */     
   PAYAG027             VARCHAR2(255),                             /*备注20100510 add by gaoxl      */
   PAYAG028             INTEGER,                                   /*客商分类ID 20101217 add by gaoxl      */  
   PAYAG029             INTEGER,                                   /*营运组织ID 20101217 add by gaoxl      */
   PAYAG030             INTEGER,                                   /*来源单身ID 20110421 add by gaoxl      */  
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_PAYAG primary key (PAYAG_ID)
);  
create unique index AK_TB_PAYAG on TB_PAYAG (PAYAG001,PAYAG002);
create sequence SEQ_TB_PAYAG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PAYAG to public;
grant index  on TB_PAYAG to public;
grant update on TB_PAYAG to public; 
grant delete on TB_PAYAG to public;  
grant insert on TB_PAYAG to public; 
grant select on SEQ_TB_PAYAG to public;   