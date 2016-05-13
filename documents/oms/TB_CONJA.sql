/*
================================================================================
表结构代码:TB_CONJA
表结构名称:自定义供应商评定主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONJA;
drop index AK_TB_CONJA;
drop table TB_CONJA;
create table TB_CONJA  (
   CONJA_ID             INTEGER                      not null,   /*评定ID          */     
   CONJA001             VARCHAR2(30)                 not null,   /*评定编号        */     
   CONJA002             VARCHAR2(30)                 not null,   /*评点名称        */     
   CONJA003             DATE                         not null,   /*制定日期        */     
   CONJA004             VARCHAR2(1)                  not null,   /*格式类型        */     
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONJA primary key (CONJA_ID)
);
create unique index AK_TB_CONJA on TB_CONJA (CONJA001);
create sequence SEQ_TB_CONJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONJA to public;
grant index  on TB_CONJA to public;
grant update on TB_CONJA to public; 
grant delete on TB_CONJA to public;  
grant insert on TB_CONJA to public; 
grant select on SEQ_TB_CONJA to public;   