/*
================================================================================
表结构代码:TB_PRCDA
表结构名称:进价调整单
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PRCDA;
drop index AK_TB_PRCDA;
drop table TB_PRCDA;
create table TB_PRCDA  (
   PRCDA_ID             INTEGER                       not null,    /*进价调整ID             */ 
   PRCDA001             INTEGER                       not null,    /*进价调整单别           */ 
   PRCDA002             VARCHAR2(30)                  not null,    /*进价调整单号           */ 
   PRCDA003             DATE,                                      /*调整开始日期           */ 
   PRCDA004             DATE,                                      /*调整结束日期           */ 
   PRCDA005             INTEGER                       not null,    /*调整组织               */ 
   PRCDA006             INTEGER                       not null,    /*调整原因               */ 
   PRCDA007             INTEGER                                    /*供应商                 */ 
   PRCDA008             VARCHAR2(1)                                /*经营方式               */ 
   PRCDA009             VARCHAR2(1)                   not null,    /*单据来源               */ 
   PRCDA010             VARCHAR2(30),                              /*来源单号               */ 
   PRCDA011             VARCHAR2(1)                   not null,    /*是否调整已销           */ 
   PRCDA012             VARCHAR2(255),                             /*备注                   */ 
   PRCDA013             VARCHAR2(1),                               /*审核状态               */ 
   PRCDA014             INTEGER,                                   /*录入人                 */ 
   PRCDA015             DATE,                                      /*录入时间               */ 
   PRCDA016             INTEGER,                                   /*审核人                 */ 
   PRCDA017             DATE,                                      /*审核时间               */
   PRCDA018             INTEGER,                                   /*来源单号ID             */    
   CREATE_USER          VARCHAR2(12),                              /*建立人员               */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门           */                               
   CREATE_DATE          DATE,                                      /*建立日期               */
   MODIFIER             VARCHAR2(12),                              /*修改人员               */
   MODI_DATE            DATE,                                      /*修改日期               */
   FLAG                 NUMBER(1),                                 /*资料状态               */
   constraint PK_TB_PRCDA primary key (PRCDA_ID)
);
create unique index AK_TB_PRCDA on TB_PRCDA (PRCDA001,PRCDA002);
create sequence SEQ_TB_PRCDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PRCDA to public;
grant index  on TB_PRCDA to public;
grant update on TB_PRCDA to public; 
grant delete on TB_PRCDA to public;  
grant insert on TB_PRCDA to public; 
grant select on SEQ_TB_PRCDA to public;   