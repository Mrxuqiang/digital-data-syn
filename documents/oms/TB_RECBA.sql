/*
================================================================================
表结构代码:TB_RECBA
表结构名称:坏账余额表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_RECBA;
drop index AK_TB_RECBA;
drop table TB_RECBA;
create table TB_RECBA  (
   RECBA_ID             INTEGER                         not null,  /*坏账余额表ID              */
   RECBA001             VARCHAR2(4)                    not null,   /*计提编号              */
   RECBA002             INTEGER                         not null,  /*公司ID              */
   RECBA003             DATE  ,                                    /*计提日期              */
   RECBA004             NUMBER(16,2),                              /*计提金额                */
   RECBA005             NUMBER(16,2),                              /*计提余额              */
   RECBA006             NUMBER(16,2),                              /*期末余额              */
   RECBA007             VARCHAR2(1)                     not null,  /*生成凭证              */
   RECBA008             VARCHAR2(1)                     not null,  /*类型                  */
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */                               
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_RECBA primary key (RECBA_ID)
);
create unique index AK_TB_RECBA on TB_RECBA (RECBA001,RECBA002);
create sequence SEQ_TB_RECBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_RECBA to public;
grant index  on TB_RECBA to public;
grant update on TB_RECBA to public; 
grant delete on TB_RECBA to public;  
grant insert on TB_RECBA to public; 
grant select on SEQ_TB_RECBA to public;   