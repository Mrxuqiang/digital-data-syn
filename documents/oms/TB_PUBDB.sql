/*
================================================================================
表结构代码:TB_PUBDB
表结构名称:公式定义表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PUBDB;
drop index AK_TB_PUBDB;
drop table TB_PUBDB;
create table TB_PUBDB  (
   PUBDB_ID             INTEGER                         not null,  /*公式ID             */
   PUBDB001             VARCHAR2(4)                     not null,  /*公式代码           */
   PUBDB002             VARCHAR2(30)                    not null,  /*公式名称           */
   PUBDB003             INTEGER                         not null,  /*公式分类ID         */
   PUBDB004             VARCHAR2(500),                             /*公式内容           */
   PUBDB005             VARCHAR2(255),                             /*公式描述           */
   PUBDB006             VARCHAR2(1)                     not null,  /*审态状态           */
   PUBDB007             INTEGER,                                   /*审核人             */
   PUBDB008             DATE,                                      /*审核日期           */
   CREATE_USER          VARCHAR2(12),                              /*建立人员           */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门       */                               
   CREATE_DATE          DATE,                                      /*建立日期           */
   MODIFIER             VARCHAR2(12),                              /*修改人员           */
   MODI_DATE            DATE,                                      /*修改日期           */
   FLAG                 NUMBER(1),                                 /*资料状态           */
   constraint PK_TB_PUBDB primary key (PUBDB_ID)
);
create unique index AK_TB_PUBDB on TB_PUBDB (PUBDB001);
create sequence SEQ_TB_PUBDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PUBDB to public;
grant index  on TB_PUBDB to public;
grant update on TB_PUBDB to public; 
grant delete on TB_PUBDB to public;  
grant insert on TB_PUBDB to public; 
grant select on SEQ_TB_PUBDB to public;   