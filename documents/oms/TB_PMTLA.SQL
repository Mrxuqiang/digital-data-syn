/*
================================================================================
表结构代码:TB_PMTLA
表结构名称:活动销售指标表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PMTLA;
drop index AK_TB_PMTLA;
drop table TB_PMTLA;
create table TB_PMTLA  (
   PMTLA_ID             INTEGER                         not null,  /*活动销售指标ID  */
   PMTLA001             INTEGER                         not null,  /*单别ID            */
   PMTLA002             VARCHAR2(30)                	not null,  /*单据号            */
   PMTLA003             DATE                            not null,  /*单据日期          */
   PMTLA004             INTEGER                         not null,  /*门店              */
   PMTLA005             INTEGER                         not null,  /*促销主题ID        */
   PMTLA006             NUMBER(18,2)                    not null,  /*销售指标          */
   PMTLA007             DATE                            not null,  /*活动起日          */
   PMTLA008             DATE                            not null,  /*活动止日          */
   PMTLA009             INTEGER,                                   /*录入人ID          */
   PMTLA010             DATE,                                      /*录入日期          */
   PMTLA011             INTEGER,                                   /*审核人ID          */
   PMTLA012             DATE,                                      /*审核日期          */
   PMTLA013             VARCHAR2(1)                     not null,  /*审核状态          */
   PMTLA014             VARCHAR2(255),                             /*活动指标描述      */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER,                                    /*资料状态          */
   constraint PK_TB_PMTLA primary key (PMTLA_ID)
);
create unique index AK_TB_PMTLA on TB_PMTLA (PMTLA002,PMTLA004,FLAG);
create sequence SEQ_TB_PMTLA minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTLA to public;
grant index  on TB_PMTLA to public;
grant update on TB_PMTLA to public; 
grant delete on TB_PMTLA to public;  
grant insert on TB_PMTLA to public; 
grant select on SEQ_TB_PMTLA to public;   