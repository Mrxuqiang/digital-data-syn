/*
================================================================================
表结构代码:TB_SERAS
表结构名称:销售凭证状态表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERAS;
drop index AK_TB_SERAS;
drop table TB_SERAS;
create table TB_SERAS  (
   SERAS_ID             INTEGER                         not null,  /*销售凭证ID          */
   SERAS001             INTEGER                         not null,  /*凭证种类ID          */
   SERAS002             NUMBER(12)                      not null,  /*凭证号码            */
   SERAS003             VARCHAR2(1)                     not null,  /*凭证状态： 1：入库  2：发放 3：使用  4：作废 */
   SERAS004             INTEGER,                                   /*摊位ID              */
   SERAS005             INTEGER,                                   /*合同ID              */
   SERAS006             INTEGER,                                   /*客商ID              */
   SERAS007             INTEGER,                                   /*营运组织ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SERAS primary key (SERAS_ID)
);
create unique index AK_TB_SERAS on TB_SERAS (SERAS001,SERAS002,SERAS007);
create sequence SEQ_TB_SERAS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERAS to public;
grant index  on TB_SERAS to public;
grant update on TB_SERAS to public; 
grant delete on TB_SERAS to public;  
grant insert on TB_SERAS to public; 
grant select on SEQ_TB_SERAS to public;   