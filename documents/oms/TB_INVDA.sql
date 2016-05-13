/*
================================================================================
表结构代码:TB_INVDA
表结构名称:组装单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVDA;
drop index AK_TB_INVDA;
drop table TB_INVDA;
create table TB_INVDA  (
   INVDA_ID             INTEGER                  not null,     /*借出单ID       */    
   INVDA001             INTEGER                  not null,     /*借出单别       */    
   INVDA002             VARCHAR2(30)             not null,     /*借出单号       */    
   INVDA003             DATE                     not null,     /*借出日期       */    
   INVDA004             INTEGER                  not null,     /*借出营运组织   */    
   INVDA005             INTEGER                  not null,     /*借出部门       */    
   INVDA006             INTEGER                  not null,     /*经办人员       */    
   INVDA007             INTEGER                                /*费用单号       */    
   INVDA008             VARCHAR2(1)              not null,     /*借出对象       */    
   INVDA009             INTEGER                  not null,     /*顾客姓名       */    
   INVDA010             VARCHAR2(20)                           /*顾客电话       */    
   INVDA011             VARCHAR2(1)                            /*有效证件       */    
   INVDA012             VARCHAR2(20)                           /*证件号码       */    
   INVDA013             DATE                                   /*预还日期       */    
   INVDA014             VARCHAR2(255)                          /*备注           */    
   INVDA015             VARCHAR2(12),                          /*审核状态       */    
   INVDA016             INTEGER,                               /*录入人         */    
   INVDA017             DATE,                                  /*录入日期       */    
   INVDA018             INTEGER,                               /*审核人         */    
   INVDA019             DATE,                                  /*审核日期       */    
   CREATE_USER          VARCHAR2(12),                          /*建立人员        */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门    */                               
   CREATE_DATE          DATE,                                  /*建立日期        */
   MODIFIER             VARCHAR2(12),                          /*修改人员        */
   MODI_DATE            DATE,                                  /*修改日期        */
   FLAG                 NUMBER(1),                             /*资料状态        */
   constraint PK_TB_INVDA primary key (INVDA_ID)
);
create unique index AK_TB_INVDA on TB_INVDA (INVDA001,INVDA002);
create sequence SEQ_TB_INVDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVDA to public;
grant index  on TB_INVDA to public;
grant update on TB_INVDA to public; 
grant delete on TB_INVDA to public;  
grant insert on TB_INVDA to public; 
grant select on SEQ_TB_INVDA to public;   