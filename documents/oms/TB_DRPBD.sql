/*
================================================================================
表结构代码:TB_DRPBD
表结构名称:调整凭证子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPBD;
drop index AK_TB_DRPBD;
drop table TB_DRPBD;
create table TB_DRPBD  (
   DRPBD_ID             INTEGER                         not null,  /*调整凭证子ID            */
   DRPBD001             INTEGER                         not null,  /*调整凭证主ID            */   
   DRPBD002             VARCHAR2(255),                             /*摘要                    */   
   DRPBD003             INTEGER,                                   /*抵消项目编码            */
   DRPBD004             VARCHAR2(1),                               /*借贷方向                */
   DRPBD005             NUMBER(16,2),                              /*金额                    */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_DRPBD primary key (DRPBD_ID)
);
create sequence SEQ_TB_DRPBD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBD to public;
grant index  on TB_DRPBD to public;
grant update on TB_DRPBD to public; 
grant delete on TB_DRPBD to public;  
grant insert on TB_DRPBD to public; 
grant select on SEQ_TB_DRPBD to public;   