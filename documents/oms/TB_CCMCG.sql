/*
================================================================================
表结构代码:TB_CCMCG
表结构名称:消费卡退值单明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMCG;
drop index AK_TB_CCMCG;
drop table TB_CCMCG;
create table TB_CCMCG  (
   CCMCG_ID             INTEGER                         not null,  /*消费卡退值单明细ID  */
   CCMCG001             INTEGER                         not null,  /*消费卡退值单ID      */
   CCMCG002             INTEGER                         not null,  /*结算ID              */
   CCMCG003             NUMBER(12,2)                    not null,  /*退款金额            */
   CCMCG004             INTEGER,                                   /*手续费率ID          */
   CCMCG005             NUMBER(12,2),                              /*手续费金额          */
   CCMCG006             VARCHAR2(30),                              /*卡号                */
   CCMCG007             NUMBER(12,2),                              /*支票面额            */
   CCMCG008             VARCHAR2(16),                              /*支票号              */
   CCMCG009             VARCHAR2(60),                              /*支票单位            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMCG primary key (CCMCG_ID)
);
create unique index AK_TB_CCMCG on TB_CCMCG (CCMCG001,CCMCG002);
create sequence SEQ_TB_CCMCG minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCG to public;
grant index  on TB_CCMCG to public;
grant update on TB_CCMCG to public; 
grant delete on TB_CCMCG to public;  
grant insert on TB_CCMCG to public; 
grant select on SEQ_TB_CCMCG to public;   