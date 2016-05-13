/*
================================================================================
表结构代码:TB_CONEB
表结构名称:供应商合同生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONEB;
drop index AK_TB_CONEB;
drop table TB_CONEB;
create table TB_CONEB  (
   CONEB_ID             INTEGER                         not null,  /*合同生效范围ID      */
   CONEB001             INTEGER                         not null,  /*合同ID              */
   CONEB002             INTEGER                         not null,  /*内部品牌ID          */
   CONEB003             INTEGER                         not null,  /*营运组织ID          */
   CONEB004             INTEGER                         not null,  /*公司ID              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONEB primary key (CONEB_ID)
);
create unique index AK_TB_CONEB on TB_CONEB (CONEB001,CONEB002,CONEB003);
create sequence SEQ_TB_CONEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEB to public;
grant index  on TB_CONEB to public;
grant update on TB_CONEB to public; 
grant delete on TB_CONEB to public;  
grant insert on TB_CONEB to public; 
grant select on SEQ_TB_CONEB to public;   