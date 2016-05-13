/*
================================================================================
表结构代码:TB_CONFG
表结构名称:供应商合同变更返利表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONFG;
drop index AK_TB_CONFG;
drop table TB_CONFG;
create table TB_CONFG  (
   CONFG_ID             INTEGER                         not null,  /*合同变更返利ID      */
   CONFG001             INTEGER                         not null,  /*合同变更ID          */
   CONFG002             INTEGER                         not null,  /*费用ID              */
   CONFG003             VARCHAR2(1)                     not null,  /*费用周期            */
   CONFG004             VARCHAR2(1)                     not null,  /*分段计算方法        */
   CONFG005             INTEGER                         not null,  /*营运组织ID          */
   CONFG006             VARCHAR2(1)                     not null,  /*基准营运组织        */
   CONFG007             VARCHAR2(1)                     not null,  /*基准费用            */
   CONFG008             NUMBER(12,2),                              /*基准费用比率(%)     */
   CONFG009             NUMBER(12,2),                              /*返利比例(%)         */
   CONFG010             NUMBER(12,2),                              /*毛利下限            */
   CONFG011             NUMBER(12,2),                              /*毛利上限            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONFG primary key (CONFG_ID)
);
create unique index AK_TB_CONFG on TB_CONFG (CONFG001,CONFG002,CONFG003,CONFG005);
create sequence SEQ_TB_CONFG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFG to public;
grant index  on TB_CONFG to public;
grant update on TB_CONFG to public; 
grant delete on TB_CONFG to public;  
grant insert on TB_CONFG to public; 
grant select on SEQ_TB_CONFG to public;   