/*
================================================================================
表结构代码:TB_SALEB
表结构名称:日结收银交款表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALEB;
drop index AK_TB_SALEB;
drop table TB_SALEB;
create table TB_SALEB  (
   SALEB_ID             INTEGER                         not null,  /*日结收银交款ID        */
   SALEB001             INTEGER                         not null,  /*营运组织ID            */
   SALEB002             DATE                            not null,  /*销售日期              */
   SALEB003             VARCHAR2(1)                     not null,  /*交易类型              */
   SALEB004             INTEGER                         not null,  /*收银员ID              */
   SALEB005             INTEGER                         not null,  /*结算ID                */
   SALEB006             NUMBER(12,2)                    not null,  /*交款金额              */
   SALEB007             NUMBER(12,2),                              /*手续费金额            */
   SALEB008             NUMBER(12,2),                              /*溢收金额              */
   SALEB009             VARCHAR2(30),                              /*参考单号一            */
   SALEB010             VARCHAR2(30),                              /*参考单号二            */
   SALEB011             VARCHAR2(30),                              /*参考单号三            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员              */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门          */
   CREATE_DATE          DATE,                                      /*建立日期              */
   MODIFIER             VARCHAR2(12),                              /*修改人员              */
   MODI_DATE            DATE,                                      /*修改日期              */
   FLAG                 NUMBER(1),                                 /*资料状态              */
   constraint PK_TB_SALEB primary key (SALEB_ID)
);
create unique index AK_TB_SALEB on TB_SALEB (SALEB001,SALEB002,SALEB003,SALEB004,SALEB005);
create sequence SEQ_TB_SALEB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALEB to public;
grant index  on TB_SALEB to public;
grant update on TB_SALEB to public; 
grant delete on TB_SALEB to public;  
grant insert on TB_SALEB to public; 
grant select on SEQ_TB_SALEB to public;   