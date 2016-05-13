/*
================================================================================
表结构代码:TB_PMTCA
表结构名称:单品折扣促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCA;
drop index AK_TB_PMTCA;
drop table TB_PMTCA;
create table TB_PMTCA  (
   PMTCA_ID             INTEGER                         not null,  /*单品折扣单ID      */
   PMTCA001             INTEGER                         not null,  /*单别ID            */
   PMTCA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTCA003             DATE                            not null,  /*单据日期          */
   PMTCA004             INTEGER                         not null,  /*负责营运组织      */
   PMTCA005             INTEGER                         not null,  /*负责部门ID        */
   PMTCA006             INTEGER                         not null,  /*负责人员ID        */
   PMTCA007             INTEGER                         not null,  /*促销主题ID        */
   PMTCA008             VARCHAR2(255),                             /*促销描述          */
   PMTCA009             NUMBER(12,2),                              /*售价默认折扣率(%) */
   PMTCA010             NUMBER(12,2),                              /*会员默认折扣率(%) */
   PMTCA011             NUMBER(12,2),                              /*最低售价默认折扣率(%) */
   PMTCA012             VARCHAR2(1),                               /*是否能积分        */
   PMTCA013             VARCHAR2(1),                               /*特价能否折扣      */
   PMTCA014             VARCHAR2(2)                     not null,  /*折扣基准金额      */
   PMTCA015             INTEGER,                                   /*录入人ID          */
   PMTCA016             DATE,                                      /*录入日期          */
   PMTCA017             INTEGER,                                   /*审核人ID          */
   PMTCA018             DATE,                                      /*审核日期          */
   PMTCA019             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTCA020             VARCHAR2(1),                               /*是否签核          */
   PMTCA021             VARCHAR2(30),                              /*签核单号          */
   PMTCA022             VARCHAR2(1),                               /*签核码            */
   PMTCA023             VARCHAR2(2)                     not null,  /*促销类型          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCA primary key (PMTCA_ID)
);
create unique index AK_TB_PMTCA on TB_PMTCA (PMTCA002);
create sequence SEQ_TB_PMTCA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCA to public;
grant index  on TB_PMTCA to public;
grant update on TB_PMTCA to public; 
grant delete on TB_PMTCA to public;  
grant insert on TB_PMTCA to public; 
grant select on SEQ_TB_PMTCA to public;   