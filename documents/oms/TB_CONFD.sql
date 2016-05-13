/*
================================================================================
表结构代码:TB_CONFD
表结构名称:供应商合同变更经营品牌表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONFD;
drop index AK_TB_CONFD;
drop table TB_CONFD;
create table TB_CONFD  (
   CONFD_ID             INTEGER                         not null,  /*合同经营变更品牌ID  */
   CONFD001             INTEGER                         not null,  /*合同变更ID          */
   CONFD002             INTEGER                         not null,  /*品牌ID              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONFD primary key (CONFD_ID)
);
create unique index AK_TB_CONFD on TB_CONFD (CONFD001,CONFD002);
create sequence SEQ_TB_CONFD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFD to public;
grant index  on TB_CONFD to public;
grant update on TB_CONFD to public; 
grant delete on TB_CONFD to public;  
grant insert on TB_CONFD to public; 
grant select on SEQ_TB_CONFD to public;   