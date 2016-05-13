/*
================================================================================
表结构代码:TB_TAXAE
表结构名称:开票单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_TAXAE;
drop index AK_TB_TAXAE;
drop table TB_TAXAE;
create table TB_TAXAE  (
   TAXAE_ID             INTEGER                         not null,  /*开票单ID          */
   TAXAE001             INTEGER                         not null,  /*单别ID            */
   TAXAE002             VARCHAR2(30)                    not null,  /*开票单号          */
   TAXAE003             DATE                            not null,  /*单据日期          */
   TAXAE004             INTEGER                         not null,  /*公司ID            */
   TAXAE005             INTEGER                         not null,  /*营运组织ID        */
   TAXAE006             DATE                            not null,  /*开票日期          */
   TAXAE007             INTEGER                         not null,  /*税票号ID          */
   TAXAE008             INTEGER                         not null,  /*摊位ID            */
   TAXAE009             INTEGER                         not null,  /*合同ID            */
   TAXAE010             INTEGER                         not null,  /*商户ID            */
   TAXAE011             INTEGER                         not null,  /*发票种类ID        */
   TAXAE012             NUMBER(12)                      not null,  /*发票号码          */
   TAXAE013             NUMBER(12,2)                    not null,  /*发票金额          */
   TAXAE014             INTEGER                         not null,  /*业务部门ID        */
   TAXAE015             INTEGER                         not null,  /*业务人员ID        */
   TAXAE016             VARCHAR2(255),                             /*备注              */
   TAXAE017             VARCHAR2(1),                               /*已退票            */
   TAXAE018             DATE,                                      /*退票日期          */
   TAXAE019             INTEGER,                                   /*录入人ID          */
   TAXAE020             DATE,                                      /*录入日期          */
   TAXAE021             INTEGER,                                   /*审核人ID          */
   TAXAE022             DATE,                                      /*审核日期          */
   TAXAE023             VARCHAR2(1)                     not null,  /*审核状态          */
   TAXAE024             VARCHAR2(1),                               /*是否签核          */
   TAXAE025             VARCHAR2(30),                              /*签核单号          */
   TAXAE026             VARCHAR2(1),                               /*签核码            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_TAXAE primary key (TAXAE_ID)
);
create unique index AK_TB_TAXAE on TB_TAXAE (TAXAE002,TAXAE005);
create sequence SEQ_TB_TAXAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_TAXAE to public;
grant index  on TB_TAXAE to public;
grant update on TB_TAXAE to public; 
grant delete on TB_TAXAE to public;  
grant insert on TB_TAXAE to public; 
grant select on SEQ_TB_TAXAE to public;   