/*
================================================================================
表结构代码:TB_CCMDC
表结构名称:券面额表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDC;
drop index AK_TB_CCMDC;
drop table TB_CCMDC;
create table TB_CCMDC  (
   CCMDC_ID             INTEGER                         not null,  /*券面额ID            */
   CCMDC001             VARCHAR2(4)                     not null,  /*券面额代码          */
   CCMDC002             VARCHAR2(30)                    not null,  /*券面额名称          */
   CCMDC003             NUMBER(12,2)                    not null,  /*券面额金额          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDC primary key (CCMDC_ID)
);
create unique index AK_TB_CCMDC on TB_CCMDC (CCMDC001);
create sequence SEQ_TB_CCMDC minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDC to public;
grant index  on TB_CCMDC to public;
grant update on TB_CCMDC to public; 
grant delete on TB_CCMDC to public;  
grant insert on TB_CCMDC to public; 
grant select on SEQ_TB_CCMDC to public;   