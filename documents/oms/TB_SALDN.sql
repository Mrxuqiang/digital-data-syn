/*
================================================================================
表结构代码:TB_SALDN
表结构名称:退货垫付还回单收款别表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_SALDN;
drop index AK_TB_SALDN;
drop table TB_SALDN;
create table TB_SALDN  (
   SALDN_ID             INTEGER                         not null,  /*退货垫付还回单付款ID */
   SALDN001             INTEGER                         not null,  /*退货垫付还回单ID     */
   SALDN002             INTEGER                         not null,  /*结算方式ID           */
   SALDN003             NUMBER(12,2)                    not null,  /*付款金额             */
   SALDN004             NUMBER(12,2),                              /*手续费               */
   SALDN005             VARCHAR2(30),                              /*银行卡号             */
   SALDN006             INTEGER,                                   /*手续费率ID           */
   SALDN007             NUMBER(12,2),                              /*手续费率(%)          */
   SALDN008             VARCHAR2(30),                              /*支票号               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_SALDN primary key (SALDN_ID)
);
create index AK_TB_SALDN on TB_SALDN (SALDN_ID,SALDN001,SALDN002);
create sequence SEQ_TB_SALDN minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_SALDN to public;
grant index  on TB_SALDN to public;
grant update on TB_SALDN to public; 
grant delete on TB_SALDN to public;  
grant insert on TB_SALDN to public; 
grant select on SEQ_TB_SALDN to public;   