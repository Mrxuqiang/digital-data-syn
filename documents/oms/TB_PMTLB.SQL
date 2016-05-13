/*
================================================================================
表结构代码:TB_PMTLB
表结构名称:活动费用预算表
表结构目的:局部表
================================================================================
*/

drop sequence SEQ_TB_PMTLB;
drop index AK_TB_PMTLB;
drop table TB_PMTLB;
create table TB_PMTLB  (
   PMTLB_ID             INTEGER                         not null,  /*活动费用预算ID  */
   PMTLB001             INTEGER                         not null,  /*单别ID            */
   PMTLB002             VARCHAR2(30)                	not null,  /*单据号            */
   PMTLB003             DATE                            not null,  /*单据日期          */
   PMTLB004             INTEGER                         not null,  /*促销主题ID        */
   PMTLB005             DATE                            not null,  /*活动起日          */
   PMTLB006             DATE                            not null,  /*活动止日          */
   PMTLB007             INTEGER,                                   /*录入人ID          */
   PMTLB008             DATE,                                      /*录入日期          */
   PMTLB009             INTEGER,                                   /*审核人ID          */
   PMTLB010             DATE,                                      /*审核日期          */
   PMTLB011             VARCHAR2(1)                     not null,  /*审核状态          */
   CREATE_USER          VARCHAR2(12),                              /*建立人员          */
   USER_GROUP           VARCHAR2(12),                              /*建立人员部门      */                               
   CREATE_DATE          DATE,                                      /*建立日期          */
   MODIFIER             VARCHAR2(12),                              /*修改人员          */
   MODI_DATE            DATE,                                      /*修改日期          */
   FLAG                 NUMBER,                                    /*资料状态          */
   constraint PK_TB_PMTLB primary key (PMTLB_ID)
);
create unique index AK_TB_PMTLB on TB_PMTLB (PMTLB002,FLAG);
create sequence SEQ_TB_PMTLB minvalue 1 maxvalue 9999999999999999999999999999 start with 1 increment by 1 nocache;
grant select on TB_PMTLB to public;
grant index  on TB_PMTLB to public;
grant update on TB_PMTLB to public; 
grant delete on TB_PMTLB to public;  
grant insert on TB_PMTLB to public; 
grant select on SEQ_TB_PMTLB to public;   