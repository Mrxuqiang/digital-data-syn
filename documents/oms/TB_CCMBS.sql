/*
================================================================================
表结构代码:TB_CCMBS
表结构名称:卡状况表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMBS;
drop index AK_TB_CCMBS;
drop table TB_CCMBS;
create table TB_CCMBS  (
   CCMBS_ID             INTEGER                         not null,  /*卡ID                */
   CCMBS001             INTEGER                         not null,  /*卡种ID              */
   CCMBS002             NUMBER(30)                      not null,  /*卡号                */
   CCMBS003             VARCHAR2(1)                     not null,  /*卡状态  1.入库  2.领用 3.使用  4.挂失 5.作废 6.换卡停用 */
   CCMBS004             DATE,                                      /*开卡日期            */
   CCMBS005             INTEGER,                                   /*开卡营运组织ID      */
   CCMBS006             INTEGER,                                   /*开卡部门ID          */
   CCMBS007             INTEGER,                                   /*开卡人ID            */
   CCMBS008             NUMBER(30),                                /*转入卡号            */
   CCMBS009             INTEGER,                                   /*会员ID              */
   CCMBS010             DATE,                                      /*有效起日            */
   CCMBS011             DATE,                                      /*有效止日            */
   CCMBS012             DATE,                                      /*发卡日期            */
   CCMBS013             INTEGER,                                   /*发卡营运组织ID      */
   CCMBS014             INTEGER,                                   /*发卡部门ID          */
   CCMBS015             INTEGER,                                   /*发卡人ID            */
   CCMBS016             INTEGER,                                   /*发卡条件ID          */
   CCMBS017             DATE,                                      /*失效日期            */
   CCMBS018             DATE,                                      /*最近消费日          */
   CCMBS019             NUMBER(12),                                /*累计积分            */
   CCMBS020             NUMBER(12),                                /*已兑积分            */
   CCMBS021             NUMBER(12),                                /*清零积分            */
   CCMBS022             NUMBER(12),                                /*剩余积分            */
   CCMBS023             NUMBER(12,2),                              /*累计消费            */
   CCMBS024             NUMBER(12,2),                              /*消费卡充值金额      */
   CCMBS025             NUMBER(12,2),                              /*消费卡消费金额      */
   CCMBS026             NUMBER(12,2),                              /*消费卡退值金额      */
   CCMBS027             NUMBER(12,2),                              /*消费卡余额          */
   CCMBS028             INTEGER,                                   /*会员卡等级          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMBS primary key (CCMBS_ID)
);
create unique index AK_TB_CCMBS on TB_CCMBS (CCMBS002);
create sequence SEQ_TB_CCMBS minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMBS to public;
grant index  on TB_CCMBS to public;
grant update on TB_CCMBS to public; 
grant delete on TB_CCMBS to public;  
grant insert on TB_CCMBS to public; 
grant select on SEQ_TB_CCMBS to public;   