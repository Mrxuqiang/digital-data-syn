/*
================================================================================
表结构代码:TB_CCMCF
表结构名称:消费卡退值单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMCF;
drop index AK_TB_CCMCF;
drop table TB_CCMCF;
create table TB_CCMCF  (
   CCMCF_ID             INTEGER                         not null,  /*消费卡退值单ID      */
   CCMCF001             INTEGER                         not null,  /*单别ID              */
   CCMCF002             VARCHAR2(30)                    not null,  /*退值单号            */
   CCMCF003             DATE                            not null,  /*单据日期            */
   CCMCF004             INTEGER                         not null,  /*营运组织ID          */
   CCMCF005             INTEGER                         not null,  /*退值部门ID          */
   CCMCF006             INTEGER                         not null,  /*退值人员ID          */
   CCMCF007             DATE                            not null,  /*退值日期            */
   CCMCF008             VARCHAR2(255),                             /*备注                */
   CCMCF009             NUMBER(30)                      not null,  /*消费卡号            */
   CCMCF010             NUMBER(12,2)                    not null,  /*消费卡余额          */
   CCMCF011             NUMBER(12,2)                    not null,  /*消费卡退值金额      */
   CCMCF012             NUMBER(12,2)                    not null,  /*退款金额            */
   CCMCF013             NUMBER(12,2)                    not null,  /*消费卡退值后余额    */
   CCMCF014             INTEGER,                                   /*录入人ID            */
   CCMCF015             DATE,                                      /*录入日期            */
   CCMCF016             INTEGER,                                   /*审核人ID            */
   CCMCF017             DATE,                                      /*审核日期            */
   CCMCF018             VARCHAR2(1)                     not null,  /*审核状态            */
   CCMCF019             VARCHAR2(1),                               /*是否签核            */
   CCMCF020             VARCHAR2(30),                              /*签核单号            */
   CCMCF021             VARCHAR2(1),                               /*签核码              */
   CCMCF022             INTEGER,                                   /*卡种ID              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMCF primary key (CCMCF_ID)
);
create unique index AK_TB_CCMCF on TB_CCMCF (CCMCF002);
create sequence SEQ_TB_CCMCF minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMCF to public;
grant index  on TB_CCMCF to public;
grant update on TB_CCMCF to public; 
grant delete on TB_CCMCF to public;  
grant insert on TB_CCMCF to public; 
grant select on SEQ_TB_CCMCF to public;   