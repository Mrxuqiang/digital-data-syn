/*
================================================================================
表结构代码:TB_CCMDB
表结构名称:扣券等级表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDB;
drop index AK_TB_CCMDB;
drop table TB_CCMDB;
create table TB_CCMDB  (
   CCMDB_ID             INTEGER                         not null,  /*扣券等级ID          */
   CCMDB001             VARCHAR2(4)                     not null,  /*扣券等级代码        */
   CCMDB002             VARCHAR2(30)                    not null,  /*扣券等级名称        */
   CCMDB003             NUMBER(5)                       not null,  /*扣券顺序号          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDB primary key (CCMDB_ID)
);
create unique index AK_TB_CCMDB on TB_CCMDB (CCMDB001);
create sequence SEQ_TB_CCMDB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDB to public;
grant index  on TB_CCMDB to public;
grant update on TB_CCMDB to public; 
grant delete on TB_CCMDB to public;  
grant insert on TB_CCMDB to public; 
grant select on SEQ_TB_CCMDB to public;   