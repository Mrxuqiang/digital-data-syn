/*
================================================================================
表结构代码:TB_SERJA
表结构名称:合同续签价格类型转移表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SERJA;
drop index AK_TB_SERJA;
drop table TB_SERJA;
create table TB_SERJA  (
   SERJA_ID             INTEGER                         not null,  /*价格类型ID          */
   SERJA001             INTEGER                         not null,  /*展位ID              */
   SERJA002             INTEGER                         not null,  /*商户ID              */
   SERJA003             INTEGER                         not null,  /*系列ID              */
   SERJA004             INTEGER                         not null,  /*合同ID              */
   SERJA005             VARCHAR2(50)                    not null,  /*合同号              */
   SERJA006             VARCHAR2(30)                            ,  /*价格类型            */
   SERJA007             NUMBER(10,2)                            ,  /*最低折扣            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 INTEGER,                                   /*资料状态            */
   constraint PK_TB_SERJA primary key (SERJA_ID)
);
create sequence SEQ_TB_SERJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SERJA to public;
grant index  on TB_SERJA to public;
grant update on TB_SERJA to public; 
grant delete on TB_SERJA to public;  
grant insert on TB_SERJA to public; 
grant select on SEQ_TB_SERJA to public;   