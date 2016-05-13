/*
================================================================================
表结构代码:TB_PUBPB
表结构名称:变动方式
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBPB;
drop index AK_TB_PUBPB;
drop table TB_PUBPB;
create table TB_PUBPB  (
   PUBPB_ID             INTEGER                              not null, /*变动方式ID            */
   PUBPB001             VARCHAR2(4)                          not null, /*变动方式编码          */
   PUBPB002             VARCHAR2(60)                         not null, /*变动方式名称          */
   PUBPB003             VARCHAR2(1)                          not null, /*是否预置              */
   PUBPB004             VARCHAR2(1)                          not null, /*增减方式              */
   CREATE_USER          VARCHAR2(12),                                  /*建立人员              */
   USER_GROUP           VARCHAR2(12),                                  /*建立人员部门          */                               
   CREATE_DATE          DATE,                                          /*建立日期              */
   MODIFIER             VARCHAR2(12),                                  /*修改人员              */
   MODI_DATE            DATE,                                          /*修改日期              */
   FLAG                 NUMBER(1),                                     /*资料状态              */
   constraint PK_TB_PUBPB primary key (PUBPB_ID)
);
create unique index AK_TB_PUBPB on TB_PUBPB (PUBPB001);
create sequence SEQ_TB_PUBPB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBPB to public;
grant index  on TB_PUBPB to public;
grant update on TB_PUBPB to public; 
grant delete on TB_PUBPB to public;  
grant insert on TB_PUBPB to public; 
grant select on SEQ_TB_PUBPB to public;   