/*
================================================================================
表结构代码:TB_CCMDW
表结构名称:预存退回单收支表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMDW;
drop index AK_TB_CCMDW;
drop table TB_CCMDW;
create table TB_CCMDW  (
   CCMDW_ID             INTEGER                         not null,  /*退回单收支ID	 */
   CCMDW001             INTEGER                         not null,  /*退回单ID		 */
   CCMDW002             INTEGER                         not null,  /*收支ID              */
   CCMDW003             NUMBER(12,2)                    not null,  /*交款金额            */
   CCMDW004             INTEGER,                                   /*费率ID	         */
   CCMDW005             NUMBER(12,2),                              /*费率金额            */
   CCMDW006             VARCHAR2(30),                              /*卡号                */
   CCMDW007             NUMBER(12,2),                              /*支票面额            */
   CCMDW008             VARCHAR2(16),                              /*支票号              */
   CCMDW009             VARCHAR2(60),                              /*支票单位            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER,                                 /*资料状态            */
   constraint PK_TB_CCMDW primary key (CCMDW_ID)
);
create unique index AK_TB_CCMDW on TB_CCMDW (CCMDW001,CCMDW002);
create sequence SEQ_TB_CCMDW minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMDW to public;
grant index  on TB_CCMDW to public;
grant update on TB_CCMDW to public; 
grant delete on TB_CCMDW to public;  
grant insert on TB_CCMDW to public; 
grant select on SEQ_TB_CCMDW to public;   