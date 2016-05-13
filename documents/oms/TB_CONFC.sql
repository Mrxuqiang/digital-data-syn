/*
================================================================================
表结构代码:TB_CONFC
表结构名称:供应商合同变更经营面积表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONFC;
drop index AK_TB_CONFC;
drop table TB_CONFC;
create table TB_CONFC  (
   CONFC_ID             INTEGER                         not null,  /*合同经营变更面积ID  */
   CONFC001             INTEGER                         not null,  /*合同变更ID          */
   CONFC002             INTEGER                         not null,  /*营运组织ID          */
   CONFC003             NUMBER(12,2)                    not null,  /*经营面积            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONFC primary key (CONFC_ID)
);
create unique index AK_TB_CONFC on TB_CONFC (CONFC001,CONFC002);
create sequence SEQ_TB_CONFC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFC to public;
grant index  on TB_CONFC to public;
grant update on TB_CONFC to public; 
grant delete on TB_CONFC to public;  
grant insert on TB_CONFC to public; 
grant select on SEQ_TB_CONFC to public;   