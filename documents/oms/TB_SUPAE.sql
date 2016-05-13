/*
================================================================================
表结构代码:TB_SUPAE
表结构名称:招商过程模板子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAE;
drop index AK_TB_SUPAE;
drop table TB_SUPAE;
create table TB_SUPAE  (
   SUPAE_ID             INTEGER                         not null,  /*过程ID              */
   SUPAE001             INTEGER                         not null,  /*过程模板ID          */
   SUPAE002             VARCHAR2(1)                     not null,  /*过程类型0:过程阶段 1:过程步骤 */
   SUPAE003             VARCHAR2(10)                    not null,  /*过程代码            */
   SUPAE004             VARCHAR2(30)                    not null,  /*过程名称            */
   SUPAE005             NUMBER(2)                       not null,  /*序号                */
   SUPAE006             NUMBER(12,2)                    not null,  /*完成百分比(%)       */
   SUPAE007             VARCHAR2(1),                               /*不允许跳过          */
   SUPAE008             VARCHAR2(1)                     not null,  /*解发方式            */
   SUPAE009             NUMBER(12,2),                              /*自动触发间隔(分钟)  */
   ISLASTLEV            VARCHAR2(1),                               /*是否末级            */
   LEVNUM               NUMBER(1),                                 /*层级                */
   PARCODE              VARCHAR2(40),                              /*父级代码            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAE primary key (SUPAE_ID)
);
create unique index AK_TB_SUPAE on TB_SUPAE (SUPAE001,SUPAE002,SUPAE003);
create sequence SEQ_TB_SUPAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAE to public;
grant index  on TB_SUPAE to public;
grant update on TB_SUPAE to public; 
grant delete on TB_SUPAE to public;  
grant insert on TB_SUPAE to public; 
grant select on SEQ_TB_SUPAE to public;   