/*
================================================================================
表结构代码:TB_GRTBB
表结构名称:常用凭证子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_GRTBB;
drop index AK_TB_GRTBB;
drop table TB_GRTBB;
create table TB_GRTBB  (
   GRTBB_ID             INTEGER                         not null,  /*常用凭证子ID          */
   GRTBB001             INTEGER                         not null,  /*常用凭证主ID            */   
   GRTBB002             VARCHAR2(255),                             /*摘要                  */   
   GRTBB003             INTEGER,                                   /*抵消项目编码          */
   GRTBB004             VARCHAR2(1),                               /*借贷方向              */
   GRTBB005             NUMBER(16,2),                              /*金额                  */       
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_GRTBB primary key (GRTBB_ID)
);
create sequence SEQ_TB_GRTBB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_GRTBB to public;
grant index  on TB_GRTBB to public;
grant update on TB_GRTBB to public; 
grant delete on TB_GRTBB to public;  
grant insert on TB_GRTBB to public; 
grant select on SEQ_TB_GRTBB to public;   