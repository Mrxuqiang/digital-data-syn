/*
================================================================================
表结构代码:TB_INVIA
表结构名称:出库单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_INVIA;
drop index AK_TB_INVIA;
drop table TB_INVIA;
create table TB_INVIA  (
   INVIA_ID             INTEGER                   not null,    /*出库单ID            */    
   INVIA001             INTEGER                   not null,    /*出库单别            */    
   INVIA002             VARCHAR2(30)              not null,    /*出库单号            */    
   INVIA003             DATE                      not null,    /*出库日期            */    
   INVIA004             VARCHAR2(1)               not null,    /*单据来源            */    
   INVIA005             INTEGER                   not null,    /*来源单ID            */   --排车单ID
   INVIA006             VARCHAR2(30)              not null,    /*来源单号            */    
   INVIA007             INTEGER,                               /*出库营运组织        */
   INVIA008             INTEGER,                               /*出库部门            */    
   INVIA009             INTEGER                                /*出库人员            */   
   INVIA010             VARCHAR2(255)                          /*备注                */    
   INVIA011             VARCHAR2(1),                           /*审核状态            */    
   INVIA012             INTEGER,                               /*录入人              */    
   INVIA013             DATE,                                  /*录入时间            */    
   INVIA014             INTEGER,                               /*审核人              */    
   INVIA015             DATE,                                  /*审核时间            */  
   CREATE_USER          VARCHAR2(12),                          /*建立人员         */
   USER_GROUP           VARCHAR2(12),                          /*建立人员部门     */                               
   CREATE_DATE          DATE,                                  /*建立日期         */
   MODIFIER             VARCHAR2(12),                          /*修改人员         */
   MODI_DATE            DATE,                                  /*修改日期         */
   FLAG                 NUMBER(1),                             /*资料状态         */
   constraint PK_TB_INVIA primary key (INVIA_ID)
);
create unique index AK_TB_INVIA on TB_INVIA (INVIA002,INVIA007);
create sequence SEQ_TB_INVIA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_INVIA to public;
grant index  on TB_INVIA to public;
grant update on TB_INVIA to public; 
grant delete on TB_INVIA to public;  
grant insert on TB_INVIA to public; 
grant select on SEQ_TB_INVIA to public;   