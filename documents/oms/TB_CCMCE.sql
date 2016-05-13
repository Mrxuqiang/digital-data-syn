/*
================================================================================
表结构代码:TB_CCMCE
表结构名称:消费卡充值单明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMCE;
drop index AK_TB_CCMCE;
drop table TB_CCMCE;
create table TB_CCMCE  (
   CCMCE_ID             INTEGER                         not null,  /*消费卡充值单明细ID  */
   CCMCE001             INTEGER                         not null,  /*消费卡充值单ID      */
   CCMCE002             INTEGER                         not null,  /*结算ID              */
   CCMCE003             NUMBER(12,2)                    not null,  /*交款金额            */
   CCMCE004             INTEGER,                                   /*手续费率ID          */
   CCMCE005             NUMBER(12,2),                              /*手续费金额          */
   CCMCE006             VARCHAR2(30),                              /*卡号                */
   CCMCE007             NUMBER(12,2),                              /*支票面额            */
   CCMCE008             VARCHAR2(16),                              /*支票号              */
   CCMCE009             VARCHAR2(60),                              /*支票单位            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMCE primary key (CCMCE_ID)
);
create unique index AK_TB_CCMCE on TB_CCMCE (CCMCE001,CCMCE002);
create sequence SEQ_TB_CCMCE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCE to public;
grant index  on TB_CCMCE to public;
grant update on TB_CCMCE to public; 
grant delete on TB_CCMCE to public;  
grant insert on TB_CCMCE to public; 
grant select on SEQ_TB_CCMCE to public;   