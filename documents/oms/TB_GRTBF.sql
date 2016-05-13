/*
================================================================================
表结构代码:TB_GRTBF
表结构名称:对账子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTBF;
drop index AK_TB_GRTBF;
drop table TB_GRTBF;
create table TB_GRTBF  (
   GRTBF_ID             INTEGER                         not null,  /*对账子ID                */
   GRTBF001             INTEGER                         not null,  /*对账主ID                */   
   GRTBF002             VARCHAR2(1),                               /*借贷方向                */   
   GRTBF003             INTEGER,                                   /*抵消项目编码            */
   GRTBF004             NUMBER(16,2),                              /*调整前的值              */
   GRTBF005             NUMBER(16,2),                              /*调整后的值              */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_GRTBF primary key (GRTBF_ID)
);
create sequence SEQ_TB_GRTBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBF to public;
grant index  on TB_GRTBF to public;
grant update on TB_GRTBF to public; 
grant delete on TB_GRTBF to public;  
grant insert on TB_GRTBF to public; 
grant select on SEQ_TB_GRTBF to public;   