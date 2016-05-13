/*
================================================================================
表结构代码:TB_PUBPC
表结构名称:使用状况表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBPC;
drop index AK_TB_PUBPC;
drop table TB_PUBPC;
create table TB_PUBPC  (
   PUBPC_ID             INTEGER                              not null, /*使用状况ID            */
   PUBPC001             VARCHAR2(4)                          not null, /*使用状况编码          */
   PUBPC002             VARCHAR2(60)                         not null, /*使用状况名称          */
   PUBPC003             VARCHAR2(1)                          not null, /*是否计提折旧          */
   PUBPC004             VARCHAR2(1)                          not null, /*是否预置              */
   CREATE_USER          VARCHAR2(12),                                  /*建立人员              */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门          */                               
   CREATE_DATE          DATE,                                          /*建立日期              */
   MODIFIER             VARCHAR2(12),                                  /*修改人员              */
   MODI_DATE            DATE,                                          /*修改日期              */
   FLAG                 NUMBER(1),                                     /*资料状态              */
   constraint PK_TB_PUBPC primary key (PUBPC_ID)
);
create unique index AK_TB_PUBPC on TB_PUBPC (PUBPC001);
create sequence SEQ_TB_PUBPC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBPC to public;
grant index  on TB_PUBPC to public;
grant update on TB_PUBPC to public; 
grant delete on TB_PUBPC to public;  
grant insert on TB_PUBPC to public; 
grant select on SEQ_TB_PUBPC to public;   