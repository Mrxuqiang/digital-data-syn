/*
================================================================================
表结构代码:TB_CONEC
表结构名称:供应商合同经营面积表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CONEC;
drop index AK_TB_CONEC;
drop table TB_CONEC;
create table TB_CONEC  (
   CONEC_ID             INTEGER                         not null,  /*合同经营面积ID      */
   CONEC001             INTEGER                         not null,  /*合同ID              */
   CONEC002             INTEGER                         not null,  /*营运组织ID          */
   CONEC003             NUMBER(12,2)                    not null,  /*经营面积            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CONEC primary key (CONEC_ID)
);
create unique index AK_TB_CONEC on TB_CONEC (CONEC001,CONEC002);
create sequence SEQ_TB_CONEC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CONEC to public;
grant index  on TB_CONEC to public;
grant update on TB_CONEC to public; 
grant delete on TB_CONEC to public;  
grant insert on TB_CONEC to public; 
grant select on SEQ_TB_CONEC to public;   