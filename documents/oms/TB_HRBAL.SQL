/*
================================================================================
表结构代码:TB_HRBAL
表结构名称:薪资组设置表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_HRBAL;
drop index AK_TB_HRBAL;
drop table TB_HRBAL;
create table TB_HRBAL  (
   HRBAL_ID             INTEGER                         not null,  /*薪资组设置表ID   */
   HRBAL001             VARCHAR2(8)                     not null,  /*编号               */
   HRBAL002             VARCHAR2(30)                    not null,  /*名称               */
   HRBAL003             VARCHAR2(255)                   not null,  /*备注               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_HRBAL primary key (HRBAL_ID)
);
create unique index AK_TB_HRBAL on TB_HRBAL (HRBAL001);
create sequence SEQ_TB_HRBAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_HRBAL to public;
grant index  on TB_HRBAL to public;
grant update on TB_HRBAL to public; 
grant delete on TB_HRBAL to public;  
grant insert on TB_HRBAL to public; 
grant select on SEQ_TB_HRBAL to public;   