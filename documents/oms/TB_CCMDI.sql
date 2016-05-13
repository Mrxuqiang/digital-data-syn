/*
================================================================================
表结构代码:TB_CCMDI
表结构名称:券领用单子表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDI;
drop index AK_TB_CCMDI;
drop table TB_CCMDI;
create table TB_CCMDI  (
   CCMDI_ID             INTEGER                         not null,  /*券领用单明细ID      */
   CCMDI001             INTEGER                         not null,  /*券领用单ID          */
   CCMDI002             INTEGER                         not null,  /*券种ID              */
   CCMDI003             INTEGER                         not null,  /*券面额ID            */
   CCMDI004             NUMBER(12,2)                    not null,  /*券面额金额          */
   CCMDI005             NUMBER(30)                      not null,  /*开始号码            */
   CCMDI006             NUMBER(30)                      not null,  /*结束号码            */
   CCMDI007             NUMBER(12)                      not null,  /*张数                */
   CCMDI008             NUMBER(12,2)                    not null,  /*券金额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMDI primary key (CCMDI_ID)
);
create unique index AK_TB_CCMDI on TB_CCMDI (CCMDI001,CCMDI002,CCMDI003);
create sequence SEQ_TB_CCMDI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDI to public;
grant index  on TB_CCMDI to public;
grant update on TB_CCMDI to public; 
grant delete on TB_CCMDI to public;  
grant insert on TB_CCMDI to public; 
grant select on SEQ_TB_CCMDI to public;   