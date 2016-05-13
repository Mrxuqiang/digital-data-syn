/*
================================================================================
表结构代码:TB_CCMDE
表结构名称:券种生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDE;
drop index AK_TB_CCMDE;
drop table TB_CCMDE;
create table TB_CCMDE  (
   CCMDE_ID             INTEGER                         not null,  /*卡种生效范围ID      */
   CCMDE001             INTEGER                         not null,  /*卡种ID              */
   CCMDE002             VARCHAR2(1)                     not null,  /*范围类型            */
   CCMDE003             INTEGER                         not null,  /*营运组织ID          */
   CCMDE004             INTEGER                         not null,  /*摊位ID              */
   CCMDE005             INTEGER                         not null,  /*经营小类ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDE primary key (CCMDE_ID)
);
create unique index AK_TB_CCMDE on TB_CCMDE (CCMDE001,CCMDE002,CCMDE003,CCMDE004);
create sequence SEQ_TB_CCMDE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDE to public;
grant index  on TB_CCMDE to public;
grant update on TB_CCMDE to public; 
grant delete on TB_CCMDE to public;  
grant insert on TB_CCMDE to public; 
grant select on SEQ_TB_CCMDE to public;   