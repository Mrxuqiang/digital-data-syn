/*
================================================================================
表结构代码:TB_PROAE
表结构名称:电费单表
表结构目的:
================================================================================
*/

drop sequence SEQ_TB_PROAE;
drop index AK_TB_PROAE;
drop table TB_PROAE;
create table TB_PROAE  (
   PROAE_ID             INTEGER                         not null,  /*电费单ID             */
   PROAE001             INTEGER                         not null,  /*单别ID               */
   PROAE002             VARCHAR2(30)                    not null,  /*电费单号             */
   PROAE003             DATE                            not null,  /*单据日期             */
   PROAE004             INTEGER                         not null,  /*公司ID               */
   PROAE005             INTEGER                         not null,  /*营运组织ID           */
   PROAE006             INTEGER                         not null,  /*电表ID               */
   PROAE007             VARCHAR2(1)                     not null,  /*缴费类型             */
   PROAE008             INTEGER                         not null,  /*商户ID               */
   PROAE009             INTEGER,                                   /*摊位ID               */
   PROAE010             INTEGER,                                   /*合同ID               */
   PROAE011             INTEGER                         not null,  /*费用ID               */
   PROAE012             INTEGER,                                   /*费用单ID             */
   PROAE013             INTEGER                         not null,  /*业务部门ID           */
   PROAE014             INTEGER                         not null,  /*业务人员ID           */
   PROAE015             VARCHAR2(255),                             /*备注                 */
   PROAE016             DATE,                                      /*电费起日             */
   PROAE017             DATE,                                      /*电费止日             */
   PROAE018             NUMBER(12,2),                              /*上月底数             */
   PROAE019             NUMBER(12,2),                              /*本月抄数             */
   PROAE020             NUMBER(12,2),                              /*电量                 */
   PROAE021             NUMBER(12,2),                              /*电价                 */
   PROAE022             NUMBER(12,2)                    not null,  /*金额                 */
   PROAE023             INTEGER,                                   /*录入人ID             */
   PROAE024             DATE,                                      /*录入日期             */
   PROAE025             INTEGER,                                   /*审核ID               */
   PROAE026             DATE,                                      /*审核日期             */
   PROAE027             VARCHAR2(1)                     not null,  /*审核状态             */
   PROAE028             VARCHAR2(1),                               /*是否签核             */
   PROAE029             VARCHAR2(30),                              /*签核单号             */
   PROAE030             VARCHAR2(1),                               /*签核码               */
   CREATE_USER          VARCHAR2(12),                              /*建立人员             */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门         */                               
   CREATE_DATE          DATE,                                      /*建立日期             */
   MODIFIER             VARCHAR2(12),                              /*修改人员             */
   MODI_DATE            DATE,                                      /*修改日期             */
   FLAG                 NUMBER(1),                                 /*资料状态             */
   constraint PK_TB_PROAE primary key (PROAE_ID)
);
create unique index AK_TB_PROAE on TB_PROAE (PROAE002,PROAE005);
create sequence SEQ_TB_PROAE minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PROAE to public;
grant index  on TB_PROAE to public;
grant update on TB_PROAE to public; 
grant delete on TB_PROAE to public;  
grant insert on TB_PROAE to public; 
grant select on SEQ_TB_PROAE to public;   