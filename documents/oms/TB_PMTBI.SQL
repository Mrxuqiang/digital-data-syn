/*
================================================================================
表结构代码:TB_PMTBI
表结构名称:特价促销单主表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PMTBI;
drop index AK_TB_PMTBI;
drop table TB_PMTBI;
create table TB_PMTBI  (
   PMTBI_ID             INTEGER                         not null,  /*特价单ID      */
   PMTBI001             INTEGER                         not null,  /*单别ID            */
   PMTBI002             VARCHAR2(30)                    not null,  /*促销单号          */
   PMTBI003             DATE                            not null,  /*单据日期          */
   PMTBI004             INTEGER                         not null,  /*负责营运组织      */
   PMTBI005             INTEGER                         not null,  /*负责部门ID        */
   PMTBI006             INTEGER                         not null,  /*负责人员ID        */
   PMTBI007             INTEGER                         not null,  /*促销主题ID        */
   PMTBI008             VARCHAR2(255),                             /*促销描述          */
   PMTBI009             DATE                            not null,  /*促销起日 */
   PMTBI010             DATE                           not null,   /*促销止日 */
   PMTBI011             VARCHAR2(8)                     not null,  /*促销时段1          */
   PMTBI012             VARCHAR2(8)                     not null,  /*促销时段 1         */
   PMTBI013             VARCHAR2(8)                     not null,  /*促销时段2          */
   PMTBI014             VARCHAR2(8)                     not null,  /*促销时段 2         */
   PMTBI015             VARCHAR2(8)                     not null,  /*促销时段3         */
   PMTBI016             VARCHAR2(8)                     not null,  /*促销时段3         */
   PMTBI017             VARCHAR2(1),                               /*是否可积分        */
   PMTBI018             INTEGER,                                   /*录入人ID          */
   PMTBI019             DATE,                                      /*录入日期          */
   PMTBI020             INTEGER,                                   /*审核人ID          */
   PMTBI021             DATE,                                      /*审核日期          */
   PMTBI022             VARCHAR2(1)                     not null,  /*审核状态          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER(1),                                 /*资料状态          */
   constraint PK_TB_PMTBI primary key (PMTBI_ID)
);
create unique index AK_TB_PMTBI on TB_PMTBI (PMTBI002);
create sequence SEQ_TB_PMTBI minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTBI to public;
grant index  on TB_PMTBI to public;
grant update on TB_PMTBI to public; 
grant delete on TB_PMTBI to public;  
grant insert on TB_PMTBI to public; 
grant select on SEQ_TB_PMTBI to public;   