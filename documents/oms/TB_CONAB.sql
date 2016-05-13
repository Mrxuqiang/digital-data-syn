/*
================================================================================
表结构代码:TB_CONAB
表结构名称:费用比例标准表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAB;
drop index AK_TB_CONAB;
drop table TB_CONAB;
create table TB_CONAB  (
   CONAB_ID             INTEGER                         not null,  /*费用比例标准ID      */
   CONAB001             INTEGER                         not null,  /*公司ID              */
   CONAB002             INTEGER                         not null,  /*营运组织ID          */
   CONAB003             INTEGER                         not null,  /*费用ID              */
   CONAB004             INTEGER                         not null,  /*摊位ID              */
   CONAB005             DATE                            not null,  /*开始日期            */
   CONAB006             DATE                            not null,  /*结束日期            */
   CONAB007             VARCHAR2(255),                             /*备注                */
   CONAB008             INTEGER,                                   /*录入人              */
   CONAB009             DATE,                                      /*录入日期            */
   CONAB010             INTEGER,                                   /*修改人              */
   CONAB011             DATE,                                      /*修改日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONAB primary key (CONAB_ID)
);
create unique index AK_TB_CONAB on TB_CONAB (CONAB003,CONAB004,CONAB005);
create sequence SEQ_TB_CONAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAB to public;
grant index  on TB_CONAB to public;
grant update on TB_CONAB to public; 
grant delete on TB_CONAB to public;  
grant insert on TB_CONAB to public; 
grant select on SEQ_TB_CONAB to public;   