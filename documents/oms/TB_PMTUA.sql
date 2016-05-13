/*
================================================================================
表结构代码:TB_PMTUA
表结构名称:促销变更单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTUA;
drop index AK_TB_PMTUA;
drop table TB_PMTUA;
create table TB_PMTUA  (
   PMTUA_ID             INTEGER                         not null,  /*促销变更单ID      */
   PMTUA001             INTEGER                         not null,  /*单别ID            */
   PMTUA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTUA003             DATE                            not null,  /*单据日期          */
   PMTUA004             VARCHAR2(2),                               /*来源单据          */
   PMTUA005             INTEGER                         not null,  /*来源单号ID        */
   PMTUA006             INTEGER                         not null,  /*变更营运组织      */
   PMTUA007             INTEGER                         not null,  /*变更部门ID        */
   PMTUA008             INTEGER                         not null,  /*变更人员ID        */
   PMTUA009             VARCHAR2(255),                             /*变更说明          */
   PMTUA010             INTEGER,                                   /*录入人ID          */
   PMTUA011             DATE,                                      /*录入日期          */
   PMTUA012             INTEGER,                                   /*审核人ID          */
   PMTUA013             DATE,                                      /*审核日期          */
   PMTUA014             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTUA015             VARCHAR2(1),                               /*是否签核          */
   PMTUA016             VARCHAR2(30),                              /*签核单号          */
   PMTUA017             VARCHAR2(1),                               /*签核码            */
   PMTUA018             VARCHAR2(16),                              /*来源单号          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTUA primary key (PMTUA_ID)
);
create unique index AK_TB_PMTUA on TB_PMTUA (PMTUA002);
create sequence SEQ_TB_PMTUA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTUA to public;
grant index  on TB_PMTUA to public;
grant update on TB_PMTUA to public; 
grant delete on TB_PMTUA to public;  
grant insert on TB_PMTUA to public; 
grant select on SEQ_TB_PMTUA to public;   