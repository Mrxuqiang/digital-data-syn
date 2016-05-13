/*
================================================================================
表结构代码:TB_PMTBA
表结构名称:单品特价促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTBA;
drop index AK_TB_PMTBA;
drop table TB_PMTBA;
create table TB_PMTBA  (
   PMTBA_ID             INTEGER                         not null,  /*单品特价单ID      */
   PMTBA001             INTEGER                         not null,  /*单别ID            */
   PMTBA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTBA003             DATE                            not null,  /*单据日期          */
   PMTBA004             INTEGER                         not null,  /*负责营运组织      */
   PMTBA005             INTEGER                         not null,  /*负责部门ID        */
   PMTBA006             INTEGER                         not null,  /*负责人员ID        */
   PMTBA007             INTEGER                         not null,  /*促销主题ID        */
   PMTBA008             VARCHAR2(255),                             /*促销描述          */
   PMTBA009             VARCHAR2(2)                     not null,  /*促销类型          */
   PMTBA010             VARCHAR2(1),                               /*是否可积分        */
   PMTBA011             INTEGER,                                   /*录入人ID          */
   PMTBA012             DATE,                                      /*录入日期          */
   PMTBA013             INTEGER,                                   /*审核人ID          */
   PMTBA014             DATE,                                      /*审核日期          */
   PMTBA015             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTBA016             VARCHAR2(1),                               /*是否签核          */
   PMTBA017             VARCHAR2(30),                              /*签核单号          */
   PMTBA018             VARCHAR2(1),                               /*签核码            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTBA primary key (PMTBA_ID)
);
create unique index AK_TB_PMTBA on TB_PMTBA (PMTBA002);
create sequence SEQ_TB_PMTBA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBA to public;
grant index  on TB_PMTBA to public;
grant update on TB_PMTBA to public; 
grant delete on TB_PMTBA to public;  
grant insert on TB_PMTBA to public; 
grant select on SEQ_TB_PMTBA to public;   