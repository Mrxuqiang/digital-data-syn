/*
================================================================================
表结构代码:TB_CONFB
表结构名称:供应商合同变更生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONFB;
drop index AK_TB_CONFB;
drop table TB_CONFB;
create table TB_CONFB  (
   CONFB_ID             INTEGER                         not null,  /*合同变更生效范围ID  */
   CONFB001             INTEGER                         not null,  /*合同变更ID          */
   CONFB002             INTEGER                         not null,  /*内部品牌ID          */
   CONFB003             INTEGER                         not null,  /*营运组织ID          */
   CONFB004             INTEGER                         not null,  /*公司ID              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONFB primary key (CONFB_ID)
);
create unique index AK_TB_CONFB on TB_CONFB (CONFB001,CONFB002,CONFB003);
create sequence SEQ_TB_CONFB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONFB to public;
grant index  on TB_CONFB to public;
grant update on TB_CONFB to public; 
grant delete on TB_CONFB to public;  
grant insert on TB_CONFB to public; 
grant select on SEQ_TB_CONFB to public;   