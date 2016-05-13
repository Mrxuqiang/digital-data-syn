/*
================================================================================
表结构代码:TB_PMTGA
表结构名称:累计返券促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTGA;
drop index AK_TB_PMTGA;
drop table TB_PMTGA;
create table TB_PMTGA  (
   PMTGA_ID             INTEGER                         not null,  /*累计返券单ID      */
   PMTGA001             INTEGER                         not null,  /*单别ID            */
   PMTGA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTGA003             DATE                            not null,  /*单据日期          */
   PMTGA004             INTEGER                         not null,  /*负责营运组织      */
   PMTGA005             INTEGER                         not null,  /*负责部门ID        */
   PMTGA006             INTEGER                         not null,  /*负责人员ID        */
   PMTGA007             INTEGER                         not null,  /*促销主题ID        */
   PMTGA008             VARCHAR2(255),                             /*促销描述          */
   PMTGA009             VARCHAR2(1),                               /*是否能积分        */
   PMTGA010             VARCHAR2(1),                               /*促销能否同时累计返券  */
   PMTGA011             VARCHAR2(2),                               /*返券方式          */
   PMTGA012             VARCHAR2(2),                               /*返券金额          */
   PMTGA013             VARCHAR2(2),                               /*金额条件类型      */
   PMTGA014             NUMBER(12,2),                              /*条件额度          */
   PMTGA015             VARCHAR2(1),                               /*尾款不参加促销    */
   PMTGA016             VARCHAR2(2),                               /*分摊方式          */
   PMTGA017             VARCHAR2(2),                               /*分摊金额          */
   PMTGA018             INTEGER,                                   /*录入人ID          */
   PMTGA019             DATE,                                      /*录入日期          */
   PMTGA020             INTEGER,                                   /*审核人ID          */
   PMTGA021             DATE,                                      /*审核日期          */
   PMTGA022             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTGA023             VARCHAR2(1),                               /*是否签核          */
   PMTGA024             VARCHAR2(30),                              /*签核单号          */
   PMTGA025             VARCHAR2(1),                               /*签核码            */
   PMTGA026             VARCHAR2(2)                     not null,  /*促销类型          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTGA primary key (PMTGA_ID)
);
create unique index AK_TB_PMTGA on TB_PMTGA (PMTGA002);
create sequence SEQ_TB_PMTGA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTGA to public;
grant index  on TB_PMTGA to public;
grant update on TB_PMTGA to public; 
grant delete on TB_PMTGA to public;  
grant insert on TB_PMTGA to public; 
grant select on SEQ_TB_PMTGA to public;   