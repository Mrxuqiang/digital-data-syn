/*
================================================================================
表结构代码:TB_CCMCD
表结构名称:消费卡充值单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMCD;
drop index AK_TB_CCMCD;
drop table TB_CCMCD;
create table TB_CCMCD  (
   CCMCD_ID             INTEGER                         not null,  /*消费卡充值单ID      */
   CCMCD001             INTEGER                         not null,  /*单别ID              */
   CCMCD002             VARCHAR2(30)                    not null,  /*充值单号            */
   CCMCD003             DATE                            not null,  /*单据日期            */
   CCMCD004             INTEGER                         not null,  /*营运组织ID          */
   CCMCD005             INTEGER                         not null,  /*充值部门ID          */
   CCMCD006             INTEGER                         not null,  /*充值人员ID          */
   CCMCD007             DATE                            not null,  /*充值日期            */
   CCMCD008             VARCHAR2(255),                             /*备注                */
   CCMCD009             NUMBER(30)                      not null,  /*消费卡号            */
   CCMCD010             NUMBER(12,2)                    not null,  /*消费卡余额          */
   CCMCD011             NUMBER(12,2)                    not null,  /*充值金额            */
   CCMCD012             NUMBER(12,2)                    not null,  /*折扣金额            */
   CCMCD013             NUMBER(12,2)                    not null,  /*应交款金额          */
   CCMCD014             NUMBER(12,2)                    not null,  /*实交款金额          */
   CCMCD015             INTEGER,                                   /*录入人ID            */
   CCMCD016             DATE,                                      /*录入日期            */
   CCMCD017             INTEGER,                                   /*审核人ID            */
   CCMCD018             DATE,                                      /*审核日期            */
   CCMCD019             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMCD020             VARCHAR2(1),                               /*是否签核            */
   CCMCD021             VARCHAR2(30),                              /*签核单号            */
   CCMCD022             VARCHAR2(1),                               /*签核码              */
   CCMCD023             INTEGER,                                   /*卡种ID              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMCD primary key (CCMCD_ID)
);
create unique index AK_TB_CCMCD on TB_CCMCD (CCMCD002);
create sequence SEQ_TB_CCMCD minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCD to public;
grant index  on TB_CCMCD to public;
grant update on TB_CCMCD to public; 
grant delete on TB_CCMCD to public;  
grant insert on TB_CCMCD to public; 
grant select on SEQ_TB_CCMCD to public;   