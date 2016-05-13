/*
================================================================================
表结构代码:TB_CCMBT
表结构名称:卡状况明细表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBT;
drop index AK_TB_CCMBT;
drop table TB_CCMBT;
create table TB_CCMBT  (
   CCMBT_ID             INTEGER                         not null,  /*消费券卡明细ID      */
   CCMBT001             INTEGER                         not null,  /*卡ID                */
   CCMBT002             NUMBER(30)                      not null,  /*卡号                */
   CCMBT003             INTEGER                         not null,  /*券种ID              */
   CCMBT004             DATE                            not null,  /*券有效起日          */
   CCMBT005             DATE                            not null,  /*券有效止日          */
   CCMBT006             NUMBER(12,2)                    not null,  /*券金额              */
   CCMBT007             NUMBER(12,2)                    not null,  /*券销退金额          */
   CCMBT008             NUMBER(12,2)                    not null,  /*券消费金额          */
   CCMBT009             NUMBER(12,2)                    not null,  /*券换券金额          */
   CCMBT010             NUMBER(12,2)                    not null,  /*券余额              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBT primary key (CCMBT_ID)
);
create unique index AK_TB_CCMBT on TB_CCMBT (CCMBT002,CCMBT003);
create sequence SEQ_TB_CCMBT minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBT to public;
grant index  on TB_CCMBT to public;
grant update on TB_CCMBT to public; 
grant delete on TB_CCMBT to public;  
grant insert on TB_CCMBT to public; 
grant select on SEQ_TB_CCMBT to public;   