/*
================================================================================
表结构代码:TB_CCMBH
表结构名称:白卡开卡单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBH;
drop index AK_TB_CCMBH;
drop table TB_CCMBH;
create table TB_CCMBH  (
   CCMBH_ID             INTEGER                         not null,  /*白卡开卡单明细ID    */
   CCMBH001             INTEGER                         not null,  /*白卡开卡单ID        */
   CCMBH002             INTEGER                         not null,  /*卡种ID              */
   CCMBH003             NUMBER(30)                      not null,  /*卡号                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBH primary key (CCMBH_ID)
);
create unique index AK_TB_CCMBH on TB_CCMBH (CCMBH001,CCMBH002,CCMBH003);
create sequence SEQ_TB_CCMBH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBH to public;
grant index  on TB_CCMBH to public;
grant update on TB_CCMBH to public; 
grant delete on TB_CCMBH to public;  
grant insert on TB_CCMBH to public; 
grant select on SEQ_TB_CCMBH to public;   