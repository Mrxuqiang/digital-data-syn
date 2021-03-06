/*
================================================================================
表结构代码:TB_SUPAP
表结构名称:客商变更品牌表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAP;
drop index AK_TB_SUPAP;
drop table TB_SUPAP;
create table TB_SUPAP  (
   SUPAP_ID             INTEGER                         not null,  /*客商变更品牌ID      */
   SUPAP001             INTEGER                         not null,  /*客商变更ID          */
   SUPAP002             INTEGER                         not null,  /*品牌ID              */
   SUPAP003             INTEGER                         not null,  /*产地ID              */
   SUPAP004             VARCHAR2(255),                             /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAP primary key (SUPAP_ID)
);
create unique index AK_TB_SUPAP on TB_SUPAP (SUPAP001,SUPAP002);
create sequence SEQ_TB_SUPAP minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAP to public;
grant index  on TB_SUPAP to public;
grant update on TB_SUPAP to public; 
grant delete on TB_SUPAP to public;  
grant insert on TB_SUPAP to public; 
grant select on SEQ_TB_SUPAP to public;   