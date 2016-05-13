/*
================================================================================
表结构代码:TB_CCMCH
表结构名称:消费卡开票单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMCH;
drop index AK_TB_CCMCH;
drop table TB_CCMCH;
create table TB_CCMCH  (
   CCMCH_ID             INTEGER                         not null,  /*消费卡开票单ID      */
   CCMCH001             INTEGER                         not null,  /*单别ID              */
   CCMCH002             VARCHAR2(30)                    not null,  /*开票单号            */
   CCMCH003             DATE                            not null,  /*单据日期            */
   CCMCH004             INTEGER                         not null,  /*营运组织ID          */
   CCMCH005             INTEGER                         not null,  /*开票部门ID          */
   CCMCH006             INTEGER                         not null,  /*开票人员ID          */
   CCMCH007             DATE                            not null,  /*开票日期            */
   CCMCH008             VARCHAR2(255),                             /*备注                */
   CCMCH009             INTEGER                         not null,  /*发票种类ID          */
   CCMCH010             NUMBER(12,0)                    not null,  /*发票号码            */
   CCMCH011             NUMBER(12,2)                    not null,  /*发票金额            */
   CCMCH012             VARCHAR2(60)                    not null,  /*发票单位            */
   CCMCH013             VARCHAR2(60),                              /*发票内容            */
   CCMCH014             VARCHAR2(1),                               /*已退票              */
   CCMCH015             DATE,                                      /*退票日期            */
   CCMCH016             INTEGER,                                   /*录入人ID            */
   CCMCH017             DATE,                                      /*录入日期            */
   CCMCH018             INTEGER,                                   /*审核人ID            */
   CCMCH019             DATE,                                      /*审核日期            */
   CCMCH020             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMCH021             VARCHAR2(1),                               /*是否签核            */
   CCMCH022             VARCHAR2(30),                              /*签核单号            */
   CCMCH023             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMCH primary key (CCMCH_ID)
);
create unique index AK_TB_CCMCH on TB_CCMCH (CCMCH002);
create sequence SEQ_TB_CCMCH minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCH to public;
grant index  on TB_CCMCH to public;
grant update on TB_CCMCH to public; 
grant delete on TB_CCMCH to public;  
grant insert on TB_CCMCH to public; 
grant select on SEQ_TB_CCMCH to public;   