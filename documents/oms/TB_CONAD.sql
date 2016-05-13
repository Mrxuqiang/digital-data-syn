/*
================================================================================
表结构代码:TB_CONAD
表结构名称:销售保底表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONAD;
drop index AK_TB_CONAD;
drop table TB_CONAD;
create table TB_CONAD  (
   CONAD_ID             INTEGER                         not null,  /*销售保底ID          */
   CONAD001             INTEGER                         not null,  /*公司ID              */
   CONAD002             INTEGER                         not null,  /*营运组织ID          */
   CONAD003             INTEGER                         not null,  /*摊位ID              */
   CONAD004             DATE                            not null,  /*开始日期            */
   CONAD005             DATE                            not null,  /*结束日期            */
   CONAD006             NUMBER(12,4)                    not null,  /*销售保底金额        */
   CONAD007             VARCHAR2(255),                             /*备注                */
   CONAD008             INTEGER,                                   /*录入人              */
   CONAD009             DATE,                                      /*录入日期            */
   CONAD010             INTEGER,                                   /*修改人              */
   CONAD011             DATE,                                      /*修改日期            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONAD primary key (CONAD_ID)
);
create unique index AK_TB_CONAD on TB_CONAD (CONAD003,CONAD004);
create sequence SEQ_TB_CONAD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONAD to public;
grant index  on TB_CONAD to public;
grant update on TB_CONAD to public; 
grant delete on TB_CONAD to public;  
grant insert on TB_CONAD to public; 
grant select on SEQ_TB_CONAD to public;   