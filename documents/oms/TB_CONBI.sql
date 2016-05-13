/*
================================================================================
表结构代码:TB_CONBI
表结构名称:合同周期性比例费用表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONBI;
drop index AK_TB_CONBI;
drop table TB_CONBI;
create table TB_CONBI  (
   CONBI_ID             INTEGER                         not null,  /*合同周期性比例费用ID*/
   CONBI001             INTEGER                         not null,  /*合同ID              */
   CONBI002             INTEGER                         not null,  /*费用ID              */
   CONBI003             INTEGER                         not null,  /*公式ID              */
   CONBI004             VARCHAR2(1),                               /*标准层级            */
   CONBI005             VARCHAR2(1),                               /*计算类型            */
   CONBI006             VARCHAR2(1)                     not null,  /*展帐方式            */
   CONBI007             VARCHAR2(1)                     not null,  /*标准类型            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 INTEGER,                                   /*资料状态            */
   RESERVED             INTEGER,                                   /*保留字段            */   
   constraint PK_TB_CONBI primary key (CONBI_ID)
);
create unique index AK_TB_CONBI on TB_CONBI (CONBI001,CONBI002);
create sequence SEQ_TB_CONBI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONBI to public;
grant index  on TB_CONBI to public;
grant update on TB_CONBI to public; 
grant delete on TB_CONBI to public;  
grant insert on TB_CONBI to public; 
grant select on SEQ_TB_CONBI to public;   