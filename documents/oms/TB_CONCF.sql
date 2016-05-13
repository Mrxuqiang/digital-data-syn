/*
================================================================================
表结构代码:TB_CONCF
表结构名称:合同变更周期性比例费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONCF;
drop index AK_TB_CONCF;
drop table TB_CONCF;
create table TB_CONCF  (
   CONCF_ID             INTEGER                         not null,  /*合同变更周期性比例费用ID*/
   CONCF001             INTEGER                         not null,  /*合同变更ID          */
   CONCF002             INTEGER                         not null,  /*费用ID              */
   CONCF003             INTEGER                         not null,  /*公式代码ID          */
   CONCF004             VARCHAR2(1)                     not null,  /*标准层级            */
   CONCF005             VARCHAR2(1)                     not null,  /*计算类型            */
   CONCF006             VARCHAR2(1)                     not null,  /*展帐方式            */
   CONCF007             VARCHAR2(1)                     not null,  /*标准类型            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 INTEGER,                                   /*资料状态            */
   RESERVED             INTEGER,                                   /*保留字段            */   
   constraint PK_TB_CONCF primary key (CONCF_ID)
);
create unique index AK_TB_CONCF on TB_CONCF (CONCF001,CONCF002);
create sequence SEQ_TB_CONCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONCF to public;
grant index  on TB_CONCF to public;
grant update on TB_CONCF to public; 
grant delete on TB_CONCF to public;  
grant insert on TB_CONCF to public; 
grant select on SEQ_TB_CONCF to public;   