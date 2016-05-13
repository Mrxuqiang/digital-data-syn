/*
================================================================================
表结构代码:TB_PMTDA
表结构名称:单品买赠促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTDA;
drop index AK_TB_PMTDA;
drop table TB_PMTDA;
create table TB_PMTDA  (
   PMTDA_ID             INTEGER                         not null,  /*单品买赠单ID      */
   PMTDA001             INTEGER                         not null,  /*单别ID            */
   PMTDA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTDA003             DATE                            not null,  /*单据日期          */
   PMTDA004             INTEGER                         not null,  /*负责营运组织      */
   PMTDA005             INTEGER                         not null,  /*负责部门ID        */
   PMTDA006             INTEGER                         not null,  /*负责人员ID        */
   PMTDA007             INTEGER                         not null,  /*促销主题ID        */
   PMTDA008             VARCHAR2(255),                             /*促销描述          */
   PMTDA009             VARCHAR2(1),                               /*是否能积分        */
   PMTDA010             VARCHAR2(1),                               /*促销能否同时单品买赠  */
   PMTDA011             VARCHAR2(2)                     not null,  /*买赠类型          */
   PMTDA012             VARCHAR2(2)                     not null,  /*买赠范围          */
   PMTDA013             VARCHAR2(2)                     not null,  /*买赠方式          */
   PMTDA014             VARCHAR2(2),                               /*分摊方式          */
   PMTDA015             VARCHAR2(2),                               /*分摊金额          */
   PMTDA016             INTEGER,                                   /*录入人ID          */
   PMTDA017             DATE,                                      /*录入日期          */
   PMTDA018             INTEGER,                                   /*审核人ID          */
   PMTDA019             DATE,                                      /*审核日期          */
   PMTDA020             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTDA021             VARCHAR2(1),                               /*是否签核          */
   PMTDA022             VARCHAR2(30),                              /*签核单号          */
   PMTDA023             VARCHAR2(1),                               /*签核码            */
   PMTDA024             VARCHAR2(2)                     not null,  /*促销类型          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTDA primary key (PMTDA_ID)
);
create unique index AK_TB_PMTDA on TB_PMTDA (PMTDA002);
create sequence SEQ_TB_PMTDA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTDA to public;
grant index  on TB_PMTDA to public;
grant update on TB_PMTDA to public; 
grant delete on TB_PMTDA to public;  
grant insert on TB_PMTDA to public; 
grant select on SEQ_TB_PMTDA to public;   