/*
================================================================================
表结构代码:TB_PUBLE
表结构名称:会计科目方案表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBLE;
drop index AK_TB_PUBLE;
drop table TB_PUBLE;
create table TB_PUBLE  (
   PUBLE_ID             INTEGER                         not null,  /*会计科目方案ID       */
   PUBLE001             VARCHAR2(4)                     not null,  /*科目方案代码         */
   PUBLE002             VARCHAR2(30)                    not null,  /*科目方案名称         */
   PUBLE003             VARCHAR2(60),                              /*科目方案描述         */
   PUBLE004             VARCHAR2(16),                              /*科目层级             */
   PUBLE005             VARCHAR2(4),                               /*控制下级科目层级     */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PUBLE primary key (PUBLE_ID)
);
create unique index AK_TB_PUBLE on TB_PUBLE (PUBLE001);
create sequence SEQ_TB_PUBLE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBLE to public;
grant index  on TB_PUBLE to public;
grant update on TB_PUBLE to public; 
grant delete on TB_PUBLE to public;  
grant insert on TB_PUBLE to public; 
grant select on SEQ_TB_PUBLE to public;   