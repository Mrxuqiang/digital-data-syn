/*
================================================================================
表结构代码:TB_DRPBF
表结构名称:对账子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_DRPBF;
drop index AK_TB_DRPBF;
drop table TB_DRPBF;
create table TB_DRPBF  (
   DRPBF_ID             INTEGER                         not null,  /*对账子ID                */
   DRPBF001             INTEGER                         not null,  /*对账主ID                */   
   DRPBF002             VARCHAR2(1),                               /*借贷方向                */   
   DRPBF003             INTEGER,                                   /*抵消项目编码            */
   DRPBF004             NUMBER(16,2),                              /*调整前的值              */
   DRPBF005             NUMBER(16,2),                              /*调整后的值              */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员                */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门            */                               
   CREATE_DATE          DATE,                                      /*建立日期                */
   MODIFIER             VARCHAR2(12),                              /*修改人员                */
   MODI_DATE            DATE,                                      /*修改日期                */
   FLAG                 NUMBER(1),                                 /*资料状态                */
   constraint PK_TB_DRPBF primary key (DRPBF_ID)
);
create sequence SEQ_TB_DRPBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_DRPBF to public;
grant index  on TB_DRPBF to public;
grant update on TB_DRPBF to public; 
grant delete on TB_DRPBF to public;  
grant insert on TB_DRPBF to public; 
grant select on SEQ_TB_DRPBF to public;   