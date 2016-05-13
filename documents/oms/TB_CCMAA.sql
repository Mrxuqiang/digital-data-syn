/*
================================================================================
表结构代码:TB_CCMAA
表结构名称:卡种表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_CCMAA;
drop index AK_TB_CCMAA;
drop table TB_CCMAA;
create table TB_CCMAA  (
   CCMAA_ID             INTEGER                         not null,  /*卡种ID              */
   CCMAA001             VARCHAR2(4)                     not null,  /*卡种编号            */
   CCMAA002             VARCHAR2(30)                    not null,  /*卡种名称            */
   CCMAA003             VARCHAR2(1),                               /*会员卡              */
   CCMAA004             VARCHAR2(1),                               /*消费卡              */
   CCMAA005             VARCHAR2(1),                               /*消费券卡            */
   CCMAA006             INTEGER,                                   /*会员卡规则          */
   CCMAA007             VARCHAR2(255),                             /*备注                */
   CCMAA008             INTEGER,                                   /*录入人ID            */
   CCMAA009             DATE,                                      /*录入日期            */
   CCMAA010             INTEGER,                                   /*审核人ID            */
   CCMAA011             DATE,                                      /*审核日期            */
   CCMAA012             VARCHAR2(1),                               /*审核状态            */
   CCMAA013             VARCHAR2(1),                               /*是否签核            */
   CCMAA014             VARCHAR2(30),                              /*签核单号            */
   CCMAA015             VARCHAR2(1),                               /*签核码              */
   CREATE_USER          VARCHAR2(12),                              /*建立人员            */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门        */                               
   CREATE_DATE          DATE,                                      /*建立日期            */
   MODIFIER             VARCHAR2(12),                              /*修改人员            */
   MODI_DATE            DATE,                                      /*修改日期            */
   FLAG                 NUMBER(1),                                 /*资料状态            */
   constraint PK_TB_CCMAA primary key (CCMAA_ID)
);
create unique index AK_TB_CCMAA on TB_CCMAA (CCMAA001);
create sequence SEQ_TB_CCMAA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_CCMAA to public;
grant index  on TB_CCMAA to public;
grant update on TB_CCMAA to public; 
grant delete on TB_CCMAA to public;  
grant insert on TB_CCMAA to public; 
grant select on SEQ_TB_CCMAA to public;   