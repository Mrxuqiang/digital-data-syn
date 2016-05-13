/*
================================================================================
表结构代码:TB_CCMAB
表结构名称:卡种生效范围表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMAB;
drop index AK_TB_CCMAB;
drop table TB_CCMAB;
create table TB_CCMAB  (
   CCMAB_ID             INTEGER                         not null,  /*卡种生效范围ID      */
   CCMAB001             INTEGER                         not null,  /*卡种ID              */
   CCMAB002             INTEGER                         not null,  /*营运组织ID          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMAB primary key (CCMAB_ID)
);
create unique index AK_TB_CCMAB on TB_CCMAB (CCMAB001,CCMAB002);
create sequence SEQ_TB_CCMAB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMAB to public;
grant index  on TB_CCMAB to public;
grant update on TB_CCMAB to public; 
grant delete on TB_CCMAB to public;  
grant insert on TB_CCMAB to public; 
grant select on SEQ_TB_CCMAB to public;   