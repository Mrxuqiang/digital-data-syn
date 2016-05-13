/*
================================================================================
表结构代码:TB_CONEF
表结构名称:供应商合同保底表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONEF;
drop index AK_TB_CONEF;
drop table TB_CONEF;
create table TB_CONEF  (
   CONEF_ID             INTEGER                         not null,  /*合同保底ID          */
   CONEF001             INTEGER                         not null,  /*合同ID              */
   CONEF002             INTEGER                         not null,  /*费用ID              */
   CONEF003             VARCHAR2(1)                     not null,  /*费用周期            */
   CONEF004             NUMBER(12,2),                              /*保底扣率(%)         */
   CONEF005             VARCHAR2(1),                               /*是否按营运组织保底  */
   CONEF006             INTEGER                         not null,  /*营运组织ID          */
   CONEF007             NUMBER(4),                                 /*年度                */
   CONEF008             NUMBER(2),                                 /*期数                */
   CONEF009             DATE,                                      /*开始日期            */
   CONEF010             DATE,                                      /*结束日期            */
   CONEF011             NUMBER(12,2),                              /*保底金额            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONEF primary key (CONEF_ID)
);
create unique index AK_TB_CONEF on TB_CONEF (CONEF001,CONEF002,CONEF003,CONEF006,CONEF007,CONEF008);
create sequence SEQ_TB_CONEF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEF to public;
grant index  on TB_CONEF to public;
grant update on TB_CONEF to public; 
grant delete on TB_CONEF to public;  
grant insert on TB_CONEF to public; 
grant select on SEQ_TB_CONEF to public;   