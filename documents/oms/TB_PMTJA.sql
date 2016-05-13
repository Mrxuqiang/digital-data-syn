/*
================================================================================
表结构代码:TB_PMTJA
表结构名称:单品组合促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTJA;
drop index AK_TB_PMTJA;
drop table TB_PMTJA;
create table TB_PMTJA  (
   PMTJA_ID             INTEGER                         not null,  /*单品组合单ID      */
   PMTJA001             INTEGER                         not null,  /*单别ID            */
   PMTJA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTJA003             DATE                            not null,  /*单据日期          */
   PMTJA004             INTEGER                         not null,  /*负责营运组织      */
   PMTJA005             INTEGER                         not null,  /*负责部门ID        */
   PMTJA006             INTEGER                         not null,  /*负责人员ID        */
   PMTJA007             INTEGER                         not null,  /*促销主题ID        */
   PMTJA008             VARCHAR2(255),                             /*促销描述          */
   PMTJA009             VARCHAR2(1),                               /*是否能积分        */
   PMTJA010             VARCHAR2(1),                               /*促销能否同时单品组合  */
   PMTJA011             VARCHAR2(2),                               /*分摊方式          */
   PMTJA012             VARCHAR2(2),                               /*分摊金额          */
   PMTJA013             INTEGER,                                   /*录入人ID          */
   PMTJA014             DATE,                                      /*录入日期          */
   PMTJA015             INTEGER,                                   /*审核人ID          */
   PMTJA016             DATE,                                      /*审核日期          */
   PMTJA017             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTJA018             VARCHAR2(1),                               /*是否签核          */
   PMTJA019             VARCHAR2(30),                              /*签核单号          */
   PMTJA020             VARCHAR2(1),                               /*签核码            */
   PMTJA021             VARCHAR2(2)                     not null,  /*促销类型          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTJA primary key (PMTJA_ID)
);
create unique index AK_TB_PMTJA on TB_PMTJA (PMTJA002);
create sequence SEQ_TB_PMTJA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTJA to public;
grant index  on TB_PMTJA to public;
grant update on TB_PMTJA to public; 
grant delete on TB_PMTJA to public;  
grant insert on TB_PMTJA to public; 
grant select on SEQ_TB_PMTJA to public;   