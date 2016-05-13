/*
================================================================================
表结构代码:TB_PUREA
表结构名称:补货建议单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUREA;
drop index AK_TB_PUREA;
drop table TB_PUREA;
create table TB_PUREA  (
   PUREA_ID             INTEGER                          not null,  /*补货建议单ID        */     
   PUREA001             INTEGER                          not null,  /*补货建议单别        */    
   PUREA002             VARCHAR2(30)                     not null,  /*补货建议单号        */     
   PUREA003             INTEGER                          not null,  /*建议门店ID          */  
   PUREA004             DATE                             not null,  /*建议日期            */    
   PUREA005             INTEGER,                                    /*经办人ID            */      
   PUREA006             VARCHAR2(255),                              /*备注                */ 
   PUREA007             VARCHAR2(1),                                /*审核状态            */  
   PUREA008             INTEGER,                                    /*审核人              */  
   PUREA009             DATE,                                       /*审核日期            */  
   CREATE_USER          VARCHAR2(12),                               /*建立人员            */
   USER_GROUP           VARCHAR2(12),                               /*建立人员部门        */                               
   CREATE_DATE          DATE,                                       /*建立日期            */
   MODIFIER             VARCHAR2(12),                               /*修改人员            */
   MODI_DATE            DATE,                                       /*修改日期            */
   FLAG                 NUMBER(1),                                  /*资料状态            */
   constraint PK_TB_PUREA primary key (PUREA_ID)
);
create unique index AK_TB_PUREA on TB_PUREA (PUREA002);
create sequence SEQ_TB_PUREA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUREA to public;
grant index  on TB_PUREA to public;
grant update on TB_PUREA to public; 
grant delete on TB_PUREA to public;  
grant insert on TB_PUREA to public; 
grant select on SEQ_TB_PUREA to public;   