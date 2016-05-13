/*
================================================================================
表结构代码:TB_PMTHA
表结构名称:累计赠品促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTHA;
drop index AK_TB_PMTHA;
drop table TB_PMTHA;
create table TB_PMTHA  (
   PMTHA_ID             INTEGER                         not null,  /*累计赠品单ID      */
   PMTHA001             INTEGER                         not null,  /*单别ID            */
   PMTHA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTHA003             DATE                            not null,  /*单据日期          */
   PMTHA004             INTEGER                         not null,  /*负责营运组织      */
   PMTHA005             INTEGER                         not null,  /*负责部门ID        */
   PMTHA006             INTEGER                         not null,  /*负责人员ID        */
   PMTHA007             INTEGER                         not null,  /*促销主题ID        */
   PMTHA008             VARCHAR2(255),                             /*促销描述          */
   PMTHA009             VARCHAR2(1),                               /*是否能积分        */
   PMTHA010             VARCHAR2(1),                               /*促销能否同时累计赠品  */
   PMTHA011             VARCHAR2(2),                               /*送赠方式          */
   PMTHA012             VARCHAR2(2),                               /*送赠金额          */
   PMTHA013             VARCHAR2(1),                               /*尾款不参加促销    */
   PMTHA014             VARCHAR2(2),                               /*分摊方式          */
   PMTHA015             VARCHAR2(2),                               /*分摊金额          */
   PMTHA016             INTEGER,                                   /*录入人ID          */
   PMTHA017             DATE,                                      /*录入日期          */
   PMTHA018             INTEGER,                                   /*审核人ID          */
   PMTHA019             DATE,                                      /*审核日期          */
   PMTHA020             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTHA021             VARCHAR2(1),                               /*是否签核          */
   PMTHA022             VARCHAR2(30),                              /*签核单号          */
   PMTHA023             VARCHAR2(1),                               /*签核码            */
   PMTHA024             VARCHAR2(2)                     not null,  /*促销类型          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTHA primary key (PMTHA_ID)
);
create unique index AK_TB_PMTHA on TB_PMTHA (PMTHA002);
create sequence SEQ_TB_PMTHA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTHA to public;
grant index  on TB_PMTHA to public;
grant update on TB_PMTHA to public; 
grant delete on TB_PMTHA to public;  
grant insert on TB_PMTHA to public; 
grant select on SEQ_TB_PMTHA to public;   