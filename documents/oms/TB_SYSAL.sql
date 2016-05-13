/*
================================================================================
表结构代码:TB_SYSAL
表结构名称:程式当前版本表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SYSAL;
drop index AK_TB_SYSAL;
drop table TB_SYSAL;
create table TB_SYSAL  (
   SYSAL_ID             INTEGER                         not null,  /*程式版本ID       */
   SYSAL001             VARCHAR2(60)                    not null,  /*程式代码         */
   SYSAL002             VARCHAR2(15)                    not null,  /*版本号           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员         */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门     */                               
   CREATE_DATE          DATE,                                      /*建立日期         */
   MODIFIER             VARCHAR2(12),                              /*修改人员         */
   MODI_DATE            DATE,                                      /*修改日期         */
   FLAG                 NUMBER(1),                                 /*资料状态         */
   constraint PK_TB_SYSAL primary key (SYSAL_ID)
);
create unique index AK_TB_SYSAL on TB_SYSAL (SYSAL001);
create sequence SEQ_TB_SYSAL minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SYSAL to public;
grant index  on TB_SYSAL to public;
grant update on TB_SYSAL to public; 
grant delete on TB_SYSAL to public;  
grant insert on TB_SYSAL to public; 
grant select on SEQ_TB_SYSAL to public;   