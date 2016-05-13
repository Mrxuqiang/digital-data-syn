/*
================================================================================
表结构代码:TB_PMTCI
表结构名称:折扣促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTCI;
drop index AK_TB_PMTCI;
drop table TB_PMTCI;
create table TB_PMTCI  (
   PMTCI_ID             INTEGER                         not null,  /*折扣单ID          */
   PMTCI001             INTEGER                         not null,  /*单别ID            */
   PMTCI002             VARCHAR2(30)                    not null,    /*促销单号        */
   PMTCI003             DATE                            not null,  /*单据日期          */
   PMTCI004             INTEGER                         not null,  /*负责营运组织      */
   PMTCI005             INTEGER                         not null,  /*负责部门ID        */
   PMTCI006             INTEGER                         not null,  /*负责人员ID        */
   PMTCI007             INTEGER                         not null,  /*促销主题ID        */
   PMTCI008             VARCHAR2(255),                             /*促销描述          */
   PMTCI009             DATE                            not null,  /*促销起日          */
   PMTCI010             DATE                            not null,  /*促销止日          */
   PMTCI011             NUMBER(12,4)                    not null,  /*价格精确度        */
   PMTCI012             VARCHAR2(8)                            ,   /*促销时段1         */
   PMTCI013             VARCHAR2(8)                            ,   /*促销时段1         */
   PMTCI014             VARCHAR2(8)                             ,  /*促销时段2         */
   PMTCI015             VARCHAR2(8)                              , /*促销时段2         */
   PMTCI016             VARCHAR2(8)                              , /*促销时段3         */
   PMTCI017             VARCHAR2(8)                              , /*促销时段3         */
   PMTCI018             INTEGER,                                   /*录入人ID          */
   PMTCI019             DATE,                                      /*录入日期          */
   PMTCI020             INTEGER,                                   /*审核人ID          */
   PMTCI021             DATE,                                      /*审核日期          */
   PMTCI022             VARCHAR2(1)                     not null,  /*审核状态          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTCI primary key (PMTCI_ID)
);
create unique index AK_TB_PMTCI on TB_PMTCI (PMTCI002);
create sequence SEQ_TB_PMTCI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTCI to public;
grant index  on TB_PMTCI to public;
grant update on TB_PMTCI to public; 
grant delete on TB_PMTCI to public;  
grant insert on TB_PMTCI to public; 
grant select on SEQ_TB_PMTCI to public;   