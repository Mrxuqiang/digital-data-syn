/*
================================================================================
表结构代码:TB_MEMBF
表结构名称:会员卡发卡交款明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_MEMBF;
drop index AK_TB_MEMBF;
drop table TB_MEMBF;
create table TB_MEMBF  (
   MEMBF_ID             INTEGER                         not null,  /*会员卡发卡交款明细ID*/
   MEMBF001             INTEGER                         not null,  /*会员卡发卡单ID      */
   MEMBF002             INTEGER                         not null,  /*结算ID              */
   MEMBF003             NUMBER(12,2)                    not null,  /*交款金额            */
   MEMBF004             INTEGER,                                   /*手续费率ID          */
   MEMBF005             NUMBER(12,2),                              /*手续费金额          */
   MEMBF006             VARCHAR2(30),                              /*卡号                */
   MEMBF007             NUMBER(12,2),                              /*支票面额            */
   MEMBF008             VARCHAR2(16),                              /*支票号              */
   MEMBF009             VARCHAR2(60),                              /*支票单位            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_MEMBF primary key (MEMBF_ID)
);
create unique index AK_TB_MEMBF on TB_MEMBF (MEMBF001,MEMBF002);
create sequence SEQ_TB_MEMBF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_MEMBF to public;
grant index  on TB_MEMBF to public;
grant update on TB_MEMBF to public; 
grant delete on TB_MEMBF to public;  
grant insert on TB_MEMBF to public; 
grant select on SEQ_TB_MEMBF to public;   