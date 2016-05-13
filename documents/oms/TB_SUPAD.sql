/*
================================================================================
表结构代码:TB_SUPAD
表结构名称:招商过程模板主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAD;
drop index AK_TB_SUPAD;
drop table TB_SUPAD;
create table TB_SUPAD  (
   SUPAD_ID             INTEGER                         not null,  /*过程模板ID          */
   SUPAD001             VARCHAR2(10)                    not null,  /*过程模板代码        */
   SUPAD002             VARCHAR2(30)                    not null,  /*过程模板名称        */
   SUPAD003             VARCHAR2(1),                               /*是否停用            */
   SUPAD004             VARCHAR2(1),                               /*过程类型 1.招商活动 2.预登记 */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAD primary key (SUPAD_ID)
);
create unique index AK_TB_SUPAD on TB_SUPAD (SUPAD001,SUPAD002);
create sequence SEQ_TB_SUPAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAD to public;
grant index  on TB_SUPAD to public;
grant update on TB_SUPAD to public; 
grant delete on TB_SUPAD to public;  
grant insert on TB_SUPAD to public; 
grant select on SEQ_TB_SUPAD to public;   