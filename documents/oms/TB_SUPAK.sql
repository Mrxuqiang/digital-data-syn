/*
================================================================================
表结构代码:TB_SUPAK
表结构名称:商户引入品牌表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SUPAK;
drop index AK_TB_SUPAK;
drop table TB_SUPAK;
create table TB_SUPAK  (
   SUPAK_ID             INTEGER                         not null,  /*登记品牌ID          */
   SUPAK001             INTEGER                         not null,  /*登记ID              */
   SUPAK002             INTEGER                         not null,  /*品牌ID              */
   SUPAK003             INTEGER                         not null,  /*产地ID              */
   SUPAK004             VARCHAR2(255),                             /*备注                */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_SUPAK primary key (SUPAK_ID)
);
create unique index AK_TB_SUPAK on TB_SUPAK (SUPAK001,SUPAK002);
create sequence SEQ_TB_SUPAK minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SUPAK to public;
grant index  on TB_SUPAK to public;
grant update on TB_SUPAK to public; 
grant delete on TB_SUPAK to public;  
grant insert on TB_SUPAK to public; 
grant select on SEQ_TB_SUPAK to public;   