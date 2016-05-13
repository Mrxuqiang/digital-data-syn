/*
================================================================================
表结构代码:TB_PMTKA
表结构名称:抽奖活动促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTKA;
drop index AK_TB_PMTKA;
drop table TB_PMTKA;
create table TB_PMTKA  (
   PMTKA_ID             INTEGER                         not null,  /*抽奖活动单ID      */
   PMTKA001             INTEGER                         not null,  /*单别ID            */
   PMTKA002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTKA003             DATE                            not null,  /*单据日期          */
   PMTKA004             VARCHAR2(2)                     not null,  /*促销类型：10      */
   PMTKA005             INTEGER                         not null,  /*负责营运组织      */
   PMTKA006             INTEGER                         not null,  /*负责部门ID        */
   PMTKA007             INTEGER                         not null,  /*负责人员ID        */
   PMTKA008             INTEGER                         not null,  /*促销主题ID        */
   PMTKA009             VARCHAR2(255),                             /*促销描述          */
   PMTKA010             VARCHAR2(1),                               /*抽奖方式1.满额抽奖 2.超额抽奖 */
   PMTKA011             VARCHAR2(1),                               /*抽奖范围1.单笔     2.多笔     */
   PMTKA012             NUMBER(12,2),                              /*单次抽奖金额      */
   PMTKA013             NUMBER(5,0),                               /*单笔最大次数      */
   PMTKA014             VARCHAR2(2),                               /*分摊方式          */
   PMTKA015             VARCHAR2(2),                               /*分摊金额          */
   PMTKA016             INTEGER,                                   /*录入人ID          */
   PMTKA017             DATE,                                      /*录入日期          */
   PMTKA018             INTEGER,                                   /*审核人ID          */
   PMTKA019             DATE,                                      /*审核日期          */
   PMTKA020             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTKA021             VARCHAR2(1),                               /*是否签核          */
   PMTKA022             VARCHAR2(30),                              /*签核单号          */
   PMTKA023             VARCHAR2(1),                               /*签核码            */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTKA primary key (PMTKA_ID)
);
create unique index AK_TB_PMTKA on TB_PMTKA (PMTKA002);
create sequence SEQ_TB_PMTKA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTKA to public;
grant index  on TB_PMTKA to public;
grant update on TB_PMTKA to public; 
grant delete on TB_PMTKA to public;  
grant insert on TB_PMTKA to public; 
grant select on SEQ_TB_PMTKA to public;   