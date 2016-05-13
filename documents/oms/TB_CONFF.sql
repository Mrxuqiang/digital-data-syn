/*
================================================================================
表结构代码:TB_CONFF
表结构名称:供应商合同变更保底表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONFF;
drop index AK_TB_CONFF;
drop table TB_CONFF;
create table TB_CONFF  (
   CONFF_ID             INTEGER                         not null,  /*合同变更保底ID      */
   CONFF001             INTEGER                         not null,  /*合同变更ID          */
   CONFF002             INTEGER                         not null,  /*费用ID              */
   CONFF003             VARCHAR2(1)                     not null,  /*费用周期            */
   CONFF004             NUMBER(12,2),                              /*保底扣率(%)         */
   CONFF005             VARCHAR2(1),                               /*是否按营运组织保底  */
   CONFF006             INTEGER                         not null,  /*营运组织ID          */
   CONFF007             NUMBER(4),                                 /*年度                */
   CONFF008             NUMBER(2),                                 /*期数                */
   CONFF009             DATE,                                      /*开始日期            */
   CONFF010             DATE,                                      /*结束日期            */
   CONFF011             NUMBER(12,2),                              /*保底金额            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONFF primary key (CONFF_ID)
);
create unique index AK_TB_CONFF on TB_CONFF (CONFF001,CONFF002,CONFF003,CONFF006,CONFF007,CONFF008);
create sequence SEQ_TB_CONFF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFF to public;
grant index  on TB_CONFF to public;
grant update on TB_CONFF to public; 
grant delete on TB_CONFF to public;  
grant insert on TB_CONFF to public; 
grant select on SEQ_TB_CONFF to public;   