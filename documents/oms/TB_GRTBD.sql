/*
================================================================================
表结构代码:TB_GRTBD
表结构名称:调整凭证子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTBD;
drop index AK_TB_GRTBD;
drop table TB_GRTBD;
create table TB_GRTBD  (
   GRTBD_ID             INTEGER                         not null,  /*调整凭证子ID            */
   GRTBD001             INTEGER                         not null,  /*调整凭证主ID            */   
   GRTBD002             VARCHAR2(255),                             /*摘要                    */   
   GRTBD003             INTEGER,                                   /*抵消项目编码            */
   GRTBD004             VARCHAR2(1),                               /*借贷方向                */
   GRTBD005             NUMBER(16,2),                              /*金额                    */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_GRTBD primary key (GRTBD_ID)
);
create sequence SEQ_TB_GRTBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBD to public;
grant index  on TB_GRTBD to public;
grant update on TB_GRTBD to public; 
grant delete on TB_GRTBD to public;  
grant insert on TB_GRTBD to public; 
grant select on SEQ_TB_GRTBD to public;   