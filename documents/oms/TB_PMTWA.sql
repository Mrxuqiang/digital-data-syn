/*
================================================================================
表结构代码:TB_PMTWA
表结构名称:拼单折扣促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTWA;
drop index AK_TB_PMTWA;
drop table TB_PMTWA;
create table TB_PMTWA  (
   PMTWA_ID             INTEGER                         not null,  /*拼单折扣单ID      */
   PMTWA001             INTEGER                         not null,  /*单别ID            */
   PMTWA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTWA003             DATE                            not null,  /*单据日期          */
   PMTWA004             INTEGER                         not null,  /*负责营运组织      */
   PMTWA005             INTEGER                         not null,  /*负责部门ID        */
   PMTWA006             INTEGER                         not null,  /*负责人员ID        */
   PMTWA007             INTEGER                         not null,  /*促销主题ID        */
   PMTWA008             VARCHAR2(255),                             /*促销描述          */
   PMTWA009             INTEGER,                                   /*录入人ID          */
   PMTWA010             DATE,                                      /*录入日期          */
   PMTWA011             INTEGER,                                   /*审核人ID          */
   PMTWA012             DATE,                                      /*审核日期          */
   PMTWA013             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTWA014             VARCHAR2(1),                               /*是否签核          */
   PMTWA015             VARCHAR2(30),                              /*签核单号          */
   PMTWA016             VARCHAR2(1),                               /*签核码            */
   PMTWA017             VARCHAR2(2)                     not null,  /*促销类型          */
   PMTWA018             VARCHAR2(255),                             /*备注          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTWA primary key (PMTWA_ID)
);
create unique index AK_TB_PMTWA on TB_PMTWA (PMTWA002);
create sequence SEQ_TB_PMTWA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTWA to public;
grant index  on TB_PMTWA to public;
grant update on TB_PMTWA to public; 
grant delete on TB_PMTWA to public;  
grant insert on TB_PMTWA to public; 
grant select on SEQ_TB_PMTWA to public;   

COMMENT ON COLUMN "DY8585"."TB_PMTWA"."PMTWA_ID"
IS
  '拼单折扣单ID';